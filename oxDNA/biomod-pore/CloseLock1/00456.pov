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
	<24.249180, 34.819561, 35.160702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.198387, 35.192982, 35.026627>,  <24.167912, 35.417034, 34.946182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.198387, 35.192982, 35.026627>,  <24.249180, 34.819561, 35.160702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.198387, 35.192982, 35.026627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867818, -0.059097, -0.493356,
		-0.480383, -0.353532, -0.802650,
		-0.126983, 0.933554, -0.335191,
		24.160292, 35.473049, 34.926071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.361580, 34.913811, 34.374714>,  <24.249180, 34.819561, 35.160702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.361580, 34.913811, 34.374714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.429657, 35.263447, 34.556702>,  <24.470503, 35.473228, 34.665894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.429657, 35.263447, 34.556702>,  <24.361580, 34.913811, 34.374714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.429657, 35.263447, 34.556702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940276, -0.005920, -0.340362,
		-0.294815, 0.485721, -0.822897,
		0.170193, 0.874094, 0.454967,
		24.480715, 35.525677, 34.693192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.597515, 35.400776, 33.825554>,  <24.361580, 34.913811, 34.374714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.597515, 35.400776, 33.825554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.723612, 35.523235, 34.184864>,  <24.799269, 35.596710, 34.400452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.723612, 35.523235, 34.184864>,  <24.597515, 35.400776, 33.825554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.723612, 35.523235, 34.184864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914366, 0.155440, -0.373863,
		-0.254084, 0.939209, -0.230926,
		0.315240, 0.306144, 0.898276,
		24.818184, 35.615078, 34.454346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.914072, 36.154705, 33.819031>,  <24.597515, 35.400776, 33.825554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.914072, 36.154705, 33.819031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.112402, 35.952396, 34.101406>,  <25.231400, 35.831013, 34.270832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.112402, 35.952396, 34.101406>,  <24.914072, 36.154705, 33.819031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.112402, 35.952396, 34.101406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866453, 0.233407, -0.441339,
		0.058445, 0.830491, 0.553957,
		0.495826, -0.505772, 0.705940,
		25.261150, 35.800663, 34.313187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.399015, 36.477726, 34.292870>,  <24.914072, 36.154705, 33.819031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.399015, 36.477726, 34.292870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.516014, 36.107620, 34.196255>,  <25.586212, 35.885559, 34.138287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.516014, 36.107620, 34.196255>,  <25.399015, 36.477726, 34.292870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.516014, 36.107620, 34.196255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831136, 0.370895, -0.414306,
		0.472926, -0.079568, 0.877502,
		0.292496, -0.925260, -0.241538,
		25.603764, 35.830044, 34.123795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.096481, 36.249268, 34.589893>,  <25.399015, 36.477726, 34.292870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.096481, 36.249268, 34.589893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984234, 36.123138, 34.227276>,  <25.916885, 36.047462, 34.009705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984234, 36.123138, 34.227276>,  <26.096481, 36.249268, 34.589893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.984234, 36.123138, 34.227276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807350, 0.433246, -0.400605,
		0.519077, -0.844317, 0.132997,
		-0.280618, -0.315320, -0.906547,
		25.900049, 36.028542, 33.955311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.341513, 35.733391, 34.092957>,  <26.096481, 36.249268, 34.589893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.341513, 35.733391, 34.092957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.473930, 36.067577, 34.268410>,  <26.553381, 36.268089, 34.373684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.473930, 36.067577, 34.268410>,  <26.341513, 35.733391, 34.092957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.473930, 36.067577, 34.268410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542261, 0.211991, -0.813027,
		-0.772246, 0.507004, -0.382863,
		0.331044, 0.835468, 0.438637,
		26.573244, 36.318218, 34.400002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.340117, 36.181973, 33.547958>,  <26.341513, 35.733391, 34.092957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.340117, 36.181973, 33.547958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.567585, 36.360989, 33.824020>,  <26.704065, 36.468399, 33.989658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.567585, 36.360989, 33.824020>,  <26.340117, 36.181973, 33.547958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.567585, 36.360989, 33.824020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655866, 0.259678, -0.708807,
		-0.496441, 0.855729, -0.145857,
		0.568671, 0.447543, 0.690159,
		26.738186, 36.495251, 34.031067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.497904, 36.795593, 33.268833>,  <26.340117, 36.181973, 33.547958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.497904, 36.795593, 33.268833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.798355, 36.747635, 33.528503>,  <26.978626, 36.718861, 33.684307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.798355, 36.747635, 33.528503>,  <26.497904, 36.795593, 33.268833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.798355, 36.747635, 33.528503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657485, 0.047449, -0.751972,
		0.059352, 0.991653, 0.114467,
		0.751127, -0.119891, 0.649180,
		27.023693, 36.711666, 33.723259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.937731, 37.278957, 33.133533>,  <26.497904, 36.795593, 33.268833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.937731, 37.278957, 33.133533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159433, 36.995552, 33.308262>,  <27.292456, 36.825508, 33.413097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159433, 36.995552, 33.308262>,  <26.937731, 37.278957, 33.133533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.159433, 36.995552, 33.308262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703293, 0.117958, -0.701045,
		0.445171, 0.695772, 0.563670,
		0.554257, -0.708510, 0.436820,
		27.325710, 36.782997, 33.439308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.674969, 37.541206, 33.082783>,  <26.937731, 37.278957, 33.133533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.674969, 37.541206, 33.082783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.685123, 37.150650, 33.168587>,  <27.691217, 36.916317, 33.220070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.685123, 37.150650, 33.168587>,  <27.674969, 37.541206, 33.082783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.685123, 37.150650, 33.168587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725748, -0.129567, -0.675649,
		0.687492, 0.172834, 0.705325,
		0.025389, -0.976392, 0.214510,
		27.692739, 36.857731, 33.232941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.329439, 37.479790, 33.003227>,  <27.674969, 37.541206, 33.082783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.329439, 37.479790, 33.003227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200371, 37.101543, 32.986759>,  <28.122931, 36.874596, 32.976879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200371, 37.101543, 32.986759>,  <28.329439, 37.479790, 33.003227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200371, 37.101543, 32.986759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774631, -0.238830, -0.585582,
		0.543902, -0.220844, 0.809567,
		-0.322671, -0.945615, -0.041172,
		28.103569, 36.817860, 32.974407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.907701, 37.059223, 33.102783>,  <28.329439, 37.479790, 33.003227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.907701, 37.059223, 33.102783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.649572, 36.829296, 32.901531>,  <28.494694, 36.691341, 32.780781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.649572, 36.829296, 32.901531>,  <28.907701, 37.059223, 33.102783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.649572, 36.829296, 32.901531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683152, -0.139516, -0.716825,
		0.341848, -0.806300, 0.482721,
		-0.645324, -0.574817, -0.503133,
		28.455975, 36.656853, 32.750591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207439, 36.413197, 32.891232>,  <28.907701, 37.059223, 33.102783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.207439, 36.413197, 32.891232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894800, 36.423065, 32.641914>,  <28.707216, 36.428986, 32.492325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894800, 36.423065, 32.641914>,  <29.207439, 36.413197, 32.891232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894800, 36.423065, 32.641914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612427, -0.159443, -0.774281,
		-0.118480, -0.986899, 0.109513,
		-0.781598, 0.024668, -0.623294,
		28.660320, 36.430466, 32.454926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161737, 35.875565, 32.478378>,  <29.207439, 36.413197, 32.891232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161737, 35.875565, 32.478378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949911, 36.131611, 32.255733>,  <28.822815, 36.285240, 32.122147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949911, 36.131611, 32.255733>,  <29.161737, 35.875565, 32.478378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.949911, 36.131611, 32.255733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493288, -0.301431, -0.815969,
		-0.690094, -0.706677, -0.156133,
		-0.529564, 0.640114, -0.556611,
		28.791042, 36.323647, 32.088749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011875, 35.504742, 31.881248>,  <29.161737, 35.875565, 32.478378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011875, 35.504742, 31.881248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.945816, 35.887127, 31.784204>,  <28.906181, 36.116558, 31.725979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.945816, 35.887127, 31.784204>,  <29.011875, 35.504742, 31.881248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.945816, 35.887127, 31.784204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472326, -0.139286, -0.870350,
		-0.865815, -0.258327, -0.428523,
		-0.165147, 0.955964, -0.242610,
		28.896273, 36.173916, 31.711422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709900, 35.568226, 31.278214>,  <29.011875, 35.504742, 31.881248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.709900, 35.568226, 31.278214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.902843, 35.916138, 31.319822>,  <29.018610, 36.124886, 31.344788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.902843, 35.916138, 31.319822>,  <28.709900, 35.568226, 31.278214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.902843, 35.916138, 31.319822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503321, -0.178004, -0.845566,
		-0.716937, 0.460222, -0.523638,
		0.482358, 0.869776, 0.104022,
		29.047550, 36.177071, 31.351028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659437, 35.882626, 30.664406>,  <28.709900, 35.568226, 31.278214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659437, 35.882626, 30.664406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.964600, 36.075069, 30.837151>,  <29.147697, 36.190536, 30.940798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.964600, 36.075069, 30.837151>,  <28.659437, 35.882626, 30.664406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.964600, 36.075069, 30.837151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504078, -0.024378, -0.863314,
		-0.404824, 0.876319, -0.261117,
		0.762904, 0.481114, 0.431864,
		29.193470, 36.219402, 30.966709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881205, 36.382359, 30.179869>,  <28.659437, 35.882626, 30.664406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881205, 36.382359, 30.179869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.184515, 36.321957, 30.433550>,  <29.366501, 36.285717, 30.585758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.184515, 36.321957, 30.433550>,  <28.881205, 36.382359, 30.179869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.184515, 36.321957, 30.433550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636649, -0.037886, -0.770223,
		0.140332, 0.987807, 0.067407,
		0.758278, -0.151001, 0.634203,
		29.411999, 36.276657, 30.623810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.277494, 36.864651, 29.902384>,  <28.881205, 36.382359, 30.179869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.277494, 36.864651, 29.902384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503237, 36.626648, 30.131285>,  <29.638681, 36.483849, 30.268625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503237, 36.626648, 30.131285>,  <29.277494, 36.864651, 29.902384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503237, 36.626648, 30.131285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594467, -0.188077, -0.781816,
		0.572812, 0.781406, 0.247570,
		0.564354, -0.595005, 0.572253,
		29.672543, 36.448147, 30.302961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.870514, 37.075600, 29.722912>,  <29.277494, 36.864651, 29.902384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.870514, 37.075600, 29.722912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963718, 36.737469, 29.915216>,  <30.019642, 36.534592, 30.030600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963718, 36.737469, 29.915216>,  <29.870514, 37.075600, 29.722912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963718, 36.737469, 29.915216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668517, -0.219795, -0.710476,
		0.706251, 0.486949, 0.513897,
		0.233013, -0.845323, 0.480764,
		30.033623, 36.483871, 30.059446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684313, 36.985989, 29.846609>,  <29.870514, 37.075600, 29.722912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684313, 36.985989, 29.846609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512241, 36.625561, 29.824635>,  <30.408998, 36.409306, 29.811451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512241, 36.625561, 29.824635>,  <30.684313, 36.985989, 29.846609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.512241, 36.625561, 29.824635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637013, -0.259872, -0.725728,
		0.639656, -0.347188, 0.685785,
		-0.430180, -0.901070, -0.054934,
		30.383188, 36.355240, 29.808155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276791, 36.624054, 29.618740>,  <30.684313, 36.985989, 29.846609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276791, 36.624054, 29.618740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944403, 36.410450, 29.556355>,  <30.744970, 36.282288, 29.518923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944403, 36.410450, 29.556355>,  <31.276791, 36.624054, 29.618740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944403, 36.410450, 29.556355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359145, -0.300840, -0.883465,
		0.424855, -0.790148, 0.441775,
		-0.830971, -0.534006, -0.155965,
		30.695112, 36.250248, 29.509565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475872, 36.061726, 29.245520>,  <31.276791, 36.624054, 29.618740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475872, 36.061726, 29.245520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080824, 36.059570, 29.182808>,  <30.843796, 36.058277, 29.145180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080824, 36.059570, 29.182808>,  <31.475872, 36.061726, 29.245520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080824, 36.059570, 29.182808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155665, -0.157457, -0.975180,
		-0.019434, -0.987511, 0.156346,
		-0.987619, -0.005386, -0.156781,
		30.784538, 36.057953, 29.135773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284426, 35.521526, 28.849882>,  <31.475872, 36.061726, 29.245520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284426, 35.521526, 28.849882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.958727, 35.742897, 28.779770>,  <30.763308, 35.875717, 28.737703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.958727, 35.742897, 28.779770>,  <31.284426, 35.521526, 28.849882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958727, 35.742897, 28.779770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147046, -0.095464, -0.984512,
		-0.561585, -0.827412, -0.003648,
		-0.814249, 0.553423, -0.175279,
		30.714453, 35.908924, 28.727186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892019, 35.163189, 28.334738>,  <31.284426, 35.521526, 28.849882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892019, 35.163189, 28.334738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.790707, 35.550079, 28.327543>,  <30.729919, 35.782215, 28.323227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.790707, 35.550079, 28.327543>,  <30.892019, 35.163189, 28.334738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.790707, 35.550079, 28.327543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279089, 0.055256, -0.958674,
		-0.926260, -0.247834, -0.283937,
		-0.253281, 0.967225, -0.017987,
		30.714722, 35.840248, 28.322147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158531, 35.300076, 27.661234>,  <30.892019, 35.163189, 28.334738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158531, 35.300076, 27.661234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986132, 35.638863, 27.785738>,  <30.882692, 35.842136, 27.860441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986132, 35.638863, 27.785738>,  <31.158531, 35.300076, 27.661234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986132, 35.638863, 27.785738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205721, 0.428089, -0.880010,
		-0.878590, -0.315249, -0.358744,
		-0.430997, 0.846970, 0.311262,
		30.856833, 35.892952, 27.879116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627167, 35.530613, 27.161703>,  <31.158531, 35.300076, 27.661234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627167, 35.530613, 27.161703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801302, 35.834248, 27.355309>,  <30.905783, 36.016426, 27.471472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801302, 35.834248, 27.355309>,  <30.627167, 35.530613, 27.161703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.801302, 35.834248, 27.355309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147563, 0.470197, -0.870138,
		-0.888090, 0.450229, 0.092683,
		0.435340, 0.759084, 0.484014,
		30.931904, 36.061974, 27.500513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202505, 36.027187, 27.603664>,  <30.627167, 35.530613, 27.161703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202505, 36.027187, 27.603664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.243315, 36.419254, 27.671631>,  <30.267799, 36.654495, 27.712412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.243315, 36.419254, 27.671631>,  <30.202505, 36.027187, 27.603664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243315, 36.419254, 27.671631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986893, -0.078257, -0.141133,
		-0.125036, 0.182090, -0.975300,
		0.102023, 0.980163, 0.169918,
		30.273922, 36.713303, 27.722607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734560, 36.441170, 27.122744>,  <30.202505, 36.027187, 27.603664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734560, 36.441170, 27.122744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.702465, 36.619675, 27.479263>,  <30.683208, 36.726776, 27.693174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.702465, 36.619675, 27.479263>,  <30.734560, 36.441170, 27.122744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702465, 36.619675, 27.479263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996276, 0.064211, 0.057538,
		-0.031554, 0.892597, -0.449751,
		-0.080237, 0.446260, 0.891299,
		30.678394, 36.753551, 27.746653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949917, 37.055988, 27.064182>,  <30.734560, 36.441170, 27.122744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949917, 37.055988, 27.064182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009830, 36.872456, 27.414505>,  <31.045778, 36.762337, 27.624699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009830, 36.872456, 27.414505>,  <30.949917, 37.055988, 27.064182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009830, 36.872456, 27.414505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938517, -0.212688, -0.271936,
		0.311046, 0.862693, 0.398761,
		0.149786, -0.458829, 0.875808,
		31.054766, 36.734806, 27.677248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781780, 37.075546, 26.929411>,  <30.949917, 37.055988, 27.064182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781780, 37.075546, 26.929411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628952, 36.872925, 27.238585>,  <31.537256, 36.751354, 27.424089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628952, 36.872925, 27.238585>,  <31.781780, 37.075546, 26.929411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628952, 36.872925, 27.238585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846150, -0.528030, 0.072209,
		0.371556, 0.681608, 0.630362,
		-0.382068, -0.506551, 0.772936,
		31.514332, 36.720959, 27.470465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333721, 37.051464, 27.491627>,  <31.781780, 37.075546, 26.929411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333721, 37.051464, 27.491627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064796, 36.755360, 27.492495>,  <31.903440, 36.577698, 27.493015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064796, 36.755360, 27.492495>,  <32.333721, 37.051464, 27.491627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064796, 36.755360, 27.492495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723449, -0.657662, -0.210006,
		0.156887, -0.139620, 0.977698,
		-0.672316, -0.740261, 0.002171,
		31.863102, 36.533279, 27.493145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941135, 37.509190, 27.613602>,  <32.333721, 37.051464, 27.491627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941135, 37.509190, 27.613602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308308, 37.508190, 27.772299>,  <33.528610, 37.507591, 27.867517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308308, 37.508190, 27.772299>,  <32.941135, 37.509190, 27.613602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308308, 37.508190, 27.772299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391062, -0.174445, 0.903681,
		0.066953, -0.984664, -0.161104,
		0.917926, -0.002497, 0.396744,
		33.583687, 37.507442, 27.891321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140224, 36.859520, 27.908010>,  <32.941135, 37.509190, 27.613602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140224, 36.859520, 27.908010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286911, 37.195316, 28.068394>,  <33.374924, 37.396793, 28.164623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286911, 37.195316, 28.068394>,  <33.140224, 36.859520, 27.908010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286911, 37.195316, 28.068394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549694, -0.152182, 0.821387,
		0.750568, -0.521623, 0.405657,
		0.366721, 0.839494, 0.400956,
		33.396927, 37.447163, 28.188681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360085, 36.887627, 28.582355>,  <33.140224, 36.859520, 27.908010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360085, 36.887627, 28.582355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266819, 37.274536, 28.542307>,  <33.210861, 37.506680, 28.518278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266819, 37.274536, 28.542307>,  <33.360085, 36.887627, 28.582355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266819, 37.274536, 28.542307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507303, -0.033149, 0.861130,
		0.829626, 0.251574, 0.498428,
		-0.233161, 0.967270, -0.100123,
		33.196873, 37.564716, 28.512270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535446, 37.210991, 29.243855>,  <33.360085, 36.887627, 28.582355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535446, 37.210991, 29.243855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276699, 37.451687, 29.056459>,  <33.121452, 37.596104, 28.944021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276699, 37.451687, 29.056459>,  <33.535446, 37.210991, 29.243855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276699, 37.451687, 29.056459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541303, 0.070438, 0.837872,
		0.537177, 0.795583, 0.280157,
		-0.646863, 0.601736, -0.468489,
		33.082642, 37.632206, 28.915913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640633, 37.899616, 29.493649>,  <33.535446, 37.210991, 29.243855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640633, 37.899616, 29.493649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262341, 37.898991, 29.363670>,  <33.035366, 37.898617, 29.285683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262341, 37.898991, 29.363670>,  <33.640633, 37.899616, 29.493649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262341, 37.898991, 29.363670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299737, 0.390393, 0.870489,
		0.125495, 0.920647, -0.369676,
		-0.945732, -0.001564, -0.324945,
		32.978622, 37.898521, 29.266188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322556, 38.624626, 29.669823>,  <33.640633, 37.899616, 29.493649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322556, 38.624626, 29.669823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040012, 38.346466, 29.616953>,  <32.870487, 38.179569, 29.585232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040012, 38.346466, 29.616953>,  <33.322556, 38.624626, 29.669823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040012, 38.346466, 29.616953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457438, 0.305945, 0.834954,
		-0.540191, 0.650239, -0.534212,
		-0.706359, -0.695404, -0.132175,
		32.828106, 38.137844, 29.577301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718624, 38.876072, 30.181746>,  <33.322556, 38.624626, 29.669823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718624, 38.876072, 30.181746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590080, 38.510624, 30.082117>,  <32.512955, 38.291355, 30.022341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590080, 38.510624, 30.082117>,  <32.718624, 38.876072, 30.181746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590080, 38.510624, 30.082117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582398, -0.016715, 0.812732,
		-0.746688, 0.406233, -0.526717,
		-0.321355, -0.913616, -0.249070,
		32.493675, 38.236538, 30.007397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982655, 38.862556, 30.337730>,  <32.718624, 38.876072, 30.181746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982655, 38.862556, 30.337730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120136, 38.487392, 30.356464>,  <32.202625, 38.262295, 30.367704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120136, 38.487392, 30.356464>,  <31.982655, 38.862556, 30.337730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120136, 38.487392, 30.356464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460554, -0.124891, 0.878801,
		-0.818387, -0.323618, -0.474884,
		0.343705, -0.937909, 0.046834,
		32.223248, 38.206020, 30.370514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349415, 38.400352, 30.386446>,  <31.982655, 38.862556, 30.337730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349415, 38.400352, 30.386446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.657423, 38.179527, 30.514378>,  <31.842228, 38.047031, 30.591137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.657423, 38.179527, 30.514378>,  <31.349415, 38.400352, 30.386446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657423, 38.179527, 30.514378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546491, -0.311998, 0.777177,
		-0.329268, -0.773226, -0.541945,
		0.770020, -0.552067, 0.319830,
		31.888430, 38.013908, 30.610327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080343, 37.719578, 30.561243>,  <31.349415, 38.400352, 30.386446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.080343, 37.719578, 30.561243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442059, 37.700863, 30.730982>,  <31.659088, 37.689632, 30.832825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442059, 37.700863, 30.730982>,  <31.080343, 37.719578, 30.561243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442059, 37.700863, 30.730982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402848, -0.422562, 0.811884,
		0.141326, -0.905126, -0.400967,
		0.904290, -0.046789, 0.424347,
		31.713346, 37.686825, 30.858286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156998, 37.027855, 30.853823>,  <31.080343, 37.719578, 30.561243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156998, 37.027855, 30.853823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410114, 37.244339, 31.075333>,  <31.561985, 37.374229, 31.208239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410114, 37.244339, 31.075333>,  <31.156998, 37.027855, 30.853823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410114, 37.244339, 31.075333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334676, -0.453756, 0.825892,
		0.698260, -0.707952, -0.106002,
		0.632791, 0.541211, 0.553774,
		31.599951, 37.406704, 31.241465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296249, 36.569405, 31.443811>,  <31.156998, 37.027855, 30.853823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296249, 36.569405, 31.443811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430109, 36.921127, 31.579359>,  <31.510424, 37.132160, 31.660686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430109, 36.921127, 31.579359>,  <31.296249, 36.569405, 31.443811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430109, 36.921127, 31.579359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161104, -0.300922, 0.939942,
		0.928470, -0.369142, 0.040957,
		0.334647, 0.879306, 0.338868,
		31.530504, 37.184917, 31.681019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597567, 36.334385, 32.139675>,  <31.296249, 36.569405, 31.443811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597567, 36.334385, 32.139675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.571102, 36.733437, 32.147274>,  <31.555223, 36.972866, 32.151833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.571102, 36.733437, 32.147274>,  <31.597567, 36.334385, 32.139675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.571102, 36.733437, 32.147274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308439, -0.038557, 0.950462,
		0.948940, 0.057024, 0.310258,
		-0.066162, 0.997628, 0.019000,
		31.551254, 37.032726, 32.152973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949892, 36.590263, 32.753777>,  <31.597567, 36.334385, 32.139675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949892, 36.590263, 32.753777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705772, 36.889313, 32.649010>,  <31.559301, 37.068741, 32.586151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705772, 36.889313, 32.649010>,  <31.949892, 36.590263, 32.753777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705772, 36.889313, 32.649010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426583, -0.031566, 0.903898,
		0.667506, 0.663374, 0.338188,
		-0.610297, 0.747622, -0.261913,
		31.522684, 37.113598, 32.570435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969795, 37.119396, 33.298355>,  <31.949892, 36.590263, 32.753777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969795, 37.119396, 33.298355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624964, 37.195057, 33.110294>,  <31.418064, 37.240452, 32.997459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624964, 37.195057, 33.110294>,  <31.969795, 37.119396, 33.298355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624964, 37.195057, 33.110294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453425, 0.126443, 0.882280,
		0.226330, 0.973773, -0.023238,
		-0.862079, 0.189150, -0.470151,
		31.366341, 37.251801, 32.969250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680225, 37.619522, 33.732487>,  <31.969795, 37.119396, 33.298355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680225, 37.619522, 33.732487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.373442, 37.496399, 33.507267>,  <31.189371, 37.422523, 33.372135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.373442, 37.496399, 33.507267>,  <31.680225, 37.619522, 33.732487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.373442, 37.496399, 33.507267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632879, 0.217906, 0.742954,
		-0.105995, 0.926159, -0.361931,
		-0.766961, -0.307808, -0.563050,
		31.143354, 37.404057, 33.338352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158436, 38.172318, 33.889530>,  <31.680225, 37.619522, 33.732487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158436, 38.172318, 33.889530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938864, 37.861828, 33.765495>,  <30.807121, 37.675533, 33.691074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938864, 37.861828, 33.765495>,  <31.158436, 38.172318, 33.889530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938864, 37.861828, 33.765495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673223, 0.190692, 0.714428,
		-0.495427, 0.600926, -0.627249,
		-0.548930, -0.776225, -0.310083,
		30.774185, 37.628960, 33.672470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491131, 38.448566, 33.587936>,  <31.158436, 38.172318, 33.889530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491131, 38.448566, 33.587936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435812, 38.069080, 33.701649>,  <30.402620, 37.841389, 33.769875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435812, 38.069080, 33.701649>,  <30.491131, 38.448566, 33.587936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435812, 38.069080, 33.701649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863981, 0.255891, 0.433656,
		-0.484160, -0.185639, -0.855060,
		-0.138298, -0.948714, 0.284281,
		30.394323, 37.784466, 33.786934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.731350, 38.266655, 33.524094>,  <30.491131, 38.448566, 33.587936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.731350, 38.266655, 33.524094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865910, 37.981213, 33.769890>,  <29.946646, 37.809948, 33.917366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865910, 37.981213, 33.769890>,  <29.731350, 38.266655, 33.524094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865910, 37.981213, 33.769890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848879, 0.052727, 0.525951,
		-0.407724, -0.698555, -0.588032,
		0.336401, -0.713611, 0.614487,
		29.966829, 37.767128, 33.954235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302275, 37.621605, 33.362793>,  <29.731350, 38.266655, 33.524094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302275, 37.621605, 33.362793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453871, 37.620354, 33.732952>,  <29.544828, 37.619602, 33.955048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453871, 37.620354, 33.732952>,  <29.302275, 37.621605, 33.362793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.453871, 37.620354, 33.732952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924402, -0.047720, 0.378423,
		0.042977, -0.998856, -0.020974,
		0.378991, -0.003125, 0.925395,
		29.567568, 37.619415, 34.010571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839828, 37.230087, 33.807617>,  <29.302275, 37.621605, 33.362793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839828, 37.230087, 33.807617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060070, 37.390999, 34.100193>,  <29.192215, 37.487545, 34.275738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060070, 37.390999, 34.100193>,  <28.839828, 37.230087, 33.807617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060070, 37.390999, 34.100193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770025, -0.093572, 0.631114,
		0.322326, -0.910723, 0.258244,
		0.550606, 0.402279, 0.731440,
		29.225252, 37.511684, 34.319626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.862436, 36.759674, 34.491756>,  <28.839828, 37.230087, 33.807617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.862436, 36.759674, 34.491756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.932661, 37.136486, 34.606136>,  <28.974796, 37.362572, 34.674763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.932661, 37.136486, 34.606136>,  <28.862436, 36.759674, 34.491756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.932661, 37.136486, 34.606136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837398, -0.009828, 0.546506,
		0.517633, -0.335397, 0.787125,
		0.175561, 0.942025, 0.285948,
		28.985329, 37.419094, 34.691921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.663660, 36.679359, 35.209297>,  <28.862436, 36.759674, 34.491756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.663660, 36.679359, 35.209297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676394, 37.075226, 35.153374>,  <28.684034, 37.312744, 35.119820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676394, 37.075226, 35.153374>,  <28.663660, 36.679359, 35.209297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676394, 37.075226, 35.153374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799092, 0.109220, 0.591205,
		0.600366, 0.092897, 0.794312,
		0.031834, 0.989667, -0.139805,
		28.685944, 37.372128, 35.111431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.652767, 36.911892, 35.844959>,  <28.663660, 36.679359, 35.209297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.652767, 36.911892, 35.844959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.550869, 37.223995, 35.616467>,  <28.489731, 37.411259, 35.479370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.550869, 37.223995, 35.616467>,  <28.652767, 36.911892, 35.844959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.550869, 37.223995, 35.616467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742726, 0.220407, 0.632280,
		0.619244, 0.585338, 0.523370,
		-0.254743, 0.780257, -0.571231,
		28.474445, 37.458073, 35.445099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.513893, 37.388409, 36.290955>,  <28.652767, 36.911892, 35.844959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.513893, 37.388409, 36.290955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.315542, 37.502583, 35.962898>,  <28.196531, 37.571087, 35.766064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.315542, 37.502583, 35.962898>,  <28.513893, 37.388409, 36.290955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.315542, 37.502583, 35.962898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746773, 0.341855, 0.570496,
		0.443209, 0.895355, 0.043637,
		-0.495879, 0.285436, -0.820140,
		28.166779, 37.588215, 35.716858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.306307, 38.178265, 36.252991>,  <28.513893, 37.388409, 36.290955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.306307, 38.178265, 36.252991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.062920, 37.901264, 36.097961>,  <27.916887, 37.735065, 36.004944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.062920, 37.901264, 36.097961>,  <28.306307, 38.178265, 36.252991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.062920, 37.901264, 36.097961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776898, 0.420189, 0.468903,
		-0.161858, 0.586420, -0.793671,
		-0.608466, -0.692498, -0.387578,
		27.880381, 37.693516, 35.981689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.117388, 38.410679, 36.211441>,  <28.306307, 38.178265, 36.252991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.117388, 38.410679, 36.211441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316341, 38.698261, 36.017239>,  <29.435715, 38.870811, 35.900719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316341, 38.698261, 36.017239>,  <29.117388, 38.410679, 36.211441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316341, 38.698261, 36.017239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206978, 0.445131, 0.871217,
		0.842478, -0.533818, 0.072594,
		0.497385, 0.718955, -0.485501,
		29.465557, 38.913948, 35.871590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726624, 38.516045, 36.629845>,  <29.117388, 38.410679, 36.211441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726624, 38.516045, 36.629845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631344, 38.832203, 36.404091>,  <29.574175, 39.021896, 36.268639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631344, 38.832203, 36.404091>,  <29.726624, 38.516045, 36.629845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631344, 38.832203, 36.404091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112472, 0.599655, 0.792316,
		0.964681, 0.125253, -0.231736,
		-0.238201, 0.790396, -0.564388,
		29.559883, 39.069321, 36.234776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311750, 39.040073, 36.538780>,  <29.726624, 38.516045, 36.629845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311750, 39.040073, 36.538780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964710, 39.236088, 36.505005>,  <29.756487, 39.353699, 36.484737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964710, 39.236088, 36.505005>,  <30.311750, 39.040073, 36.538780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964710, 39.236088, 36.505005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300714, 0.652297, 0.695758,
		0.396030, 0.578247, -0.713295,
		-0.867601, 0.490039, -0.084442,
		29.704430, 39.383099, 36.479671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851933, 38.577900, 36.814373>,  <30.311750, 39.040073, 36.538780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851933, 38.577900, 36.814373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892378, 38.263554, 37.058403>,  <30.916645, 38.074947, 37.204823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892378, 38.263554, 37.058403>,  <30.851933, 38.577900, 36.814373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892378, 38.263554, 37.058403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648921, 0.516913, 0.558303,
		-0.754107, 0.339441, 0.562230,
		0.101113, -0.785863, 0.610078,
		30.922712, 38.027794, 37.241428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689375, 38.713341, 37.552364>,  <30.851933, 38.577900, 36.814373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689375, 38.713341, 37.552364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.946899, 38.407455, 37.563057>,  <31.101414, 38.223923, 37.569473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.946899, 38.407455, 37.563057>,  <30.689375, 38.713341, 37.552364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.946899, 38.407455, 37.563057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571476, 0.503769, 0.647790,
		-0.508842, -0.401780, 0.761349,
		0.643813, -0.764715, 0.026731,
		31.140043, 38.178040, 37.571075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806988, 38.575317, 38.231762>,  <30.689375, 38.713341, 37.552364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806988, 38.575317, 38.231762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119822, 38.389946, 38.065113>,  <31.307522, 38.278721, 37.965122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119822, 38.389946, 38.065113>,  <30.806988, 38.575317, 38.231762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119822, 38.389946, 38.065113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571419, 0.266563, 0.776160,
		-0.248642, -0.845088, 0.473289,
		0.782085, -0.463433, -0.416620,
		31.354446, 38.250916, 37.940128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012192, 38.219402, 38.802715>,  <30.806988, 38.575317, 38.231762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012192, 38.219402, 38.802715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320211, 38.218380, 38.547523>,  <31.505022, 38.217766, 38.394409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320211, 38.218380, 38.547523>,  <31.012192, 38.219402, 38.802715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320211, 38.218380, 38.547523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629940, 0.161375, 0.759693,
		0.101009, -0.986890, 0.125880,
		0.770047, -0.002561, -0.637982,
		31.551226, 38.217613, 38.356129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448107, 37.766479, 38.939217>,  <31.012192, 38.219402, 38.802715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448107, 37.766479, 38.939217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689346, 37.994495, 38.716030>,  <31.834089, 38.131306, 38.582119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689346, 37.994495, 38.716030>,  <31.448107, 37.766479, 38.939217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689346, 37.994495, 38.716030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655081, 0.045167, 0.754208,
		0.455128, -0.820377, -0.346180,
		0.603099, 0.570037, -0.557969,
		31.870275, 38.165508, 38.548637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069508, 37.502964, 38.940384>,  <31.448107, 37.766479, 38.939217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069508, 37.502964, 38.940384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118713, 37.891907, 38.860992>,  <32.148235, 38.125271, 38.813358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118713, 37.891907, 38.860992>,  <32.069508, 37.502964, 38.940384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118713, 37.891907, 38.860992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728932, 0.047189, 0.682958,
		0.673444, -0.228689, -0.702976,
		0.123012, 0.972355, -0.198478,
		32.155617, 38.183613, 38.801449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767838, 37.544952, 38.737785>,  <32.069508, 37.502964, 38.940384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767838, 37.544952, 38.737785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635761, 37.907711, 38.842484>,  <32.556515, 38.125366, 38.905304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635761, 37.907711, 38.842484>,  <32.767838, 37.544952, 38.737785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635761, 37.907711, 38.842484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792066, 0.115372, 0.599434,
		0.513427, 0.405248, -0.756417,
		-0.330189, 0.906898, 0.261748,
		32.536705, 38.179779, 38.921009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313702, 37.817535, 38.838860>,  <32.767838, 37.544952, 38.737785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313702, 37.817535, 38.838860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083668, 38.108356, 38.988884>,  <32.945648, 38.282848, 39.078899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083668, 38.108356, 38.988884>,  <33.313702, 37.817535, 38.838860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083668, 38.108356, 38.988884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762891, 0.311044, 0.566788,
		0.295427, 0.612079, -0.733541,
		-0.575083, 0.727056, 0.375059,
		32.911144, 38.326473, 39.101402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660099, 38.469479, 38.775944>,  <33.313702, 37.817535, 38.838860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660099, 38.469479, 38.775944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409344, 38.516415, 39.084034>,  <33.258892, 38.544575, 39.268887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409344, 38.516415, 39.084034>,  <33.660099, 38.469479, 38.775944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409344, 38.516415, 39.084034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719579, 0.466211, 0.514639,
		-0.298700, 0.876857, -0.376696,
		-0.626885, 0.117339, 0.770225,
		33.221279, 38.551617, 39.315102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863754, 39.103394, 39.153336>,  <33.660099, 38.469479, 38.775944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863754, 39.103394, 39.153336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616661, 38.922359, 39.410572>,  <33.468407, 38.813740, 39.564915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616661, 38.922359, 39.410572>,  <33.863754, 39.103394, 39.153336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616661, 38.922359, 39.410572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570174, 0.305424, 0.762639,
		-0.541578, 0.837783, 0.069383,
		-0.617734, -0.452588, 0.643093,
		33.431339, 38.786583, 39.603500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806557, 39.585632, 39.819820>,  <33.863754, 39.103394, 39.153336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806557, 39.585632, 39.819820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734978, 39.205719, 39.922493>,  <33.692028, 38.977772, 39.984097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734978, 39.205719, 39.922493>,  <33.806557, 39.585632, 39.819820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734978, 39.205719, 39.922493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650492, 0.081514, 0.755126,
		-0.738131, 0.302098, 0.603241,
		-0.178949, -0.949785, 0.256680,
		33.681293, 38.920784, 39.999496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950893, 39.660484, 40.472103>,  <33.806557, 39.585632, 39.819820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950893, 39.660484, 40.472103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952393, 39.261967, 40.437714>,  <33.953293, 39.022858, 40.417080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952393, 39.261967, 40.437714>,  <33.950893, 39.660484, 40.472103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952393, 39.261967, 40.437714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512073, -0.071941, 0.855924,
		-0.858934, -0.047231, 0.509904,
		0.003744, -0.996290, -0.085978,
		33.953514, 38.963081, 40.411919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686504, 39.336826, 41.131359>,  <33.950893, 39.660484, 40.472103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686504, 39.336826, 41.131359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854668, 39.017914, 40.958107>,  <33.955566, 38.826565, 40.854156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854668, 39.017914, 40.958107>,  <33.686504, 39.336826, 41.131359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854668, 39.017914, 40.958107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323590, -0.314228, 0.892497,
		-0.847672, -0.515367, 0.125889,
		0.420406, -0.797281, -0.433130,
		33.980789, 38.778728, 40.828167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406662, 38.715122, 41.521599>,  <33.686504, 39.336826, 41.131359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406662, 38.715122, 41.521599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742542, 38.592461, 41.342327>,  <33.944069, 38.518864, 41.234764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742542, 38.592461, 41.342327>,  <33.406662, 38.715122, 41.521599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742542, 38.592461, 41.342327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311130, -0.404757, 0.859866,
		-0.445090, -0.861471, -0.244464,
		0.839698, -0.306658, -0.448183,
		33.994453, 38.500465, 41.207874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525093, 38.068214, 41.777466>,  <33.406662, 38.715122, 41.521599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525093, 38.068214, 41.777466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892761, 38.182632, 41.669167>,  <34.113361, 38.251282, 41.604187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892761, 38.182632, 41.669167>,  <33.525093, 38.068214, 41.777466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892761, 38.182632, 41.669167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384240, -0.500249, 0.775958,
		0.086517, -0.817269, -0.569724,
		0.919170, 0.286044, -0.270748,
		34.168514, 38.268444, 41.587944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865269, 37.432606, 41.809376>,  <33.525093, 38.068214, 41.777466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865269, 37.432606, 41.809376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170864, 37.690361, 41.822563>,  <34.354221, 37.845016, 41.830475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170864, 37.690361, 41.822563>,  <33.865269, 37.432606, 41.809376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170864, 37.690361, 41.822563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348314, -0.454892, 0.819604,
		0.543142, -0.614683, -0.571980,
		0.763986, 0.644390, 0.032968,
		34.400059, 37.883678, 41.832455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444515, 37.065666, 42.093067>,  <33.865269, 37.432606, 41.809376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444515, 37.065666, 42.093067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501938, 37.454624, 42.166641>,  <34.536392, 37.688000, 42.210785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501938, 37.454624, 42.166641>,  <34.444515, 37.065666, 42.093067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501938, 37.454624, 42.166641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235817, -0.214114, 0.947917,
		0.961136, -0.092706, -0.260045,
		0.143557, 0.972400, 0.183931,
		34.545006, 37.746346, 42.221821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088421, 37.018806, 42.428818>,  <34.444515, 37.065666, 42.093067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088421, 37.018806, 42.428818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925385, 37.369259, 42.531784>,  <34.827560, 37.579529, 42.593563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925385, 37.369259, 42.531784>,  <35.088421, 37.018806, 42.428818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925385, 37.369259, 42.531784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316530, -0.128861, 0.939789,
		0.856549, 0.464532, -0.224799,
		-0.407594, 0.876131, 0.257414,
		34.803108, 37.632099, 42.609009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524448, 37.270557, 42.999077>,  <35.088421, 37.018806, 42.428818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524448, 37.270557, 42.999077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183994, 37.480381, 43.007118>,  <34.979721, 37.606274, 43.011944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183994, 37.480381, 43.007118>,  <35.524448, 37.270557, 42.999077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183994, 37.480381, 43.007118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045962, 0.036311, 0.998283,
		0.522929, 0.850599, -0.055015,
		-0.851136, 0.524560, 0.020107,
		34.928654, 37.637749, 43.013149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499836, 37.816238, 43.531380>,  <35.524448, 37.270557, 42.999077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499836, 37.816238, 43.531380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102051, 37.799156, 43.492977>,  <34.863380, 37.788906, 43.469936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102051, 37.799156, 43.492977>,  <35.499836, 37.816238, 43.531380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102051, 37.799156, 43.492977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103892, 0.262884, 0.959218,
		-0.015730, 0.963882, -0.265865,
		-0.994464, -0.042710, -0.096004,
		34.803711, 37.786343, 43.464176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325562, 38.332428, 43.957417>,  <35.499836, 37.816238, 43.531380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325562, 38.332428, 43.957417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009724, 38.094875, 43.895657>,  <34.820221, 37.952343, 43.858601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009724, 38.094875, 43.895657>,  <35.325562, 38.332428, 43.957417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009724, 38.094875, 43.895657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192395, 0.000669, 0.981317,
		-0.582683, 0.804552, -0.114788,
		-0.789598, -0.593881, -0.154403,
		34.772842, 37.916710, 43.849335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737347, 38.623814, 44.323593>,  <35.325562, 38.332428, 43.957417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737347, 38.623814, 44.323593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628174, 38.241570, 44.279202>,  <34.562672, 38.012222, 44.252567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628174, 38.241570, 44.279202>,  <34.737347, 38.623814, 44.323593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628174, 38.241570, 44.279202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185080, -0.061051, 0.980825,
		-0.944062, 0.288238, -0.160202,
		-0.272931, -0.955611, -0.110983,
		34.546295, 37.954887, 44.245907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150757, 38.504837, 44.679852>,  <34.737347, 38.623814, 44.323593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150757, 38.504837, 44.679852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287704, 38.129589, 44.659027>,  <34.369873, 37.904438, 44.646530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287704, 38.129589, 44.659027>,  <34.150757, 38.504837, 44.679852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287704, 38.129589, 44.659027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253525, -0.145596, 0.956309,
		-0.904715, -0.314209, -0.287685,
		0.342367, -0.938123, -0.052064,
		34.390415, 37.848152, 44.643410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639595, 38.212936, 45.131054>,  <34.150757, 38.504837, 44.679852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639595, 38.212936, 45.131054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936783, 37.949940, 45.080929>,  <34.115097, 37.792141, 45.050854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936783, 37.949940, 45.080929>,  <33.639595, 38.212936, 45.131054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936783, 37.949940, 45.080929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093033, -0.286851, 0.953447,
		-0.662826, -0.696726, -0.274290,
		0.742972, -0.657488, -0.125314,
		34.159676, 37.752693, 45.043335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437908, 37.556686, 45.532433>,  <33.639595, 38.212936, 45.131054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437908, 37.556686, 45.532433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831829, 37.522408, 45.472004>,  <34.068180, 37.501842, 45.435745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831829, 37.522408, 45.472004>,  <33.437908, 37.556686, 45.532433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831829, 37.522408, 45.472004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092463, -0.477653, 0.873669,
		-0.147029, -0.874359, -0.462470,
		0.984801, -0.085694, -0.151075,
		34.127270, 37.496700, 45.426682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629066, 36.906532, 45.725334>,  <33.437908, 37.556686, 45.532433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629066, 36.906532, 45.725334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960197, 37.129555, 45.750137>,  <34.158875, 37.263367, 45.765018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960197, 37.129555, 45.750137>,  <33.629066, 36.906532, 45.725334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960197, 37.129555, 45.750137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184996, -0.375662, 0.908105,
		0.529609, -0.740279, -0.414126,
		0.827823, 0.557552, 0.062005,
		34.208546, 37.296822, 45.768738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226173, 36.413452, 45.934856>,  <33.629066, 36.906532, 45.725334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226173, 36.413452, 45.934856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320827, 36.792839, 46.019146>,  <34.377621, 37.020473, 46.069721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320827, 36.792839, 46.019146>,  <34.226173, 36.413452, 45.934856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320827, 36.792839, 46.019146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151059, -0.250165, 0.956346,
		0.959784, -0.194470, -0.202473,
		0.236633, 0.948472, 0.210728,
		34.391819, 37.077381, 46.082363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603878, 36.280800, 46.477741>,  <34.226173, 36.413452, 45.934856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603878, 36.280800, 46.477741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550900, 36.677265, 46.480698>,  <34.519112, 36.915146, 46.482471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550900, 36.677265, 46.480698>,  <34.603878, 36.280800, 46.477741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550900, 36.677265, 46.480698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101446, 0.006137, 0.994822,
		0.985985, 0.132510, -0.101363,
		-0.132446, 0.991163, 0.007391,
		34.511166, 36.974613, 46.482914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076626, 36.594036, 46.920826>,  <34.603878, 36.280800, 46.477741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076626, 36.594036, 46.920826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797001, 36.879932, 46.929386>,  <34.629227, 37.051472, 46.934521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797001, 36.879932, 46.929386>,  <35.076626, 36.594036, 46.920826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797001, 36.879932, 46.929386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120794, 0.088538, 0.988721,
		0.704786, 0.693761, -0.148230,
		-0.699060, 0.714742, 0.021402,
		34.587284, 37.094357, 46.935806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382408, 37.112823, 47.355076>,  <35.076626, 36.594036, 46.920826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382408, 37.112823, 47.355076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987988, 37.179386, 47.353973>,  <34.751335, 37.219326, 47.353313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987988, 37.179386, 47.353973>,  <35.382408, 37.112823, 47.355076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987988, 37.179386, 47.353973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039845, 0.252092, 0.966883,
		0.161593, 0.953288, -0.255206,
		-0.986053, 0.166410, -0.002752,
		34.692173, 37.229309, 47.353149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246746, 37.676411, 47.762455>,  <35.382408, 37.112823, 47.355076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246746, 37.676411, 47.762455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896408, 37.483559, 47.770809>,  <34.686203, 37.367847, 47.775822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896408, 37.483559, 47.770809>,  <35.246746, 37.676411, 47.762455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896408, 37.483559, 47.770809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012517, 0.065957, 0.997744,
		-0.482424, 0.873611, -0.063803,
		-0.875848, -0.482134, 0.020884,
		34.633652, 37.338917, 47.777073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801498, 38.109509, 48.319168>,  <35.246746, 37.676411, 47.762455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801498, 38.109509, 48.319168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652565, 37.744396, 48.252007>,  <34.563206, 37.525330, 48.211708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652565, 37.744396, 48.252007>,  <34.801498, 38.109509, 48.319168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652565, 37.744396, 48.252007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109084, -0.136616, 0.984600,
		-0.921665, 0.384917, -0.048703,
		-0.372335, -0.912784, -0.167902,
		34.540863, 37.470562, 48.201637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217976, 38.045895, 48.728176>,  <34.801498, 38.109509, 48.319168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217976, 38.045895, 48.728176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336456, 37.673779, 48.641617>,  <34.407543, 37.450508, 48.589680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336456, 37.673779, 48.641617>,  <34.217976, 38.045895, 48.728176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336456, 37.673779, 48.641617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073643, -0.203651, 0.976270,
		-0.952282, -0.305111, 0.008187,
		0.296203, -0.930287, -0.216403,
		34.425316, 37.394691, 48.576694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829567, 37.583939, 49.179020>,  <34.217976, 38.045895, 48.728176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829567, 37.583939, 49.179020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136131, 37.355030, 49.062321>,  <34.320072, 37.217686, 48.992302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136131, 37.355030, 49.062321>,  <33.829567, 37.583939, 49.179020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136131, 37.355030, 49.062321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070106, -0.376954, 0.923575,
		-0.638510, -0.728294, -0.248783,
		0.766414, -0.572271, -0.291746,
		34.366055, 37.183350, 48.974796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679440, 36.889214, 49.425175>,  <33.829567, 37.583939, 49.179020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679440, 36.889214, 49.425175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071938, 36.914494, 49.352325>,  <34.307434, 36.929661, 49.308617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071938, 36.914494, 49.352325>,  <33.679440, 36.889214, 49.425175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071938, 36.914494, 49.352325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192564, -0.277134, 0.941337,
		0.009024, -0.958750, -0.284106,
		0.981243, 0.063203, -0.182120,
		34.366310, 36.933453, 49.297691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862541, 36.629818, 50.038372>,  <33.679440, 36.889214, 49.425175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862541, 36.629818, 50.038372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227871, 36.719753, 49.902561>,  <34.447071, 36.773716, 49.821075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227871, 36.719753, 49.902561>,  <33.862541, 36.629818, 50.038372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227871, 36.719753, 49.902561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384297, -0.200073, 0.901269,
		0.134712, -0.953634, -0.269138,
		0.913328, 0.224841, -0.339526,
		34.501869, 36.787205, 49.800705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296856, 36.006702, 50.069771>,  <33.862541, 36.629818, 50.038372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296856, 36.006702, 50.069771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524689, 36.334370, 50.096699>,  <34.661388, 36.530972, 50.112854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524689, 36.334370, 50.096699>,  <34.296856, 36.006702, 50.069771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524689, 36.334370, 50.096699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443194, -0.375073, 0.814187,
		0.692208, -0.433913, -0.576687,
		0.569585, 0.819171, 0.067321,
		34.695564, 36.580120, 50.116894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012062, 35.750942, 50.088619>,  <34.296856, 36.006702, 50.069771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012062, 35.750942, 50.088619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971191, 36.108372, 50.263474>,  <34.946667, 36.322830, 50.368385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971191, 36.108372, 50.263474>,  <35.012062, 35.750942, 50.088619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971191, 36.108372, 50.263474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438978, -0.353833, 0.825894,
		0.892668, 0.276285, -0.356103,
		-0.102181, 0.893571, 0.437139,
		34.940536, 36.376442, 50.394615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075943, 35.476395, 50.737698>,  <35.012062, 35.750942, 50.088619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075943, 35.476395, 50.737698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103664, 35.858295, 50.853390>,  <35.120296, 36.087437, 50.922806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103664, 35.858295, 50.853390>,  <35.075943, 35.476395, 50.737698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103664, 35.858295, 50.853390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277835, -0.296923, 0.913589,
		0.958126, 0.017046, -0.285839,
		0.069299, 0.954749, 0.289226,
		35.124454, 36.144722, 50.940159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721935, 35.503475, 51.081322>,  <35.075943, 35.476395, 50.737698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721935, 35.503475, 51.081322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478962, 35.795486, 51.206589>,  <35.333176, 35.970695, 51.281750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478962, 35.795486, 51.206589>,  <35.721935, 35.503475, 51.081322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478962, 35.795486, 51.206589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257981, -0.191574, 0.946966,
		0.751310, 0.656015, -0.071965,
		-0.607437, 0.730030, 0.313171,
		35.296730, 36.014496, 51.300541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207813, 36.023426, 51.317211>,  <35.721935, 35.503475, 51.081322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207813, 36.023426, 51.317211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850296, 36.070980, 51.490185>,  <35.635784, 36.099514, 51.593971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850296, 36.070980, 51.490185>,  <36.207813, 36.023426, 51.317211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850296, 36.070980, 51.490185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430941, -0.039368, 0.901521,
		0.124202, 0.992127, -0.016046,
		-0.893792, 0.118885, 0.432438,
		35.582157, 36.106647, 51.619915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276722, 36.550571, 51.852432>,  <36.207813, 36.023426, 51.317211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276722, 36.550571, 51.852432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943729, 36.349613, 51.945881>,  <35.743935, 36.229038, 52.001949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943729, 36.349613, 51.945881>,  <36.276722, 36.550571, 51.852432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943729, 36.349613, 51.945881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277642, -0.013367, 0.960592,
		-0.479472, 0.864536, 0.150613,
		-0.832479, -0.502393, 0.233623,
		35.693985, 36.198895, 52.015968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123440, 36.713791, 52.494358>,  <36.276722, 36.550571, 51.852432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123440, 36.713791, 52.494358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875263, 36.400452, 52.509438>,  <35.726357, 36.212448, 52.518486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875263, 36.400452, 52.509438>,  <36.123440, 36.713791, 52.494358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875263, 36.400452, 52.509438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154669, -0.075097, 0.985108,
		-0.768848, 0.617034, 0.167752,
		-0.620443, -0.783345, 0.037698,
		35.689129, 36.165447, 52.520748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526337, 36.850494, 52.888500>,  <36.123440, 36.713791, 52.494358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526337, 36.850494, 52.888500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609180, 36.459171, 52.886326>,  <35.658886, 36.224377, 52.885021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609180, 36.459171, 52.886326>,  <35.526337, 36.850494, 52.888500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609180, 36.459171, 52.886326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027349, -0.011347, 0.999562,
		-0.977936, -0.206867, -0.029106,
		0.207107, -0.978303, -0.005439,
		35.671314, 36.165680, 52.884693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030350, 36.458553, 53.233395>,  <35.526337, 36.850494, 52.888500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030350, 36.458553, 53.233395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359608, 36.232422, 53.254700>,  <35.557163, 36.096741, 53.267483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359608, 36.232422, 53.254700>,  <35.030350, 36.458553, 53.233395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359608, 36.232422, 53.254700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233933, -0.252150, 0.938987,
		-0.517411, -0.785378, -0.339805,
		0.823141, -0.565333, 0.053261,
		35.606552, 36.062820, 53.270679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768070, 35.856884, 53.636078>,  <35.030350, 36.458553, 53.233395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768070, 35.856884, 53.636078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162094, 35.924725, 53.647976>,  <35.398510, 35.965427, 53.655113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162094, 35.924725, 53.647976>,  <34.768070, 35.856884, 53.636078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162094, 35.924725, 53.647976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014681, -0.089376, 0.995890,
		0.171563, -0.981451, -0.085551,
		0.985064, 0.169602, 0.029743,
		35.457615, 35.975605, 53.656898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190296, 35.318520, 53.952015>,  <34.768070, 35.856884, 53.636078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190296, 35.318520, 53.952015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376560, 35.665928, 54.019939>,  <35.488319, 35.874374, 54.060696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376560, 35.665928, 54.019939>,  <35.190296, 35.318520, 53.952015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376560, 35.665928, 54.019939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164058, -0.273281, 0.947841,
		0.869625, -0.413510, -0.269743,
		0.465657, 0.868520, 0.169812,
		35.516258, 35.926483, 54.070885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897068, 35.261829, 54.194714>,  <35.190296, 35.318520, 53.952015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897068, 35.261829, 54.194714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698925, 35.572258, 54.350834>,  <35.580040, 35.758514, 54.444508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698925, 35.572258, 54.350834>,  <35.897068, 35.261829, 54.194714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698925, 35.572258, 54.350834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048942, -0.423652, 0.904502,
		0.867310, 0.467153, 0.171876,
		-0.495357, 0.776071, 0.390301,
		35.550320, 35.805080, 54.467926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570995, 34.670536, 53.969879>,  <35.897068, 35.261829, 54.194714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570995, 34.670536, 53.969879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929569, 34.822636, 53.878838>,  <36.144714, 34.913895, 53.824211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929569, 34.822636, 53.878838>,  <35.570995, 34.670536, 53.969879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929569, 34.822636, 53.878838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006559, -0.502151, -0.864755,
		-0.443118, 0.776693, -0.447654,
		0.896439, 0.380253, -0.227607,
		36.198502, 34.936710, 53.810555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449177, 34.813553, 53.275276>,  <35.570995, 34.670536, 53.969879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449177, 34.813553, 53.275276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833286, 34.773289, 53.379379>,  <36.063751, 34.749130, 53.441841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833286, 34.773289, 53.379379>,  <35.449177, 34.813553, 53.275276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833286, 34.773289, 53.379379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181840, -0.481702, -0.857261,
		0.211661, 0.870534, -0.444263,
		0.960278, -0.100664, 0.260255,
		36.121368, 34.743088, 53.457455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739197, 35.184196, 52.880825>,  <35.449177, 34.813553, 53.275276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739197, 35.184196, 52.880825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928097, 34.853638, 53.003494>,  <36.041435, 34.655304, 53.077095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928097, 34.853638, 53.003494>,  <35.739197, 35.184196, 52.880825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928097, 34.853638, 53.003494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112676, -0.401658, -0.908832,
		0.874236, 0.394636, -0.282797,
		0.472246, -0.826398, 0.306678,
		36.069771, 34.605717, 53.095497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253014, 34.921131, 52.352432>,  <35.739197, 35.184196, 52.880825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253014, 34.921131, 52.352432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137959, 34.618668, 52.587547>,  <36.068924, 34.437191, 52.728615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137959, 34.618668, 52.587547>,  <36.253014, 34.921131, 52.352432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137959, 34.618668, 52.587547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433614, -0.444405, -0.783890,
		0.853958, -0.480348, -0.200052,
		-0.287636, -0.756155, 0.587789,
		36.051666, 34.391823, 52.763885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515816, 34.159283, 52.118816>,  <36.253014, 34.921131, 52.352432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515816, 34.159283, 52.118816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185463, 34.106384, 52.338058>,  <35.987251, 34.074646, 52.469604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185463, 34.106384, 52.338058>,  <36.515816, 34.159283, 52.118816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185463, 34.106384, 52.338058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409973, -0.526522, -0.744780,
		0.387083, -0.839813, 0.380631,
		-0.825886, -0.132243, 0.548109,
		35.937698, 34.066711, 52.502491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339878, 33.370560, 52.208176>,  <36.515816, 34.159283, 52.118816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339878, 33.370560, 52.208176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013737, 33.601257, 52.228424>,  <35.818050, 33.739677, 52.240574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013737, 33.601257, 52.228424>,  <36.339878, 33.370560, 52.208176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013737, 33.601257, 52.228424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387139, -0.478105, -0.788377,
		-0.430488, -0.662406, 0.613105,
		-0.815355, 0.576744, 0.050625,
		35.769131, 33.774281, 52.243610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750343, 32.922512, 52.094406>,  <36.339878, 33.370560, 52.208176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750343, 32.922512, 52.094406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627071, 33.292965, 52.007401>,  <35.553108, 33.515236, 51.955196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627071, 33.292965, 52.007401>,  <35.750343, 32.922512, 52.094406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627071, 33.292965, 52.007401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436352, -0.340781, -0.832746,
		-0.845355, -0.161718, 0.509139,
		-0.308175, 0.926129, -0.217514,
		35.534618, 33.570805, 51.942146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112743, 32.802002, 51.890640>,  <35.750343, 32.922512, 52.094406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112743, 32.802002, 51.890640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195370, 33.155048, 51.721729>,  <35.244946, 33.366875, 51.620380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195370, 33.155048, 51.721729>,  <35.112743, 32.802002, 51.890640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195370, 33.155048, 51.721729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427733, -0.306704, -0.850281,
		-0.879985, 0.356266, 0.314167,
		0.206570, 0.882614, -0.422281,
		35.257339, 33.419834, 51.595043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480991, 33.014782, 51.514053>,  <35.112743, 32.802002, 51.890640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480991, 33.014782, 51.514053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788330, 33.220127, 51.361160>,  <34.972733, 33.343334, 51.269424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788330, 33.220127, 51.361160>,  <34.480991, 33.014782, 51.514053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788330, 33.220127, 51.361160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272295, -0.278274, -0.921096,
		-0.579223, 0.811801, -0.074024,
		0.768346, 0.513364, -0.382232,
		35.018833, 33.374138, 51.246490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166916, 33.467236, 50.959385>,  <34.480991, 33.014782, 51.514053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166916, 33.467236, 50.959385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555019, 33.408775, 50.882198>,  <34.787880, 33.373699, 50.835888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555019, 33.408775, 50.882198>,  <34.166916, 33.467236, 50.959385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555019, 33.408775, 50.882198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216690, -0.169104, -0.961483,
		0.107894, 0.974701, -0.195745,
		0.970260, -0.146155, -0.192963,
		34.846096, 33.364929, 50.824310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225739, 33.734673, 50.344662>,  <34.166916, 33.467236, 50.959385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225739, 33.734673, 50.344662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571381, 33.533367, 50.341770>,  <34.778767, 33.412582, 50.340034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571381, 33.533367, 50.341770>,  <34.225739, 33.734673, 50.344662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571381, 33.533367, 50.341770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137255, -0.221794, -0.965385,
		0.484240, 0.835184, -0.260728,
		0.864102, -0.503265, -0.007231,
		34.830612, 33.382389, 50.339600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545872, 34.074314, 49.795135>,  <34.225739, 33.734673, 50.344662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545872, 34.074314, 49.795135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699291, 33.710037, 49.856483>,  <34.791344, 33.491470, 49.893291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699291, 33.710037, 49.856483>,  <34.545872, 34.074314, 49.795135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699291, 33.710037, 49.856483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091734, -0.202816, -0.974910,
		0.918952, 0.359861, -0.161332,
		0.383553, -0.910695, 0.153367,
		34.814358, 33.436829, 49.902493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037502, 34.028446, 49.300098>,  <34.545872, 34.074314, 49.795135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037502, 34.028446, 49.300098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977966, 33.647583, 49.406860>,  <34.942245, 33.419064, 49.470917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977966, 33.647583, 49.406860>,  <35.037502, 34.028446, 49.300098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977966, 33.647583, 49.406860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018481, -0.272544, -0.961966,
		0.988688, -0.138250, 0.058164,
		-0.148844, -0.952159, 0.266906,
		34.933311, 33.361935, 49.486931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506599, 33.578007, 48.819225>,  <35.037502, 34.028446, 49.300098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506599, 33.578007, 48.819225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233498, 33.328854, 48.971996>,  <35.069637, 33.179363, 49.063660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233498, 33.328854, 48.971996>,  <35.506599, 33.578007, 48.819225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233498, 33.328854, 48.971996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057833, -0.567153, -0.821579,
		0.728354, -0.538850, 0.423251,
		-0.682756, -0.622878, 0.381925,
		35.028671, 33.141991, 49.086575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786995, 33.013493, 48.772850>,  <35.506599, 33.578007, 48.819225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786995, 33.013493, 48.772850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394512, 32.936768, 48.781231>,  <35.159023, 32.890732, 48.786259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394512, 32.936768, 48.781231>,  <35.786995, 33.013493, 48.772850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394512, 32.936768, 48.781231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085669, -0.530369, -0.843427,
		0.172896, -0.825782, 0.536834,
		-0.981207, -0.191815, 0.020955,
		35.100151, 32.879223, 48.787518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793907, 32.285400, 48.581230>,  <35.786995, 33.013493, 48.772850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793907, 32.285400, 48.581230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414394, 32.407360, 48.548138>,  <35.186687, 32.480534, 48.528282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414394, 32.407360, 48.548138>,  <35.793907, 32.285400, 48.581230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414394, 32.407360, 48.548138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135302, -0.628796, -0.765709,
		-0.285481, -0.715300, 0.637845,
		-0.948785, 0.304897, -0.082728,
		35.129757, 32.498829, 48.523319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311237, 31.569571, 48.531441>,  <35.793907, 32.285400, 48.581230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311237, 31.569571, 48.531441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143635, 31.891417, 48.363140>,  <35.043076, 32.084522, 48.262161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143635, 31.891417, 48.363140>,  <35.311237, 31.569571, 48.531441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143635, 31.891417, 48.363140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066890, -0.434778, -0.898050,
		-0.905518, -0.404429, 0.128353,
		-0.419003, 0.804615, -0.420751,
		35.017933, 32.132801, 48.236916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998260, 31.302305, 47.998772>,  <35.311237, 31.569571, 48.531441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998260, 31.302305, 47.998772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973785, 31.687918, 47.895309>,  <34.959103, 31.919285, 47.833233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973785, 31.687918, 47.895309>,  <34.998260, 31.302305, 47.998772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973785, 31.687918, 47.895309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133747, -0.264724, -0.955004,
		-0.989125, -0.023838, 0.145134,
		-0.061186, 0.964029, -0.258657,
		34.955429, 31.977127, 47.817711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522789, 31.210030, 47.475204>,  <34.998260, 31.302305, 47.998772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522789, 31.210030, 47.475204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664154, 31.580906, 47.425537>,  <34.748974, 31.803432, 47.395737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664154, 31.580906, 47.425537>,  <34.522789, 31.210030, 47.475204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664154, 31.580906, 47.425537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407752, 0.033219, -0.912489,
		-0.841926, 0.373113, 0.389804,
		0.353410, 0.927191, -0.124169,
		34.770176, 31.859064, 47.388287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051212, 31.749355, 47.194881>,  <34.522789, 31.210030, 47.475204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051212, 31.749355, 47.194881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414703, 31.891346, 47.107063>,  <34.632797, 31.976542, 47.054375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414703, 31.891346, 47.107063>,  <34.051212, 31.749355, 47.194881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414703, 31.891346, 47.107063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331861, 0.295498, -0.895851,
		-0.253133, 0.886945, 0.386332,
		0.908731, 0.354978, -0.219542,
		34.687325, 31.997839, 47.041203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936172, 32.387062, 46.917542>,  <34.051212, 31.749355, 47.194881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936172, 32.387062, 46.917542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294823, 32.262096, 46.792027>,  <34.510014, 32.187119, 46.716717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294823, 32.262096, 46.792027>,  <33.936172, 32.387062, 46.917542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294823, 32.262096, 46.792027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241203, 0.249675, -0.937808,
		0.371327, 0.916548, 0.148511,
		0.896626, -0.312412, -0.313785,
		34.563812, 32.168373, 46.697891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313171, 32.983013, 46.633141>,  <33.936172, 32.387062, 46.917542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313171, 32.983013, 46.633141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458218, 32.640587, 46.485809>,  <34.545246, 32.435131, 46.397411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458218, 32.640587, 46.485809>,  <34.313171, 32.983013, 46.633141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458218, 32.640587, 46.485809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305031, 0.264430, -0.914895,
		0.880604, 0.444109, -0.165238,
		0.362619, -0.856063, -0.368326,
		34.567005, 32.383766, 46.375313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663067, 33.149082, 46.064575>,  <34.313171, 32.983013, 46.633141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663067, 33.149082, 46.064575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586697, 32.760315, 46.009563>,  <34.540874, 32.527054, 45.976555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586697, 32.760315, 46.009563>,  <34.663067, 33.149082, 46.064575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586697, 32.760315, 46.009563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336335, 0.196399, -0.921035,
		0.922185, -0.129595, -0.364389,
		-0.190927, -0.971922, -0.137529,
		34.529419, 32.468739, 45.968304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977684, 33.033512, 45.436493>,  <34.663067, 33.149082, 46.064575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977684, 33.033512, 45.436493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697762, 32.758045, 45.512394>,  <34.529808, 32.592766, 45.557934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697762, 32.758045, 45.512394>,  <34.977684, 33.033512, 45.436493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697762, 32.758045, 45.512394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398567, 0.155996, -0.903775,
		0.592800, -0.708098, -0.383648,
		-0.699809, -0.688667, 0.189750,
		34.487820, 32.551445, 45.569321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883835, 32.805229, 44.867897>,  <34.977684, 33.033512, 45.436493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883835, 32.805229, 44.867897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564999, 32.629257, 45.033356>,  <34.373695, 32.523674, 45.132629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564999, 32.629257, 45.033356>,  <34.883835, 32.805229, 44.867897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564999, 32.629257, 45.033356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401074, -0.126392, -0.907284,
		0.451424, -0.889093, -0.075699,
		-0.797092, -0.439931, 0.413648,
		34.325871, 32.497276, 45.157452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841747, 32.145519, 44.604923>,  <34.883835, 32.805229, 44.867897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841747, 32.145519, 44.604923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482090, 32.236416, 44.754536>,  <34.266296, 32.290955, 44.844303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482090, 32.236416, 44.754536>,  <34.841747, 32.145519, 44.604923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482090, 32.236416, 44.754536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393266, -0.044510, -0.918347,
		-0.192043, -0.972819, 0.129390,
		-0.899145, 0.227247, 0.374029,
		34.212345, 32.304588, 44.866745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375866, 31.771683, 44.214546>,  <34.841747, 32.145519, 44.604923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375866, 31.771683, 44.214546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150047, 32.062157, 44.371487>,  <34.014557, 32.236439, 44.465652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150047, 32.062157, 44.371487>,  <34.375866, 31.771683, 44.214546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150047, 32.062157, 44.371487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494401, 0.083134, -0.865250,
		-0.660947, -0.682457, 0.312092,
		-0.564550, 0.726183, 0.392354,
		33.980682, 32.280010, 44.489193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691177, 31.601341, 43.972778>,  <34.375866, 31.771683, 44.214546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691177, 31.601341, 43.972778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695126, 31.982632, 44.093616>,  <33.697495, 32.211407, 44.166119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695126, 31.982632, 44.093616>,  <33.691177, 31.601341, 43.972778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695126, 31.982632, 44.093616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461086, 0.272412, -0.844507,
		-0.887300, -0.130959, 0.442208,
		0.009867, 0.953227, 0.302094,
		33.698086, 32.268600, 44.184246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934887, 31.893318, 43.944336>,  <33.691177, 31.601341, 43.972778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934887, 31.893318, 43.944336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186268, 32.202702, 43.911339>,  <33.337097, 32.388332, 43.891541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186268, 32.202702, 43.911339>,  <32.934887, 31.893318, 43.944336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186268, 32.202702, 43.911339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422291, 0.250196, -0.871247,
		-0.653235, 0.582376, 0.483862,
		0.628454, 0.773460, -0.082495,
		33.374805, 32.434738, 43.886589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473858, 32.337135, 43.661114>,  <32.934887, 31.893318, 43.944336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473858, 32.337135, 43.661114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840462, 32.485119, 43.600266>,  <33.060425, 32.573910, 43.563755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840462, 32.485119, 43.600266>,  <32.473858, 32.337135, 43.661114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840462, 32.485119, 43.600266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333088, 0.495239, -0.802366,
		-0.221506, 0.786045, 0.577120,
		0.916508, 0.369961, -0.152124,
		33.115414, 32.596107, 43.554626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344307, 32.967773, 43.351677>,  <32.473858, 32.337135, 43.661114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344307, 32.967773, 43.351677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733387, 32.924282, 43.269665>,  <32.966835, 32.898186, 43.220455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733387, 32.924282, 43.269665>,  <32.344307, 32.967773, 43.351677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733387, 32.924282, 43.269665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105847, 0.578387, -0.808866,
		0.206534, 0.808484, 0.551087,
		0.972697, -0.108727, -0.205032,
		33.025196, 32.891663, 43.208157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674274, 33.629776, 43.466213>,  <32.344307, 32.967773, 43.351677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674274, 33.629776, 43.466213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901196, 33.431850, 43.202904>,  <33.037346, 33.313095, 43.044918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901196, 33.431850, 43.202904>,  <32.674274, 33.629776, 43.466213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901196, 33.431850, 43.202904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180750, 0.705047, -0.685739,
		0.803431, 0.508003, 0.310534,
		0.567298, -0.494815, -0.658278,
		33.071384, 33.283405, 43.005421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200813, 34.053719, 43.099129>,  <32.674274, 33.629776, 43.466213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200813, 34.053719, 43.099129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149395, 33.742260, 42.853466>,  <33.118546, 33.555386, 42.706070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149395, 33.742260, 42.853466>,  <33.200813, 34.053719, 43.099129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149395, 33.742260, 42.853466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092911, 0.626026, -0.774247,
		0.987342, -0.042464, -0.152817,
		-0.128545, -0.778645, -0.614156,
		33.110832, 33.508667, 42.669220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480770, 34.268459, 42.448093>,  <33.200813, 34.053719, 43.099129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480770, 34.268459, 42.448093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230648, 33.966789, 42.367882>,  <33.080574, 33.785786, 42.319756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230648, 33.966789, 42.367882>,  <33.480770, 34.268459, 42.448093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230648, 33.966789, 42.367882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208353, 0.408978, -0.888440,
		0.752052, -0.513766, -0.412871,
		-0.625306, -0.754176, -0.200528,
		33.043056, 33.740536, 42.307724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731144, 34.080936, 41.778503>,  <33.480770, 34.268459, 42.448093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731144, 34.080936, 41.778503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361412, 33.936539, 41.827972>,  <33.139572, 33.849899, 41.857655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361412, 33.936539, 41.827972>,  <33.731144, 34.080936, 41.778503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361412, 33.936539, 41.827972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257980, 0.352383, -0.899596,
		0.281164, -0.863432, -0.418847,
		-0.924334, -0.360988, 0.123671,
		33.084110, 33.828243, 41.865074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665291, 33.716644, 41.198410>,  <33.731144, 34.080936, 41.778503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665291, 33.716644, 41.198410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302334, 33.808071, 41.339493>,  <33.084560, 33.862926, 41.424145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302334, 33.808071, 41.339493>,  <33.665291, 33.716644, 41.198410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302334, 33.808071, 41.339493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219945, 0.456887, -0.861904,
		-0.358149, -0.859659, -0.364303,
		-0.907389, 0.228563, 0.352711,
		33.030117, 33.876640, 41.445305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286022, 33.642029, 40.612610>,  <33.665291, 33.716644, 41.198410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286022, 33.642029, 40.612610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076275, 33.864399, 40.870598>,  <32.950424, 33.997822, 41.025391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076275, 33.864399, 40.870598>,  <33.286022, 33.642029, 40.612610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076275, 33.864399, 40.870598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330393, 0.565271, -0.755850,
		-0.784777, -0.609439, -0.112738,
		-0.524372, 0.555926, 0.644966,
		32.918964, 34.031178, 41.064087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636585, 33.728119, 40.237122>,  <33.286022, 33.642029, 40.612610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636585, 33.728119, 40.237122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638718, 34.010628, 40.520290>,  <32.639999, 34.180134, 40.690193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638718, 34.010628, 40.520290>,  <32.636585, 33.728119, 40.237122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638718, 34.010628, 40.520290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446345, 0.635181, -0.630334,
		-0.894845, -0.312616, 0.318627,
		0.005333, 0.706269, 0.707923,
		32.640316, 34.222507, 40.732666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969522, 34.000893, 40.194935>,  <32.636585, 33.728119, 40.237122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969522, 34.000893, 40.194935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199444, 34.275459, 40.373119>,  <32.337399, 34.440197, 40.480030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199444, 34.275459, 40.373119>,  <31.969522, 34.000893, 40.194935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199444, 34.275459, 40.373119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318670, 0.689176, -0.650758,
		-0.753691, 0.232102, 0.614881,
		0.574804, 0.686414, 0.445462,
		32.371883, 34.481384, 40.506760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577555, 34.637581, 40.155834>,  <31.969522, 34.000893, 40.194935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577555, 34.637581, 40.155834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955666, 34.756084, 40.210503>,  <32.182533, 34.827187, 40.243301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955666, 34.756084, 40.210503>,  <31.577555, 34.637581, 40.155834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955666, 34.756084, 40.210503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135139, 0.736795, -0.662473,
		-0.296962, 0.607752, 0.736513,
		0.945279, 0.296261, 0.136669,
		32.239250, 34.844963, 40.251503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645292, 35.301205, 40.328491>,  <31.577555, 34.637581, 40.155834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645292, 35.301205, 40.328491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004292, 35.217979, 40.172951>,  <32.219692, 35.168045, 40.079624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004292, 35.217979, 40.172951>,  <31.645292, 35.301205, 40.328491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004292, 35.217979, 40.172951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116461, 0.738609, -0.663998,
		0.425363, 0.641223, 0.638670,
		0.897498, -0.208060, -0.388854,
		32.273540, 35.155560, 40.056293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921280, 36.007080, 40.155926>,  <31.645292, 35.301205, 40.328491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921280, 36.007080, 40.155926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146492, 35.750366, 39.947651>,  <32.281620, 35.596336, 39.822685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146492, 35.750366, 39.947651>,  <31.921280, 36.007080, 40.155926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146492, 35.750366, 39.947651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156107, 0.701280, -0.695584,
		0.811560, 0.310351, 0.495027,
		0.563028, -0.641785, -0.520683,
		32.315399, 35.557831, 39.791447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393257, 36.459476, 39.821743>,  <31.921280, 36.007080, 40.155926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393257, 36.459476, 39.821743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429947, 36.100857, 39.648407>,  <32.451962, 35.885685, 39.544407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429947, 36.100857, 39.648407>,  <32.393257, 36.459476, 39.821743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429947, 36.100857, 39.648407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131603, 0.442270, -0.887174,
		0.987050, 0.024343, 0.158554,
		0.091720, -0.896552, -0.433339,
		32.457462, 35.831890, 39.518406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104343, 36.351376, 39.419434>,  <32.393257, 36.459476, 39.821743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104343, 36.351376, 39.419434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797932, 36.135082, 39.280403>,  <32.614086, 36.005306, 39.196987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797932, 36.135082, 39.280403>,  <33.104343, 36.351376, 39.419434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797932, 36.135082, 39.280403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128759, 0.400676, -0.907127,
		0.629779, -0.739639, -0.237305,
		-0.766029, -0.540734, -0.347572,
		32.568123, 35.972862, 39.176132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395741, 36.159027, 38.837070>,  <33.104343, 36.351376, 39.419434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395741, 36.159027, 38.837070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002216, 36.114254, 38.781075>,  <32.766102, 36.087391, 38.747478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002216, 36.114254, 38.781075>,  <33.395741, 36.159027, 38.837070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002216, 36.114254, 38.781075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092093, 0.354378, -0.930556,
		0.153764, -0.928380, -0.338331,
		-0.983807, -0.111928, -0.139988,
		32.707073, 36.080677, 38.739079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201492, 35.998280, 39.003620>,  <33.395741, 36.159027, 38.837070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201492, 35.998280, 39.003620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530933, 35.914082, 38.792957>,  <34.728600, 35.863564, 38.666561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530933, 35.914082, 38.792957>,  <34.201492, 35.998280, 39.003620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530933, 35.914082, 38.792957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227045, -0.728563, 0.646255,
		-0.519739, -0.651833, -0.552254,
		0.823602, -0.210498, -0.526659,
		34.778015, 35.850933, 38.634960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207043, 35.294262, 38.717022>,  <34.201492, 35.998280, 39.003620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207043, 35.294262, 38.717022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590584, 35.407318, 38.727692>,  <34.820709, 35.475151, 38.734093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590584, 35.407318, 38.727692>,  <34.207043, 35.294262, 38.717022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590584, 35.407318, 38.727692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222438, -0.806357, 0.548006,
		0.176398, -0.519524, -0.836049,
		0.958856, 0.282636, 0.026678,
		34.878242, 35.492107, 38.735695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711342, 34.631077, 38.754704>,  <34.207043, 35.294262, 38.717022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711342, 34.631077, 38.754704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978436, 34.915573, 38.842587>,  <35.138691, 35.086269, 38.895317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978436, 34.915573, 38.842587>,  <34.711342, 34.631077, 38.754704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978436, 34.915573, 38.842587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603421, -0.689991, 0.399745,
		0.435909, -0.134348, -0.889907,
		0.667732, 0.711241, 0.219705,
		35.178757, 35.128944, 38.908497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494663, 34.393894, 38.574585>,  <34.711342, 34.631077, 38.754704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494663, 34.393894, 38.574585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495087, 34.682182, 38.851875>,  <35.495338, 34.855156, 39.018250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495087, 34.682182, 38.851875>,  <35.494663, 34.393894, 38.574585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495087, 34.682182, 38.851875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487770, -0.605536, 0.628814,
		0.872972, 0.337469, -0.352186,
		0.001057, 0.720722, 0.693223,
		35.495403, 34.898399, 39.059841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074905, 34.282925, 38.868816>,  <35.494663, 34.393894, 38.574585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074905, 34.282925, 38.868816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906677, 34.519409, 39.144085>,  <35.805740, 34.661301, 39.309246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906677, 34.519409, 39.144085>,  <36.074905, 34.282925, 38.868816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906677, 34.519409, 39.144085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344311, -0.597763, 0.723967,
		0.839385, 0.541428, 0.047842,
		-0.420575, 0.591214, 0.688173,
		35.780506, 34.696774, 39.350536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567799, 34.291664, 39.459148>,  <36.074905, 34.282925, 38.868816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567799, 34.291664, 39.459148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238663, 34.426907, 39.641850>,  <36.041183, 34.508053, 39.751469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238663, 34.426907, 39.641850>,  <36.567799, 34.291664, 39.459148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238663, 34.426907, 39.641850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249584, -0.507070, 0.824978,
		0.510537, 0.792820, 0.332849,
		-0.822836, 0.338108, 0.456753,
		35.991814, 34.528339, 39.778877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808052, 34.582157, 40.062702>,  <36.567799, 34.291664, 39.459148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808052, 34.582157, 40.062702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430126, 34.501347, 40.165867>,  <36.203373, 34.452862, 40.227764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430126, 34.501347, 40.165867>,  <36.808052, 34.582157, 40.062702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430126, 34.501347, 40.165867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325598, -0.491813, 0.807530,
		-0.036297, 0.846939, 0.530450,
		-0.944811, -0.202024, 0.257911,
		36.146683, 34.440739, 40.243240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671074, 34.749599, 40.757244>,  <36.808052, 34.582157, 40.062702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671074, 34.749599, 40.757244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369759, 34.494026, 40.694851>,  <36.188969, 34.340683, 40.657417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369759, 34.494026, 40.694851>,  <36.671074, 34.749599, 40.757244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369759, 34.494026, 40.694851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224180, -0.472397, 0.852399,
		-0.618310, 0.607131, 0.499085,
		-0.753284, -0.638932, -0.155981,
		36.143772, 34.302345, 40.648056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286724, 34.705826, 41.385273>,  <36.671074, 34.749599, 40.757244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286724, 34.705826, 41.385273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217209, 34.366768, 41.184753>,  <36.175499, 34.163334, 41.064442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217209, 34.366768, 41.184753>,  <36.286724, 34.705826, 41.385273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217209, 34.366768, 41.184753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065374, -0.517855, 0.852967,
		-0.982610, 0.115464, 0.145411,
		-0.173789, -0.847640, -0.501301,
		36.165073, 34.112476, 41.034363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694035, 34.245068, 41.672932>,  <36.286724, 34.705826, 41.385273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694035, 34.245068, 41.672932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938553, 33.987740, 41.488556>,  <36.085262, 33.833344, 41.377930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938553, 33.987740, 41.488556>,  <35.694035, 34.245068, 41.672932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938553, 33.987740, 41.488556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067397, -0.537998, 0.840247,
		-0.788531, -0.544702, -0.285516,
		0.611291, -0.643318, -0.460940,
		36.121941, 33.794743, 41.350273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595184, 33.650082, 42.052826>,  <35.694035, 34.245068, 41.672932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595184, 33.650082, 42.052826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888855, 33.540192, 41.804466>,  <36.065056, 33.474258, 41.655449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888855, 33.540192, 41.804466>,  <35.595184, 33.650082, 42.052826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888855, 33.540192, 41.804466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371719, -0.602620, 0.706169,
		-0.568166, -0.749251, -0.340309,
		0.734175, -0.274722, -0.620899,
		36.109108, 33.457775, 41.618198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567009, 33.000507, 42.046768>,  <35.595184, 33.650082, 42.052826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567009, 33.000507, 42.046768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936211, 33.040020, 41.898010>,  <36.157734, 33.063728, 41.808758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936211, 33.040020, 41.898010>,  <35.567009, 33.000507, 42.046768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936211, 33.040020, 41.898010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360020, -0.562832, 0.744047,
		-0.135816, -0.820648, -0.555059,
		0.923006, 0.098778, -0.371891,
		36.213112, 33.069653, 41.786442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825981, 32.321159, 42.126793>,  <35.567009, 33.000507, 42.046768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825981, 32.321159, 42.126793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148136, 32.554886, 42.086933>,  <36.341427, 32.695122, 42.063015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148136, 32.554886, 42.086933>,  <35.825981, 32.321159, 42.126793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148136, 32.554886, 42.086933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503195, -0.585110, 0.635957,
		0.313294, -0.562333, -0.765264,
		0.805383, 0.584318, -0.099652,
		36.389751, 32.730183, 42.057037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425442, 31.866751, 41.956432>,  <35.825981, 32.321159, 42.126793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425442, 31.866751, 41.956432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540432, 32.203136, 42.139797>,  <36.609425, 32.404968, 42.249817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540432, 32.203136, 42.139797>,  <36.425442, 31.866751, 41.956432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540432, 32.203136, 42.139797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456549, -0.541055, 0.706273,
		0.841974, 0.006249, -0.539482,
		0.287476, 0.840964, 0.458408,
		36.626675, 32.455425, 42.277321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099766, 31.663233, 42.202065>,  <36.425442, 31.866751, 41.956432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099766, 31.663233, 42.202065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007328, 31.994446, 42.406403>,  <36.951866, 32.193172, 42.529003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007328, 31.994446, 42.406403>,  <37.099766, 31.663233, 42.202065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007328, 31.994446, 42.406403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427653, -0.385162, 0.817779,
		0.873904, 0.407447, -0.265102,
		-0.231095, 0.828032, 0.510841,
		36.938000, 32.242855, 42.559654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726952, 31.820349, 42.534660>,  <37.099766, 31.663233, 42.202065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726952, 31.820349, 42.534660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445477, 32.025082, 42.731777>,  <37.276592, 32.147923, 42.850048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445477, 32.025082, 42.731777>,  <37.726952, 31.820349, 42.534660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445477, 32.025082, 42.731777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341736, -0.364270, 0.866328,
		0.622924, 0.778034, 0.081422,
		-0.703692, 0.511831, 0.492794,
		37.234367, 32.178631, 42.879616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066071, 32.125183, 43.100056>,  <37.726952, 31.820349, 42.534660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066071, 32.125183, 43.100056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677166, 32.104130, 43.191208>,  <37.443821, 32.091499, 43.245899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677166, 32.104130, 43.191208>,  <38.066071, 32.125183, 43.100056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677166, 32.104130, 43.191208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233818, -0.241214, 0.941884,
		0.005396, 0.969044, 0.246830,
		-0.972265, -0.052631, 0.227881,
		37.385487, 32.088341, 43.259571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914787, 32.199306, 43.827549>,  <38.066071, 32.125183, 43.100056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914787, 32.199306, 43.827549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534790, 32.089809, 43.767441>,  <37.306793, 32.024109, 43.731377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534790, 32.089809, 43.767441>,  <37.914787, 32.199306, 43.827549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534790, 32.089809, 43.767441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118298, -0.129882, 0.984447,
		-0.289007, 0.952992, 0.091002,
		-0.949990, -0.273747, -0.150274,
		37.249794, 32.007687, 43.722359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430325, 32.689129, 44.204140>,  <37.914787, 32.199306, 43.827549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430325, 32.689129, 44.204140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234470, 32.343201, 44.159691>,  <37.116959, 32.135643, 44.133022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234470, 32.343201, 44.159691>,  <37.430325, 32.689129, 44.204140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234470, 32.343201, 44.159691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051683, -0.098431, 0.993801,
		-0.870396, 0.492339, 0.003498,
		-0.489631, -0.864820, -0.111119,
		37.087582, 32.083755, 44.126354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947411, 32.852032, 44.703880>,  <37.430325, 32.689129, 44.204140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947411, 32.852032, 44.703880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959892, 32.464066, 44.607307>,  <36.967381, 32.231285, 44.549362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959892, 32.464066, 44.607307>,  <36.947411, 32.852032, 44.703880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959892, 32.464066, 44.607307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077675, -0.243171, 0.966868,
		-0.996491, -0.011413, -0.082925,
		0.031200, -0.969917, -0.241431,
		36.969254, 32.173092, 44.534878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323746, 32.511517, 45.055084>,  <36.947411, 32.852032, 44.703880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323746, 32.511517, 45.055084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602867, 32.233891, 44.984268>,  <36.770340, 32.067314, 44.941776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602867, 32.233891, 44.984268>,  <36.323746, 32.511517, 45.055084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602867, 32.233891, 44.984268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013112, -0.259505, 0.965653,
		-0.716170, -0.671513, -0.190184,
		0.697802, -0.694066, -0.177045,
		36.812206, 32.025669, 44.931156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139217, 31.900024, 45.453178>,  <36.323746, 32.511517, 45.055084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139217, 31.900024, 45.453178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533474, 31.903093, 45.385715>,  <36.770027, 31.904936, 45.345238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533474, 31.903093, 45.385715>,  <36.139217, 31.900024, 45.453178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533474, 31.903093, 45.385715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168543, 0.013881, 0.985597,
		0.009867, -0.999875, 0.012395,
		0.985645, 0.007636, -0.168659,
		36.829166, 31.905396, 45.335117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449539, 31.272253, 45.875965>,  <36.139217, 31.900024, 45.453178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449539, 31.272253, 45.875965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759712, 31.514565, 45.804707>,  <36.945816, 31.659952, 45.761951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759712, 31.514565, 45.804707>,  <36.449539, 31.272253, 45.875965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759712, 31.514565, 45.804707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145708, 0.102848, 0.983967,
		0.614390, -0.788956, -0.008516,
		0.775432, 0.605781, -0.178146,
		36.992340, 31.696299, 45.751263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922794, 31.081572, 46.391579>,  <36.449539, 31.272253, 45.875965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922794, 31.081572, 46.391579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057877, 31.436075, 46.264774>,  <37.138927, 31.648777, 46.188690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057877, 31.436075, 46.264774>,  <36.922794, 31.081572, 46.391579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057877, 31.436075, 46.264774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095490, 0.302800, 0.948258,
		0.936394, -0.350506, 0.017629,
		0.337708, 0.886260, -0.317010,
		37.159187, 31.701954, 46.169670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462669, 31.189423, 46.793571>,  <36.922794, 31.081572, 46.391579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462669, 31.189423, 46.793571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361599, 31.559927, 46.681713>,  <37.300957, 31.782228, 46.614597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361599, 31.559927, 46.681713>,  <37.462669, 31.189423, 46.793571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361599, 31.559927, 46.681713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108639, 0.314354, 0.943069,
		0.961433, 0.207907, -0.180057,
		-0.252673, 0.926259, -0.279644,
		37.285797, 31.837805, 46.597820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953537, 31.708952, 47.132683>,  <37.462669, 31.189423, 46.793571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953537, 31.708952, 47.132683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634647, 31.927498, 47.029984>,  <37.443314, 32.058624, 46.968365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634647, 31.927498, 47.029984>,  <37.953537, 31.708952, 47.132683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634647, 31.927498, 47.029984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078249, 0.515235, 0.853469,
		0.598591, 0.660316, -0.453510,
		-0.797224, 0.546366, -0.256746,
		37.395481, 32.091408, 46.952961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171841, 32.431252, 47.144901>,  <37.953537, 31.708952, 47.132683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171841, 32.431252, 47.144901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775723, 32.408009, 47.195396>,  <37.538052, 32.394062, 47.225693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775723, 32.408009, 47.195396>,  <38.171841, 32.431252, 47.144901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775723, 32.408009, 47.195396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074893, 0.542039, 0.837009,
		-0.117063, 0.838342, -0.532428,
		-0.990296, -0.058108, 0.126239,
		37.478634, 32.390575, 47.233269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010731, 33.075504, 47.447834>,  <38.171841, 32.431252, 47.144901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010731, 33.075504, 47.447834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684799, 32.860653, 47.535053>,  <37.489239, 32.731743, 47.587383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684799, 32.860653, 47.535053>,  <38.010731, 33.075504, 47.447834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684799, 32.860653, 47.535053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028352, 0.412613, 0.910465,
		-0.579005, 0.735693, -0.351439,
		-0.814831, -0.537127, 0.218047,
		37.440350, 32.699516, 47.600468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669861, 33.562275, 47.915375>,  <38.010731, 33.075504, 47.447834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669861, 33.562275, 47.915375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498455, 33.203732, 47.960842>,  <37.395611, 32.988605, 47.988121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498455, 33.203732, 47.960842>,  <37.669861, 33.562275, 47.915375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498455, 33.203732, 47.960842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084649, 0.165076, 0.982641,
		-0.899559, 0.411459, -0.146614,
		-0.428519, -0.896354, 0.113666,
		37.369900, 32.934826, 47.994942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089634, 33.612980, 48.341850>,  <37.669861, 33.562275, 47.915375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089634, 33.612980, 48.341850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210228, 33.235691, 48.397633>,  <37.282585, 33.009319, 48.431103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210228, 33.235691, 48.397633>,  <37.089634, 33.612980, 48.341850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210228, 33.235691, 48.397633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189874, 0.083942, 0.978214,
		-0.934375, -0.321394, -0.153785,
		0.301483, -0.943218, 0.139457,
		37.300674, 32.952724, 48.439468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662392, 33.363670, 48.873123>,  <37.089634, 33.612980, 48.341850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662392, 33.363670, 48.873123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976505, 33.116096, 48.866768>,  <37.164974, 32.967552, 48.862953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976505, 33.116096, 48.866768>,  <36.662392, 33.363670, 48.873123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976505, 33.116096, 48.866768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072996, 0.067070, 0.995075,
		-0.614817, -0.782577, 0.097848,
		0.785285, -0.618931, -0.015889,
		37.212090, 32.930416, 48.862000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520409, 32.797863, 49.436390>,  <36.662392, 33.363670, 48.873123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520409, 32.797863, 49.436390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915836, 32.780560, 49.378613>,  <37.153091, 32.770176, 49.343948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915836, 32.780560, 49.378613>,  <36.520409, 32.797863, 49.436390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915836, 32.780560, 49.378613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148541, 0.114923, 0.982206,
		-0.025893, -0.992432, 0.120036,
		0.988567, -0.043263, -0.144441,
		37.212406, 32.767582, 49.335281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713306, 32.268867, 49.924725>,  <36.520409, 32.797863, 49.436390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713306, 32.268867, 49.924725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046909, 32.461891, 49.817715>,  <37.247070, 32.577705, 49.753510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046909, 32.461891, 49.817715>,  <36.713306, 32.268867, 49.924725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046909, 32.461891, 49.817715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383631, -0.158661, 0.909755,
		0.396568, -0.861371, -0.317450,
		0.834004, 0.482563, -0.267529,
		37.297112, 32.606659, 49.737457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152775, 31.991863, 50.326393>,  <36.713306, 32.268867, 49.924725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152775, 31.991863, 50.326393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343159, 32.320530, 50.200970>,  <37.457390, 32.517731, 50.125713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343159, 32.320530, 50.200970>,  <37.152775, 31.991863, 50.326393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343159, 32.320530, 50.200970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271343, 0.201946, 0.941059,
		0.836561, -0.532990, -0.126835,
		0.475961, 0.821669, -0.313563,
		37.485947, 32.567032, 50.106899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874687, 31.982393, 50.560440>,  <37.152775, 31.991863, 50.326393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874687, 31.982393, 50.560440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771835, 32.366486, 50.516914>,  <37.710125, 32.596943, 50.490799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771835, 32.366486, 50.516914>,  <37.874687, 31.982393, 50.560440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771835, 32.366486, 50.516914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398620, 0.207960, 0.893227,
		0.880334, 0.186297, -0.436240,
		-0.257126, 0.960232, -0.108812,
		37.694698, 32.654556, 50.484272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496140, 32.293575, 50.735580>,  <37.874687, 31.982393, 50.560440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496140, 32.293575, 50.735580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220745, 32.583202, 50.752132>,  <38.055508, 32.756977, 50.762066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220745, 32.583202, 50.752132>,  <38.496140, 32.293575, 50.735580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220745, 32.583202, 50.752132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295500, 0.227955, 0.927748,
		0.662320, 0.650969, -0.370907,
		-0.688485, 0.724069, 0.041382,
		38.014198, 32.800423, 50.764545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747143, 33.085384, 50.853119>,  <38.496140, 32.293575, 50.735580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747143, 33.085384, 50.853119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387238, 33.018703, 51.014431>,  <38.171295, 32.978695, 51.111217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387238, 33.018703, 51.014431>,  <38.747143, 33.085384, 50.853119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387238, 33.018703, 51.014431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331945, 0.338423, 0.880501,
		-0.283258, 0.926111, -0.249166,
		-0.899765, -0.166699, 0.403279,
		38.117310, 32.968693, 51.135414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605606, 33.616554, 51.225380>,  <38.747143, 33.085384, 50.853119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605606, 33.616554, 51.225380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443974, 33.292374, 51.395035>,  <38.346992, 33.097866, 51.496826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443974, 33.292374, 51.395035>,  <38.605606, 33.616554, 51.225380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443974, 33.292374, 51.395035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451941, 0.226245, 0.862880,
		-0.795278, 0.540360, 0.274853,
		-0.404082, -0.810447, 0.424138,
		38.322750, 33.049240, 51.522278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136166, 33.906487, 51.279255>,  <38.605606, 33.616554, 51.225380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136166, 33.906487, 51.279255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382130, 34.207855, 51.372414>,  <39.529709, 34.388676, 51.428310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382130, 34.207855, 51.372414>,  <39.136166, 33.906487, 51.279255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382130, 34.207855, 51.372414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427625, -0.070429, -0.901209,
		-0.662587, 0.653755, -0.365489,
		0.614911, 0.753421, 0.232897,
		39.566605, 34.433880, 51.442284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931202, 34.587418, 50.955708>,  <39.136166, 33.906487, 51.279255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931202, 34.587418, 50.955708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325172, 34.579403, 51.024426>,  <39.561554, 34.574593, 51.065655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325172, 34.579403, 51.024426>,  <38.931202, 34.587418, 50.955708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325172, 34.579403, 51.024426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172513, 0.042490, -0.984090,
		0.012422, 0.998896, 0.045307,
		0.984929, -0.020041, 0.171794,
		39.620651, 34.573391, 51.075962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134750, 35.183376, 50.646645>,  <38.931202, 34.587418, 50.955708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134750, 35.183376, 50.646645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462013, 34.955097, 50.674721>,  <39.658371, 34.818130, 50.691566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462013, 34.955097, 50.674721>,  <39.134750, 35.183376, 50.646645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462013, 34.955097, 50.674721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193902, 0.158915, -0.968064,
		0.541316, 0.805638, 0.240676,
		0.818156, -0.570696, 0.070192,
		39.707458, 34.783890, 50.695778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665337, 35.533558, 50.189472>,  <39.134750, 35.183376, 50.646645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665337, 35.533558, 50.189472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784168, 35.154728, 50.238117>,  <39.855469, 34.927429, 50.267303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784168, 35.154728, 50.238117>,  <39.665337, 35.533558, 50.189472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784168, 35.154728, 50.238117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209215, -0.059704, -0.976045,
		0.931649, 0.315410, 0.180405,
		0.297083, -0.947076, 0.121611,
		39.873295, 34.870605, 50.274601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309273, 35.488064, 49.842216>,  <39.665337, 35.533558, 50.189472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309273, 35.488064, 49.842216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166920, 35.114605, 49.825951>,  <40.081509, 34.890530, 49.816189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166920, 35.114605, 49.825951>,  <40.309273, 35.488064, 49.842216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166920, 35.114605, 49.825951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281264, -0.065508, -0.957392,
		0.891202, -0.352154, 0.285914,
		-0.355880, -0.933647, -0.040667,
		40.060154, 34.834511, 49.813751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622753, 35.166954, 49.368092>,  <40.309273, 35.488064, 49.842216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622753, 35.166954, 49.368092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.338306, 34.887577, 49.400311>,  <40.167637, 34.719952, 49.419643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.338306, 34.887577, 49.400311>,  <40.622753, 35.166954, 49.368092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338306, 34.887577, 49.400311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130816, -0.244002, -0.960911,
		0.690798, -0.672782, 0.264881,
		-0.711115, -0.698446, 0.080546,
		40.124973, 34.678043, 49.424473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880745, 34.731380, 48.874153>,  <40.622753, 35.166954, 49.368092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.880745, 34.731380, 48.874153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.505821, 34.622879, 48.961678>,  <40.280869, 34.557777, 49.014191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.505821, 34.622879, 48.961678>,  <40.880745, 34.731380, 48.874153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.505821, 34.622879, 48.961678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122036, -0.332634, -0.935126,
		0.326436, -0.903204, 0.278678,
		-0.937308, -0.271250, 0.218807,
		40.224628, 34.541504, 49.027321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815758, 33.993526, 48.723778>,  <40.880745, 34.731380, 48.874153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815758, 33.993526, 48.723778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456879, 34.169922, 48.714199>,  <40.241550, 34.275757, 48.708454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456879, 34.169922, 48.714199>,  <40.815758, 33.993526, 48.723778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456879, 34.169922, 48.714199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175295, -0.405354, -0.897195,
		-0.405354, -0.800763, 0.440984,
		0.897195, -0.440984, 0.023942,
		40.187721, 34.302216, 48.707016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340904, 33.520302, 48.186665>,  <40.815758, 33.993526, 48.723778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340904, 33.520302, 48.186665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117718, 33.845760, 48.251972>,  <39.983807, 34.041035, 48.291157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117718, 33.845760, 48.251972>,  <40.340904, 33.520302, 48.186665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117718, 33.845760, 48.251972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354097, -0.055494, -0.933561,
		-0.750524, -0.578711, 0.319072,
		-0.557968, 0.813643, 0.163270,
		39.950329, 34.089851, 48.300953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663532, 33.325985, 48.051010>,  <40.340904, 33.520302, 48.186665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663532, 33.325985, 48.051010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744621, 33.712315, 47.986397>,  <39.793274, 33.944111, 47.947628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744621, 33.712315, 47.986397>,  <39.663532, 33.325985, 48.051010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744621, 33.712315, 47.986397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281452, -0.100527, -0.954295,
		-0.937916, 0.238923, 0.251453,
		0.202725, 0.965821, -0.161532,
		39.805439, 34.002060, 47.937939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111439, 33.528454, 47.595554>,  <39.663532, 33.325985, 48.051010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111439, 33.528454, 47.595554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391521, 33.812675, 47.567776>,  <39.559570, 33.983208, 47.551109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391521, 33.812675, 47.567776>,  <39.111439, 33.528454, 47.595554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391521, 33.812675, 47.567776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159481, 0.060857, -0.985323,
		-0.695896, 0.701009, 0.155932,
		0.700210, 0.710551, -0.069447,
		39.601585, 34.025841, 47.546940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785580, 34.063564, 47.426144>,  <39.111439, 33.528454, 47.595554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785580, 34.063564, 47.426144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160809, 34.118332, 47.298855>,  <39.385948, 34.151192, 47.222481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160809, 34.118332, 47.298855>,  <38.785580, 34.063564, 47.426144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160809, 34.118332, 47.298855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343749, 0.253791, -0.904117,
		-0.043032, 0.957519, 0.285142,
		0.938075, 0.136924, -0.318225,
		39.442230, 34.159409, 47.203388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785637, 34.622292, 46.846706>,  <38.785580, 34.063564, 47.426144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785637, 34.622292, 46.846706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095383, 34.380733, 46.771168>,  <39.281231, 34.235798, 46.725845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095383, 34.380733, 46.771168>,  <38.785637, 34.622292, 46.846706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095383, 34.380733, 46.771168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062455, 0.224056, -0.972573,
		0.629645, 0.764925, 0.135786,
		0.774369, -0.603895, -0.188849,
		39.327694, 34.199566, 46.714512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219139, 34.949760, 46.433552>,  <38.785637, 34.622292, 46.846706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219139, 34.949760, 46.433552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299389, 34.564369, 46.362606>,  <39.347538, 34.333134, 46.320038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299389, 34.564369, 46.362606>,  <39.219139, 34.949760, 46.433552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299389, 34.564369, 46.362606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002115, 0.181470, -0.983394,
		0.979665, 0.196921, 0.038445,
		0.200628, -0.963479, -0.177363,
		39.359577, 34.275326, 46.309399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472721, 34.992973, 45.709904>,  <39.219139, 34.949760, 46.433552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472721, 34.992973, 45.709904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386806, 34.609905, 45.786564>,  <39.335258, 34.380062, 45.832561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386806, 34.609905, 45.786564>,  <39.472721, 34.992973, 45.709904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386806, 34.609905, 45.786564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220567, -0.143596, -0.964744,
		0.951429, -0.249485, -0.180389,
		-0.214786, -0.957673, 0.191650,
		39.322372, 34.322605, 45.844059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956017, 34.649357, 45.340733>,  <39.472721, 34.992973, 45.709904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956017, 34.649357, 45.340733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.629467, 34.425957, 45.399529>,  <39.433537, 34.291916, 45.434807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.629467, 34.425957, 45.399529>,  <39.956017, 34.649357, 45.340733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629467, 34.425957, 45.399529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072243, -0.153757, -0.985464,
		0.572984, -0.815129, 0.085176,
		-0.816377, -0.558502, 0.146988,
		39.384556, 34.258408, 45.443626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062458, 34.139091, 44.917805>,  <39.956017, 34.649357, 45.340733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062458, 34.139091, 44.917805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.674038, 34.099743, 45.004883>,  <39.440987, 34.076134, 45.057129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.674038, 34.099743, 45.004883>,  <40.062458, 34.139091, 44.917805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674038, 34.099743, 45.004883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204467, -0.129021, -0.970333,
		0.123540, -0.986751, 0.105172,
		-0.971046, -0.098371, 0.217697,
		39.382725, 34.070232, 45.070190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930668, 33.508396, 44.689365>,  <40.062458, 34.139091, 44.917805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930668, 33.508396, 44.689365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590927, 33.719284, 44.699512>,  <39.387085, 33.845818, 44.705601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590927, 33.719284, 44.699512>,  <39.930668, 33.508396, 44.689365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590927, 33.719284, 44.699512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199568, -0.276264, -0.940133,
		-0.488651, -0.803564, 0.339861,
		-0.849348, 0.527222, 0.025369,
		39.336121, 33.877449, 44.707123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511200, 33.147045, 44.196339>,  <39.930668, 33.508396, 44.689365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511200, 33.147045, 44.196339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317486, 33.495609, 44.227619>,  <39.201260, 33.704746, 44.246387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317486, 33.495609, 44.227619>,  <39.511200, 33.147045, 44.196339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317486, 33.495609, 44.227619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378705, -0.128212, -0.916594,
		-0.788704, -0.473504, 0.392098,
		-0.484282, 0.871410, 0.078197,
		39.172199, 33.757030, 44.251080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132183, 33.230694, 43.613823>,  <39.511200, 33.147045, 44.196339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132183, 33.230694, 43.613823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037319, 33.593670, 43.752563>,  <38.980400, 33.811455, 43.835808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037319, 33.593670, 43.752563>,  <39.132183, 33.230694, 43.613823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037319, 33.593670, 43.752563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478591, 0.201572, -0.854587,
		-0.845402, -0.368678, 0.386487,
		-0.237163, 0.907439, 0.346855,
		38.966171, 33.865902, 43.856621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333866, 33.358814, 43.515888>,  <39.132183, 33.230694, 43.613823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333866, 33.358814, 43.515888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545090, 33.698494, 43.514256>,  <38.671825, 33.902302, 43.513275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545090, 33.698494, 43.514256>,  <38.333866, 33.358814, 43.515888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545090, 33.698494, 43.514256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421319, 0.257815, -0.869495,
		-0.737320, 0.460866, 0.493925,
		0.528062, 0.849196, -0.004079,
		38.703506, 33.953251, 43.513031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902161, 34.019012, 43.423950>,  <38.333866, 33.358814, 43.515888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902161, 34.019012, 43.423950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272549, 34.096226, 43.294136>,  <38.494781, 34.142551, 43.216248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272549, 34.096226, 43.294136>,  <37.902161, 34.019012, 43.423950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272549, 34.096226, 43.294136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375447, 0.378889, -0.845862,
		-0.040313, 0.905087, 0.423311,
		0.925967, 0.193030, -0.324538,
		38.550339, 34.154137, 43.196774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838734, 34.696407, 42.872917>,  <37.902161, 34.019012, 43.423950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838734, 34.696407, 42.872917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195415, 34.524071, 42.817451>,  <38.409424, 34.420670, 42.784172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195415, 34.524071, 42.817451>,  <37.838734, 34.696407, 42.872917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195415, 34.524071, 42.817451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040416, 0.229339, -0.972507,
		0.450801, 0.872797, 0.187091,
		0.891709, -0.430846, -0.138661,
		38.462929, 34.394817, 42.775852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235550, 35.086403, 42.402035>,  <37.838734, 34.696407, 42.872917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235550, 35.086403, 42.402035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448162, 34.747677, 42.394199>,  <38.575729, 34.544441, 42.389500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448162, 34.747677, 42.394199>,  <38.235550, 35.086403, 42.402035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448162, 34.747677, 42.394199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099738, 0.085531, -0.991331,
		0.841148, 0.524968, 0.129921,
		0.531529, -0.846813, -0.019585,
		38.607620, 34.493633, 42.388325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639660, 35.207462, 41.859890>,  <38.235550, 35.086403, 42.402035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639660, 35.207462, 41.859890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651485, 34.813171, 41.926178>,  <38.658581, 34.576595, 41.965950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651485, 34.813171, 41.926178>,  <38.639660, 35.207462, 41.859890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651485, 34.813171, 41.926178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029895, -0.166590, -0.985573,
		0.999116, 0.024180, -0.034393,
		0.029561, -0.985730, 0.165720,
		38.660355, 34.517452, 41.975895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088055, 35.076710, 41.396122>,  <38.639660, 35.207462, 41.859890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088055, 35.076710, 41.396122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931152, 34.718540, 41.480354>,  <38.837009, 34.503639, 41.530891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931152, 34.718540, 41.480354>,  <39.088055, 35.076710, 41.396122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931152, 34.718540, 41.480354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140282, -0.284480, -0.948363,
		0.909096, -0.342463, 0.237201,
		-0.392258, -0.895428, 0.210578,
		38.813477, 34.449913, 41.543530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634590, 34.508572, 41.171314>,  <39.088055, 35.076710, 41.396122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634590, 34.508572, 41.171314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251930, 34.392262, 41.164818>,  <39.022335, 34.322475, 41.160919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251930, 34.392262, 41.164818>,  <39.634590, 34.508572, 41.171314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251930, 34.392262, 41.164818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082800, -0.218099, -0.972408,
		0.279211, -0.931602, 0.232721,
		-0.956653, -0.290776, -0.016241,
		38.964935, 34.305027, 41.159946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585552, 33.882198, 40.763313>,  <39.634590, 34.508572, 41.171314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585552, 33.882198, 40.763313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206360, 34.009529, 40.764160>,  <38.978844, 34.085930, 40.764668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206360, 34.009529, 40.764160>,  <39.585552, 33.882198, 40.763313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206360, 34.009529, 40.764160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090270, -0.262440, -0.960717,
		-0.305277, -0.910926, 0.277523,
		-0.947975, 0.318337, 0.002112,
		38.921967, 34.105030, 40.764793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294369, 33.314445, 40.492844>,  <39.585552, 33.882198, 40.763313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294369, 33.314445, 40.492844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061798, 33.634605, 40.434464>,  <38.922256, 33.826702, 40.399433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061798, 33.634605, 40.434464>,  <39.294369, 33.314445, 40.492844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061798, 33.634605, 40.434464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004150, -0.182307, -0.983233,
		-0.813587, -0.571074, 0.109320,
		-0.581428, 0.800399, -0.145952,
		38.887371, 33.874725, 40.390678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823654, 33.193737, 39.945736>,  <39.294369, 33.314445, 40.492844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823654, 33.193737, 39.945736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761627, 33.588039, 39.971786>,  <38.724411, 33.824619, 39.987419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761627, 33.588039, 39.971786>,  <38.823654, 33.193737, 39.945736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761627, 33.588039, 39.971786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179397, 0.092929, -0.979378,
		-0.971479, -0.140183, -0.191252,
		-0.155065, 0.985755, 0.065130,
		38.715107, 33.883766, 39.991325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350548, 33.297112, 39.428333>,  <38.823654, 33.193737, 39.945736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350548, 33.297112, 39.428333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499264, 33.660305, 39.505627>,  <38.588493, 33.878220, 39.552002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499264, 33.660305, 39.505627>,  <38.350548, 33.297112, 39.428333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499264, 33.660305, 39.505627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074517, 0.178291, -0.981152,
		-0.925322, 0.379179, -0.001374,
		0.371787, 0.907984, 0.193232,
		38.610802, 33.932701, 39.563595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934765, 33.878258, 39.077824>,  <38.350548, 33.297112, 39.428333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934765, 33.878258, 39.077824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323517, 33.959877, 39.124832>,  <38.556767, 34.008850, 39.153038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323517, 33.959877, 39.124832>,  <37.934765, 33.878258, 39.077824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323517, 33.959877, 39.124832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155797, -0.182997, -0.970690,
		-0.176564, 0.961705, -0.209642,
		0.971881, 0.204050, 0.117520,
		38.615082, 34.021091, 39.160088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138836, 34.270554, 38.490067>,  <37.934765, 33.878258, 39.077824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138836, 34.270554, 38.490067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491398, 34.167511, 38.648441>,  <38.702934, 34.105686, 38.743465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491398, 34.167511, 38.648441>,  <38.138836, 34.270554, 38.490067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491398, 34.167511, 38.648441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415154, 0.022606, -0.909470,
		0.225336, 0.965985, 0.126872,
		0.881403, -0.257608, 0.395938,
		38.755817, 34.090229, 38.767223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544971, 34.770317, 38.349457>,  <38.138836, 34.270554, 38.490067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544971, 34.770317, 38.349457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775116, 34.448616, 38.408981>,  <38.913200, 34.255596, 38.444698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775116, 34.448616, 38.408981>,  <38.544971, 34.770317, 38.349457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775116, 34.448616, 38.408981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300281, 0.038469, -0.953075,
		0.760785, 0.593046, 0.263634,
		0.575359, -0.804249, 0.148814,
		38.947723, 34.207340, 38.453625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101791, 35.018009, 38.036461>,  <38.544971, 34.770317, 38.349457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101791, 35.018009, 38.036461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132843, 34.620548, 38.069046>,  <39.151474, 34.382072, 38.088600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132843, 34.620548, 38.069046>,  <39.101791, 35.018009, 38.036461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132843, 34.620548, 38.069046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361885, -0.048057, -0.930983,
		0.928985, 0.101753, 0.355856,
		0.077629, -0.993648, 0.081468,
		39.156132, 34.322453, 38.093487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722477, 34.792332, 37.853031>,  <39.101791, 35.018009, 38.036461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722477, 34.792332, 37.853031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514698, 34.461334, 37.767780>,  <39.390030, 34.262733, 37.716629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514698, 34.461334, 37.767780>,  <39.722477, 34.792332, 37.853031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514698, 34.461334, 37.767780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387992, -0.006180, -0.921642,
		0.761338, -0.561438, 0.324272,
		-0.519448, -0.827496, -0.213128,
		39.358864, 34.213085, 37.703842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165619, 34.506496, 37.466202>,  <39.722477, 34.792332, 37.853031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165619, 34.506496, 37.466202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825218, 34.305759, 37.404293>,  <39.620979, 34.185318, 37.367149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825218, 34.305759, 37.404293>,  <40.165619, 34.506496, 37.466202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825218, 34.305759, 37.404293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307554, -0.237357, -0.921451,
		0.425686, -0.831755, 0.356335,
		-0.851000, -0.501841, -0.154770,
		39.569920, 34.155209, 37.357861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259392, 33.757450, 37.254810>,  <40.165619, 34.506496, 37.466202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259392, 33.757450, 37.254810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883389, 33.810673, 37.129154>,  <39.657787, 33.842606, 37.053761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883389, 33.810673, 37.129154>,  <40.259392, 33.757450, 37.254810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883389, 33.810673, 37.129154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254783, -0.338558, -0.905795,
		-0.226872, -0.931491, 0.284348,
		-0.940008, 0.133052, -0.314138,
		39.601387, 33.850590, 37.034912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246452, 33.276073, 36.740631>,  <40.259392, 33.757450, 37.254810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246452, 33.276073, 36.740631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928745, 33.506920, 36.664665>,  <39.738121, 33.645428, 36.619087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928745, 33.506920, 36.664665>,  <40.246452, 33.276073, 36.740631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928745, 33.506920, 36.664665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211434, -0.030484, -0.976917,
		-0.569588, -0.816090, -0.097810,
		-0.794271, 0.577120, -0.189912,
		39.690464, 33.680058, 36.607693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893208, 32.917931, 36.200302>,  <40.246452, 33.276073, 36.740631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.893208, 32.917931, 36.200302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789722, 33.303722, 36.178951>,  <39.727631, 33.535198, 36.166142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789722, 33.303722, 36.178951>,  <39.893208, 32.917931, 36.200302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789722, 33.303722, 36.178951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137474, -0.017928, -0.990343,
		-0.956122, -0.263553, -0.127952,
		-0.258714, 0.964478, -0.053373,
		39.712109, 33.593067, 36.162941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355534, 33.041069, 35.607929>,  <39.893208, 32.917931, 36.200302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355534, 33.041069, 35.607929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557846, 33.374405, 35.697132>,  <39.679234, 33.574406, 35.750652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557846, 33.374405, 35.697132>,  <39.355534, 33.041069, 35.607929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557846, 33.374405, 35.697132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183894, 0.148412, -0.971678,
		-0.842833, 0.532466, -0.078182,
		0.505782, 0.833339, 0.223003,
		39.709579, 33.624405, 35.764034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078777, 33.742950, 35.243546>,  <39.355534, 33.041069, 35.607929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078777, 33.742950, 35.243546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471043, 33.695293, 35.305641>,  <39.706402, 33.666698, 35.342899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471043, 33.695293, 35.305641>,  <39.078777, 33.742950, 35.243546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471043, 33.695293, 35.305641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177081, 0.202670, -0.963103,
		0.083288, 0.971972, 0.219850,
		0.980666, -0.119146, 0.155237,
		39.765244, 33.659550, 35.352211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547028, 34.420807, 35.054665>,  <39.078777, 33.742950, 35.243546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547028, 34.420807, 35.054665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704010, 34.053474, 35.034115>,  <39.798199, 33.833073, 35.021786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704010, 34.053474, 35.034115>,  <39.547028, 34.420807, 35.054665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704010, 34.053474, 35.034115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277749, 0.171580, -0.945207,
		0.876831, 0.356682, 0.322404,
		0.392456, -0.918335, -0.051378,
		39.821747, 33.777973, 35.018700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167446, 34.466736, 34.577282>,  <39.547028, 34.420807, 35.054665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167446, 34.466736, 34.577282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.144772, 34.072632, 34.641830>,  <40.131168, 33.836166, 34.680557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.144772, 34.072632, 34.641830>,  <40.167446, 34.466736, 34.577282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144772, 34.072632, 34.641830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531123, -0.166620, -0.830750,
		0.845396, 0.038614, 0.532742,
		-0.056687, -0.985265, 0.161369,
		40.127766, 33.777054, 34.690243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865070, 34.181679, 34.376038>,  <40.167446, 34.466736, 34.577282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865070, 34.181679, 34.376038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565842, 33.916229, 34.375362>,  <40.386307, 33.756962, 34.374958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565842, 33.916229, 34.375362>,  <40.865070, 34.181679, 34.376038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565842, 33.916229, 34.375362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409862, -0.460013, -0.787655,
		0.521928, -0.589911, 0.616114,
		-0.748067, -0.663621, -0.001688,
		40.341423, 33.717144, 34.374855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998859, 34.725933, 34.852100>,  <40.865070, 34.181679, 34.376038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998859, 34.725933, 34.852100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.101753, 34.433472, 35.104847>,  <41.163490, 34.257996, 35.256493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.101753, 34.433472, 35.104847>,  <40.998859, 34.725933, 34.852100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.101753, 34.433472, 35.104847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590887, 0.636390, 0.495842,
		-0.764647, 0.245814, 0.595727,
		0.257230, -0.731152, 0.631862,
		41.178921, 34.214127, 35.294407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604424, 34.819000, 35.447559>,  <40.998859, 34.725933, 34.852100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604424, 34.819000, 35.447559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957329, 34.639603, 35.504768>,  <41.169071, 34.531963, 35.539093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957329, 34.639603, 35.504768>,  <40.604424, 34.819000, 35.447559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957329, 34.639603, 35.504768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308007, 0.779735, 0.545110,
		-0.356003, -0.436879, 0.826074,
		0.882266, -0.448497, 0.143026,
		41.222008, 34.505054, 35.547676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779251, 34.654285, 36.146652>,  <40.604424, 34.819000, 35.447559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.779251, 34.654285, 36.146652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092060, 34.762520, 35.922073>,  <41.279747, 34.827461, 35.787327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092060, 34.762520, 35.922073>,  <40.779251, 34.654285, 36.146652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092060, 34.762520, 35.922073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294201, 0.633888, 0.715285,
		0.549443, -0.724547, 0.416106,
		0.782021, 0.270589, -0.561448,
		41.326668, 34.843697, 35.753639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331825, 34.660255, 36.541611>,  <40.779251, 34.654285, 36.146652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331825, 34.660255, 36.541611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433773, 34.903008, 36.240482>,  <41.494942, 35.048660, 36.059807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433773, 34.903008, 36.240482>,  <41.331825, 34.660255, 36.541611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433773, 34.903008, 36.240482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170443, 0.738145, 0.652757,
		0.951834, -0.294683, 0.084695,
		0.254874, 0.606881, -0.752818,
		41.510235, 35.085072, 36.014637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822552, 35.155979, 36.734707>,  <41.331825, 34.660255, 36.541611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.822552, 35.155979, 36.734707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690468, 35.325375, 36.397278>,  <41.611217, 35.427010, 36.194820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690468, 35.325375, 36.397278>,  <41.822552, 35.155979, 36.734707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690468, 35.325375, 36.397278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119722, 0.905279, 0.407599,
		0.936284, 0.033599, -0.349633,
		-0.330211, 0.423487, -0.843576,
		41.591404, 35.452419, 36.144203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312206, 35.669060, 36.592522>,  <41.822552, 35.155979, 36.734707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.312206, 35.669060, 36.592522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.975330, 35.769863, 36.401855>,  <41.773205, 35.830345, 36.287457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.975330, 35.769863, 36.401855>,  <42.312206, 35.669060, 36.592522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.975330, 35.769863, 36.401855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178007, 0.964438, 0.195378,
		0.508951, 0.079696, -0.857099,
		-0.842189, 0.252007, -0.476665,
		41.722675, 35.845467, 36.258858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.522305, 36.249287, 36.157101>,  <42.312206, 35.669060, 36.592522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.522305, 36.249287, 36.157101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.124619, 36.290905, 36.146488>,  <41.886005, 36.315876, 36.140121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.124619, 36.290905, 36.146488>,  <42.522305, 36.249287, 36.157101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124619, 36.290905, 36.146488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097865, 0.979725, 0.174818,
		0.044187, 0.171210, -0.984243,
		-0.994218, 0.104048, -0.026535,
		41.826351, 36.322121, 36.138527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370140, 36.795319, 35.712017>,  <42.522305, 36.249287, 36.157101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370140, 36.795319, 35.712017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032932, 36.767387, 35.925346>,  <41.830608, 36.750629, 36.053345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032932, 36.767387, 35.925346>,  <42.370140, 36.795319, 35.712017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032932, 36.767387, 35.925346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097307, 0.955379, 0.278893,
		-0.529004, 0.287010, -0.798611,
		-0.843022, -0.069825, 0.533328,
		41.780025, 36.746441, 36.085346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885139, 37.390282, 35.625561>,  <42.370140, 36.795319, 35.712017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885139, 37.390282, 35.625561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.749001, 37.254871, 35.976460>,  <41.667316, 37.173626, 36.187000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.749001, 37.254871, 35.976460>,  <41.885139, 37.390282, 35.625561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.749001, 37.254871, 35.976460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053113, 0.924535, 0.377377,
		-0.938797, 0.175034, -0.296687,
		-0.340352, -0.338522, 0.877248,
		41.646896, 37.153316, 36.239635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419792, 37.954182, 35.837746>,  <41.885139, 37.390282, 35.625561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419792, 37.954182, 35.837746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511761, 37.748791, 36.168438>,  <41.566944, 37.625557, 36.366852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511761, 37.748791, 36.168438>,  <41.419792, 37.954182, 35.837746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511761, 37.748791, 36.168438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026056, 0.845935, 0.532649,
		-0.972860, -0.144010, 0.181121,
		0.229923, -0.513473, 0.826728,
		41.580738, 37.594749, 36.416458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953255, 38.192265, 36.312325>,  <41.419792, 37.954182, 35.837746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953255, 38.192265, 36.312325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247196, 38.028774, 36.528816>,  <41.423561, 37.930679, 36.658710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247196, 38.028774, 36.528816>,  <40.953255, 38.192265, 36.312325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247196, 38.028774, 36.528816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000474, 0.798325, 0.602227,
		-0.678223, -0.442293, 0.586847,
		0.734856, -0.408722, 0.541233,
		41.467651, 37.906158, 36.691185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766739, 38.173637, 37.023273>,  <40.953255, 38.192265, 36.312325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766739, 38.173637, 37.023273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.166100, 38.151524, 37.027824>,  <41.405716, 38.138256, 37.030556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.166100, 38.151524, 37.027824>,  <40.766739, 38.173637, 37.023273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.166100, 38.151524, 37.027824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039846, 0.833093, 0.551696,
		-0.039976, -0.550364, 0.833968,
		0.998406, -0.055285, 0.011374,
		41.465622, 38.134937, 37.031235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062302, 38.410458, 37.704521>,  <40.766739, 38.173637, 37.023273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062302, 38.410458, 37.704521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394157, 38.441956, 37.483437>,  <41.593273, 38.460854, 37.350784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394157, 38.441956, 37.483437>,  <41.062302, 38.410458, 37.704521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394157, 38.441956, 37.483437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236432, 0.847292, 0.475601,
		0.505761, -0.525258, 0.684332,
		0.829642, 0.078742, -0.552715,
		41.643051, 38.465580, 37.317623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643700, 38.454662, 38.173351>,  <41.062302, 38.410458, 37.704521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643700, 38.454662, 38.173351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.757782, 38.611256, 37.823402>,  <41.826233, 38.705212, 37.613434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.757782, 38.611256, 37.823402>,  <41.643700, 38.454662, 38.173351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.757782, 38.611256, 37.823402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453571, 0.748977, 0.483017,
		0.844352, -0.534575, 0.036045,
		0.285206, 0.391488, -0.874869,
		41.843346, 38.728703, 37.560944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.334873, 38.720596, 38.357952>,  <41.643700, 38.454662, 38.173351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.334873, 38.720596, 38.357952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.219360, 38.902348, 38.020870>,  <42.150051, 39.011398, 37.818623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.219360, 38.902348, 38.020870>,  <42.334873, 38.720596, 38.357952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.219360, 38.902348, 38.020870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486104, 0.827893, 0.279813,
		0.824807, -0.328836, -0.459956,
		-0.288782, 0.454379, -0.842701,
		42.132725, 39.038662, 37.768059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959061, 39.050114, 38.052181>,  <42.334873, 38.720596, 38.357952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959061, 39.050114, 38.052181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.657005, 39.248692, 37.880924>,  <42.475773, 39.367840, 37.778172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.657005, 39.248692, 37.880924>,  <42.959061, 39.050114, 38.052181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.657005, 39.248692, 37.880924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481817, 0.863155, 0.151050,
		0.444540, -0.092222, -0.890999,
		-0.755140, 0.496446, -0.428141,
		42.430462, 39.397625, 37.752483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.316097, 39.604420, 37.666721>,  <42.959061, 39.050114, 38.052181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.316097, 39.604420, 37.666721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.947151, 39.757030, 37.690964>,  <42.725784, 39.848598, 37.705509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.947151, 39.757030, 37.690964>,  <43.316097, 39.604420, 37.666721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.947151, 39.757030, 37.690964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384959, 0.920876, 0.061595,
		-0.032314, 0.080146, -0.996259,
		-0.922368, 0.381529, 0.060610,
		42.670441, 39.871490, 37.709148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.070618, 40.073868, 37.125412>,  <43.316097, 39.604420, 37.666721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.070618, 40.073868, 37.125412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.812881, 40.193851, 37.406796>,  <42.658241, 40.265842, 37.575626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.812881, 40.193851, 37.406796>,  <43.070618, 40.073868, 37.125412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.812881, 40.193851, 37.406796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450391, 0.892255, 0.032070,
		-0.618042, 0.337494, -0.710016,
		-0.644339, 0.299964, 0.703455,
		42.619579, 40.283840, 37.617832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.836964, 40.784603, 36.922794>,  <43.070618, 40.073868, 37.125412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.836964, 40.784603, 36.922794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.755943, 40.739841, 37.311935>,  <42.707333, 40.712982, 37.545422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.755943, 40.739841, 37.311935>,  <42.836964, 40.784603, 36.922794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.755943, 40.739841, 37.311935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520303, 0.829326, 0.203724,
		-0.829613, 0.547445, -0.109756,
		-0.202552, -0.111906, 0.972857,
		42.695179, 40.706268, 37.603794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.544876, 41.426857, 37.125446>,  <42.836964, 40.784603, 36.922794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.544876, 41.426857, 37.125446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680187, 41.241966, 37.453327>,  <42.761375, 41.131031, 37.650055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680187, 41.241966, 37.453327>,  <42.544876, 41.426857, 37.125446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.680187, 41.241966, 37.453327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303502, 0.878099, 0.369905,
		-0.890761, 0.123652, 0.437326,
		0.338276, -0.462226, 0.819705,
		42.781670, 41.103298, 37.699238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296814, 41.879795, 37.752316>,  <42.544876, 41.426857, 37.125446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.296814, 41.879795, 37.752316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599178, 41.642807, 37.863724>,  <42.780598, 41.500614, 37.930569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599178, 41.642807, 37.863724>,  <42.296814, 41.879795, 37.752316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599178, 41.642807, 37.863724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388220, 0.748226, 0.538000,
		-0.527145, -0.298554, 0.795603,
		0.755912, -0.592472, 0.278519,
		42.825951, 41.465065, 37.947281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566635, 42.208073, 38.394917>,  <42.296814, 41.879795, 37.752316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566635, 42.208073, 38.394917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.858692, 41.966125, 38.267784>,  <43.033928, 41.820957, 38.191505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.858692, 41.966125, 38.267784>,  <42.566635, 42.208073, 38.394917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.858692, 41.966125, 38.267784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683147, 0.636612, 0.357821,
		-0.014099, -0.478388, 0.878035,
		0.730145, -0.604872, -0.317833,
		43.077736, 41.784664, 38.172436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.926456, 42.006435, 38.950588>,  <42.566635, 42.208073, 38.394917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.926456, 42.006435, 38.950588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.146164, 42.015217, 38.616447>,  <43.277988, 42.020485, 38.415962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.146164, 42.015217, 38.616447>,  <42.926456, 42.006435, 38.950588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.146164, 42.015217, 38.616447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643500, 0.626633, 0.439590,
		0.533113, -0.779005, 0.330062,
		0.549270, 0.021956, -0.835356,
		43.310944, 42.021805, 38.365841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.599815, 41.874939, 39.158230>,  <42.926456, 42.006435, 38.950588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.599815, 41.874939, 39.158230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.584347, 42.074703, 38.812031>,  <43.575066, 42.194561, 38.604309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.584347, 42.074703, 38.812031>,  <43.599815, 41.874939, 39.158230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.584347, 42.074703, 38.812031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637146, 0.679559, 0.363653,
		0.769772, -0.537386, -0.344481,
		-0.038673, 0.499415, -0.865499,
		43.572746, 42.224529, 38.552380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.297764, 41.760532, 38.988018>,  <43.599815, 41.874939, 39.158230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.297764, 41.760532, 38.988018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.092091, 42.090164, 38.892929>,  <43.968685, 42.287941, 38.835876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.092091, 42.090164, 38.892929>,  <44.297764, 41.760532, 38.988018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.092091, 42.090164, 38.892929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685257, 0.561406, 0.463946,
		0.515786, 0.075652, -0.853370,
		-0.514186, 0.824075, -0.237725,
		43.937836, 42.337387, 38.821613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.354435, 42.281044, 39.483265>,  <44.297764, 41.760532, 38.988018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.354435, 42.281044, 39.483265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.679451, 42.508423, 39.534878>,  <44.874462, 42.644852, 39.565845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.679451, 42.508423, 39.534878>,  <44.354435, 42.281044, 39.483265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.679451, 42.508423, 39.534878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161593, 0.432352, -0.887107,
		-0.560061, 0.699958, 0.443160,
		0.812539, 0.568446, 0.129035,
		44.923214, 42.678955, 39.573589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.070927, 42.128193, 39.228863>,  <44.354435, 42.281044, 39.483265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.070927, 42.128193, 39.228863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.801533, 41.888977, 39.402653>,  <44.639896, 41.745449, 39.506927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.801533, 41.888977, 39.402653>,  <45.070927, 42.128193, 39.228863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.801533, 41.888977, 39.402653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070204, -0.636858, -0.767778,
		0.735861, -0.486583, 0.470898,
		-0.673483, -0.598037, 0.434479,
		44.599487, 41.709564, 39.532997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.457771, 41.744514, 38.766582>,  <45.070927, 42.128193, 39.228863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.457771, 41.744514, 38.766582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.759258, 41.634823, 39.005482>,  <45.940151, 41.569008, 39.148823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.759258, 41.634823, 39.005482>,  <45.457771, 41.744514, 38.766582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.759258, 41.634823, 39.005482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369477, -0.928378, 0.040014,
		0.543498, -0.250829, -0.801059,
		0.753722, -0.274225, 0.597247,
		45.985374, 41.552555, 39.184654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.946972, 41.124676, 38.542835>,  <45.457771, 41.744514, 38.766582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.946972, 41.124676, 38.542835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.939854, 41.146973, 38.942150>,  <45.935585, 41.160351, 39.181740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.939854, 41.146973, 38.942150>,  <45.946972, 41.124676, 38.542835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.939854, 41.146973, 38.942150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164210, -0.985050, 0.052077,
		0.986265, -0.163002, 0.026679,
		-0.017791, 0.055743, 0.998287,
		45.934517, 41.163696, 39.241634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.471214, 40.639153, 38.902046>,  <45.946972, 41.124676, 38.542835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.471214, 40.639153, 38.902046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.131840, 40.706905, 39.102631>,  <45.928215, 40.747559, 39.222980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.131840, 40.706905, 39.102631>,  <46.471214, 40.639153, 38.902046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.131840, 40.706905, 39.102631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251881, -0.962467, -0.101063,
		0.465523, -0.212055, 0.859256,
		-0.848436, 0.169383, 0.501463,
		45.877308, 40.757721, 39.253071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.368431, 40.131180, 39.471466>,  <46.471214, 40.639153, 38.902046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.368431, 40.131180, 39.471466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.019772, 40.285969, 39.351143>,  <45.810577, 40.378841, 39.278950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.019772, 40.285969, 39.351143>,  <46.368431, 40.131180, 39.471466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.019772, 40.285969, 39.351143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442143, -0.885657, 0.141849,
		-0.211524, 0.256643, 0.943076,
		-0.871646, 0.386970, -0.300810,
		45.758278, 40.402061, 39.260899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.727020, 39.977634, 40.160725>,  <46.368431, 40.131180, 39.471466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.727020, 39.977634, 40.160725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.517570, 39.822346, 40.464066>,  <46.391899, 39.729172, 40.646072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.517570, 39.822346, 40.464066>,  <46.727020, 39.977634, 40.160725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.517570, 39.822346, 40.464066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150612, -0.833940, -0.530904,
		0.838531, -0.392212, 0.378200,
		-0.523624, -0.388218, 0.758357,
		46.360485, 39.705879, 40.691574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.025223, 39.376698, 40.188049>,  <46.727020, 39.977634, 40.160725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.025223, 39.376698, 40.188049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.645473, 39.353020, 40.311455>,  <46.417622, 39.338814, 40.385498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.645473, 39.353020, 40.311455>,  <47.025223, 39.376698, 40.188049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.645473, 39.353020, 40.311455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123004, -0.833616, -0.538475,
		0.289055, -0.549164, 0.784134,
		-0.949377, -0.059197, 0.308510,
		46.360661, 39.335262, 40.404007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.929600, 38.834755, 40.676777>,  <47.025223, 39.376698, 40.188049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.929600, 38.834755, 40.676777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.598728, 38.911991, 40.465687>,  <46.400204, 38.958332, 40.339031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.598728, 38.911991, 40.465687>,  <46.929600, 38.834755, 40.676777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.598728, 38.911991, 40.465687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010381, -0.933703, -0.357899,
		-0.561843, -0.301525, 0.770335,
		-0.827179, 0.193086, -0.527724,
		46.350574, 38.969917, 40.307369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.381672, 38.386082, 40.821301>,  <46.929600, 38.834755, 40.676777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.381672, 38.386082, 40.821301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.264690, 38.529125, 40.466541>,  <46.194500, 38.614952, 40.253685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.264690, 38.529125, 40.466541>,  <46.381672, 38.386082, 40.821301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.264690, 38.529125, 40.466541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141804, -0.933411, -0.329599,
		-0.945706, 0.029372, 0.323692,
		-0.292457, 0.357605, -0.886898,
		46.176952, 38.636406, 40.200470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.839272, 37.975548, 40.692638>,  <46.381672, 38.386082, 40.821301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.839272, 37.975548, 40.692638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.937580, 38.131535, 40.337669>,  <45.996563, 38.225124, 40.124687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.937580, 38.131535, 40.337669>,  <45.839272, 37.975548, 40.692638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.937580, 38.131535, 40.337669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163488, -0.885714, -0.434490,
		-0.955442, 0.251867, -0.153926,
		0.245768, 0.389965, -0.887426,
		46.011311, 38.248524, 40.071442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.332405, 37.672901, 40.207607>,  <45.839272, 37.975548, 40.692638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.332405, 37.672901, 40.207607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.637104, 37.791828, 39.977360>,  <45.819923, 37.863186, 39.839211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.637104, 37.791828, 39.977360>,  <45.332405, 37.672901, 40.207607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.637104, 37.791828, 39.977360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062485, -0.850622, -0.522052,
		-0.644851, 0.433640, -0.629383,
		0.761749, 0.297319, -0.575621,
		45.865627, 37.881023, 39.804672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.953182, 37.513302, 39.574265>,  <45.332405, 37.672901, 40.207607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.953182, 37.513302, 39.574265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.345570, 37.542976, 39.502491>,  <45.581001, 37.560780, 39.459427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.345570, 37.542976, 39.502491>,  <44.953182, 37.513302, 39.574265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.345570, 37.542976, 39.502491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088515, -0.651655, -0.753333,
		-0.172813, 0.754880, -0.632687,
		0.980969, 0.074184, -0.179433,
		45.639862, 37.565231, 39.448662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.983791, 37.658302, 38.979485>,  <44.953182, 37.513302, 39.574265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.983791, 37.658302, 38.979485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.337410, 37.483997, 39.047104>,  <45.549580, 37.379414, 39.087677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.337410, 37.483997, 39.047104>,  <44.983791, 37.658302, 38.979485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.337410, 37.483997, 39.047104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195565, -0.673346, -0.712994,
		0.424525, 0.597257, -0.680487,
		0.884043, -0.435764, 0.169050,
		45.602623, 37.353268, 39.097820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.198711, 37.607567, 38.252636>,  <44.983791, 37.658302, 38.979485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.198711, 37.607567, 38.252636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.409847, 37.363514, 38.488979>,  <45.536530, 37.217083, 38.630787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.409847, 37.363514, 38.488979>,  <45.198711, 37.607567, 38.252636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.409847, 37.363514, 38.488979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202498, -0.766011, -0.610100,
		0.824851, 0.202387, -0.527883,
		0.527841, -0.610137, 0.590861,
		45.568199, 37.180473, 38.666237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.816292, 37.427994, 37.872082>,  <45.198711, 37.607567, 38.252636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.816292, 37.427994, 37.872082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.771885, 37.140072, 38.146179>,  <45.745243, 36.967319, 38.310638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.771885, 37.140072, 38.146179>,  <45.816292, 37.427994, 37.872082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.771885, 37.140072, 38.146179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014318, -0.688277, -0.725307,
		0.993716, -0.090330, 0.066102,
		-0.111013, -0.719803, 0.685245,
		45.738583, 36.924129, 38.351753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.169880, 36.836033, 37.542446>,  <45.816292, 37.427994, 37.872082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.169880, 36.836033, 37.542446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.919617, 36.701675, 37.824078>,  <45.769459, 36.621059, 37.993057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.919617, 36.701675, 37.824078>,  <46.169880, 36.836033, 37.542446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.919617, 36.701675, 37.824078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233646, -0.780431, -0.579946,
		0.744286, -0.527352, 0.409802,
		-0.625658, -0.335897, 0.704078,
		45.731918, 36.600906, 38.035301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.211365, 36.237732, 37.290333>,  <46.169880, 36.836033, 37.542446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.211365, 36.237732, 37.290333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.913563, 36.242100, 37.557346>,  <45.734882, 36.244720, 37.717552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.913563, 36.242100, 37.557346>,  <46.211365, 36.237732, 37.290333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.913563, 36.242100, 37.557346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404023, -0.803357, -0.437473,
		0.531491, -0.595397, 0.602511,
		-0.744502, 0.010915, 0.667532,
		45.690212, 36.245373, 37.757607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.094307, 35.549713, 37.616051>,  <46.211365, 36.237732, 37.290333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.094307, 35.549713, 37.616051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.757584, 35.765625, 37.615971>,  <45.555550, 35.895172, 37.615921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.757584, 35.765625, 37.615971>,  <46.094307, 35.549713, 37.616051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.757584, 35.765625, 37.615971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439309, -0.685326, -0.580806,
		-0.313645, -0.488838, 0.814042,
		-0.841805, 0.539783, -0.000198,
		45.505043, 35.927559, 37.615910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.599815, 35.043056, 37.699512>,  <46.094307, 35.549713, 37.616051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.599815, 35.043056, 37.699512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.399891, 35.352722, 37.544147>,  <45.279938, 35.538521, 37.450928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.399891, 35.352722, 37.544147>,  <45.599815, 35.043056, 37.699512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.399891, 35.352722, 37.544147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457963, -0.616841, -0.640138,
		-0.735160, -0.142067, 0.662840,
		-0.499810, 0.774160, -0.388416,
		45.249947, 35.584969, 37.427624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.881615, 34.768745, 37.679623>,  <45.599815, 35.043056, 37.699512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.881615, 34.768745, 37.679623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892231, 35.080280, 37.428955>,  <44.898602, 35.267200, 37.278557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892231, 35.080280, 37.428955>,  <44.881615, 34.768745, 37.679623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.892231, 35.080280, 37.428955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526205, -0.522122, -0.671191,
		-0.849944, 0.347565, 0.395973,
		0.026536, 0.778837, -0.626665,
		44.900192, 35.313931, 37.240955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.172092, 34.976078, 37.511215>,  <44.881615, 34.768745, 37.679623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.172092, 34.976078, 37.511215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.401047, 35.098236, 37.206818>,  <44.538422, 35.171532, 37.024181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.401047, 35.098236, 37.206818>,  <44.172092, 34.976078, 37.511215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.401047, 35.098236, 37.206818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494035, -0.612262, -0.617304,
		-0.654447, 0.729293, -0.199575,
		0.572388, 0.305396, -0.760990,
		44.572762, 35.189854, 36.978519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.639839, 35.155346, 36.953377>,  <44.172092, 34.976078, 37.511215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.639839, 35.155346, 36.953377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.993694, 35.130692, 36.768505>,  <44.206009, 35.115898, 36.657581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.993694, 35.130692, 36.768505>,  <43.639839, 35.155346, 36.953377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.993694, 35.130692, 36.768505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439819, -0.439439, -0.783232,
		-0.154827, 0.896155, -0.415854,
		0.884640, -0.061635, -0.462183,
		44.259087, 35.112202, 36.629848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.454224, 35.419582, 36.290783>,  <43.639839, 35.155346, 36.953377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.454224, 35.419582, 36.290783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.805046, 35.230335, 36.257488>,  <44.015541, 35.116787, 36.237511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.805046, 35.230335, 36.257488>,  <43.454224, 35.419582, 36.290783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.805046, 35.230335, 36.257488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317779, -0.441463, -0.839123,
		0.360257, 0.762411, -0.537535,
		0.877059, -0.473117, -0.083238,
		44.068165, 35.088402, 36.232517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.653503, 35.384621, 35.619045>,  <43.454224, 35.419582, 36.290783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.653503, 35.384621, 35.619045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.873066, 35.077301, 35.750748>,  <44.004803, 34.892910, 35.829769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.873066, 35.077301, 35.750748>,  <43.653503, 35.384621, 35.619045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.873066, 35.077301, 35.750748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249016, -0.526319, -0.813006,
		0.797928, 0.364277, -0.480221,
		0.548909, -0.768304, 0.329254,
		44.037739, 34.846809, 35.849525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.887806, 35.054955, 35.001400>,  <43.653503, 35.384621, 35.619045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.887806, 35.054955, 35.001400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.937214, 34.745342, 35.249794>,  <43.966858, 34.559574, 35.398830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.937214, 34.745342, 35.249794>,  <43.887806, 35.054955, 35.001400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.937214, 34.745342, 35.249794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030371, -0.628433, -0.777270,
		0.991877, 0.077151, -0.101135,
		0.123523, -0.774028, 0.620985,
		43.974270, 34.513134, 35.436089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.322628, 34.550179, 34.645851>,  <43.887806, 35.054955, 35.001400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.322628, 34.550179, 34.645851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.128868, 34.366276, 34.943569>,  <44.012611, 34.255936, 35.122200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.128868, 34.366276, 34.943569>,  <44.322628, 34.550179, 34.645851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.128868, 34.366276, 34.943569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092097, -0.819250, -0.565992,
		0.869986, -0.342714, 0.354502,
		-0.484400, -0.459757, 0.744299,
		43.983547, 34.228348, 35.166859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.649288, 33.957806, 34.740131>,  <44.322628, 34.550179, 34.645851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.649288, 33.957806, 34.740131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.277828, 33.902691, 34.877899>,  <44.054951, 33.869621, 34.960560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.277828, 33.902691, 34.877899>,  <44.649288, 33.957806, 34.740131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.277828, 33.902691, 34.877899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064708, -0.854051, -0.516149,
		0.365272, -0.501608, 0.784198,
		-0.928649, -0.137791, 0.344419,
		43.999233, 33.861355, 34.981224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.389435, 34.238247, 34.725235>,  <44.649288, 33.957806, 34.740131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.389435, 34.238247, 34.725235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.601215, 34.337036, 34.400597>,  <45.728283, 34.396309, 34.205814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.601215, 34.337036, 34.400597>,  <45.389435, 34.238247, 34.725235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.601215, 34.337036, 34.400597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127012, 0.922825, 0.363679,
		0.838780, -0.295632, 0.457220,
		0.529449, 0.246974, -0.811595,
		45.760052, 34.411129, 34.157120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.122509, 34.017574, 34.859013>,  <45.389435, 34.238247, 34.725235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.122509, 34.017574, 34.859013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.951374, 34.351444, 34.720287>,  <45.848694, 34.551765, 34.637051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.951374, 34.351444, 34.720287>,  <46.122509, 34.017574, 34.859013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.951374, 34.351444, 34.720287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422719, 0.154377, 0.893016,
		0.798915, 0.528669, 0.286783,
		-0.427837, 0.834672, -0.346812,
		45.823025, 34.601845, 34.616245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.834385, 34.001057, 34.709404>,  <46.122509, 34.017574, 34.859013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.834385, 34.001057, 34.709404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.073135, 34.180176, 34.443108>,  <47.216385, 34.287647, 34.283329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.073135, 34.180176, 34.443108>,  <46.834385, 34.001057, 34.709404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.073135, 34.180176, 34.443108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404200, 0.884599, 0.232611,
		0.693078, 0.130252, 0.708997,
		0.596880, 0.447794, -0.665744,
		47.252201, 34.314514, 34.243385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.423153, 34.464211, 35.042850>,  <46.834385, 34.001057, 34.709404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.423153, 34.464211, 35.042850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.343433, 34.619034, 34.682747>,  <47.295601, 34.711929, 34.466686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.343433, 34.619034, 34.682747>,  <47.423153, 34.464211, 35.042850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.343433, 34.619034, 34.682747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212589, 0.879730, 0.425301,
		0.956601, 0.276147, -0.093045,
		-0.199300, 0.387063, -0.900256,
		47.283642, 34.735153, 34.412670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.877201, 35.087910, 34.977123>,  <47.423153, 34.464211, 35.042850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.877201, 35.087910, 34.977123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.559177, 35.143143, 34.740879>,  <47.368362, 35.176281, 34.599133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.559177, 35.143143, 34.740879>,  <47.877201, 35.087910, 34.977123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.559177, 35.143143, 34.740879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104193, 0.928175, 0.357262,
		0.597521, 0.345580, -0.723563,
		-0.795055, 0.138081, -0.590611,
		47.320660, 35.184566, 34.563694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.491470, 38.961868, 45.465637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.094727, 39.001850, 45.434074>,  <37.856682, 39.025841, 45.415138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.094727, 39.001850, 45.434074>,  <38.491470, 38.961868, 45.465637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094727, 39.001850, 45.434074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058597, -0.191900, -0.979664,
		-0.113067, -0.976311, 0.184480,
		-0.991858, 0.099958, -0.078907,
		37.797169, 39.031837, 45.410400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295288, 38.407906, 44.968452>,  <38.491470, 38.961868, 45.465637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295288, 38.407906, 44.968452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.980091, 38.653675, 44.984169>,  <37.790974, 38.801136, 44.993599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.980091, 38.653675, 44.984169>,  <38.295288, 38.407906, 44.968452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980091, 38.653675, 44.984169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239944, -0.247706, -0.938653,
		-0.567004, -0.749079, 0.342619,
		-0.787994, 0.614429, 0.039286,
		37.743694, 38.838005, 44.995956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564392, 38.061054, 44.638668>,  <38.295288, 38.407906, 44.968452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564392, 38.061054, 44.638668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.517895, 38.458244, 44.629871>,  <37.489998, 38.696560, 44.624592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.517895, 38.458244, 44.629871>,  <37.564392, 38.061054, 44.638668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517895, 38.458244, 44.629871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392591, -0.066273, -0.917322,
		-0.912338, -0.097996, 0.397537,
		-0.116240, 0.992978, -0.021991,
		37.483025, 38.756138, 44.623276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803890, 38.288986, 44.340919>,  <37.564392, 38.061054, 44.638668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803890, 38.288986, 44.340919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.041431, 38.607986, 44.298355>,  <37.183956, 38.799389, 44.272816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.041431, 38.607986, 44.298355>,  <36.803890, 38.288986, 44.340919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041431, 38.607986, 44.298355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344812, 0.132769, -0.929235,
		-0.726939, 0.588525, 0.353834,
		0.593856, 0.797503, -0.106415,
		37.219589, 38.847237, 44.266430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383781, 38.755280, 43.937954>,  <36.803890, 38.288986, 44.340919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383781, 38.755280, 43.937954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.760963, 38.881428, 43.895279>,  <36.987270, 38.957119, 43.869675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.760963, 38.881428, 43.895279>,  <36.383781, 38.755280, 43.937954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760963, 38.881428, 43.895279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176895, 0.203134, -0.963039,
		-0.282045, 0.926972, 0.247333,
		0.942952, 0.315372, -0.106684,
		37.043850, 38.976040, 43.863274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410843, 39.384338, 43.760777>,  <36.383781, 38.755280, 43.937954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410843, 39.384338, 43.760777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.752560, 39.239220, 43.611885>,  <36.957592, 39.152149, 43.522549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.752560, 39.239220, 43.611885>,  <36.410843, 39.384338, 43.760777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752560, 39.239220, 43.611885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324564, 0.187029, -0.927188,
		0.406002, 0.912905, 0.042026,
		0.854295, -0.362800, -0.372231,
		37.008850, 39.130379, 43.500217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533226, 39.796268, 43.181240>,  <36.410843, 39.384338, 43.760777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533226, 39.796268, 43.181240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.757992, 39.471001, 43.120579>,  <36.892853, 39.275841, 43.084183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.757992, 39.471001, 43.120579>,  <36.533226, 39.796268, 43.181240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757992, 39.471001, 43.120579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020488, 0.169593, -0.985301,
		0.826939, 0.556765, 0.078637,
		0.561918, -0.813173, -0.151650,
		36.926567, 39.227047, 43.075085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011280, 39.979633, 42.599495>,  <36.533226, 39.796268, 43.181240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011280, 39.979633, 42.599495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.043839, 39.581959, 42.627697>,  <37.063374, 39.343353, 42.644619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.043839, 39.581959, 42.627697>,  <37.011280, 39.979633, 42.599495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043839, 39.581959, 42.627697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055146, -0.066136, -0.996286,
		0.995155, 0.084985, 0.049442,
		0.081399, -0.994185, 0.070502,
		37.068260, 39.283703, 42.648849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576393, 39.734653, 42.073975>,  <37.011280, 39.979633, 42.599495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576393, 39.734653, 42.073975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.337837, 39.418575, 42.130413>,  <37.194702, 39.228928, 42.164276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.337837, 39.418575, 42.130413>,  <37.576393, 39.734653, 42.073975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337837, 39.418575, 42.130413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099838, -0.247438, -0.963746,
		0.796463, -0.560681, 0.226460,
		-0.596389, -0.790198, 0.141098,
		37.158920, 39.181515, 42.172741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879723, 39.238895, 41.494293>,  <37.576393, 39.734653, 42.073975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879723, 39.238895, 41.494293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.566898, 39.050056, 41.657024>,  <37.379204, 38.936752, 41.754662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.566898, 39.050056, 41.657024>,  <37.879723, 39.238895, 41.494293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566898, 39.050056, 41.657024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100864, -0.548311, -0.830169,
		0.614988, -0.690276, 0.381194,
		-0.782059, -0.472095, 0.406829,
		37.332279, 38.908428, 41.779072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982899, 38.553009, 41.444401>,  <37.879723, 39.238895, 41.494293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982899, 38.553009, 41.444401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.586773, 38.603600, 41.467316>,  <37.349098, 38.633953, 41.481064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.586773, 38.603600, 41.467316>,  <37.982899, 38.553009, 41.444401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586773, 38.603600, 41.467316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120463, -0.577510, -0.807447,
		-0.069035, -0.806528, 0.587152,
		-0.990315, 0.126472, 0.057288,
		37.289677, 38.641541, 41.484501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720230, 37.949905, 41.275368>,  <37.982899, 38.553009, 41.444401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720230, 37.949905, 41.275368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.422668, 38.208782, 41.208740>,  <37.244129, 38.364109, 41.168766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.422668, 38.208782, 41.208740>,  <37.720230, 37.949905, 41.275368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422668, 38.208782, 41.208740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065508, -0.318666, -0.945600,
		-0.665063, -0.692528, 0.279455,
		-0.743908, 0.647191, -0.166567,
		37.199497, 38.402939, 41.158772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056416, 37.585968, 40.963390>,  <37.720230, 37.949905, 41.275368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056416, 37.585968, 40.963390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.008114, 37.963444, 40.840183>,  <36.979134, 38.189930, 40.766258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.008114, 37.963444, 40.840183>,  <37.056416, 37.585968, 40.963390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008114, 37.963444, 40.840183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147316, -0.323891, -0.934555,
		-0.981691, -0.067477, 0.178131,
		-0.120756, 0.943685, -0.308020,
		36.971886, 38.246548, 40.747776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547413, 37.520546, 40.529865>,  <37.056416, 37.585968, 40.963390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547413, 37.520546, 40.529865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.707458, 37.877361, 40.445793>,  <36.803486, 38.091450, 40.395351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.707458, 37.877361, 40.445793>,  <36.547413, 37.520546, 40.529865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707458, 37.877361, 40.445793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137284, -0.168410, -0.976110,
		-0.906124, 0.419411, 0.055079,
		0.400115, 0.892039, -0.210178,
		36.827492, 38.144974, 40.382740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122032, 37.917046, 40.100136>,  <36.547413, 37.520546, 40.529865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122032, 37.917046, 40.100136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.481640, 38.068481, 40.012108>,  <36.697403, 38.159344, 39.959290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.481640, 38.068481, 40.012108>,  <36.122032, 37.917046, 40.100136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481640, 38.068481, 40.012108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147962, -0.210380, -0.966358,
		-0.412152, 0.901338, -0.133119,
		0.899021, 0.378589, -0.220072,
		36.751347, 38.182056, 39.946087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025864, 38.206982, 39.444405>,  <36.122032, 37.917046, 40.100136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025864, 38.206982, 39.444405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.421246, 38.164139, 39.487255>,  <36.658474, 38.138432, 39.512966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.421246, 38.164139, 39.487255>,  <36.025864, 38.206982, 39.444405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421246, 38.164139, 39.487255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084328, -0.198395, -0.976488,
		0.125845, 0.974252, -0.187073,
		0.988459, -0.107111, 0.107123,
		36.717785, 38.132004, 39.519394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347881, 38.810738, 39.101849>,  <36.025864, 38.206982, 39.444405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347881, 38.810738, 39.101849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.630775, 38.527954, 39.099384>,  <36.800510, 38.358284, 39.097904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.630775, 38.527954, 39.099384>,  <36.347881, 38.810738, 39.101849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630775, 38.527954, 39.099384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049870, 0.058576, -0.997037,
		0.705221, 0.704829, 0.076682,
		0.707232, -0.706955, -0.006159,
		36.842945, 38.315868, 39.097538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612537, 38.801228, 38.406376>,  <36.347881, 38.810738, 39.101849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612537, 38.801228, 38.406376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.852383, 38.526989, 38.571507>,  <36.996288, 38.362446, 38.670586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.852383, 38.526989, 38.571507>,  <36.612537, 38.801228, 38.406376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852383, 38.526989, 38.571507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528418, -0.048234, -0.847613,
		0.601035, 0.726379, 0.333361,
		0.599609, -0.685599, 0.412822,
		37.032265, 38.321308, 38.695354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352596, 38.885811, 38.543427>,  <36.612537, 38.801228, 38.406376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352596, 38.885811, 38.543427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.298134, 38.493660, 38.486397>,  <37.265457, 38.258369, 38.452179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.298134, 38.493660, 38.486397>,  <37.352596, 38.885811, 38.543427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298134, 38.493660, 38.486397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507349, 0.054612, -0.860009,
		0.850917, -0.189433, 0.489955,
		-0.136157, -0.980374, -0.142579,
		37.257286, 38.199547, 38.443623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017296, 38.664375, 38.264362>,  <37.352596, 38.885811, 38.543427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017296, 38.664375, 38.264362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.776905, 38.357002, 38.176414>,  <37.632671, 38.172581, 38.123646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.776905, 38.357002, 38.176414>,  <38.017296, 38.664375, 38.264362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776905, 38.357002, 38.176414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317689, 0.022774, -0.947922,
		0.733418, -0.639529, 0.230435,
		-0.600975, -0.768430, -0.219874,
		37.596611, 38.126472, 38.110451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459702, 38.231926, 37.927971>,  <38.017296, 38.664375, 38.264362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459702, 38.231926, 37.927971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.096413, 38.108963, 37.814381>,  <37.878441, 38.035187, 37.746227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.096413, 38.108963, 37.814381>,  <38.459702, 38.231926, 37.927971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096413, 38.108963, 37.814381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325845, -0.093637, -0.940775,
		0.262612, -0.946960, 0.185210,
		-0.908218, -0.307408, -0.283972,
		37.823948, 38.016739, 37.729191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648510, 37.699032, 37.403862>,  <38.459702, 38.231926, 37.927971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648510, 37.699032, 37.403862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.268188, 37.810802, 37.350368>,  <38.039993, 37.877865, 37.318272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.268188, 37.810802, 37.350368>,  <38.648510, 37.699032, 37.403862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268188, 37.810802, 37.350368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083212, -0.185464, -0.979122,
		-0.298401, -0.942083, 0.153089,
		-0.950807, 0.279432, -0.133735,
		37.982944, 37.894630, 37.310249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637024, 36.994064, 37.425205>,  <38.648510, 37.699032, 37.403862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637024, 36.994064, 37.425205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.919315, 36.712418, 37.456615>,  <39.088692, 36.543430, 37.475464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.919315, 36.712418, 37.456615>,  <38.637024, 36.994064, 37.425205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919315, 36.712418, 37.456615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069948, 0.179549, 0.981259,
		-0.705019, -0.687011, 0.175965,
		0.705730, -0.704115, 0.078530,
		39.131035, 36.501183, 37.480175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490467, 36.618195, 38.012825>,  <38.637024, 36.994064, 37.425205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490467, 36.618195, 38.012825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.876347, 36.542339, 37.939732>,  <39.107876, 36.496826, 37.895878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.876347, 36.542339, 37.939732>,  <38.490467, 36.618195, 38.012825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876347, 36.542339, 37.939732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222664, 0.216850, 0.950472,
		-0.140619, -0.957609, 0.251421,
		0.964701, -0.189636, -0.182731,
		39.165756, 36.485447, 37.884911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638294, 36.076412, 38.409107>,  <38.490467, 36.618195, 38.012825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638294, 36.076412, 38.409107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.975906, 36.284206, 38.355824>,  <39.178474, 36.408882, 38.323853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.975906, 36.284206, 38.355824>,  <38.638294, 36.076412, 38.409107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975906, 36.284206, 38.355824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141908, 0.023187, 0.989608,
		0.517176, -0.854164, -0.054148,
		0.844032, 0.519486, -0.133205,
		39.229115, 36.440052, 38.315861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233501, 35.702389, 38.776215>,  <38.638294, 36.076412, 38.409107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233501, 35.702389, 38.776215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.329529, 36.088745, 38.737385>,  <39.387146, 36.320560, 38.714085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.329529, 36.088745, 38.737385>,  <39.233501, 35.702389, 38.776215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329529, 36.088745, 38.737385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398579, -0.006889, 0.917108,
		0.885158, -0.258859, -0.386637,
		0.240065, 0.965891, -0.097078,
		39.401546, 36.378513, 38.708260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796211, 35.646812, 39.083340>,  <39.233501, 35.702389, 38.776215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796211, 35.646812, 39.083340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.699589, 36.034946, 39.087471>,  <39.641617, 36.267826, 39.089951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.699589, 36.034946, 39.087471>,  <39.796211, 35.646812, 39.083340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699589, 36.034946, 39.087471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323188, 0.070408, 0.943712,
		0.914986, 0.231298, -0.330607,
		-0.241556, 0.970332, 0.010330,
		39.627121, 36.326046, 39.090569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224949, 35.928581, 39.560669>,  <39.796211, 35.646812, 39.083340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224949, 35.928581, 39.560669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.952255, 36.220596, 39.541523>,  <39.788639, 36.395805, 39.530033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.952255, 36.220596, 39.541523>,  <40.224949, 35.928581, 39.560669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952255, 36.220596, 39.541523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065562, 0.004203, 0.997840,
		0.728660, 0.683396, 0.044997,
		-0.681730, 0.730036, -0.047867,
		39.747738, 36.439606, 39.527164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510307, 36.468651, 40.005039>,  <40.224949, 35.928581, 39.560669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510307, 36.468651, 40.005039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.124863, 36.570133, 39.971352>,  <39.893597, 36.631023, 39.951141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.124863, 36.570133, 39.971352>,  <40.510307, 36.468651, 40.005039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124863, 36.570133, 39.971352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084027, 0.011602, 0.996396,
		0.253772, 0.967211, 0.010139,
		-0.963607, 0.253709, -0.084216,
		39.835781, 36.646248, 39.946087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411488, 37.054104, 40.323151>,  <40.510307, 36.468651, 40.005039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411488, 37.054104, 40.323151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.048325, 36.886505, 40.318203>,  <39.830429, 36.785946, 40.315235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.048325, 36.886505, 40.318203>,  <40.411488, 37.054104, 40.323151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048325, 36.886505, 40.318203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008972, -0.010082, 0.999909,
		-0.419084, 0.907932, 0.005394,
		-0.907903, -0.418997, -0.012371,
		39.775955, 36.760807, 40.314491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048042, 37.524830, 40.746483>,  <40.411488, 37.054104, 40.323151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048042, 37.524830, 40.746483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.845245, 37.180065, 40.743176>,  <39.723568, 36.973206, 40.741192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.845245, 37.180065, 40.743176>,  <40.048042, 37.524830, 40.746483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845245, 37.180065, 40.743176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254988, 0.140807, 0.956637,
		-0.823373, 0.487113, -0.291165,
		-0.506989, -0.861913, -0.008271,
		39.693150, 36.921490, 40.740696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440907, 37.727642, 41.113922>,  <40.048042, 37.524830, 40.746483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440907, 37.727642, 41.113922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.487473, 37.332085, 41.150879>,  <39.515411, 37.094749, 41.173054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.487473, 37.332085, 41.150879>,  <39.440907, 37.727642, 41.113922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487473, 37.332085, 41.150879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346734, 0.046703, 0.936800,
		-0.930711, -0.141089, -0.337447,
		0.116413, -0.988895, 0.092388,
		39.522396, 37.035416, 41.178596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848377, 37.592003, 41.316174>,  <39.440907, 37.727642, 41.113922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848377, 37.592003, 41.316174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.083496, 37.287094, 41.424564>,  <39.224567, 37.104149, 41.489601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.083496, 37.287094, 41.424564>,  <38.848377, 37.592003, 41.316174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083496, 37.287094, 41.424564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445043, -0.024957, 0.895161,
		-0.675597, -0.646770, -0.353915,
		0.587797, -0.762276, 0.270979,
		39.259834, 37.058411, 41.505859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491764, 37.308132, 41.771458>,  <38.848377, 37.592003, 41.316174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491764, 37.308132, 41.771458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.856598, 37.163387, 41.848557>,  <39.075500, 37.076542, 41.894817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.856598, 37.163387, 41.848557>,  <38.491764, 37.308132, 41.771458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856598, 37.163387, 41.848557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167909, 0.099204, 0.980798,
		-0.374035, -0.926938, 0.029723,
		0.912088, -0.361862, 0.192747,
		39.130226, 37.054829, 41.906380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317455, 36.839165, 42.368073>,  <38.491764, 37.308132, 41.771458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317455, 36.839165, 42.368073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.711300, 36.906574, 42.349564>,  <38.947605, 36.947021, 42.338459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.711300, 36.906574, 42.349564>,  <38.317455, 36.839165, 42.368073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711300, 36.906574, 42.349564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021745, 0.144589, 0.989253,
		0.173415, -0.975033, 0.138699,
		0.984609, 0.168535, -0.046276,
		39.006683, 36.957130, 42.335682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687183, 36.416962, 42.873547>,  <38.317455, 36.839165, 42.368073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687183, 36.416962, 42.873547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.923450, 36.734596, 42.816216>,  <39.065212, 36.925175, 42.781818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.923450, 36.734596, 42.816216>,  <38.687183, 36.416962, 42.873547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923450, 36.734596, 42.816216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052480, 0.139440, 0.988839,
		0.805206, -0.591597, 0.040690,
		0.590668, 0.794084, -0.143325,
		39.100651, 36.972820, 42.773216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127106, 36.331722, 43.385414>,  <38.687183, 36.416962, 42.873547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127106, 36.331722, 43.385414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.199024, 36.711811, 43.283630>,  <39.242176, 36.939865, 43.222561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.199024, 36.711811, 43.283630>,  <39.127106, 36.331722, 43.385414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199024, 36.711811, 43.283630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296231, 0.194363, 0.935131,
		0.938040, -0.243515, -0.246539,
		0.179801, 0.950223, -0.254457,
		39.252964, 36.996880, 43.207294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718098, 36.459393, 43.795513>,  <39.127106, 36.331722, 43.385414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718098, 36.459393, 43.795513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.578053, 36.818714, 43.689323>,  <39.494026, 37.034306, 43.625610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.578053, 36.818714, 43.689323>,  <39.718098, 36.459393, 43.795513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578053, 36.818714, 43.689323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194963, 0.347089, 0.917343,
		0.916195, 0.269413, -0.296655,
		-0.350110, 0.898301, -0.265476,
		39.473019, 37.088203, 43.609680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128014, 36.933372, 44.126621>,  <39.718098, 36.459393, 43.795513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128014, 36.933372, 44.126621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.795444, 37.142433, 44.051186>,  <39.595901, 37.267872, 44.005924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.795444, 37.142433, 44.051186>,  <40.128014, 36.933372, 44.126621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795444, 37.142433, 44.051186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025731, 0.375265, 0.926560,
		0.555042, 0.765513, -0.325453,
		-0.831424, 0.522654, -0.188590,
		39.546017, 37.299229, 43.994610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172604, 37.645264, 44.211464>,  <40.128014, 36.933372, 44.126621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172604, 37.645264, 44.211464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.776707, 37.600990, 44.247612>,  <39.539169, 37.574429, 44.269299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.776707, 37.600990, 44.247612>,  <40.172604, 37.645264, 44.211464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776707, 37.600990, 44.247612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050388, 0.321461, 0.945581,
		-0.133707, 0.940432, -0.312585,
		-0.989739, -0.110680, 0.090368,
		39.479786, 37.567787, 44.274723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.001957, 38.148262, 44.687912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.690815, 37.897205, 44.675182>,  <39.504131, 37.746571, 44.667545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.690815, 37.897205, 44.675182>,  <40.001957, 38.148262, 44.687912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690815, 37.897205, 44.675182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208147, 0.209524, 0.955392,
		-0.592972, 0.749781, -0.293620,
		-0.777855, -0.627637, -0.031823,
		39.457458, 37.708916, 44.665634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536533, 38.376198, 45.191788>,  <40.001957, 38.148262, 44.687912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536533, 38.376198, 45.191788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.402985, 38.001476, 45.149990>,  <39.322857, 37.776642, 45.124912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.402985, 38.001476, 45.149990>,  <39.536533, 38.376198, 45.191788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402985, 38.001476, 45.149990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092908, -0.077608, 0.992646,
		-0.938028, 0.341126, -0.061126,
		-0.333873, -0.936809, -0.104492,
		39.302822, 37.720432, 45.118641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931000, 38.350655, 45.628010>,  <39.536533, 38.376198, 45.191788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931000, 38.350655, 45.628010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.019932, 37.965961, 45.563953>,  <39.073292, 37.735146, 45.525520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.019932, 37.965961, 45.563953>,  <38.931000, 38.350655, 45.628010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019932, 37.965961, 45.563953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223757, -0.210204, 0.951708,
		-0.948948, -0.175760, -0.261928,
		0.222331, -0.961729, -0.160145,
		39.086632, 37.677444, 45.515911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432224, 37.824043, 46.053040>,  <38.931000, 38.350655, 45.628010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432224, 37.824043, 46.053040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.750393, 37.600643, 45.958916>,  <38.941296, 37.466602, 45.902439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.750393, 37.600643, 45.958916>,  <38.432224, 37.824043, 46.053040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750393, 37.600643, 45.958916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057787, -0.316609, 0.946794,
		-0.603290, -0.766702, -0.219565,
		0.795425, -0.558504, -0.235313,
		38.989021, 37.433094, 45.888321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299713, 37.177383, 46.332058>,  <38.432224, 37.824043, 46.053040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299713, 37.177383, 46.332058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.694393, 37.223309, 46.286022>,  <38.931202, 37.250862, 46.258400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.694393, 37.223309, 46.286022>,  <38.299713, 37.177383, 46.332058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694393, 37.223309, 46.286022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135043, -0.184801, 0.973454,
		0.090495, -0.976046, -0.197847,
		0.986699, 0.114811, -0.115085,
		38.990402, 37.257751, 46.251495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653172, 36.591457, 46.697445>,  <38.299713, 37.177383, 46.332058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653172, 36.591457, 46.697445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.935551, 36.870552, 46.648785>,  <39.104980, 37.038010, 46.619587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.935551, 36.870552, 46.648785>,  <38.653172, 36.591457, 46.697445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935551, 36.870552, 46.648785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360786, -0.206462, 0.909509,
		0.609481, -0.685959, -0.397485,
		0.705951, 0.697735, -0.121650,
		39.147335, 37.079872, 46.612289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275063, 36.323345, 46.951122>,  <38.653172, 36.591457, 46.697445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275063, 36.323345, 46.951122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.312790, 36.721512, 46.944710>,  <39.335426, 36.960411, 46.940861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.312790, 36.721512, 46.944710>,  <39.275063, 36.323345, 46.951122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312790, 36.721512, 46.944710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217803, -0.004921, 0.975980,
		0.971424, -0.095548, -0.217268,
		0.094322, 0.995413, -0.016031,
		39.341087, 37.020134, 46.939899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810154, 36.439270, 47.467625>,  <39.275063, 36.323345, 46.951122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810154, 36.439270, 47.467625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.603069, 36.777393, 47.414810>,  <39.478821, 36.980267, 47.383121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.603069, 36.777393, 47.414810>,  <39.810154, 36.439270, 47.467625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603069, 36.777393, 47.414810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008787, 0.149071, 0.988788,
		0.855511, 0.513066, -0.069748,
		-0.517710, 0.845306, -0.132040,
		39.447758, 37.030987, 47.375198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205238, 36.927280, 47.821842>,  <39.810154, 36.439270, 47.467625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205238, 36.927280, 47.821842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.857681, 37.122028, 47.786118>,  <39.649147, 37.238876, 47.764683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.857681, 37.122028, 47.786118>,  <40.205238, 36.927280, 47.821842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857681, 37.122028, 47.786118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003807, 0.173855, 0.984764,
		0.494982, 0.855996, -0.149208,
		-0.868895, 0.486872, -0.089314,
		39.597012, 37.268089, 47.759323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248402, 37.569138, 48.227844>,  <40.205238, 36.927280, 47.821842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248402, 37.569138, 48.227844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.863499, 37.464821, 48.196716>,  <39.632557, 37.402229, 48.178040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.863499, 37.464821, 48.196716>,  <40.248402, 37.569138, 48.227844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863499, 37.464821, 48.196716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075392, -0.019328, 0.996967,
		-0.261505, 0.965202, -0.001063,
		-0.962253, -0.260792, -0.077822,
		39.574821, 37.386585, 48.173370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859310, 37.924706, 48.750778>,  <40.248402, 37.569138, 48.227844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859310, 37.924706, 48.750778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.599442, 37.633377, 48.663628>,  <39.443520, 37.458580, 48.611340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.599442, 37.633377, 48.663628>,  <39.859310, 37.924706, 48.750778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599442, 37.633377, 48.663628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215483, -0.098414, 0.971536,
		-0.729032, 0.678131, -0.093003,
		-0.649676, -0.728322, -0.217872,
		39.404537, 37.414879, 48.598267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315536, 38.130035, 49.070320>,  <39.859310, 37.924706, 48.750778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315536, 38.130035, 49.070320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.277637, 37.737450, 49.003693>,  <39.254898, 37.501896, 48.963715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.277637, 37.737450, 49.003693>,  <39.315536, 38.130035, 49.070320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277637, 37.737450, 49.003693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288362, -0.133093, 0.948226,
		-0.952822, 0.137875, -0.270408,
		-0.094747, -0.981467, -0.166572,
		39.249214, 37.443008, 48.953720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644535, 37.903751, 49.419163>,  <39.315536, 38.130035, 49.070320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644535, 37.903751, 49.419163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.875668, 37.581402, 49.367523>,  <39.014347, 37.387993, 49.336540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.875668, 37.581402, 49.367523>,  <38.644535, 37.903751, 49.419163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875668, 37.581402, 49.367523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121767, -0.241540, 0.962721,
		-0.807019, -0.540573, -0.237699,
		0.577835, -0.805878, -0.129103,
		39.049019, 37.339638, 49.328793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303326, 37.325951, 49.624050>,  <38.644535, 37.903751, 49.419163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303326, 37.325951, 49.624050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.687103, 37.218021, 49.656727>,  <38.917370, 37.153263, 49.676331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.687103, 37.218021, 49.656727>,  <38.303326, 37.325951, 49.624050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687103, 37.218021, 49.656727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158328, -0.275973, 0.948035,
		-0.233249, -0.922518, -0.307499,
		0.959441, -0.269814, 0.081690,
		38.974934, 37.137077, 49.681232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293999, 36.612099, 50.033936>,  <38.303326, 37.325951, 49.624050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293999, 36.612099, 50.033936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.648201, 36.797512, 50.046726>,  <38.860722, 36.908760, 50.054401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.648201, 36.797512, 50.046726>,  <38.293999, 36.612099, 50.033936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648201, 36.797512, 50.046726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130724, -0.314583, 0.940186,
		0.445864, -0.828358, -0.339159,
		0.885504, 0.463531, 0.031975,
		38.913853, 36.936573, 50.056320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685928, 36.160130, 50.472630>,  <38.293999, 36.612099, 50.033936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685928, 36.160130, 50.472630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.908352, 36.491138, 50.441647>,  <39.041805, 36.689743, 50.423058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.908352, 36.491138, 50.441647>,  <38.685928, 36.160130, 50.472630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908352, 36.491138, 50.441647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358208, -0.154512, 0.920768,
		0.749992, -0.539745, -0.382344,
		0.556057, 0.827527, -0.077458,
		39.075169, 36.739395, 50.418407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139168, 35.973114, 50.948036>,  <38.685928, 36.160130, 50.472630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139168, 35.973114, 50.948036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.192303, 36.366653, 50.900036>,  <39.224186, 36.602776, 50.871235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.192303, 36.366653, 50.900036>,  <39.139168, 35.973114, 50.948036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192303, 36.366653, 50.900036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109779, 0.105728, 0.988317,
		0.985039, -0.144461, -0.093961,
		0.132839, 0.983846, -0.120005,
		39.232155, 36.661808, 50.864033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818626, 36.201328, 51.309017>,  <39.139168, 35.973114, 50.948036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818626, 36.201328, 51.309017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.585808, 36.525578, 51.283337>,  <39.446117, 36.720127, 51.267929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.585808, 36.525578, 51.283337>,  <39.818626, 36.201328, 51.309017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585808, 36.525578, 51.283337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208100, 0.224817, 0.951920,
		0.786079, 0.540698, -0.299543,
		-0.582044, 0.810619, -0.064205,
		39.411194, 36.768764, 51.264076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202240, 36.698112, 51.688782>,  <39.818626, 36.201328, 51.309017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202240, 36.698112, 51.688782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.819920, 36.813377, 51.665424>,  <39.590527, 36.882538, 51.651409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.819920, 36.813377, 51.665424>,  <40.202240, 36.698112, 51.688782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819920, 36.813377, 51.665424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012083, 0.159932, 0.987054,
		0.293770, 0.944131, -0.149381,
		-0.955800, 0.288162, -0.058391,
		39.533180, 36.899826, 51.647907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148693, 37.257751, 52.226456>,  <40.202240, 36.698112, 51.688782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148693, 37.257751, 52.226456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.777592, 37.143036, 52.130943>,  <39.554932, 37.074207, 52.073635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.777592, 37.143036, 52.130943>,  <40.148693, 37.257751, 52.226456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777592, 37.143036, 52.130943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284190, 0.128239, 0.950153,
		-0.241870, 0.949372, -0.200477,
		-0.927758, -0.286787, -0.238785,
		39.499264, 37.056999, 52.059307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754162, 37.667999, 52.598373>,  <40.148693, 37.257751, 52.226456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754162, 37.667999, 52.598373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.501167, 37.367748, 52.521927>,  <39.349369, 37.187599, 52.476059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.501167, 37.367748, 52.521927>,  <39.754162, 37.667999, 52.598373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501167, 37.367748, 52.521927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372260, 0.078195, 0.924829,
		-0.679253, 0.656087, -0.328884,
		-0.632486, -0.750623, -0.191121,
		39.311420, 37.142563, 52.464592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973110, 37.842926, 52.884212>,  <39.754162, 37.667999, 52.598373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973110, 37.842926, 52.884212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.986160, 37.444946, 52.846256>,  <38.993988, 37.206158, 52.823483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.986160, 37.444946, 52.846256>,  <38.973110, 37.842926, 52.884212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986160, 37.444946, 52.846256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255623, -0.100092, 0.961581,
		-0.966226, -0.007111, -0.257598,
		0.032622, -0.994953, -0.094894,
		38.995945, 37.146461, 52.817787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226322, 37.340675, 53.073814>,  <38.973110, 37.842926, 52.884212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226322, 37.340675, 53.073814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.584282, 37.181011, 53.153648>,  <38.799057, 37.085213, 53.201550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.584282, 37.181011, 53.153648>,  <38.226322, 37.340675, 53.073814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584282, 37.181011, 53.153648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271014, -0.130761, 0.953652,
		-0.354560, -0.907510, -0.225195,
		0.894896, -0.399158, 0.199586,
		38.852749, 37.061264, 53.213524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861839, 37.935131, 53.450958>,  <38.226322, 37.340675, 53.073814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861839, 37.935131, 53.450958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.487335, 37.842850, 53.556938>,  <37.262634, 37.787479, 53.620525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.487335, 37.842850, 53.556938>,  <37.861839, 37.935131, 53.450958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487335, 37.842850, 53.556938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266344, 0.025686, 0.963536,
		-0.229098, 0.972685, 0.037398,
		-0.936256, -0.230704, 0.264953,
		37.206459, 37.773640, 53.636425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198486, 38.475750, 53.055470>,  <37.861839, 37.935131, 53.450958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198486, 38.475750, 53.055470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.873367, 38.708752, 53.052807>,  <37.678295, 38.848553, 53.051208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.873367, 38.708752, 53.052807>,  <38.198486, 38.475750, 53.055470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873367, 38.708752, 53.052807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291481, -0.416552, -0.861118,
		-0.504381, -0.697974, 0.508362,
		-0.812797, 0.582509, -0.006655,
		37.629528, 38.883503, 53.050812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802662, 38.187138, 52.584915>,  <38.198486, 38.475750, 53.055470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802662, 38.187138, 52.584915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.567398, 38.497074, 52.677597>,  <37.426239, 38.683037, 52.733208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.567398, 38.497074, 52.677597>,  <37.802662, 38.187138, 52.584915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567398, 38.497074, 52.677597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557129, -0.180509, -0.810570,
		-0.586240, -0.605833, 0.537855,
		-0.588158, 0.774844, 0.231706,
		37.390949, 38.729527, 52.747108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034191, 37.976849, 52.673317>,  <37.802662, 38.187138, 52.584915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034191, 37.976849, 52.673317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.056198, 38.355503, 52.546284>,  <37.069405, 38.582695, 52.470062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.056198, 38.355503, 52.546284>,  <37.034191, 37.976849, 52.673317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056198, 38.355503, 52.546284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306602, -0.286681, -0.907639,
		-0.950246, 0.147311, 0.274466,
		0.055021, 0.946633, -0.317584,
		37.072704, 38.639492, 52.451008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442474, 38.043316, 52.258587>,  <37.034191, 37.976849, 52.673317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442474, 38.043316, 52.258587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.676907, 38.354946, 52.169556>,  <36.817566, 38.541924, 52.116138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.676907, 38.354946, 52.169556>,  <36.442474, 38.043316, 52.258587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676907, 38.354946, 52.169556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352059, -0.002553, -0.935974,
		-0.729767, 0.626920, 0.272786,
		0.586084, 0.779080, -0.222575,
		36.852734, 38.588669, 52.102783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967052, 38.512981, 51.994049>,  <36.442474, 38.043316, 52.258587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967052, 38.512981, 51.994049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.342709, 38.592300, 51.881840>,  <36.568100, 38.639893, 51.814514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.342709, 38.592300, 51.881840>,  <35.967052, 38.512981, 51.994049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342709, 38.592300, 51.881840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252902, -0.153587, -0.955223,
		-0.232506, 0.968033, -0.094089,
		0.939138, 0.198300, -0.280528,
		36.624451, 38.651791, 51.797680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804871, 39.008240, 51.511475>,  <35.967052, 38.512981, 51.994049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804871, 39.008240, 51.511475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.176144, 38.880814, 51.434547>,  <36.398907, 38.804359, 51.388390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.176144, 38.880814, 51.434547>,  <35.804871, 39.008240, 51.511475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176144, 38.880814, 51.434547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243092, -0.127789, -0.961549,
		0.281741, 0.939247, -0.196053,
		0.928186, -0.318566, -0.192320,
		36.454597, 38.785244, 51.376850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057632, 39.478104, 50.996464>,  <35.804871, 39.008240, 51.511475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057632, 39.478104, 50.996464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.297741, 39.159809, 50.964249>,  <36.441807, 38.968834, 50.944920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.297741, 39.159809, 50.964249>,  <36.057632, 39.478104, 50.996464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297741, 39.159809, 50.964249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092005, 0.031323, -0.995266,
		0.794488, 0.604837, -0.054409,
		0.600269, -0.795733, -0.080534,
		36.477821, 38.921089, 50.940090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224812, 39.531528, 50.369877>,  <36.057632, 39.478104, 50.996464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224812, 39.531528, 50.369877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.386253, 39.172539, 50.441021>,  <36.483120, 38.957146, 50.483707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.386253, 39.172539, 50.441021>,  <36.224812, 39.531528, 50.369877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386253, 39.172539, 50.441021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099113, -0.236144, -0.966650,
		0.909550, 0.372515, -0.184260,
		0.403604, -0.897479, 0.177864,
		36.507336, 38.903294, 50.494381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969749, 39.414585, 50.148849>,  <36.224812, 39.531528, 50.369877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969749, 39.414585, 50.148849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.812431, 39.046829, 50.146152>,  <36.718040, 38.826176, 50.144535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.812431, 39.046829, 50.146152>,  <36.969749, 39.414585, 50.148849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812431, 39.046829, 50.146152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243085, -0.096908, -0.965152,
		0.886694, -0.381233, 0.261603,
		-0.393299, -0.919386, -0.006744,
		36.694443, 38.771015, 50.144131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491657, 38.942574, 49.996094>,  <36.969749, 39.414585, 50.148849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491657, 38.942574, 49.996094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.151340, 38.761719, 49.888962>,  <36.947151, 38.653206, 49.824684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.151340, 38.761719, 49.888962>,  <37.491657, 38.942574, 49.996094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151340, 38.761719, 49.888962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318326, -0.037901, -0.947223,
		0.418122, -0.891144, 0.176173,
		-0.850789, -0.452135, -0.267827,
		36.896103, 38.626080, 49.808613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792007, 38.426537, 49.653900>,  <37.491657, 38.942574, 49.996094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792007, 38.426537, 49.653900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.409508, 38.463783, 49.542961>,  <37.180008, 38.486130, 49.476398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.409508, 38.463783, 49.542961>,  <37.792007, 38.426537, 49.653900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409508, 38.463783, 49.542961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281810, 0.038497, -0.958698,
		-0.078596, -0.994910, -0.063054,
		-0.956246, 0.093120, -0.277350,
		37.122635, 38.491718, 49.459755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798222, 38.126118, 49.018082>,  <37.792007, 38.426537, 49.653900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798222, 38.126118, 49.018082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.439808, 38.303169, 49.004154>,  <37.224762, 38.409401, 48.995796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.439808, 38.303169, 49.004154>,  <37.798222, 38.126118, 49.018082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439808, 38.303169, 49.004154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093661, 0.111772, -0.989310,
		-0.434003, -0.889713, -0.141608,
		-0.896029, 0.442627, -0.034822,
		37.170998, 38.435959, 48.993706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328293, 37.688206, 48.588974>,  <37.798222, 38.126118, 49.018082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328293, 37.688206, 48.588974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.223377, 38.073597, 48.567406>,  <37.160427, 38.304832, 48.554462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.223377, 38.073597, 48.567406>,  <37.328293, 37.688206, 48.588974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223377, 38.073597, 48.567406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013047, -0.059415, -0.998148,
		-0.964902, -0.261097, 0.028154,
		-0.262287, 0.963482, -0.053923,
		37.144691, 38.362640, 48.551228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763973, 37.734566, 48.029758>,  <37.328293, 37.688206, 48.588974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763973, 37.734566, 48.029758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.872784, 38.117832, 48.065338>,  <36.938072, 38.347794, 48.086685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.872784, 38.117832, 48.065338>,  <36.763973, 37.734566, 48.029758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872784, 38.117832, 48.065338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080306, 0.069510, -0.994344,
		-0.958933, 0.277633, -0.058038,
		0.272028, 0.958169, 0.088951,
		36.954391, 38.405281, 48.092022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314831, 38.130127, 47.530243>,  <36.763973, 37.734566, 48.029758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314831, 38.130127, 47.530243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.652637, 38.331509, 47.603268>,  <36.855320, 38.452339, 47.647083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.652637, 38.331509, 47.603268>,  <36.314831, 38.130127, 47.530243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652637, 38.331509, 47.603268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138419, 0.124103, -0.982567,
		-0.517336, 0.855061, 0.035118,
		0.844513, 0.503457, 0.182559,
		36.905991, 38.482544, 47.658035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259041, 38.828220, 47.161713>,  <36.314831, 38.130127, 47.530243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259041, 38.828220, 47.161713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.648205, 38.809223, 47.252220>,  <36.881702, 38.797825, 47.306526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.648205, 38.809223, 47.252220>,  <36.259041, 38.828220, 47.161713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648205, 38.809223, 47.252220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223161, 0.448756, -0.865342,
		-0.060441, 0.892391, 0.447196,
		0.972906, -0.047495, 0.226270,
		36.940075, 38.794975, 47.320103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651363, 39.530170, 47.084358>,  <36.259041, 38.828220, 47.161713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651363, 39.530170, 47.084358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.918762, 39.238575, 47.025452>,  <37.079201, 39.063618, 46.990108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.918762, 39.238575, 47.025452>,  <36.651363, 39.530170, 47.084358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918762, 39.238575, 47.025452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196218, 0.363871, -0.910547,
		0.717368, 0.579799, 0.386287,
		0.668493, -0.728993, -0.147263,
		37.119308, 39.019878, 46.981274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194794, 39.938431, 46.717365>,  <36.651363, 39.530170, 47.084358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194794, 39.938431, 46.717365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.263184, 39.546017, 46.680836>,  <37.304218, 39.310570, 46.658916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.263184, 39.546017, 46.680836>,  <37.194794, 39.938431, 46.717365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263184, 39.546017, 46.680836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122140, 0.113082, -0.986050,
		0.977676, 0.157433, 0.139157,
		0.170973, -0.981034, -0.091328,
		37.314476, 39.251705, 46.653439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920311, 39.873962, 46.418564>,  <37.194794, 39.938431, 46.717365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920311, 39.873962, 46.418564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.710857, 39.542004, 46.341541>,  <37.585186, 39.342827, 46.295326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.710857, 39.542004, 46.341541>,  <37.920311, 39.873962, 46.418564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710857, 39.542004, 46.341541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126308, 0.147897, -0.980904,
		0.842530, -0.537952, 0.027380,
		-0.523630, -0.829900, -0.192556,
		37.553768, 39.293034, 46.283775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329887, 39.536217, 45.911415>,  <37.920311, 39.873962, 46.418564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329887, 39.536217, 45.911415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.964363, 39.375996, 45.884537>,  <37.745049, 39.279865, 45.868408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.964363, 39.375996, 45.884537>,  <38.329887, 39.536217, 45.911415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964363, 39.375996, 45.884537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058224, 0.034545, -0.997706,
		0.401952, -0.915623, -0.008246,
		-0.913808, -0.400550, -0.067197,
		37.690220, 39.255829, 45.864376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.047565, 41.773449, 37.364044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.811375, 41.858761, 37.675388>,  <43.669659, 41.909946, 37.862194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.811375, 41.858761, 37.675388>,  <44.047565, 41.773449, 37.364044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.811375, 41.858761, 37.675388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413627, -0.908127, -0.064946,
		0.693001, -0.360302, 0.624445,
		-0.590476, 0.213280, 0.778364,
		43.634232, 41.922745, 37.908897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.109325, 41.161945, 37.762482>,  <44.047565, 41.773449, 37.364044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.109325, 41.161945, 37.762482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.780544, 41.340736, 37.903679>,  <43.583275, 41.448013, 37.988396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.780544, 41.340736, 37.903679>,  <44.109325, 41.161945, 37.762482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.780544, 41.340736, 37.903679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471949, -0.881458, 0.017208,
		0.318839, -0.152450, 0.935468,
		-0.821952, 0.446980, 0.352992,
		43.533958, 41.474831, 38.009575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.847469, 40.730785, 38.333496>,  <44.109325, 41.161945, 37.762482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.847469, 40.730785, 38.333496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.530983, 40.950756, 38.226501>,  <43.341091, 41.082741, 38.162304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.530983, 40.950756, 38.226501>,  <43.847469, 40.730785, 38.333496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.530983, 40.950756, 38.226501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575772, -0.817292, 0.022843,
		-0.206051, 0.172084, 0.963291,
		-0.791221, 0.549929, -0.267485,
		43.293617, 41.115734, 38.146255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.189976, 40.602562, 38.814240>,  <43.847469, 40.730785, 38.333496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.189976, 40.602562, 38.814240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.083462, 40.743103, 38.455212>,  <43.019554, 40.827427, 38.239796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.083462, 40.743103, 38.455212>,  <43.189976, 40.602562, 38.814240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.083462, 40.743103, 38.455212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663799, -0.742038, -0.093541,
		-0.698901, 0.570900, 0.430825,
		-0.266286, 0.351357, -0.897574,
		43.003574, 40.848511, 38.185940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475208, 40.521496, 38.860855>,  <43.189976, 40.602562, 38.814240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475208, 40.521496, 38.860855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.547352, 40.579220, 38.471672>,  <42.590637, 40.613853, 38.238163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.547352, 40.579220, 38.471672>,  <42.475208, 40.521496, 38.860855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547352, 40.579220, 38.471672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603060, -0.765221, -0.225290,
		-0.777038, 0.627385, -0.050992,
		0.180363, 0.144308, -0.972957,
		42.601460, 40.622513, 38.179787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.755119, 40.378757, 38.557098>,  <42.475208, 40.521496, 38.860855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.755119, 40.378757, 38.557098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.052799, 40.352669, 38.291195>,  <42.231407, 40.337013, 38.131653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.052799, 40.352669, 38.291195>,  <41.755119, 40.378757, 38.557098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.052799, 40.352669, 38.291195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488177, -0.732382, -0.474657,
		-0.455899, 0.677762, -0.576883,
		0.744204, -0.065225, -0.664760,
		42.276062, 40.333099, 38.091766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456249, 40.250504, 37.815804>,  <41.755119, 40.378757, 38.557098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.456249, 40.250504, 37.815804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.835709, 40.124084, 37.810436>,  <42.063385, 40.048233, 37.807217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.835709, 40.124084, 37.810436>,  <41.456249, 40.250504, 37.815804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835709, 40.124084, 37.810436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260887, -0.757664, -0.598234,
		0.178903, 0.571015, -0.801209,
		0.948647, -0.316050, -0.013422,
		42.120304, 40.029270, 37.806408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565777, 40.123260, 37.161179>,  <41.456249, 40.250504, 37.815804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565777, 40.123260, 37.161179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.825718, 39.887970, 37.353710>,  <41.981682, 39.746796, 37.469227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.825718, 39.887970, 37.353710>,  <41.565777, 40.123260, 37.161179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.825718, 39.887970, 37.353710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306984, -0.782461, -0.541770,
		0.695303, 0.204313, -0.689065,
		0.649857, -0.588226, 0.481327,
		42.020676, 39.711502, 37.498108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.723568, 39.655361, 36.661861>,  <41.565777, 40.123260, 37.161179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.723568, 39.655361, 36.661861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.844048, 39.470505, 36.995499>,  <41.916336, 39.359592, 37.195679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.844048, 39.470505, 36.995499>,  <41.723568, 39.655361, 36.661861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844048, 39.470505, 36.995499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194366, -0.886101, -0.420770,
		0.933541, -0.035381, -0.356720,
		0.301203, -0.462140, 0.834088,
		41.934410, 39.331863, 37.245724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291874, 39.240978, 36.445301>,  <41.723568, 39.655361, 36.661861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.291874, 39.240978, 36.445301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.132984, 39.088531, 36.779240>,  <42.037651, 38.997063, 36.979603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.132984, 39.088531, 36.779240>,  <42.291874, 39.240978, 36.445301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.132984, 39.088531, 36.779240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137824, -0.874598, -0.464847,
		0.907315, -0.299708, 0.294880,
		-0.397220, -0.381121, 0.834843,
		42.013817, 38.974194, 37.029694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.578300, 38.554813, 36.455853>,  <42.291874, 39.240978, 36.445301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.578300, 38.554813, 36.455853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.293507, 38.527096, 36.735359>,  <42.122631, 38.510464, 36.903061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.293507, 38.527096, 36.735359>,  <42.578300, 38.554813, 36.455853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.293507, 38.527096, 36.735359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210473, -0.928304, -0.306516,
		0.669907, -0.365307, 0.646356,
		-0.711987, -0.069296, 0.698765,
		42.079910, 38.506306, 36.944988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.721237, 37.892265, 36.878819>,  <42.578300, 38.554813, 36.455853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.721237, 37.892265, 36.878819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.335026, 37.984676, 36.926781>,  <42.103298, 38.040123, 36.955559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.335026, 37.984676, 36.926781>,  <42.721237, 37.892265, 36.878819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.335026, 37.984676, 36.926781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240297, -0.968210, -0.069469,
		0.100044, -0.095888, 0.990352,
		-0.965530, 0.231028, 0.119905,
		42.045368, 38.053986, 36.962753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469009, 37.402630, 37.289642>,  <42.721237, 37.892265, 36.878819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469009, 37.402630, 37.289642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.145145, 37.553410, 37.109707>,  <41.950825, 37.643879, 37.001747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.145145, 37.553410, 37.109707>,  <42.469009, 37.402630, 37.289642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.145145, 37.553410, 37.109707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291042, -0.923471, -0.249992,
		-0.509645, -0.071489, 0.857410,
		-0.809664, 0.376949, -0.449836,
		41.902245, 37.666496, 36.974754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.946552, 36.914200, 37.476707>,  <42.469009, 37.402630, 37.289642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.946552, 36.914200, 37.476707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.808601, 37.115078, 37.159504>,  <41.725830, 37.235603, 36.969181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.808601, 37.115078, 37.159504>,  <41.946552, 36.914200, 37.476707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808601, 37.115078, 37.159504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330682, -0.855682, -0.398068,
		-0.878470, 0.124950, 0.461170,
		-0.344876, 0.502191, -0.793010,
		41.705139, 37.265736, 36.921600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310993, 36.598438, 37.329975>,  <41.946552, 36.914200, 37.476707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310993, 36.598438, 37.329975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.399212, 36.778236, 36.983723>,  <41.452141, 36.886116, 36.775970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.399212, 36.778236, 36.983723>,  <41.310993, 36.598438, 37.329975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399212, 36.778236, 36.983723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395996, -0.769788, -0.500614,
		-0.891375, 0.453193, 0.008226,
		0.220542, 0.449492, -0.865632,
		41.465374, 36.913086, 36.724033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677124, 36.454155, 36.847382>,  <41.310993, 36.598438, 37.329975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677124, 36.454155, 36.847382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.000019, 36.553532, 36.633221>,  <41.193756, 36.613159, 36.504726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.000019, 36.553532, 36.633221>,  <40.677124, 36.454155, 36.847382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000019, 36.553532, 36.633221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198978, -0.739451, -0.643133,
		-0.555681, 0.625691, -0.547476,
		0.807234, 0.248441, -0.535398,
		41.242188, 36.628063, 36.472603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533684, 36.356255, 36.216053>,  <40.677124, 36.454155, 36.847382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533684, 36.356255, 36.216053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.932911, 36.348404, 36.192497>,  <41.172447, 36.343693, 36.178364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.932911, 36.348404, 36.192497>,  <40.533684, 36.356255, 36.216053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932911, 36.348404, 36.192497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051685, -0.788176, -0.613276,
		-0.034382, 0.615137, -0.787670,
		0.998071, -0.019625, -0.058892,
		41.232334, 36.342518, 36.174831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690189, 36.207642, 35.503902>,  <40.533684, 36.356255, 36.216053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690189, 36.207642, 35.503902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.011257, 36.130974, 35.729816>,  <41.203899, 36.084972, 35.865364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.011257, 36.130974, 35.729816>,  <40.690189, 36.207642, 35.503902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011257, 36.130974, 35.729816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198582, -0.807035, -0.556111,
		0.562390, 0.558530, -0.609722,
		0.802672, -0.191671, 0.564783,
		41.252060, 36.073471, 35.899250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215374, 35.937759, 35.031227>,  <40.690189, 36.207642, 35.503902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215374, 35.937759, 35.031227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.358055, 35.806908, 35.381256>,  <41.443665, 35.728397, 35.591274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.358055, 35.806908, 35.381256>,  <41.215374, 35.937759, 35.031227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358055, 35.806908, 35.381256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339614, -0.827195, -0.447671,
		0.870302, 0.456872, -0.183964,
		0.356703, -0.327132, 0.875070,
		41.465065, 35.708767, 35.643776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937271, 35.595402, 34.877884>,  <41.215374, 35.937759, 35.031227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937271, 35.595402, 34.877884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.789871, 35.453960, 35.221786>,  <41.701431, 35.369095, 35.428127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.789871, 35.453960, 35.221786>,  <41.937271, 35.595402, 34.877884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789871, 35.453960, 35.221786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110889, -0.934950, -0.337004,
		0.922992, -0.028847, 0.383736,
		-0.368496, -0.353604, 0.859753,
		41.679321, 35.347878, 35.479713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.449543, 35.082527, 35.127892>,  <41.937271, 35.595402, 34.877884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.449543, 35.082527, 35.127892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.102310, 35.011700, 35.313400>,  <41.893970, 34.969204, 35.424706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.102310, 35.011700, 35.313400>,  <42.449543, 35.082527, 35.127892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.102310, 35.011700, 35.313400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019079, -0.945431, -0.325263,
		0.496056, -0.273506, 0.824089,
		-0.868081, -0.177072, 0.463769,
		41.841885, 34.958580, 35.452530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.544125, 34.482315, 35.556461>,  <42.449543, 35.082527, 35.127892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.544125, 34.482315, 35.556461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.157795, 34.504993, 35.455288>,  <41.925999, 34.518600, 35.394585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.157795, 34.504993, 35.455288>,  <42.544125, 34.482315, 35.556461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.157795, 34.504993, 35.455288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013593, -0.963364, -0.267854,
		-0.258858, -0.262137, 0.929665,
		-0.965820, 0.056699, -0.252938,
		41.868050, 34.522003, 35.379406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.924599, 33.934753, 35.620876>,  <42.544125, 34.482315, 35.556461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.924599, 33.934753, 35.620876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.263084, 33.836494, 35.431744>,  <43.466175, 33.777538, 35.318264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.263084, 33.836494, 35.431744>,  <42.924599, 33.934753, 35.620876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.263084, 33.836494, 35.431744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529639, 0.484869, 0.695977,
		0.058294, -0.839379, 0.540411,
		0.846218, -0.245651, -0.472833,
		43.516949, 33.762798, 35.289894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.378399, 33.483738, 36.047306>,  <42.924599, 33.934753, 35.620876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.378399, 33.483738, 36.047306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.565487, 33.710651, 35.776180>,  <43.677742, 33.846798, 35.613506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.565487, 33.710651, 35.776180>,  <43.378399, 33.483738, 36.047306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.565487, 33.710651, 35.776180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556409, 0.406877, 0.724473,
		0.686765, -0.715992, -0.125334,
		0.467721, 0.567280, -0.677813,
		43.705803, 33.880836, 35.572838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.044426, 33.571583, 36.312744>,  <43.378399, 33.483738, 36.047306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.044426, 33.571583, 36.312744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.043732, 33.870209, 36.046623>,  <44.043316, 34.049385, 35.886951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.043732, 33.870209, 36.046623>,  <44.044426, 33.571583, 36.312744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.043732, 33.870209, 36.046623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491200, 0.580149, 0.649731,
		0.871045, -0.325673, -0.367720,
		-0.001733, 0.746569, -0.665306,
		44.043213, 34.094181, 35.847031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.661678, 33.869907, 36.341599>,  <44.044426, 33.571583, 36.312744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.661678, 33.869907, 36.341599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.477737, 34.183113, 36.174061>,  <44.367374, 34.371037, 36.073540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.477737, 34.183113, 36.174061>,  <44.661678, 33.869907, 36.341599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.477737, 34.183113, 36.174061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484302, 0.616490, 0.620799,
		0.744306, 0.082628, -0.662707,
		-0.459848, 0.783015, -0.418840,
		44.339783, 34.418018, 36.048409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.198433, 34.400600, 36.185665>,  <44.661678, 33.869907, 36.341599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.198433, 34.400600, 36.185665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.860550, 34.614662, 36.189098>,  <44.657818, 34.743099, 36.191158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.860550, 34.614662, 36.189098>,  <45.198433, 34.400600, 36.185665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.860550, 34.614662, 36.189098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445431, 0.694022, 0.565619,
		0.296739, 0.481606, -0.824622,
		-0.844712, 0.535153, 0.008579,
		44.607136, 34.775208, 36.191673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.401310, 35.043541, 36.035194>,  <45.198433, 34.400600, 36.185665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.401310, 35.043541, 36.035194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.042866, 35.081635, 36.208591>,  <44.827801, 35.104492, 36.312630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.042866, 35.081635, 36.208591>,  <45.401310, 35.043541, 36.035194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.042866, 35.081635, 36.208591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378957, 0.672602, 0.635608,
		-0.231033, 0.733850, -0.638818,
		-0.896111, 0.095238, 0.433491,
		44.774033, 35.110207, 36.338638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.189564, 35.776920, 36.024128>,  <45.401310, 35.043541, 36.035194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.189564, 35.776920, 36.024128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.005844, 35.579983, 36.319870>,  <44.895615, 35.461819, 36.497314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.005844, 35.579983, 36.319870>,  <45.189564, 35.776920, 36.024128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.005844, 35.579983, 36.319870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226151, 0.740097, 0.633334,
		-0.859012, 0.458094, -0.228579,
		-0.459297, -0.492348, 0.739350,
		44.868053, 35.432278, 36.541676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.870064, 36.310242, 36.384136>,  <45.189564, 35.776920, 36.024128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.870064, 36.310242, 36.384136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.891880, 36.000637, 36.636467>,  <44.904968, 35.814877, 36.787865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.891880, 36.000637, 36.636467>,  <44.870064, 36.310242, 36.384136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.891880, 36.000637, 36.636467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459920, 0.580229, 0.672167,
		-0.886284, 0.253469, 0.387627,
		0.054539, -0.774008, 0.630823,
		44.908241, 35.768436, 36.825714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.674858, 36.654564, 36.968277>,  <44.870064, 36.310242, 36.384136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.674858, 36.654564, 36.968277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.844200, 36.316734, 37.099403>,  <44.945805, 36.114037, 37.178082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.844200, 36.316734, 37.099403>,  <44.674858, 36.654564, 36.968277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.844200, 36.316734, 37.099403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321412, 0.478326, 0.817250,
		-0.847032, -0.240625, 0.473958,
		0.423357, -0.844573, 0.327818,
		44.971207, 36.063362, 37.197750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.419292, 36.579243, 37.655045>,  <44.674858, 36.654564, 36.968277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.419292, 36.579243, 37.655045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.768158, 36.383747, 37.646496>,  <44.977478, 36.266449, 37.641365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.768158, 36.383747, 37.646496>,  <44.419292, 36.579243, 37.655045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.768158, 36.383747, 37.646496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220147, 0.353085, 0.909322,
		-0.436878, -0.797785, 0.415544,
		0.872166, -0.488743, -0.021375,
		45.029808, 36.237125, 37.640083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.569138, 36.160984, 38.367565>,  <44.419292, 36.579243, 37.655045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.569138, 36.160984, 38.367565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.948418, 36.179474, 38.241852>,  <45.175987, 36.190567, 38.166424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.948418, 36.179474, 38.241852>,  <44.569138, 36.160984, 38.367565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.948418, 36.179474, 38.241852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244840, 0.524012, 0.815760,
		0.202398, -0.850456, 0.485552,
		0.948203, 0.046226, -0.314284,
		45.232880, 36.193340, 38.147568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.988251, 36.037136, 38.916672>,  <44.569138, 36.160984, 38.367565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.988251, 36.037136, 38.916672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.228298, 36.208263, 38.646317>,  <45.372326, 36.310940, 38.484104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.228298, 36.208263, 38.646317>,  <44.988251, 36.037136, 38.916672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.228298, 36.208263, 38.646317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464514, 0.501504, 0.729877,
		0.651220, -0.751972, 0.102231,
		0.600117, 0.427823, -0.675890,
		45.408333, 36.336609, 38.443550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.544418, 35.998730, 39.288445>,  <44.988251, 36.037136, 38.916672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.544418, 35.998730, 39.288445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.604610, 36.268269, 38.999088>,  <45.640728, 36.429993, 38.825474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.604610, 36.268269, 38.999088>,  <45.544418, 35.998730, 39.288445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.604610, 36.268269, 38.999088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378667, 0.636629, 0.671800,
		0.913218, -0.375016, -0.159361,
		0.150482, 0.673844, -0.723387,
		45.649754, 36.470421, 38.782070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.269543, 36.216873, 39.413620>,  <45.544418, 35.998730, 39.288445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.269543, 36.216873, 39.413620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.093842, 36.496635, 39.188095>,  <45.988419, 36.664494, 39.052780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.093842, 36.496635, 39.188095>,  <46.269543, 36.216873, 39.413620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.093842, 36.496635, 39.188095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259892, 0.699693, 0.665497,
		0.859947, 0.145796, -0.489116,
		-0.439258, 0.699409, -0.563808,
		45.962063, 36.706459, 39.018951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.745029, 36.810680, 39.344051>,  <46.269543, 36.216873, 39.413620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.745029, 36.810680, 39.344051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.375214, 36.944511, 39.271076>,  <46.153324, 37.024811, 39.227291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.375214, 36.944511, 39.271076>,  <46.745029, 36.810680, 39.344051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.375214, 36.944511, 39.271076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205060, 0.840290, 0.501860,
		0.321213, 0.426578, -0.845490,
		-0.924539, 0.334581, -0.182438,
		46.097851, 37.044884, 39.216343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.944927, 37.464211, 39.229290>,  <46.745029, 36.810680, 39.344051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.944927, 37.464211, 39.229290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.554611, 37.510414, 39.303570>,  <46.320419, 37.538136, 39.348137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.554611, 37.510414, 39.303570>,  <46.944927, 37.464211, 39.229290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.554611, 37.510414, 39.303570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181466, 0.901568, 0.392741,
		-0.122054, 0.416932, -0.900706,
		-0.975794, 0.115512, 0.185699,
		46.261871, 37.545067, 39.359280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.844162, 38.249001, 39.076733>,  <46.944927, 37.464211, 39.229290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.844162, 38.249001, 39.076733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.531265, 38.126995, 39.294014>,  <46.343529, 38.053791, 39.424381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.531265, 38.126995, 39.294014>,  <46.844162, 38.249001, 39.076733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.531265, 38.126995, 39.294014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064450, 0.906891, 0.416407,
		-0.619635, 0.290721, -0.729063,
		-0.782239, -0.305009, 0.543205,
		46.296593, 38.035492, 39.456974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.293640, 38.720375, 38.841721>,  <46.844162, 38.249001, 39.076733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.293640, 38.720375, 38.841721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.223980, 38.582066, 39.210526>,  <46.182186, 38.499081, 39.431808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.223980, 38.582066, 39.210526>,  <46.293640, 38.720375, 38.841721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.223980, 38.582066, 39.210526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266467, 0.917936, 0.293919,
		-0.947981, -0.194502, -0.251994,
		-0.174146, -0.345777, 0.922014,
		46.171738, 38.478333, 39.487129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.819183, 39.159523, 39.092880>,  <46.293640, 38.720375, 38.841721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.819183, 39.159523, 39.092880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.933342, 38.984814, 39.434120>,  <46.001835, 38.879990, 39.638863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.933342, 38.984814, 39.434120>,  <45.819183, 39.159523, 39.092880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.933342, 38.984814, 39.434120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130763, 0.864052, 0.486123,
		-0.949448, -0.250291, 0.189482,
		0.285395, -0.436771, 0.853101,
		46.018959, 38.853783, 39.690052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.240570, 39.284550, 39.656887>,  <45.819183, 39.159523, 39.092880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.240570, 39.284550, 39.656887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.602154, 39.208935, 39.810314>,  <45.819103, 39.163567, 39.902370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.602154, 39.208935, 39.810314>,  <45.240570, 39.284550, 39.656887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.602154, 39.208935, 39.810314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042351, 0.852994, 0.520200,
		-0.425514, -0.486484, 0.763067,
		0.903960, -0.189036, 0.383564,
		45.873341, 39.152225, 39.925385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.324463, 36.547417, 42.065350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946541, 36.673866, 42.030907>,  <39.719788, 36.749737, 42.010242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946541, 36.673866, 42.030907>,  <40.324463, 36.547417, 42.065350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946541, 36.673866, 42.030907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009655, -0.289548, -0.957115,
		-0.327501, -0.903452, 0.276617,
		-0.944801, 0.316127, -0.086105,
		39.663101, 36.768703, 42.005077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883385, 35.941208, 41.842171>,  <40.324463, 36.547417, 42.065350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883385, 35.941208, 41.842171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718536, 36.286720, 41.726219>,  <39.619625, 36.494030, 41.656647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718536, 36.286720, 41.726219>,  <39.883385, 35.941208, 41.842171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718536, 36.286720, 41.726219> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012037, -0.323290, -0.946224,
		-0.911048, -0.386473, 0.143633,
		-0.412125, 0.863784, -0.289880,
		39.594898, 36.545856, 41.639256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583462, 35.774700, 41.214985>,  <39.883385, 35.941208, 41.842171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583462, 35.774700, 41.214985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553200, 36.173328, 41.201599>,  <39.535042, 36.412506, 41.193569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553200, 36.173328, 41.201599>,  <39.583462, 35.774700, 41.214985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553200, 36.173328, 41.201599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078107, -0.039379, -0.996167,
		-0.994070, -0.072754, 0.080818,
		-0.075658, 0.996572, -0.033463,
		39.530502, 36.472301, 41.191559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044193, 35.756649, 40.724976>,  <39.583462, 35.774700, 41.214985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044193, 35.756649, 40.724976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232601, 36.109478, 40.721249>,  <39.345646, 36.321175, 40.719013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232601, 36.109478, 40.721249>,  <39.044193, 35.756649, 40.724976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232601, 36.109478, 40.721249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071476, 0.027641, -0.997059,
		-0.879221, 0.470302, 0.076066,
		0.471021, 0.882073, -0.009313,
		39.373909, 36.374100, 40.718456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613667, 36.178104, 40.232723>,  <39.044193, 35.756649, 40.724976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613667, 36.178104, 40.232723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964962, 36.366989, 40.262985>,  <39.175739, 36.480320, 40.281143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964962, 36.366989, 40.262985>,  <38.613667, 36.178104, 40.232723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964962, 36.366989, 40.262985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001202, 0.160376, -0.987055,
		-0.478228, 0.866775, 0.141416,
		0.878235, 0.472208, 0.075655,
		39.228432, 36.508652, 40.285683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517883, 36.763103, 39.833145>,  <38.613667, 36.178104, 40.232723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517883, 36.763103, 39.833145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915592, 36.732319, 39.862797>,  <39.154217, 36.713848, 39.880589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915592, 36.732319, 39.862797>,  <38.517883, 36.763103, 39.833145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915592, 36.732319, 39.862797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084819, 0.146438, -0.985577,
		0.064991, 0.986222, 0.152127,
		0.994275, -0.076957, 0.074133,
		39.213875, 36.709232, 39.885036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903282, 37.359795, 39.518951>,  <38.517883, 36.763103, 39.833145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903282, 37.359795, 39.518951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134689, 37.033936, 39.502640>,  <39.273533, 36.838421, 39.492851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134689, 37.033936, 39.502640>,  <38.903282, 37.359795, 39.518951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134689, 37.033936, 39.502640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047620, 0.083641, -0.995358,
		0.814277, 0.573892, 0.087181,
		0.578520, -0.814648, -0.040778,
		39.308247, 36.789539, 39.490406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401054, 37.593063, 38.972496>,  <38.903282, 37.359795, 39.518951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401054, 37.593063, 38.972496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516029, 37.214184, 39.029343>,  <39.585014, 36.986858, 39.063450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516029, 37.214184, 39.029343>,  <39.401054, 37.593063, 38.972496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516029, 37.214184, 39.029343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110919, -0.114459, -0.987217,
		0.951355, 0.299529, 0.072162,
		0.287440, -0.947197, 0.142115,
		39.602261, 36.930023, 39.071976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843346, 37.520382, 38.436165>,  <39.401054, 37.593063, 38.972496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843346, 37.520382, 38.436165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751823, 37.138279, 38.511143>,  <39.696911, 36.909019, 38.556129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751823, 37.138279, 38.511143>,  <39.843346, 37.520382, 38.436165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751823, 37.138279, 38.511143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051252, -0.180469, -0.982244,
		0.972123, -0.234346, -0.007667,
		-0.228801, -0.955255, 0.187449,
		39.683182, 36.851704, 38.567379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297600, 37.069595, 38.073841>,  <39.843346, 37.520382, 38.436165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297600, 37.069595, 38.073841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956585, 36.871075, 38.139412>,  <39.751976, 36.751961, 38.178757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956585, 36.871075, 38.139412>,  <40.297600, 37.069595, 38.073841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956585, 36.871075, 38.139412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031620, -0.264092, -0.963979,
		0.521717, -0.827007, 0.209454,
		-0.852532, -0.496301, 0.163931,
		39.700825, 36.722183, 38.188591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399616, 36.376244, 37.817150>,  <40.297600, 37.069595, 38.073841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399616, 36.376244, 37.817150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001690, 36.415615, 37.827305>,  <39.762932, 36.439240, 37.833397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001690, 36.415615, 37.827305>,  <40.399616, 36.376244, 37.817150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001690, 36.415615, 37.827305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045243, -0.205119, -0.977691,
		-0.091024, -0.973775, 0.208510,
		-0.994820, 0.098427, 0.025386,
		39.703243, 36.445145, 37.834919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226608, 35.788368, 37.628403>,  <40.399616, 36.376244, 37.817150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226608, 35.788368, 37.628403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886528, 35.993103, 37.579132>,  <39.682480, 36.115944, 37.549568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886528, 35.993103, 37.579132>,  <40.226608, 35.788368, 37.628403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886528, 35.993103, 37.579132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032275, -0.284208, -0.958219,
		-0.525463, -0.810706, 0.258154,
		-0.850204, 0.511841, -0.123175,
		39.631466, 36.146656, 37.542179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862000, 35.314030, 37.226063>,  <40.226608, 35.788368, 37.628403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862000, 35.314030, 37.226063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753929, 35.697376, 37.189117>,  <39.689087, 35.927383, 37.166950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753929, 35.697376, 37.189117>,  <39.862000, 35.314030, 37.226063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753929, 35.697376, 37.189117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119212, -0.061898, -0.990937,
		-0.955402, -0.278740, -0.097526,
		-0.270177, 0.958370, -0.092367,
		39.672874, 35.984886, 37.161407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602413, 34.887878, 36.695225>,  <39.862000, 35.314030, 37.226063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602413, 34.887878, 36.695225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910889, 35.063175, 36.510525>,  <40.095974, 35.168354, 36.399704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910889, 35.063175, 36.510525>,  <39.602413, 34.887878, 36.695225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910889, 35.063175, 36.510525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349737, -0.897722, -0.267917,
		-0.531932, 0.045125, -0.845584,
		0.771189, 0.438246, -0.461745,
		40.142246, 35.194649, 36.372002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164062, 34.790707, 36.104385>,  <39.602413, 34.887878, 36.695225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164062, 34.790707, 36.104385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317028, 34.421116, 36.102238>,  <39.408810, 34.199364, 36.100948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317028, 34.421116, 36.102238>,  <39.164062, 34.790707, 36.104385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317028, 34.421116, 36.102238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436298, -0.185691, 0.880433,
		-0.814494, -0.334352, -0.474140,
		0.382418, -0.923974, -0.005367,
		39.431755, 34.143925, 36.100628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675644, 34.317463, 36.172302>,  <39.164062, 34.790707, 36.104385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675644, 34.317463, 36.172302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985165, 34.110817, 36.318913>,  <39.170876, 33.986832, 36.406879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985165, 34.110817, 36.318913>,  <38.675644, 34.317463, 36.172302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985165, 34.110817, 36.318913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475109, -0.090667, 0.875243,
		-0.418928, -0.851406, -0.315605,
		0.773803, -0.516611, 0.366528,
		39.217304, 33.955833, 36.428871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422977, 33.918736, 36.590225>,  <38.675644, 34.317463, 36.172302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422977, 33.918736, 36.590225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800533, 33.912003, 36.722160>,  <39.027065, 33.907963, 36.801323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800533, 33.912003, 36.722160>,  <38.422977, 33.918736, 36.590225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800533, 33.912003, 36.722160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328029, -0.163948, 0.930332,
		0.038415, -0.986325, -0.160270,
		0.943886, -0.016835, 0.329841,
		39.083698, 33.906952, 36.821114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398006, 33.494473, 37.162567>,  <38.422977, 33.918736, 36.590225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398006, 33.494473, 37.162567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751595, 33.673893, 37.215328>,  <38.963749, 33.781548, 37.246986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751595, 33.673893, 37.215328>,  <38.398006, 33.494473, 37.162567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751595, 33.673893, 37.215328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110764, -0.073172, 0.991149,
		0.454236, -0.890755, -0.014998,
		0.883968, 0.448555, 0.131901,
		39.016785, 33.808460, 37.254898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771866, 33.084564, 37.666542>,  <38.398006, 33.494473, 37.162567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771866, 33.084564, 37.666542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975471, 33.428776, 37.674454>,  <39.097633, 33.635303, 37.679199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975471, 33.428776, 37.674454>,  <38.771866, 33.084564, 37.666542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975471, 33.428776, 37.674454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135674, -0.102901, 0.985395,
		0.849999, -0.498896, -0.169130,
		0.509014, 0.860531, 0.019779,
		39.128174, 33.686935, 37.680386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438599, 33.033756, 38.081490>,  <38.771866, 33.084564, 37.666542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438599, 33.033756, 38.081490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349537, 33.423630, 38.089722>,  <39.296101, 33.657555, 38.094662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349537, 33.423630, 38.089722>,  <39.438599, 33.033756, 38.081490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349537, 33.423630, 38.089722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034628, -0.013192, 0.999313,
		0.974283, 0.223211, -0.030814,
		-0.222652, 0.974681, 0.020582,
		39.282742, 33.716034, 38.095898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732700, 33.188496, 38.676147>,  <39.438599, 33.033756, 38.081490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732700, 33.188496, 38.676147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505310, 33.509144, 38.602123>,  <39.368877, 33.701530, 38.557709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505310, 33.509144, 38.602123>,  <39.732700, 33.188496, 38.676147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505310, 33.509144, 38.602123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178192, 0.099632, 0.978939,
		0.803171, 0.589478, 0.086204,
		-0.568475, 0.801616, -0.185062,
		39.334766, 33.749630, 38.546604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927502, 33.700729, 39.149757>,  <39.732700, 33.188496, 38.676147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927502, 33.700729, 39.149757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570484, 33.823204, 39.017326>,  <39.356274, 33.896690, 38.937866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570484, 33.823204, 39.017326>,  <39.927502, 33.700729, 39.149757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570484, 33.823204, 39.017326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231836, 0.318167, 0.919251,
		0.386804, 0.897227, -0.212992,
		-0.892544, 0.306190, -0.331078,
		39.302719, 33.915062, 38.918003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838566, 34.395103, 39.414902>,  <39.927502, 33.700729, 39.149757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838566, 34.395103, 39.414902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464108, 34.271942, 39.346996>,  <39.239433, 34.198044, 39.306255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464108, 34.271942, 39.346996>,  <39.838566, 34.395103, 39.414902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464108, 34.271942, 39.346996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238753, 0.202243, 0.949786,
		-0.258114, 0.929672, -0.262844,
		-0.936149, -0.307908, -0.169761,
		39.183262, 34.179569, 39.296066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384464, 34.887138, 39.710938>,  <39.838566, 34.395103, 39.414902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384464, 34.887138, 39.710938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133438, 34.578300, 39.670872>,  <38.982822, 34.392998, 39.646832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133438, 34.578300, 39.670872>,  <39.384464, 34.887138, 39.710938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133438, 34.578300, 39.670872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394917, 0.204806, 0.895597,
		-0.670975, 0.601597, -0.433443,
		-0.627561, -0.772098, -0.100161,
		38.945171, 34.346672, 39.640823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738209, 35.156296, 40.112068>,  <39.384464, 34.887138, 39.710938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738209, 35.156296, 40.112068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725689, 34.758644, 40.070652>,  <38.718178, 34.520054, 40.045803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725689, 34.758644, 40.070652>,  <38.738209, 35.156296, 40.112068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725689, 34.758644, 40.070652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271346, -0.091252, 0.958146,
		-0.961973, 0.058090, -0.266897,
		-0.031304, -0.994132, -0.103544,
		38.716297, 34.460403, 40.039589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016846, 34.870056, 40.270786>,  <38.738209, 35.156296, 40.112068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016846, 34.870056, 40.270786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285908, 34.576122, 40.305553>,  <38.447346, 34.399761, 40.326412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285908, 34.576122, 40.305553>,  <38.016846, 34.870056, 40.270786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285908, 34.576122, 40.305553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255492, -0.120412, 0.959283,
		-0.694447, -0.667475, -0.268740,
		0.672657, -0.734832, 0.086915,
		38.487705, 34.355671, 40.331627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678215, 34.409527, 40.740784>,  <38.016846, 34.870056, 40.270786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678215, 34.409527, 40.740784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070080, 34.329784, 40.749943>,  <38.305199, 34.281940, 40.755440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070080, 34.329784, 40.749943>,  <37.678215, 34.409527, 40.740784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070080, 34.329784, 40.749943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049847, -0.131229, 0.990098,
		-0.194377, -0.971100, -0.138497,
		0.979660, -0.199356, 0.022898,
		38.363979, 34.269978, 40.756813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738113, 33.804222, 41.140900>,  <37.678215, 34.409527, 40.740784>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738113, 33.804222, 41.140900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108715, 33.954666, 41.145603>,  <38.331074, 34.044933, 41.148426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108715, 33.954666, 41.145603>,  <37.738113, 33.804222, 41.140900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108715, 33.954666, 41.145603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022423, -0.086364, 0.996011,
		0.375627, -0.922541, -0.088450,
		0.926500, 0.376112, 0.011755,
		38.386665, 34.067501, 41.149128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426556, 33.179710, 41.419952>,  <37.738113, 33.804222, 41.140900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426556, 33.179710, 41.419952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043552, 33.169132, 41.534832>,  <36.813751, 33.162785, 41.603760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043552, 33.169132, 41.534832>,  <37.426556, 33.179710, 41.419952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043552, 33.169132, 41.534832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278819, 0.339618, -0.898287,
		-0.073782, -0.940192, -0.332560,
		-0.957505, -0.026446, 0.287201,
		36.756302, 33.161198, 41.620991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056396, 33.124233, 40.790798>,  <37.426556, 33.179710, 41.419952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056396, 33.124233, 40.790798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776585, 33.217121, 41.061127>,  <36.608696, 33.272854, 41.223324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776585, 33.217121, 41.061127>,  <37.056396, 33.124233, 40.790798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776585, 33.217121, 41.061127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523297, 0.477567, -0.705755,
		-0.486637, -0.847352, -0.212556,
		-0.699532, 0.232216, 0.675818,
		36.566727, 33.286785, 41.263874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459011, 33.103474, 40.426620>,  <37.056396, 33.124233, 40.790798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459011, 33.103474, 40.426620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316624, 33.305805, 40.740925>,  <36.231190, 33.427204, 40.929508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316624, 33.305805, 40.740925>,  <36.459011, 33.103474, 40.426620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316624, 33.305805, 40.740925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445409, 0.647348, -0.618507,
		-0.821519, -0.570158, -0.005139,
		-0.355973, 0.505826, 0.785763,
		36.209831, 33.457554, 40.976654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837563, 33.114815, 40.281662>,  <36.459011, 33.103474, 40.426620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837563, 33.114815, 40.281662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907547, 33.425346, 40.523884>,  <35.949535, 33.611668, 40.669216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907547, 33.425346, 40.523884>,  <35.837563, 33.114815, 40.281662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907547, 33.425346, 40.523884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333290, 0.625432, -0.705516,
		-0.926449, -0.078391, 0.368167,
		0.174957, 0.776331, 0.605557,
		35.960033, 33.658245, 40.705551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206699, 33.487053, 40.245934>,  <35.837563, 33.114815, 40.281662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206699, 33.487053, 40.245934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490337, 33.731567, 40.386517>,  <35.660519, 33.878277, 40.470867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490337, 33.731567, 40.386517>,  <35.206699, 33.487053, 40.245934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490337, 33.731567, 40.386517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342864, 0.734457, -0.585677,
		-0.616144, 0.294797, 0.730384,
		0.709091, 0.611284, 0.351456,
		35.703064, 33.914951, 40.491955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935558, 34.107891, 40.472256>,  <35.206699, 33.487053, 40.245934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935558, 34.107891, 40.472256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311295, 34.208405, 40.378880>,  <35.536736, 34.268711, 40.322853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311295, 34.208405, 40.378880>,  <34.935558, 34.107891, 40.472256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311295, 34.208405, 40.378880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340151, 0.595253, -0.727991,
		-0.043977, 0.763237, 0.644620,
		0.939342, 0.251284, -0.233438,
		35.593098, 34.283791, 40.308849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845963, 34.802345, 40.294853>,  <34.935558, 34.107891, 40.472256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845963, 34.802345, 40.294853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207764, 34.727615, 40.141510>,  <35.424847, 34.682777, 40.049503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207764, 34.727615, 40.141510>,  <34.845963, 34.802345, 40.294853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207764, 34.727615, 40.141510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172842, 0.661188, -0.730038,
		0.389862, 0.726585, 0.565758,
		0.904507, -0.186827, -0.383357,
		35.479115, 34.671566, 40.026505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110634, 35.403698, 40.173531>,  <34.845963, 34.802345, 40.294853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110634, 35.403698, 40.173531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334011, 35.194767, 39.915749>,  <35.468037, 35.069408, 39.761082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334011, 35.194767, 39.915749>,  <35.110634, 35.403698, 40.173531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334011, 35.194767, 39.915749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229081, 0.649562, -0.724977,
		0.797288, 0.552487, 0.243084,
		0.558439, -0.522329, -0.644452,
		35.501541, 35.038067, 39.722412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568691, 35.909019, 39.844566>,  <35.110634, 35.403698, 40.173531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568691, 35.909019, 39.844566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546036, 35.595852, 39.596752>,  <35.532440, 35.407951, 39.448063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546036, 35.595852, 39.596752>,  <35.568691, 35.909019, 39.844566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546036, 35.595852, 39.596752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088709, 0.622026, -0.777956,
		0.994446, 0.010895, -0.104684,
		-0.056641, -0.782921, -0.619537,
		35.529045, 35.360977, 39.410892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037624, 36.032272, 39.281437>,  <35.568691, 35.909019, 39.844566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037624, 36.032272, 39.281437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762997, 35.770809, 39.154087>,  <35.598221, 35.613934, 39.077679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762997, 35.770809, 39.154087>,  <36.037624, 36.032272, 39.281437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762997, 35.770809, 39.154087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175324, 0.573806, -0.800005,
		0.705611, -0.493439, -0.508558,
		-0.686567, -0.653654, -0.318372,
		35.557026, 35.574715, 39.058575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116692, 35.921013, 38.565853>,  <36.037624, 36.032272, 39.281437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116692, 35.921013, 38.565853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750355, 35.767868, 38.614273>,  <35.530552, 35.675980, 38.643326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750355, 35.767868, 38.614273>,  <36.116692, 35.921013, 38.565853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750355, 35.767868, 38.614273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322709, 0.522397, -0.789278,
		0.238950, -0.761916, -0.601986,
		-0.915840, -0.382864, 0.121050,
		35.475601, 35.653008, 38.650589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767281, 35.692413, 37.814014>,  <36.116692, 35.921013, 38.565853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767281, 35.692413, 37.814014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460876, 35.727367, 38.068760>,  <35.277035, 35.748341, 38.221607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460876, 35.727367, 38.068760>,  <35.767281, 35.692413, 37.814014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460876, 35.727367, 38.068760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448949, 0.636338, -0.627311,
		-0.460078, -0.766445, -0.448209,
		-0.766011, 0.087389, 0.636859,
		35.231071, 35.753586, 38.259819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.733627, 31.177305, 44.745083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.432838, 31.436838, 44.791653>,  <37.252365, 31.592558, 44.819595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.432838, 31.436838, 44.791653>,  <37.733627, 31.177305, 44.745083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432838, 31.436838, 44.791653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244468, -0.110465, -0.963345,
		-0.612190, -0.752869, 0.241686,
		-0.751970, 0.648834, 0.116426,
		37.207249, 31.631489, 44.826580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124401, 30.858450, 44.391975>,  <37.733627, 31.177305, 44.745083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124401, 30.858450, 44.391975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.062153, 31.252150, 44.425514>,  <37.024803, 31.488369, 44.445637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.062153, 31.252150, 44.425514>,  <37.124401, 30.858450, 44.391975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062153, 31.252150, 44.425514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289975, 0.035626, -0.956371,
		-0.944296, -0.173150, 0.279864,
		-0.155625, 0.984251, 0.083851,
		37.015465, 31.547424, 44.450668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473942, 30.947683, 43.989330>,  <37.124401, 30.858450, 44.391975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473942, 30.947683, 43.989330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.678749, 31.287550, 44.039780>,  <36.801632, 31.491470, 44.070049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.678749, 31.287550, 44.039780>,  <36.473942, 30.947683, 43.989330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678749, 31.287550, 44.039780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320384, 0.325136, -0.889742,
		-0.796990, 0.415156, 0.438694,
		0.512017, 0.849666, 0.126121,
		36.832355, 31.542450, 44.077618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213741, 31.323540, 43.464222>,  <36.473942, 30.947683, 43.989330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213741, 31.323540, 43.464222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.531437, 31.550346, 43.551559>,  <36.722054, 31.686430, 43.603962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.531437, 31.550346, 43.551559>,  <36.213741, 31.323540, 43.464222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531437, 31.550346, 43.551559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094938, 0.470745, -0.877146,
		-0.600139, 0.675938, 0.427717,
		0.794242, 0.567016, 0.218340,
		36.769711, 31.720451, 43.617062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100014, 32.093998, 43.590904>,  <36.213741, 31.323540, 43.464222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100014, 32.093998, 43.590904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.490108, 32.092175, 43.502453>,  <36.724163, 32.091080, 43.449383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.490108, 32.092175, 43.502453>,  <36.100014, 32.093998, 43.590904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490108, 32.092175, 43.502453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170676, 0.620347, -0.765532,
		0.140663, 0.784314, 0.604206,
		0.975235, -0.004559, -0.221124,
		36.782681, 32.090805, 43.436115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343025, 32.818485, 43.534389>,  <36.100014, 32.093998, 43.590904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343025, 32.818485, 43.534389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.619781, 32.622726, 43.322060>,  <36.785835, 32.505272, 43.194660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.619781, 32.622726, 43.322060>,  <36.343025, 32.818485, 43.534389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619781, 32.622726, 43.322060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072822, 0.684164, -0.725684,
		0.718322, 0.540749, 0.437726,
		0.691889, -0.489398, -0.530828,
		36.827347, 32.475906, 43.162811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660229, 33.326950, 43.200699>,  <36.343025, 32.818485, 43.534389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660229, 33.326950, 43.200699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.749401, 32.989620, 43.005108>,  <36.802902, 32.787220, 42.887753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.749401, 32.989620, 43.005108>,  <36.660229, 33.326950, 43.200699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749401, 32.989620, 43.005108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060752, 0.488608, -0.870386,
		0.972940, 0.223741, 0.057691,
		0.222930, -0.843328, -0.488979,
		36.816280, 32.736622, 42.858414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122112, 33.537380, 42.721443>,  <36.660229, 33.326950, 43.200699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122112, 33.537380, 42.721443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.983376, 33.191753, 42.575523>,  <36.900131, 32.984375, 42.487972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.983376, 33.191753, 42.575523>,  <37.122112, 33.537380, 42.721443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983376, 33.191753, 42.575523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209774, 0.450562, -0.867749,
		0.914162, -0.224450, -0.337535,
		-0.346846, -0.864070, -0.364803,
		36.879322, 32.932533, 42.466084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419369, 33.605900, 42.093491>,  <37.122112, 33.537380, 42.721443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419369, 33.605900, 42.093491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.118279, 33.344353, 42.062878>,  <36.937626, 33.187424, 42.044510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.118279, 33.344353, 42.062878>,  <37.419369, 33.605900, 42.093491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118279, 33.344353, 42.062878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175442, 0.311288, -0.933981,
		0.634530, -0.689601, -0.349031,
		-0.752723, -0.653873, -0.076537,
		36.892460, 33.148190, 42.039917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066429, 33.377136, 41.695881>,  <37.419369, 33.605900, 42.093491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066429, 33.377136, 41.695881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.312603, 33.685844, 41.631866>,  <38.460308, 33.871071, 41.593460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.312603, 33.685844, 41.631866>,  <38.066429, 33.377136, 41.695881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312603, 33.685844, 41.631866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124252, 0.105502, 0.986626,
		0.778332, -0.627088, -0.030964,
		0.615435, 0.771770, -0.160032,
		38.497234, 33.917377, 41.583858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724304, 33.228565, 42.020832>,  <38.066429, 33.377136, 41.695881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724304, 33.228565, 42.020832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.706249, 33.627079, 41.991482>,  <38.695415, 33.866188, 41.973869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.706249, 33.627079, 41.991482>,  <38.724304, 33.228565, 42.020832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706249, 33.627079, 41.991482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308112, 0.083756, 0.947656,
		0.950279, 0.020167, -0.310747,
		-0.045138, 0.996282, -0.073378,
		38.692707, 33.925964, 41.969467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290985, 33.402790, 42.394409>,  <38.724304, 33.228565, 42.020832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290985, 33.402790, 42.394409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.077503, 33.740616, 42.377083>,  <38.949413, 33.943310, 42.366688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.077503, 33.740616, 42.377083>,  <39.290985, 33.402790, 42.394409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077503, 33.740616, 42.377083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425641, 0.312529, 0.849209,
		0.730745, 0.434791, -0.526278,
		-0.533706, 0.844560, -0.043314,
		38.917393, 33.993984, 42.364090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647087, 33.999676, 42.532116>,  <39.290985, 33.402790, 42.394409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647087, 33.999676, 42.532116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.269817, 34.108532, 42.608395>,  <39.043457, 34.173847, 42.654163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.269817, 34.108532, 42.608395>,  <39.647087, 33.999676, 42.532116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269817, 34.108532, 42.608395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236975, 0.148532, 0.960094,
		0.232955, 0.950725, -0.204582,
		-0.943173, 0.272140, 0.190697,
		38.986866, 34.190174, 42.665604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710526, 34.566154, 42.928215>,  <39.647087, 33.999676, 42.532116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710526, 34.566154, 42.928215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.350182, 34.410118, 43.004414>,  <39.133976, 34.316498, 43.050133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.350182, 34.410118, 43.004414>,  <39.710526, 34.566154, 42.928215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350182, 34.410118, 43.004414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162183, 0.104621, 0.981199,
		-0.402682, 0.914815, -0.030983,
		-0.900857, -0.390086, 0.190496,
		39.079926, 34.293091, 43.061562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419777, 35.039787, 43.500294>,  <39.710526, 34.566154, 42.928215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419777, 35.039787, 43.500294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.221165, 34.692921, 43.515694>,  <39.101997, 34.484802, 43.524933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.221165, 34.692921, 43.515694>,  <39.419777, 35.039787, 43.500294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221165, 34.692921, 43.515694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043444, 0.069128, 0.996661,
		-0.866929, 0.493205, -0.071997,
		-0.496535, -0.867162, 0.038502,
		39.072205, 34.432774, 43.527245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137337, 35.089260, 44.043839>,  <39.419777, 35.039787, 43.500294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137337, 35.089260, 44.043839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.097469, 34.694767, 43.991043>,  <39.073551, 34.458073, 43.959366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.097469, 34.694767, 43.991043>,  <39.137337, 35.089260, 44.043839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097469, 34.694767, 43.991043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124823, -0.119209, 0.984992,
		-0.987161, 0.114644, -0.111223,
		-0.099665, -0.986228, -0.131988,
		39.067570, 34.398899, 43.951447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709995, 34.919270, 44.572689>,  <39.137337, 35.089260, 44.043839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709995, 34.919270, 44.572689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.843197, 34.562206, 44.451180>,  <38.923119, 34.347969, 44.378273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.843197, 34.562206, 44.451180>,  <38.709995, 34.919270, 44.572689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843197, 34.562206, 44.451180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086557, -0.349736, 0.932841,
		-0.938945, -0.284344, -0.193728,
		0.333001, -0.892655, -0.303771,
		38.943096, 34.294411, 44.360046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209236, 34.492954, 44.681393>,  <38.709995, 34.919270, 44.572689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209236, 34.492954, 44.681393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.559925, 34.300945, 44.693645>,  <38.770340, 34.185741, 44.700996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.559925, 34.300945, 44.693645>,  <38.209236, 34.492954, 44.681393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559925, 34.300945, 44.693645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152580, -0.217151, 0.964139,
		-0.456158, -0.849954, -0.263623,
		0.876721, -0.480024, 0.030631,
		38.822941, 34.156937, 44.702835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090046, 33.985035, 45.206947>,  <38.209236, 34.492954, 44.681393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090046, 33.985035, 45.206947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.488110, 34.009453, 45.176121>,  <38.726948, 34.024105, 45.157623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.488110, 34.009453, 45.176121>,  <38.090046, 33.985035, 45.206947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488110, 34.009453, 45.176121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094355, -0.372807, 0.923099,
		0.027622, -0.925899, -0.376761,
		0.995155, 0.061047, -0.077065,
		38.786655, 34.027767, 45.153000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394905, 33.406036, 45.619492>,  <38.090046, 33.985035, 45.206947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394905, 33.406036, 45.619492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.705608, 33.650948, 45.560474>,  <38.892029, 33.797894, 45.525063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.705608, 33.650948, 45.560474>,  <38.394905, 33.406036, 45.619492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705608, 33.650948, 45.560474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405810, -0.307419, 0.860705,
		0.481630, -0.728432, -0.487256,
		0.776757, 0.612275, -0.147543,
		38.938637, 33.834629, 45.516212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939957, 33.049133, 45.919403>,  <38.394905, 33.406036, 45.619492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939957, 33.049133, 45.919403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.103336, 33.413612, 45.897923>,  <39.201366, 33.632301, 45.885033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.103336, 33.413612, 45.897923>,  <38.939957, 33.049133, 45.919403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103336, 33.413612, 45.897923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455146, -0.152316, 0.877292,
		0.791207, -0.382776, -0.476942,
		0.408452, 0.911198, -0.053705,
		39.225872, 33.686974, 45.881809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620258, 33.027756, 46.083996>,  <38.939957, 33.049133, 45.919403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620258, 33.027756, 46.083996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.510921, 33.405071, 46.159355>,  <39.445320, 33.631462, 46.204571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.510921, 33.405071, 46.159355>,  <39.620258, 33.027756, 46.083996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510921, 33.405071, 46.159355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484871, -0.034038, 0.873923,
		0.830774, 0.330225, -0.448069,
		-0.273340, 0.943288, 0.188395,
		39.428921, 33.688057, 46.215874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218853, 33.398548, 46.235912>,  <39.620258, 33.027756, 46.083996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218853, 33.398548, 46.235912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.930386, 33.620247, 46.402153>,  <39.757305, 33.753265, 46.501896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.930386, 33.620247, 46.402153>,  <40.218853, 33.398548, 46.235912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930386, 33.620247, 46.402153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463953, -0.059102, 0.883886,
		0.514458, 0.830248, -0.214524,
		-0.721166, 0.554251, 0.415602,
		39.714035, 33.786522, 46.526833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.585670, 37.949493, 46.931824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.902340, 37.705486, 46.945282>,  <34.092342, 37.559082, 46.953358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.902340, 37.705486, 46.945282>,  <33.585670, 37.949493, 46.931824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902340, 37.705486, 46.945282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078807, 0.047350, -0.995765,
		0.605836, 0.790975, 0.085560,
		0.791677, -0.610013, 0.033648,
		34.139843, 37.522484, 46.955376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156494, 38.272644, 46.621441>,  <33.585670, 37.949493, 46.931824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156494, 38.272644, 46.621441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.256203, 37.886475, 46.590904>,  <34.316029, 37.654774, 46.572582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.256203, 37.886475, 46.590904>,  <34.156494, 38.272644, 46.621441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256203, 37.886475, 46.590904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227355, 0.134962, -0.964414,
		0.941368, 0.223046, 0.253135,
		0.249272, -0.965420, -0.076338,
		34.330986, 37.596848, 46.568005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748131, 38.316227, 46.309235>,  <34.156494, 38.272644, 46.621441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748131, 38.316227, 46.309235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.589981, 37.954140, 46.246944>,  <34.495090, 37.736885, 46.209568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.589981, 37.954140, 46.246944>,  <34.748131, 38.316227, 46.309235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589981, 37.954140, 46.246944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272412, 0.046354, -0.961064,
		0.877194, -0.422405, 0.228265,
		-0.395377, -0.905221, -0.155730,
		34.471367, 37.682575, 46.200226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324570, 38.010574, 45.861568>,  <34.748131, 38.316227, 46.309235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324570, 38.010574, 45.861568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.991573, 37.790260, 45.837582>,  <34.791775, 37.658073, 45.823189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.991573, 37.790260, 45.837582>,  <35.324570, 38.010574, 45.861568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991573, 37.790260, 45.837582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024036, 0.144044, -0.989279,
		0.553520, -0.822122, -0.133154,
		-0.832489, -0.550787, -0.059970,
		34.741825, 37.625023, 45.819592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379879, 37.475895, 45.308605>,  <35.324570, 38.010574, 45.861568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379879, 37.475895, 45.308605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.983093, 37.479923, 45.359066>,  <34.745022, 37.482338, 45.389343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.983093, 37.479923, 45.359066>,  <35.379879, 37.475895, 45.308605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983093, 37.479923, 45.359066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125499, 0.049970, -0.990835,
		-0.016284, -0.998700, -0.048304,
		-0.991960, 0.010073, 0.126150,
		34.685505, 37.482944, 45.396912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173889, 36.924164, 44.904312>,  <35.379879, 37.475895, 45.308605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173889, 36.924164, 44.904312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.858429, 37.166439, 44.946609>,  <34.669155, 37.311802, 44.971989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.858429, 37.166439, 44.946609>,  <35.173889, 36.924164, 44.904312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858429, 37.166439, 44.946609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000286, 0.172338, -0.985038,
		-0.614845, -0.776817, -0.136087,
		-0.788648, 0.605685, 0.105739,
		34.621834, 37.348145, 44.978333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705486, 36.627872, 44.367706>,  <35.173889, 36.924164, 44.904312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705486, 36.627872, 44.367706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.600769, 37.001305, 44.465591>,  <34.537937, 37.225365, 44.524323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.600769, 37.001305, 44.465591>,  <34.705486, 36.627872, 44.367706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600769, 37.001305, 44.465591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074453, 0.233268, -0.969558,
		-0.962248, -0.272043, 0.008440,
		-0.261792, 0.933584, 0.244716,
		34.522232, 37.281380, 44.539005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164932, 36.747406, 43.965088>,  <34.705486, 36.627872, 44.367706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164932, 36.747406, 43.965088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.293217, 37.113678, 44.061981>,  <34.370186, 37.333443, 44.120117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.293217, 37.113678, 44.061981>,  <34.164932, 36.747406, 43.965088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293217, 37.113678, 44.061981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012951, 0.259960, -0.965533,
		-0.947090, 0.306516, 0.095230,
		0.320708, 0.915679, 0.242236,
		34.389427, 37.388382, 44.134651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684231, 37.202602, 43.627590>,  <34.164932, 36.747406, 43.965088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684231, 37.202602, 43.627590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.008991, 37.427505, 43.690426>,  <34.203846, 37.562447, 43.728127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.008991, 37.427505, 43.690426>,  <33.684231, 37.202602, 43.627590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008991, 37.427505, 43.690426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007720, 0.279407, -0.960142,
		-0.583743, 0.778328, 0.231192,
		0.811902, 0.562261, 0.157093,
		34.252563, 37.596184, 43.737553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609852, 37.646568, 43.158508>,  <33.684231, 37.202602, 43.627590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609852, 37.646568, 43.158508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.991264, 37.711632, 43.259956>,  <34.220112, 37.750668, 43.320827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.991264, 37.711632, 43.259956>,  <33.609852, 37.646568, 43.158508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991264, 37.711632, 43.259956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184984, 0.348397, -0.918913,
		-0.237828, 0.923127, 0.302118,
		0.953530, 0.162656, 0.253623,
		34.277325, 37.760429, 43.336044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852299, 38.312363, 43.047741>,  <33.609852, 37.646568, 43.158508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852299, 38.312363, 43.047741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.213451, 38.140530, 43.054146>,  <34.430145, 38.037430, 43.057987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.213451, 38.140530, 43.054146>,  <33.852299, 38.312363, 43.047741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213451, 38.140530, 43.054146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126742, 0.230424, -0.964801,
		0.410775, 0.873133, 0.262493,
		0.902884, -0.429585, 0.016011,
		34.484318, 38.011654, 43.058949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291634, 38.795895, 42.852200>,  <33.852299, 38.312363, 43.047741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291634, 38.795895, 42.852200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.452423, 38.437904, 42.774807>,  <34.548897, 38.223110, 42.728371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.452423, 38.437904, 42.774807>,  <34.291634, 38.795895, 42.852200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452423, 38.437904, 42.774807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148733, 0.272313, -0.950644,
		0.903492, 0.353354, 0.242574,
		0.401970, -0.894979, -0.193477,
		34.573013, 38.169411, 42.716763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894539, 38.948612, 42.507511>,  <34.291634, 38.795895, 42.852200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894539, 38.948612, 42.507511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.765354, 38.582157, 42.412533>,  <34.687843, 38.362282, 42.355545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.765354, 38.582157, 42.412533>,  <34.894539, 38.948612, 42.507511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765354, 38.582157, 42.412533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028220, 0.260104, -0.965168,
		0.945990, -0.305015, -0.109858,
		-0.322965, -0.916139, -0.237448,
		34.668465, 38.307316, 42.341297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365803, 38.804657, 41.927937>,  <34.894539, 38.948612, 42.507511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365803, 38.804657, 41.927937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.076736, 38.529800, 41.898033>,  <34.903297, 38.364887, 41.880089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.076736, 38.529800, 41.898033>,  <35.365803, 38.804657, 41.927937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076736, 38.529800, 41.898033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182446, 0.293959, -0.938244,
		0.666686, -0.664396, -0.337800,
		-0.722664, -0.687144, -0.074762,
		34.859936, 38.323658, 41.875603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120808, 38.635681, 42.061375>,  <35.365803, 38.804657, 41.927937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120808, 38.635681, 42.061375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.503445, 38.712982, 41.974125>,  <36.733028, 38.759365, 41.921776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.503445, 38.712982, 41.974125>,  <36.120808, 38.635681, 42.061375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503445, 38.712982, 41.974125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202746, 0.096322, 0.974482,
		0.209337, -0.976408, 0.052959,
		0.956594, 0.193259, -0.218126,
		36.790424, 38.770958, 41.908688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387394, 38.236073, 42.466949>,  <36.120808, 38.635681, 42.061375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387394, 38.236073, 42.466949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.645313, 38.531231, 42.387207>,  <36.800064, 38.708324, 42.339359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.645313, 38.531231, 42.387207>,  <36.387394, 38.236073, 42.466949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645313, 38.531231, 42.387207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214303, 0.075832, 0.973819,
		0.733693, -0.670644, -0.109236,
		0.644802, 0.737893, -0.199358,
		36.838753, 38.752598, 42.327400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021217, 38.019573, 42.723263>,  <36.387394, 38.236073, 42.466949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021217, 38.019573, 42.723263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.040085, 38.418541, 42.701580>,  <37.051407, 38.657921, 42.688568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.040085, 38.418541, 42.701580>,  <37.021217, 38.019573, 42.723263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040085, 38.418541, 42.701580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288470, 0.038358, 0.956720,
		0.956326, -0.060764, -0.285915,
		0.047167, 0.997415, -0.054211,
		37.054234, 38.717766, 42.685318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691498, 38.201351, 43.040607>,  <37.021217, 38.019573, 42.723263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691498, 38.201351, 43.040607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.474819, 38.537270, 43.026131>,  <37.344810, 38.738819, 43.017445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.474819, 38.537270, 43.026131>,  <37.691498, 38.201351, 43.040607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474819, 38.537270, 43.026131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342557, 0.259871, 0.902841,
		0.767605, 0.476671, -0.428449,
		-0.541699, 0.839793, -0.036192,
		37.312309, 38.789207, 43.015274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181343, 38.783443, 43.209709>,  <37.691498, 38.201351, 43.040607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181343, 38.783443, 43.209709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.806519, 38.894844, 43.293941>,  <37.581623, 38.961685, 43.344482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.806519, 38.894844, 43.293941>,  <38.181343, 38.783443, 43.209709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806519, 38.894844, 43.293941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308888, 0.380075, 0.871855,
		0.162775, 0.882032, -0.442181,
		-0.937066, 0.278501, 0.210583,
		37.525398, 38.978394, 43.357117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207413, 39.468197, 43.643524>,  <38.181343, 38.783443, 43.209709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207413, 39.468197, 43.643524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.846405, 39.310902, 43.713749>,  <37.629799, 39.216526, 43.755882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.846405, 39.310902, 43.713749>,  <38.207413, 39.468197, 43.643524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846405, 39.310902, 43.713749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128016, 0.144255, 0.981225,
		-0.411181, 0.908049, -0.079852,
		-0.902520, -0.393239, 0.175560,
		37.575649, 39.192928, 43.766418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930428, 39.931324, 44.094421>,  <38.207413, 39.468197, 43.643524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930428, 39.931324, 44.094421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.728962, 39.589279, 44.143585>,  <37.608082, 39.384052, 44.173084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.728962, 39.589279, 44.143585>,  <37.930428, 39.931324, 44.094421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728962, 39.589279, 44.143585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010520, 0.136190, 0.990627,
		-0.863835, 0.500237, -0.059598,
		-0.503665, -0.855111, 0.122908,
		37.577862, 39.332745, 44.180458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297379, 39.987427, 44.499569>,  <37.930428, 39.931324, 44.094421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297379, 39.987427, 44.499569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.379787, 39.597870, 44.537716>,  <37.429234, 39.364136, 44.560604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.379787, 39.597870, 44.537716>,  <37.297379, 39.987427, 44.499569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379787, 39.597870, 44.537716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072492, 0.081998, 0.993993,
		-0.975858, -0.211702, -0.053705,
		0.206026, -0.973889, 0.095365,
		37.441597, 39.305702, 44.566326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802074, 39.752609, 44.946098>,  <37.297379, 39.987427, 44.499569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802074, 39.752609, 44.946098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.086040, 39.471119, 44.957348>,  <37.256420, 39.302223, 44.964096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.086040, 39.471119, 44.957348>,  <36.802074, 39.752609, 44.946098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086040, 39.471119, 44.957348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196168, -0.159223, 0.967557,
		-0.676418, -0.692399, -0.251084,
		0.709914, -0.703727, 0.028125,
		37.299015, 39.260002, 44.965786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507988, 39.092102, 45.287636>,  <36.802074, 39.752609, 44.946098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507988, 39.092102, 45.287636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.905922, 39.097717, 45.327843>,  <37.144684, 39.101086, 45.351967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.905922, 39.097717, 45.327843>,  <36.507988, 39.092102, 45.287636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905922, 39.097717, 45.327843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098352, -0.111231, 0.988916,
		0.025062, -0.993695, -0.109276,
		0.994836, 0.014037, 0.100520,
		37.204372, 39.101929, 45.357998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569008, 38.641987, 45.811398>,  <36.507988, 39.092102, 45.287636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569008, 38.641987, 45.811398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.917736, 38.837826, 45.817425>,  <37.126972, 38.955330, 45.821041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.917736, 38.837826, 45.817425>,  <36.569008, 38.641987, 45.811398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917736, 38.837826, 45.817425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125188, -0.252456, 0.959476,
		0.473560, -0.834603, -0.281388,
		0.871819, 0.489596, 0.015071,
		37.179283, 38.984703, 45.821945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024902, 38.159279, 45.970963>,  <36.569008, 38.641987, 45.811398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024902, 38.159279, 45.970963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.189312, 38.510353, 46.069538>,  <37.287956, 38.720997, 46.128685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.189312, 38.510353, 46.069538>,  <37.024902, 38.159279, 45.970963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189312, 38.510353, 46.069538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244995, -0.366737, 0.897486,
		0.878086, -0.308512, -0.365766,
		0.411025, 0.877681, 0.246443,
		37.312618, 38.773659, 46.143471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573372, 38.004375, 46.305489>,  <37.024902, 38.159279, 45.970963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573372, 38.004375, 46.305489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.463417, 38.373913, 46.412041>,  <37.397446, 38.595634, 46.475971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.463417, 38.373913, 46.412041>,  <37.573372, 38.004375, 46.305489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463417, 38.373913, 46.412041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142953, -0.234704, 0.961498,
		0.950791, 0.302382, -0.067549,
		-0.274885, 0.923840, 0.266381,
		37.380951, 38.651066, 46.491955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110981, 38.237614, 46.806580>,  <37.573372, 38.004375, 46.305489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110981, 38.237614, 46.806580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.782532, 38.457436, 46.868217>,  <37.585461, 38.589329, 46.905201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.782532, 38.457436, 46.868217>,  <38.110981, 38.237614, 46.806580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782532, 38.457436, 46.868217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080903, -0.155197, 0.984565,
		0.564985, 0.820918, 0.082976,
		-0.821125, 0.549552, 0.154099,
		37.536194, 38.622303, 46.914448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795952, 38.195263, 47.242420>,  <38.110981, 38.237614, 46.806580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795952, 38.195263, 47.242420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.994064, 37.849236, 47.274277>,  <39.112934, 37.641617, 47.293392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.994064, 37.849236, 47.274277>,  <38.795952, 38.195263, 47.242420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994064, 37.849236, 47.274277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146455, -0.007222, -0.989191,
		0.856297, 0.501594, 0.123118,
		0.495283, -0.865073, 0.079645,
		39.142651, 37.589714, 47.298172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347584, 38.320606, 46.843258>,  <38.795952, 38.195263, 47.242420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347584, 38.320606, 46.843258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.338932, 37.923740, 46.892471>,  <39.333740, 37.685619, 46.922001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.338932, 37.923740, 46.892471>,  <39.347584, 38.320606, 46.843258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338932, 37.923740, 46.892471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235541, -0.124660, -0.963836,
		0.971624, 0.008129, 0.236392,
		-0.021634, -0.992166, 0.123037,
		39.332443, 37.626091, 46.929382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977036, 38.064560, 46.502316>,  <39.347584, 38.320606, 46.843258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977036, 38.064560, 46.502316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.721386, 37.758327, 46.531727>,  <39.567997, 37.574589, 46.549374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.721386, 37.758327, 46.531727>,  <39.977036, 38.064560, 46.502316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721386, 37.758327, 46.531727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011107, -0.086401, -0.996198,
		0.769021, -0.637514, 0.046718,
		-0.639127, -0.765579, 0.073525,
		39.529648, 37.528652, 46.553783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285851, 37.511776, 46.103752>,  <39.977036, 38.064560, 46.502316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285851, 37.511776, 46.103752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.896992, 37.433319, 46.155064>,  <39.663677, 37.386246, 46.185852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.896992, 37.433319, 46.155064>,  <40.285851, 37.511776, 46.103752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896992, 37.433319, 46.155064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098314, -0.155563, -0.982921,
		0.212744, -0.968158, 0.131948,
		-0.972149, -0.196138, 0.128279,
		39.605347, 37.374477, 46.193546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065342, 36.819546, 45.789051>,  <40.285851, 37.511776, 46.103752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065342, 36.819546, 45.789051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.719898, 37.021214, 45.788502>,  <39.512634, 37.142212, 45.788174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.719898, 37.021214, 45.788502>,  <40.065342, 36.819546, 45.789051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719898, 37.021214, 45.788502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093594, -0.162988, -0.982179,
		-0.495405, -0.848086, 0.187944,
		-0.863605, 0.504167, -0.001370,
		39.460815, 37.172462, 45.788090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616943, 36.480083, 45.314205>,  <40.065342, 36.819546, 45.789051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616943, 36.480083, 45.314205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.458458, 36.842846, 45.371529>,  <39.363365, 37.060501, 45.405922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.458458, 36.842846, 45.371529>,  <39.616943, 36.480083, 45.314205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458458, 36.842846, 45.371529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175789, 0.078267, -0.981312,
		-0.901172, -0.414004, 0.128413,
		-0.396216, 0.906904, 0.143309,
		39.339592, 37.114918, 45.414520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151279, 36.479202, 44.864429>,  <39.616943, 36.480083, 45.314205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151279, 36.479202, 44.864429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.186794, 36.869991, 44.942028>,  <39.208103, 37.104465, 44.988586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.186794, 36.869991, 44.942028>,  <39.151279, 36.479202, 44.864429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186794, 36.869991, 44.942028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278584, 0.211350, -0.936868,
		-0.956299, 0.029138, 0.290935,
		0.088788, 0.976976, 0.193997,
		39.213432, 37.163086, 45.000229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547565, 36.839283, 44.642189>,  <39.151279, 36.479202, 44.864429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547565, 36.839283, 44.642189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.851032, 37.099796, 44.648529>,  <39.033112, 37.256104, 44.652332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.851032, 37.099796, 44.648529>,  <38.547565, 36.839283, 44.642189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851032, 37.099796, 44.648529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068373, 0.103798, -0.992245,
		-0.647879, 0.751702, 0.123278,
		0.758669, 0.651284, 0.015852,
		39.078632, 37.295181, 44.653286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260216, 37.257149, 44.127567>,  <38.547565, 36.839283, 44.642189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260216, 37.257149, 44.127567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.646633, 37.341782, 44.186878>,  <38.878483, 37.392563, 44.222466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.646633, 37.341782, 44.186878>,  <38.260216, 37.257149, 44.127567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646633, 37.341782, 44.186878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129018, 0.102190, -0.986363,
		-0.223850, 0.972003, 0.071422,
		0.966046, 0.211582, 0.148281,
		38.936447, 37.405254, 44.231361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387062, 37.811073, 43.733818>,  <38.260216, 37.257149, 44.127567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387062, 37.811073, 43.733818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.746666, 37.653252, 43.809830>,  <38.962429, 37.558559, 43.855434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.746666, 37.653252, 43.809830>,  <38.387062, 37.811073, 43.733818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746666, 37.653252, 43.809830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237913, 0.075720, -0.968331,
		0.367673, 0.915746, 0.161943,
		0.899007, -0.394558, 0.190027,
		39.016369, 37.534885, 43.866837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882580, 38.286621, 43.456436>,  <38.387062, 37.811073, 43.733818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882580, 38.286621, 43.456436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.037838, 37.918812, 43.481148>,  <39.130993, 37.698124, 43.495975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.037838, 37.918812, 43.481148>,  <38.882580, 38.286621, 43.456436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037838, 37.918812, 43.481148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040706, -0.049861, -0.997926,
		0.920699, 0.389855, 0.018077,
		0.388145, -0.919525, 0.061777,
		39.154282, 37.642956, 43.499680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436466, 38.216766, 42.864731>,  <38.882580, 38.286621, 43.456436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436466, 38.216766, 42.864731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.387276, 37.844738, 43.003204>,  <39.357761, 37.621521, 43.086288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.387276, 37.844738, 43.003204>,  <39.436466, 38.216766, 42.864731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387276, 37.844738, 43.003204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191002, -0.364488, -0.911409,
		0.973856, -0.045960, 0.222469,
		-0.122975, -0.930073, 0.346180,
		39.350384, 37.565716, 43.107059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031918, 37.888660, 42.691578>,  <39.436466, 38.216766, 42.864731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031918, 37.888660, 42.691578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.760338, 37.596275, 42.719044>,  <39.597389, 37.420845, 42.735523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.760338, 37.596275, 42.719044>,  <40.031918, 37.888660, 42.691578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760338, 37.596275, 42.719044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175793, -0.252657, -0.951452,
		0.712827, -0.633919, 0.300040,
		-0.678951, -0.730966, 0.068662,
		39.556652, 37.376987, 42.739643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336655, 37.268982, 42.375954>,  <40.031918, 37.888660, 42.691578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336655, 37.268982, 42.375954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.947273, 37.179123, 42.358440>,  <39.713642, 37.125210, 42.347935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.947273, 37.179123, 42.358440>,  <40.336655, 37.268982, 42.375954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947273, 37.179123, 42.358440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120148, -0.338772, -0.933165,
		0.194799, -0.913657, 0.356771,
		-0.973457, -0.224645, -0.043782,
		39.655235, 37.111729, 42.345306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.585329, 36.575493, 28.589191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.918373, 36.358719, 28.634909>,  <30.118200, 36.228653, 28.662340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.918373, 36.358719, 28.634909>,  <29.585329, 36.575493, 28.589191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.918373, 36.358719, 28.634909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225440, -0.143114, 0.963688,
		-0.505902, -0.828143, -0.241333,
		0.832611, -0.541938, 0.114295,
		30.168156, 36.196136, 28.669197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414717, 35.980942, 28.898880>,  <29.585329, 36.575493, 28.589191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414717, 35.980942, 28.898880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.806080, 36.004852, 28.978020>,  <30.040897, 36.019199, 29.025503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.806080, 36.004852, 28.978020>,  <29.414717, 35.980942, 28.898880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.806080, 36.004852, 28.978020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156456, -0.411294, 0.897975,
		0.135050, -0.909540, -0.393062,
		0.978408, 0.059775, 0.197848,
		30.099602, 36.022785, 29.037374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635683, 35.457901, 29.294331>,  <29.414717, 35.980942, 28.898880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635683, 35.457901, 29.294331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.960060, 35.683575, 29.356390>,  <30.154686, 35.818977, 29.393625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.960060, 35.683575, 29.356390>,  <29.635683, 35.457901, 29.294331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.960060, 35.683575, 29.356390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096864, -0.132058, 0.986498,
		0.577054, -0.815021, -0.052442,
		0.810942, 0.564182, 0.155150,
		30.203342, 35.852829, 29.402935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928741, 35.129082, 29.910955>,  <29.635683, 35.457901, 29.294331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928741, 35.129082, 29.910955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.070929, 35.502823, 29.900932>,  <30.156240, 35.727066, 29.894918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.070929, 35.502823, 29.900932>,  <29.928741, 35.129082, 29.910955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070929, 35.502823, 29.900932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264398, 0.126228, 0.956117,
		0.896514, -0.333242, 0.291911,
		0.355466, 0.934353, -0.025057,
		30.177568, 35.783131, 29.893415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190453, 35.265808, 30.552771>,  <29.928741, 35.129082, 29.910955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190453, 35.265808, 30.552771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.178246, 35.634502, 30.398125>,  <30.170921, 35.855721, 30.305336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.178246, 35.634502, 30.398125>,  <30.190453, 35.265808, 30.552771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178246, 35.634502, 30.398125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205235, 0.372776, 0.904940,
		0.978237, 0.106963, 0.177796,
		-0.030516, 0.921736, -0.386616,
		30.169090, 35.911022, 30.282141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.461128, 35.704998, 31.085522>,  <30.190453, 35.265808, 30.552771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.461128, 35.704998, 31.085522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.218611, 35.912369, 30.844309>,  <30.073101, 36.036789, 30.699581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.218611, 35.912369, 30.844309>,  <30.461128, 35.704998, 31.085522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218611, 35.912369, 30.844309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473028, 0.374462, 0.797511,
		0.639260, 0.768776, 0.018194,
		-0.606294, 0.518423, -0.603030,
		30.036722, 36.067894, 30.663399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.457235, 36.300854, 31.436069>,  <30.461128, 35.704998, 31.085522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.457235, 36.300854, 31.436069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.135071, 36.275734, 31.200317>,  <29.941772, 36.260662, 31.058867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.135071, 36.275734, 31.200317>,  <30.457235, 36.300854, 31.436069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.135071, 36.275734, 31.200317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573576, 0.333229, 0.748311,
		0.149407, 0.940752, -0.304406,
		-0.805412, -0.062797, -0.589379,
		29.893448, 36.256893, 31.023504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148170, 36.914906, 31.460009>,  <30.457235, 36.300854, 31.436069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148170, 36.914906, 31.460009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.854044, 36.680473, 31.323883>,  <29.677568, 36.539814, 31.242207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.854044, 36.680473, 31.323883>,  <30.148170, 36.914906, 31.460009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854044, 36.680473, 31.323883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555414, 0.233383, 0.798153,
		-0.388360, 0.775912, -0.497130,
		-0.735318, -0.586083, -0.340316,
		29.633450, 36.504650, 31.221788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562164, 37.307526, 31.486580>,  <30.148170, 36.914906, 31.460009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562164, 37.307526, 31.486580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.389080, 36.947968, 31.458994>,  <29.285229, 36.732235, 31.442442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.389080, 36.947968, 31.458994>,  <29.562164, 37.307526, 31.486580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389080, 36.947968, 31.458994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696351, 0.284663, 0.658833,
		-0.572588, 0.333108, -0.749121,
		-0.432710, -0.898891, -0.068966,
		29.259268, 36.678299, 31.438305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.742651, 37.431919, 31.356913>,  <29.562164, 37.307526, 31.486580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.742651, 37.431919, 31.356913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.789251, 37.050533, 31.468142>,  <28.817211, 36.821701, 31.534880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.789251, 37.050533, 31.468142>,  <28.742651, 37.431919, 31.356913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.789251, 37.050533, 31.468142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740876, 0.103038, 0.663691,
		-0.661461, -0.283337, -0.694398,
		0.116499, -0.953469, 0.278073,
		28.824202, 36.764492, 31.551563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.040474, 37.072758, 31.382175>,  <28.742651, 37.431919, 31.356913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.040474, 37.072758, 31.382175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.275831, 36.844810, 31.611626>,  <28.417046, 36.708042, 31.749296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.275831, 36.844810, 31.611626>,  <28.040474, 37.072758, 31.382175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.275831, 36.844810, 31.611626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721400, -0.049557, 0.690743,
		-0.365205, -0.820242, -0.440260,
		0.588394, -0.569866, 0.573624,
		28.452349, 36.673851, 31.783712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.628622, 36.505203, 31.701359>,  <28.040474, 37.072758, 31.382175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.628622, 36.505203, 31.701359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.960863, 36.510426, 31.924044>,  <28.160208, 36.513557, 32.057655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.960863, 36.510426, 31.924044>,  <27.628622, 36.505203, 31.701359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.960863, 36.510426, 31.924044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551562, -0.118358, 0.825694,
		0.076669, -0.992885, -0.091109,
		0.830603, 0.013053, 0.556712,
		28.210045, 36.514339, 32.091057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.603373, 35.853207, 32.172478>,  <27.628622, 36.505203, 31.701359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.603373, 35.853207, 32.172478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.862602, 36.110203, 32.336040>,  <28.018141, 36.264400, 32.434177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.862602, 36.110203, 32.336040>,  <27.603373, 35.853207, 32.172478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.862602, 36.110203, 32.336040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443050, -0.118645, 0.888611,
		0.619440, -0.757052, 0.207765,
		0.648074, 0.642492, 0.408905,
		28.057024, 36.302952, 32.458714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.677795, 35.584042, 32.776871>,  <27.603373, 35.853207, 32.172478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.677795, 35.584042, 32.776871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.799187, 35.956398, 32.858200>,  <27.872021, 36.179813, 32.906998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.799187, 35.956398, 32.858200>,  <27.677795, 35.584042, 32.776871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.799187, 35.956398, 32.858200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329564, -0.097667, 0.939068,
		0.894030, -0.351992, 0.277149,
		0.303477, 0.930893, 0.203321,
		27.890230, 36.235664, 32.919197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.971394, 35.619511, 33.434124>,  <27.677795, 35.584042, 32.776871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.971394, 35.619511, 33.434124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.876848, 36.000618, 33.357845>,  <27.820122, 36.229282, 33.312080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.876848, 36.000618, 33.357845>,  <27.971394, 35.619511, 33.434124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.876848, 36.000618, 33.357845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431676, 0.072857, 0.899081,
		0.870510, 0.294827, 0.394067,
		-0.236363, 0.952769, -0.190692,
		27.805939, 36.286449, 33.300636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057333, 35.919025, 34.048885>,  <27.971394, 35.619511, 33.434124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.057333, 35.919025, 34.048885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.830498, 36.199722, 33.876389>,  <27.694397, 36.368141, 33.772892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.830498, 36.199722, 33.876389>,  <28.057333, 35.919025, 34.048885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.830498, 36.199722, 33.876389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578122, 0.033804, 0.815250,
		0.586673, 0.711628, 0.386524,
		-0.567088, 0.701743, -0.431240,
		27.660372, 36.410244, 33.747017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897316, 36.467293, 34.623665>,  <28.057333, 35.919025, 34.048885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897316, 36.467293, 34.623665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.618444, 36.544453, 34.347485>,  <27.451120, 36.590748, 34.181774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.618444, 36.544453, 34.347485>,  <27.897316, 36.467293, 34.623665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.618444, 36.544453, 34.347485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676757, 0.140654, 0.722645,
		0.236516, 0.971084, 0.032487,
		-0.697180, 0.192902, -0.690455,
		27.409290, 36.602322, 34.140347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.599306, 37.037247, 34.858242>,  <27.897316, 36.467293, 34.623665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.599306, 37.037247, 34.858242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.328495, 36.876560, 34.611580>,  <27.166008, 36.780148, 34.463581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.328495, 36.876560, 34.611580>,  <27.599306, 37.037247, 34.858242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.328495, 36.876560, 34.611580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671301, -0.006347, 0.741158,
		-0.301648, 0.915743, -0.265374,
		-0.677025, -0.401714, -0.616654,
		27.125387, 36.756046, 34.426582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.051903, 37.377113, 35.009567>,  <27.599306, 37.037247, 34.858242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.051903, 37.377113, 35.009567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.920135, 37.043888, 34.831810>,  <26.841076, 36.843952, 34.725155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.920135, 37.043888, 34.831810>,  <27.051903, 37.377113, 35.009567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.920135, 37.043888, 34.831810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742836, -0.061861, 0.666609,
		-0.582820, 0.549705, -0.598453,
		-0.329418, -0.833065, -0.444394,
		26.821310, 36.793968, 34.698490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.508268, 37.818062, 34.636684>,  <27.051903, 37.377113, 35.009567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.508268, 37.818062, 34.636684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.715921, 37.744389, 34.970528>,  <27.840513, 37.700184, 35.170834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.715921, 37.744389, 34.970528>,  <27.508268, 37.818062, 34.636684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.715921, 37.744389, 34.970528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853344, 0.166522, -0.494038,
		-0.047987, 0.968683, 0.243619,
		0.519134, -0.184184, 0.834611,
		27.871662, 37.689133, 35.220909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.025017, 38.309025, 34.554974>,  <27.508268, 37.818062, 34.636684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.025017, 38.309025, 34.554974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.179882, 38.076263, 34.841049>,  <28.272800, 37.936607, 35.012695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.179882, 38.076263, 34.841049>,  <28.025017, 38.309025, 34.554974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.179882, 38.076263, 34.841049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920391, 0.289892, -0.262380,
		-0.054646, 0.759835, 0.647816,
		0.387162, -0.581906, 0.715186,
		28.296030, 37.901691, 35.055607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622055, 38.685425, 34.784672>,  <28.025017, 38.309025, 34.554974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622055, 38.685425, 34.784672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.666479, 38.306080, 34.903511>,  <28.693132, 38.078472, 34.974815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.666479, 38.306080, 34.903511>,  <28.622055, 38.685425, 34.784672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.666479, 38.306080, 34.903511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981106, 0.056970, -0.184894,
		0.158422, 0.312021, 0.936774,
		0.111059, -0.948366, 0.297100,
		28.699797, 38.021568, 34.992641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.253067, 38.594566, 35.097691>,  <28.622055, 38.685425, 34.784672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.253067, 38.594566, 35.097691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.175249, 38.222267, 34.973846>,  <29.128559, 37.998886, 34.899540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.175249, 38.222267, 34.973846>,  <29.253067, 38.594566, 35.097691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.175249, 38.222267, 34.973846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973358, -0.144128, -0.178329,
		0.121355, -0.336059, 0.933990,
		-0.194543, -0.930748, -0.309615,
		29.116886, 37.943043, 34.880962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900036, 38.175507, 35.207813>,  <29.253067, 38.594566, 35.097691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900036, 38.175507, 35.207813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.700985, 37.952969, 34.941628>,  <29.581554, 37.819447, 34.781914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.700985, 37.952969, 34.941628>,  <29.900036, 38.175507, 35.207813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700985, 37.952969, 34.941628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867067, -0.340016, -0.364121,
		-0.023693, -0.758202, 0.651589,
		-0.497628, -0.556344, -0.665468,
		29.551697, 37.786064, 34.741985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244070, 37.506439, 35.170406>,  <29.900036, 38.175507, 35.207813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.244070, 37.506439, 35.170406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.024012, 37.535118, 34.837612>,  <29.891977, 37.552326, 34.637936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.024012, 37.535118, 34.837612>,  <30.244070, 37.506439, 35.170406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.024012, 37.535118, 34.837612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783335, -0.300913, -0.543909,
		-0.289349, -0.950953, 0.109388,
		-0.550148, 0.071693, -0.831984,
		29.858967, 37.556629, 34.588017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437267, 36.906410, 34.789421>,  <30.244070, 37.506439, 35.170406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437267, 36.906410, 34.789421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.293530, 37.178417, 34.533783>,  <30.207287, 37.341621, 34.380402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.293530, 37.178417, 34.533783>,  <30.437267, 36.906410, 34.789421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.293530, 37.178417, 34.533783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615508, -0.342050, -0.710036,
		-0.701441, -0.648517, -0.295644,
		-0.359346, 0.680020, -0.639096,
		30.185726, 37.382423, 34.342052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207888, 36.563801, 34.214008>,  <30.437267, 36.906410, 34.789421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207888, 36.563801, 34.214008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.268545, 36.937397, 34.084599>,  <30.304939, 37.161556, 34.006954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.268545, 36.937397, 34.084599>,  <30.207888, 36.563801, 34.214008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268545, 36.937397, 34.084599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535770, -0.352724, -0.767162,
		-0.830636, -0.057000, -0.553891,
		0.151642, 0.933990, -0.323524,
		30.314037, 37.217594, 33.987541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.143219, 36.582813, 33.461254>,  <30.207888, 36.563801, 34.214008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.143219, 36.582813, 33.461254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.351971, 36.918705, 33.521259>,  <30.477222, 37.120239, 33.557262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.351971, 36.918705, 33.521259>,  <30.143219, 36.582813, 33.461254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.351971, 36.918705, 33.521259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371619, -0.065517, -0.926071,
		-0.767816, 0.539045, -0.346250,
		0.521879, 0.839725, 0.150015,
		30.508535, 37.170624, 33.566265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122036, 36.846920, 32.799450>,  <30.143219, 36.582813, 33.461254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122036, 36.846920, 32.799450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.443405, 37.002510, 32.979763>,  <30.636227, 37.095863, 33.087952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.443405, 37.002510, 32.979763>,  <30.122036, 36.846920, 32.799450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443405, 37.002510, 32.979763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458877, 0.077916, -0.885077,
		-0.379395, 0.917948, -0.115892,
		0.803424, 0.388974, 0.450787,
		30.684433, 37.119202, 33.114998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264765, 37.394947, 32.306110>,  <30.122036, 36.846920, 32.799450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.264765, 37.394947, 32.306110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.604233, 37.353123, 32.513504>,  <30.807913, 37.328030, 32.637939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.604233, 37.353123, 32.513504>,  <30.264765, 37.394947, 32.306110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.604233, 37.353123, 32.513504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526458, 0.261565, -0.808966,
		-0.051031, 0.959506, 0.277029,
		0.848668, -0.104561, 0.518488,
		30.858833, 37.321754, 32.669052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.610941, 37.998863, 32.194759>,  <30.264765, 37.394947, 32.306110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.610941, 37.998863, 32.194759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.886009, 37.727753, 32.298855>,  <31.051050, 37.565086, 32.361313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.886009, 37.727753, 32.298855>,  <30.610941, 37.998863, 32.194759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.886009, 37.727753, 32.298855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492146, 0.171644, -0.853423,
		0.533764, 0.714949, 0.451601,
		0.687668, -0.677780, 0.260243,
		31.092310, 37.524418, 32.376926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275915, 38.362942, 32.291161>,  <30.610941, 37.998863, 32.194759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275915, 38.362942, 32.291161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.364531, 37.977127, 32.233768>,  <31.417700, 37.745636, 32.199333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.364531, 37.977127, 32.233768>,  <31.275915, 38.362942, 32.291161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364531, 37.977127, 32.233768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498361, 0.238455, -0.833532,
		0.838187, 0.113155, 0.533515,
		0.221538, -0.964539, -0.143478,
		31.430992, 37.687767, 32.190723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938662, 38.357449, 32.142761>,  <31.275915, 38.362942, 32.291161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938662, 38.357449, 32.142761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.796181, 38.017612, 31.987165>,  <31.710691, 37.813709, 31.893808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.796181, 38.017612, 31.987165>,  <31.938662, 38.357449, 32.142761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796181, 38.017612, 31.987165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497084, 0.180205, -0.848783,
		0.791219, -0.495697, 0.358130,
		-0.356202, -0.849595, -0.388985,
		31.689320, 37.762733, 31.870470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500538, 38.227680, 31.747976>,  <31.938662, 38.357449, 32.142761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500538, 38.227680, 31.747976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.206161, 37.986782, 31.624241>,  <32.029533, 37.842243, 31.549999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.206161, 37.986782, 31.624241>,  <32.500538, 38.227680, 31.747976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206161, 37.986782, 31.624241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324615, 0.087085, -0.941829,
		0.594147, -0.793550, 0.131406,
		-0.735944, -0.602241, -0.309339,
		31.985378, 37.806110, 31.531439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777390, 37.623310, 31.526991>,  <32.500538, 38.227680, 31.747976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777390, 37.623310, 31.526991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.432018, 37.642612, 31.326130>,  <32.224796, 37.654194, 31.205614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.432018, 37.642612, 31.326130>,  <32.777390, 37.623310, 31.526991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432018, 37.642612, 31.326130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503978, 0.038727, -0.862848,
		-0.022188, -0.998084, -0.057757,
		-0.863432, 0.048253, -0.502153,
		32.172989, 37.657089, 31.175484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844334, 37.173836, 30.921766>,  <32.777390, 37.623310, 31.526991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844334, 37.173836, 30.921766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.541317, 37.418739, 30.831186>,  <32.359509, 37.565681, 30.776838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.541317, 37.418739, 30.831186>,  <32.844334, 37.173836, 30.921766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541317, 37.418739, 30.831186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292211, 0.007846, -0.956322,
		-0.583737, -0.790621, -0.184851,
		-0.757538, 0.612256, -0.226448,
		32.314056, 37.602417, 30.763252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501999, 36.954762, 30.341042>,  <32.844334, 37.173836, 30.921766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501999, 36.954762, 30.341042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.408695, 37.343655, 30.348536>,  <32.352715, 37.576992, 30.353031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.408695, 37.343655, 30.348536>,  <32.501999, 36.954762, 30.341042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408695, 37.343655, 30.348536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315612, 0.093915, -0.944229,
		-0.919772, -0.214336, -0.328755,
		-0.233257, 0.972235, 0.018734,
		32.338718, 37.635326, 30.354156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224754, 37.012047, 29.714907>,  <32.501999, 36.954762, 30.341042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224754, 37.012047, 29.714907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.303619, 37.393078, 29.807625>,  <32.350937, 37.621696, 29.863255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.303619, 37.393078, 29.807625>,  <32.224754, 37.012047, 29.714907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303619, 37.393078, 29.807625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075957, 0.220881, -0.972338,
		-0.977423, 0.209317, -0.028804,
		0.197164, 0.952574, 0.231793,
		32.362770, 37.678852, 29.877163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817944, 37.403805, 29.263296>,  <32.224754, 37.012047, 29.714907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817944, 37.403805, 29.263296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.133240, 37.620602, 29.379858>,  <32.322418, 37.750679, 29.449795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.133240, 37.620602, 29.379858>,  <31.817944, 37.403805, 29.263296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133240, 37.620602, 29.379858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291933, 0.087505, -0.952427,
		-0.541710, 0.835814, -0.089251,
		0.788242, 0.541995, 0.291404,
		32.369713, 37.783199, 29.467279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786913, 37.958244, 28.773228>,  <31.817944, 37.403805, 29.263296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786913, 37.958244, 28.773228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.152134, 37.907990, 28.928429>,  <32.371265, 37.877834, 29.021549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.152134, 37.907990, 28.928429>,  <31.786913, 37.958244, 28.773228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152134, 37.907990, 28.928429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399946, 0.089592, -0.912149,
		0.079842, 0.988022, 0.132052,
		0.913054, -0.125641, 0.388003,
		32.426052, 37.870296, 29.044830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186687, 38.371578, 28.298042>,  <31.786913, 37.958244, 28.773228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186687, 38.371578, 28.298042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.452808, 38.152313, 28.500780>,  <32.612480, 38.020752, 28.622423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.452808, 38.152313, 28.500780>,  <32.186687, 38.371578, 28.298042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452808, 38.152313, 28.500780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625745, 0.039137, -0.779045,
		0.407208, 0.835455, 0.369049,
		0.665300, -0.548164, 0.506845,
		32.652397, 37.987865, 28.652834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716366, 38.746387, 28.352558>,  <32.186687, 38.371578, 28.298042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716366, 38.746387, 28.352558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.843616, 38.367195, 28.357162>,  <32.919968, 38.139679, 28.359924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.843616, 38.367195, 28.357162>,  <32.716366, 38.746387, 28.352558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843616, 38.367195, 28.357162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778416, 0.254252, -0.573955,
		0.541171, 0.191549, 0.818806,
		0.318124, -0.947979, 0.011511,
		32.939053, 38.082802, 28.360617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.724403, 34.426498, 46.994247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.326744, 34.422623, 47.037292>,  <40.088150, 34.420296, 47.063118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.326744, 34.422623, 47.037292>,  <40.724403, 34.426498, 46.994247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326744, 34.422623, 47.037292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102586, 0.228013, 0.968239,
		-0.033918, 0.973610, -0.225685,
		-0.994146, -0.009689, 0.107613,
		40.028500, 34.419716, 47.069576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419552, 35.005920, 47.368561>,  <40.724403, 34.426498, 46.994247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419552, 35.005920, 47.368561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.164261, 34.708122, 47.446941>,  <40.011086, 34.529442, 47.493969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.164261, 34.708122, 47.446941>,  <40.419552, 35.005920, 47.368561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164261, 34.708122, 47.446941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066385, 0.200360, 0.977471,
		-0.766984, 0.636853, -0.078451,
		-0.638223, -0.744496, 0.195951,
		39.972794, 34.484772, 47.505726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970810, 35.319908, 47.860443>,  <40.419552, 35.005920, 47.368561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970810, 35.319908, 47.860443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.914066, 34.923954, 47.860538>,  <39.880020, 34.686382, 47.860596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.914066, 34.923954, 47.860538>,  <39.970810, 35.319908, 47.860443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914066, 34.923954, 47.860538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003065, -0.000197, 0.999995,
		-0.989882, 0.141861, 0.003062,
		-0.141861, -0.989887, 0.000240,
		39.871510, 34.626987, 47.860611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463390, 35.309647, 48.302387>,  <39.970810, 35.319908, 47.860443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463390, 35.309647, 48.302387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.600430, 34.933998, 48.312813>,  <39.682652, 34.708611, 48.319069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.600430, 34.933998, 48.312813>,  <39.463390, 35.309647, 48.302387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600430, 34.933998, 48.312813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011386, 0.031893, 0.999427,
		-0.939415, -0.342100, 0.021619,
		0.342593, -0.939122, 0.026066,
		39.703209, 34.652260, 48.320633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000637, 34.772957, 48.630959>,  <39.463390, 35.309647, 48.302387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000637, 34.772957, 48.630959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.377590, 34.644058, 48.666889>,  <39.603764, 34.566719, 48.688446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.377590, 34.644058, 48.666889>,  <39.000637, 34.772957, 48.630959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377590, 34.644058, 48.666889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159787, -0.197700, 0.967152,
		-0.293907, -0.925780, -0.237801,
		0.942384, -0.322251, 0.089822,
		39.660305, 34.547382, 48.693836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942062, 34.381489, 49.159317>,  <39.000637, 34.772957, 48.630959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942062, 34.381489, 49.159317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.335854, 34.446373, 49.132500>,  <39.572128, 34.485302, 49.116409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.335854, 34.446373, 49.132500>,  <38.942062, 34.381489, 49.159317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335854, 34.446373, 49.132500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087583, -0.122962, 0.988539,
		0.152109, -0.979065, -0.135260,
		0.984476, 0.162212, -0.067045,
		39.631195, 34.495037, 49.112385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340641, 33.726814, 49.383194>,  <38.942062, 34.381489, 49.159317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340641, 33.726814, 49.383194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.572903, 34.049072, 49.430145>,  <39.712261, 34.242428, 49.458317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.572903, 34.049072, 49.430145>,  <39.340641, 33.726814, 49.383194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572903, 34.049072, 49.430145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045967, -0.176386, 0.983247,
		0.812851, -0.565532, -0.139452,
		0.580656, 0.805643, 0.117379,
		39.747101, 34.290764, 49.465359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489517, 33.649109, 50.022701>,  <39.340641, 33.726814, 49.383194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489517, 33.649109, 50.022701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.709549, 33.971611, 49.935650>,  <39.841568, 34.165112, 49.883419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.709549, 33.971611, 49.935650>,  <39.489517, 33.649109, 50.022701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709549, 33.971611, 49.935650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275696, 0.070659, 0.958645,
		0.788291, -0.587331, -0.183413,
		0.550081, 0.806257, -0.217625,
		39.874573, 34.213490, 49.870361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170227, 33.635628, 50.392887>,  <39.489517, 33.649109, 50.022701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170227, 33.635628, 50.392887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.077103, 34.021389, 50.342720>,  <40.021229, 34.252846, 50.312618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.077103, 34.021389, 50.342720>,  <40.170227, 33.635628, 50.392887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077103, 34.021389, 50.342720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247065, 0.183384, 0.951488,
		0.940616, 0.190529, -0.280964,
		-0.232810, 0.964401, -0.125421,
		40.007259, 34.310711, 50.305092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751305, 34.087471, 50.650330>,  <40.170227, 33.635628, 50.392887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751305, 34.087471, 50.650330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.417999, 34.307961, 50.667393>,  <40.218018, 34.440254, 50.677631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.417999, 34.307961, 50.667393>,  <40.751305, 34.087471, 50.650330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417999, 34.307961, 50.667393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153327, 0.156274, 0.975740,
		0.531188, 0.819590, -0.214735,
		-0.833265, 0.551226, 0.042655,
		40.168018, 34.473328, 50.680191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940468, 34.567787, 51.113037>,  <40.751305, 34.087471, 50.650330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940468, 34.567787, 51.113037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.540497, 34.563644, 51.115242>,  <40.300514, 34.561161, 51.116566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.540497, 34.563644, 51.115242>,  <40.940468, 34.567787, 51.113037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540497, 34.563644, 51.115242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005113, 0.038606, 0.999241,
		-0.010559, 0.999201, -0.038550,
		-0.999931, -0.010354, 0.005516,
		40.240517, 34.560539, 51.116898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707703, 35.025158, 51.672333>,  <40.940468, 34.567787, 51.113037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707703, 35.025158, 51.672333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.452812, 34.730553, 51.581566>,  <40.299877, 34.553791, 51.527103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.452812, 34.730553, 51.581566>,  <40.707703, 35.025158, 51.672333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452812, 34.730553, 51.581566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038393, -0.263738, 0.963830,
		-0.769720, 0.622890, 0.139783,
		-0.637226, -0.736513, -0.226919,
		40.261646, 34.509598, 51.513489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942139, 35.213402, 51.819324>,  <40.707703, 35.025158, 51.672333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942139, 35.213402, 51.819324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.602646, 35.008762, 51.872868>,  <39.398949, 34.885979, 51.904991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.602646, 35.008762, 51.872868>,  <39.942139, 35.213402, 51.819324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602646, 35.008762, 51.872868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129698, 0.044010, 0.990576,
		-0.512668, 0.858097, 0.029001,
		-0.848734, -0.511598, 0.133856,
		39.348026, 34.855282, 51.913025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657619, 35.541279, 52.444309>,  <39.942139, 35.213402, 51.819324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657619, 35.541279, 52.444309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.521507, 35.165966, 52.419521>,  <39.439838, 34.940781, 52.404648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.521507, 35.165966, 52.419521>,  <39.657619, 35.541279, 52.444309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521507, 35.165966, 52.419521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336065, -0.182897, 0.923910,
		-0.878218, 0.293568, 0.377560,
		-0.340285, -0.938279, -0.061965,
		39.419422, 34.884483, 52.400932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106724, 35.908226, 52.679924>,  <39.657619, 35.541279, 52.444309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106724, 35.908226, 52.679924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.047955, 36.301502, 52.723270>,  <39.012691, 36.537468, 52.749279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.047955, 36.301502, 52.723270>,  <39.106724, 35.908226, 52.679924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047955, 36.301502, 52.723270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195751, 0.136284, -0.971138,
		-0.969585, -0.121469, -0.212485,
		-0.146922, 0.983195, 0.108362,
		39.003880, 36.596462, 52.755779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468254, 36.170986, 52.286816>,  <39.106724, 35.908226, 52.679924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468254, 36.170986, 52.286816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.741894, 36.457951, 52.339470>,  <38.906078, 36.630131, 52.371063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.741894, 36.457951, 52.339470>,  <38.468254, 36.170986, 52.286816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741894, 36.457951, 52.339470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119569, 0.067724, -0.990513,
		-0.719522, 0.693348, -0.039450,
		0.684099, 0.717413, 0.131632,
		38.947124, 36.673176, 52.378960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252155, 36.637016, 51.752495>,  <38.468254, 36.170986, 52.286816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252155, 36.637016, 51.752495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.614269, 36.755981, 51.873825>,  <38.831535, 36.827362, 51.946625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.614269, 36.755981, 51.873825>,  <38.252155, 36.637016, 51.752495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614269, 36.755981, 51.873825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226947, 0.264999, -0.937161,
		-0.359109, 0.917234, 0.172400,
		0.905282, 0.297417, 0.303327,
		38.885853, 36.845207, 51.964825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329872, 37.385048, 51.622967>,  <38.252155, 36.637016, 51.752495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329872, 37.385048, 51.622967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.680851, 37.193638, 51.636242>,  <38.891438, 37.078793, 51.644207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.680851, 37.193638, 51.636242>,  <38.329872, 37.385048, 51.622967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680851, 37.193638, 51.636242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132919, 0.176076, -0.975361,
		0.460889, 0.860240, 0.218103,
		0.877447, -0.478523, 0.033191,
		38.944084, 37.050079, 51.646198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624226, 37.867367, 51.216133>,  <38.329872, 37.385048, 51.622967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624226, 37.867367, 51.216133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.841904, 37.531879, 51.224159>,  <38.972511, 37.330585, 51.228973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.841904, 37.531879, 51.224159>,  <38.624226, 37.867367, 51.216133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841904, 37.531879, 51.224159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236106, 0.130160, -0.962971,
		0.805051, 0.528780, 0.268859,
		0.544194, -0.838720, 0.020063,
		39.005161, 37.280262, 51.230179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346195, 37.972347, 50.930889>,  <38.624226, 37.867367, 51.216133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346195, 37.972347, 50.930889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.329586, 37.573540, 50.904873>,  <39.319622, 37.334255, 50.889263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.329586, 37.573540, 50.904873>,  <39.346195, 37.972347, 50.930889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329586, 37.573540, 50.904873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285320, 0.050558, -0.957098,
		0.957532, -0.058300, 0.282370,
		-0.041522, -0.997018, -0.065045,
		39.317131, 37.274433, 50.885361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857948, 37.789505, 50.541126>,  <39.346195, 37.972347, 50.930889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857948, 37.789505, 50.541126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.626072, 37.464001, 50.524426>,  <39.486946, 37.268696, 50.514404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.626072, 37.464001, 50.524426>,  <39.857948, 37.789505, 50.541126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626072, 37.464001, 50.524426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153099, -0.058447, -0.986481,
		0.800323, -0.578247, 0.158468,
		-0.579692, -0.813765, -0.041752,
		39.452164, 37.219872, 50.511898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144295, 37.348804, 50.041321>,  <39.857948, 37.789505, 50.541126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144295, 37.348804, 50.041321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.770401, 37.207058, 50.051800>,  <39.546062, 37.122009, 50.058086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.770401, 37.207058, 50.051800>,  <40.144295, 37.348804, 50.041321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770401, 37.207058, 50.051800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017201, -0.028505, -0.999446,
		0.354920, -0.934671, 0.020549,
		-0.934738, -0.354370, 0.026194,
		39.489979, 37.100746, 50.059658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189426, 36.734432, 49.611504>,  <40.144295, 37.348804, 50.041321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189426, 36.734432, 49.611504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.803513, 36.833099, 49.648033>,  <39.571964, 36.892300, 49.669952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.803513, 36.833099, 49.648033>,  <40.189426, 36.734432, 49.611504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803513, 36.833099, 49.648033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141488, -0.194009, -0.970743,
		-0.221742, -0.949480, 0.222079,
		-0.964786, 0.246676, 0.091320,
		39.514076, 36.907101, 49.675430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839340, 36.327206, 49.132866>,  <40.189426, 36.734432, 49.611504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839340, 36.327206, 49.132866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.587753, 36.628860, 49.208420>,  <39.436802, 36.809853, 49.253754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.587753, 36.628860, 49.208420>,  <39.839340, 36.327206, 49.132866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587753, 36.628860, 49.208420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400004, -0.105587, -0.910411,
		-0.666629, -0.648175, 0.368068,
		-0.628969, 0.754135, 0.188885,
		39.399063, 36.855103, 49.265087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199642, 36.137535, 48.778740>,  <39.839340, 36.327206, 49.132866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199642, 36.137535, 48.778740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.223629, 36.530361, 48.850239>,  <39.238022, 36.766056, 48.893139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.223629, 36.530361, 48.850239>,  <39.199642, 36.137535, 48.778740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223629, 36.530361, 48.850239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273106, 0.188375, -0.943360,
		-0.960113, 0.007756, 0.279505,
		0.059969, 0.982066, 0.178743,
		39.241619, 36.824982, 48.903862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708519, 36.413803, 48.313911>,  <39.199642, 36.137535, 48.778740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708519, 36.413803, 48.313911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.934227, 36.734455, 48.392895>,  <39.069653, 36.926846, 48.440285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.934227, 36.734455, 48.392895>,  <38.708519, 36.413803, 48.313911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934227, 36.734455, 48.392895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145670, 0.332093, -0.931931,
		-0.812640, 0.497093, 0.304163,
		0.564266, 0.801631, 0.197460,
		39.103508, 36.974945, 48.452133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328354, 37.061016, 48.078453>,  <38.708519, 36.413803, 48.313911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328354, 37.061016, 48.078453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.721375, 37.128117, 48.110600>,  <38.957188, 37.168377, 48.129887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.721375, 37.128117, 48.110600>,  <38.328354, 37.061016, 48.078453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721375, 37.128117, 48.110600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017722, 0.345678, -0.938186,
		-0.185162, 0.923237, 0.336672,
		0.982548, 0.167750, 0.080368,
		39.016140, 37.178440, 48.134708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373779, 37.768246, 47.810326>,  <38.328354, 37.061016, 48.078453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373779, 37.768246, 47.810326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.731667, 37.591560, 47.783901>,  <38.946400, 37.485550, 47.768047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.731667, 37.591560, 47.783901>,  <38.373779, 37.768246, 47.810326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731667, 37.591560, 47.783901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033922, 0.214688, -0.976094,
		0.445338, 0.871089, 0.207069,
		0.894720, -0.441716, -0.066060,
		39.000084, 37.459045, 47.764084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161594, 38.503799, 47.564732>,  <38.373779, 37.768246, 47.810326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161594, 38.503799, 47.564732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.788403, 38.606262, 47.463585>,  <37.564487, 38.667740, 47.402897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.788403, 38.606262, 47.463585>,  <38.161594, 38.503799, 47.564732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788403, 38.606262, 47.463585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218328, 0.155780, 0.963362,
		0.286159, 0.954001, -0.089414,
		-0.932977, 0.256153, -0.252863,
		37.508511, 38.683109, 47.387726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961048, 39.191906, 47.927898>,  <38.161594, 38.503799, 47.564732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961048, 39.191906, 47.927898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.641697, 38.969944, 47.834370>,  <37.450085, 38.836765, 47.778252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.641697, 38.969944, 47.834370>,  <37.961048, 39.191906, 47.927898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641697, 38.969944, 47.834370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351567, 0.114302, 0.929159,
		-0.488869, 0.824024, -0.286343,
		-0.798378, -0.554906, -0.233821,
		37.402184, 38.803471, 47.764225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425396, 39.622219, 48.181324>,  <37.961048, 39.191906, 47.927898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425396, 39.622219, 48.181324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.296932, 39.244358, 48.154499>,  <37.219856, 39.017643, 48.138405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.296932, 39.244358, 48.154499>,  <37.425396, 39.622219, 48.181324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296932, 39.244358, 48.154499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251238, 0.016707, 0.967781,
		-0.913093, 0.327658, -0.242697,
		-0.321157, -0.944649, -0.067065,
		37.200584, 38.960964, 48.134380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862175, 39.616081, 48.554123>,  <37.425396, 39.622219, 48.181324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862175, 39.616081, 48.554123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.935829, 39.222931, 48.556808>,  <36.980022, 38.987041, 48.558418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.935829, 39.222931, 48.556808>,  <36.862175, 39.616081, 48.554123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935829, 39.222931, 48.556808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454352, -0.079059, 0.887307,
		-0.871584, -0.166434, -0.461130,
		0.184135, -0.982878, 0.006713,
		36.991070, 38.928066, 48.558823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230591, 39.192928, 48.729259>,  <36.862175, 39.616081, 48.554123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230591, 39.192928, 48.729259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.531773, 38.960480, 48.852776>,  <36.712482, 38.821011, 48.926884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.531773, 38.960480, 48.852776>,  <36.230591, 39.192928, 48.729259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531773, 38.960480, 48.852776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485943, -0.174581, 0.856377,
		-0.443753, -0.794868, -0.413845,
		0.752956, -0.581125, 0.308790,
		36.757660, 38.786140, 48.945412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898769, 38.787933, 49.123932>,  <36.230591, 39.192928, 48.729259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898769, 38.787933, 49.123932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.270386, 38.683548, 49.228840>,  <36.493355, 38.620918, 49.291786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.270386, 38.683548, 49.228840>,  <35.898769, 38.787933, 49.123932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270386, 38.683548, 49.228840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340463, -0.325545, 0.882103,
		-0.144811, -0.908802, -0.391290,
		0.929040, -0.260958, 0.262271,
		36.549099, 38.605259, 49.307522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776455, 38.127659, 49.385128>,  <35.898769, 38.787933, 49.123932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776455, 38.127659, 49.385128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.118927, 38.271278, 49.533745>,  <36.324409, 38.357449, 49.622917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.118927, 38.271278, 49.533745>,  <35.776455, 38.127659, 49.385128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118927, 38.271278, 49.533745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322617, -0.190192, 0.927224,
		0.403580, -0.913736, -0.047005,
		0.856178, 0.359045, 0.371545,
		36.375782, 38.378990, 49.645206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600014, 37.338825, 49.498596>,  <35.776455, 38.127659, 49.385128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600014, 37.338825, 49.498596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.268375, 37.137272, 49.595509>,  <35.069393, 37.016338, 49.653656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.268375, 37.137272, 49.595509>,  <35.600014, 37.338825, 49.498596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268375, 37.137272, 49.595509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324389, 0.080586, -0.942485,
		0.455378, -0.860004, -0.230268,
		-0.829098, -0.503884, 0.242279,
		35.019646, 36.986107, 49.668194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618065, 36.739025, 49.021561>,  <35.600014, 37.338825, 49.498596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618065, 36.739025, 49.021561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.238869, 36.830738, 49.109879>,  <35.011353, 36.885765, 49.162868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.238869, 36.830738, 49.109879>,  <35.618065, 36.739025, 49.021561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238869, 36.830738, 49.109879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240609, -0.062034, -0.968638,
		-0.208393, -0.971382, 0.113974,
		-0.947987, 0.229281, 0.220795,
		34.954472, 36.899521, 49.176117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256680, 36.338463, 48.590004>,  <35.618065, 36.739025, 49.021561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256680, 36.338463, 48.590004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.980392, 36.608761, 48.692982>,  <34.814621, 36.770939, 48.754768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.980392, 36.608761, 48.692982>,  <35.256680, 36.338463, 48.590004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980392, 36.608761, 48.692982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342340, 0.008023, -0.939542,
		-0.636960, -0.737088, 0.225794,
		-0.690714, 0.675749, 0.257445,
		34.773178, 36.811485, 48.770214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624271, 36.147499, 48.252625>,  <35.256680, 36.338463, 48.590004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624271, 36.147499, 48.252625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.573864, 36.529137, 48.361309>,  <34.543617, 36.758118, 48.426521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.573864, 36.529137, 48.361309>,  <34.624271, 36.147499, 48.252625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573864, 36.529137, 48.361309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318054, 0.220578, -0.922056,
		-0.939660, -0.202618, 0.275655,
		-0.126022, 0.954092, 0.271712,
		34.536057, 36.815365, 48.442822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053898, 36.309479, 47.888603>,  <34.624271, 36.147499, 48.252625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053898, 36.309479, 47.888603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.191528, 36.671310, 47.989281>,  <34.274109, 36.888409, 48.049686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.191528, 36.671310, 47.989281>,  <34.053898, 36.309479, 47.888603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191528, 36.671310, 47.989281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128883, 0.311021, -0.941624,
		-0.930054, 0.291553, 0.223600,
		0.344078, 0.904579, 0.251690,
		34.294750, 36.942684, 48.064789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486237, 36.780418, 47.786663>,  <34.053898, 36.309479, 47.888603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486237, 36.780418, 47.786663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.837898, 36.970139, 47.768215>,  <34.048897, 37.083969, 47.757145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.837898, 36.970139, 47.768215>,  <33.486237, 36.780418, 47.786663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837898, 36.970139, 47.768215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185682, 0.251825, -0.949793,
		-0.438869, 0.843580, 0.309461,
		0.879157, 0.474296, -0.046119,
		34.101646, 37.112427, 47.754379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391769, 37.306435, 47.331898>,  <33.486237, 36.780418, 47.786663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391769, 37.306435, 47.331898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.791599, 37.307365, 47.343563>,  <34.031498, 37.307922, 47.350563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.791599, 37.307365, 47.343563>,  <33.391769, 37.306435, 47.331898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791599, 37.307365, 47.343563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028442, 0.156402, -0.987284,
		-0.006858, 0.987691, 0.156269,
		0.999572, 0.002326, 0.029164,
		34.091473, 37.308064, 47.352314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.013367, 32.936176, 51.733562> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.378712, 33.077915, 51.653358>,  <37.597919, 33.162960, 51.605236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.378712, 33.077915, 51.653358>,  <37.013367, 32.936176, 51.733562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378712, 33.077915, 51.653358> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181254, -0.087092, -0.979572,
		-0.364570, 0.931050, -0.015320,
		0.913365, 0.354346, -0.200507,
		37.652721, 33.184219, 51.593204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983669, 33.461086, 51.238804>,  <37.013367, 32.936176, 51.733562>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983669, 33.461086, 51.238804> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.349556, 33.301277, 51.214558>,  <37.569088, 33.205391, 51.200008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.349556, 33.301277, 51.214558>,  <36.983669, 33.461086, 51.238804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349556, 33.301277, 51.214558> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024792, 0.094244, -0.995240,
		0.403335, 0.911866, 0.076301,
		0.914716, -0.399524, -0.060619,
		37.623970, 33.181419, 51.196373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254013, 33.816963, 50.727985>,  <36.983669, 33.461086, 51.238804>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254013, 33.816963, 50.727985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.472752, 33.482426, 50.743423>,  <37.603996, 33.281704, 50.752686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.472752, 33.482426, 50.743423>,  <37.254013, 33.816963, 50.727985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472752, 33.482426, 50.743423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094184, -0.107253, -0.989761,
		0.831918, 0.537613, -0.137421,
		0.546847, -0.836343, 0.038591,
		37.636806, 33.231522, 50.755001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618553, 33.902855, 50.217205>,  <37.254013, 33.816963, 50.727985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618553, 33.902855, 50.217205> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.652500, 33.514893, 50.308483>,  <37.672871, 33.282116, 50.363251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.652500, 33.514893, 50.308483>,  <37.618553, 33.902855, 50.217205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652500, 33.514893, 50.308483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004223, -0.229366, -0.973331,
		0.996383, 0.081642, -0.023562,
		0.084870, -0.969910, 0.228191,
		37.677959, 33.223919, 50.376942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181053, 33.630871, 49.813782>,  <37.618553, 33.902855, 50.217205>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181053, 33.630871, 49.813782> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.948589, 33.316452, 49.898056>,  <37.809113, 33.127800, 49.948620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.948589, 33.316452, 49.898056>,  <38.181053, 33.630871, 49.813782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948589, 33.316452, 49.898056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014287, -0.268710, -0.963115,
		0.813668, -0.556709, 0.167392,
		-0.581155, -0.786047, 0.210687,
		37.774242, 33.080639, 49.961262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489494, 33.117878, 49.437248>,  <38.181053, 33.630871, 49.813782>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489494, 33.117878, 49.437248> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.108078, 33.019669, 49.507088>,  <37.879230, 32.960743, 49.548992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.108078, 33.019669, 49.507088>,  <38.489494, 33.117878, 49.437248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108078, 33.019669, 49.507088> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131954, -0.180644, -0.974657,
		0.270844, -0.952410, 0.139853,
		-0.953536, -0.245526, 0.174601,
		37.822018, 32.946011, 49.559467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389606, 32.532269, 49.016640>,  <38.489494, 33.117878, 49.437248>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389606, 32.532269, 49.016640> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.013802, 32.622639, 49.119614>,  <37.788319, 32.676861, 49.181396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.013802, 32.622639, 49.119614>,  <38.389606, 32.532269, 49.016640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013802, 32.622639, 49.119614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323068, -0.334907, -0.885135,
		-0.113761, -0.914765, 0.387639,
		-0.939514, 0.225927, 0.257432,
		37.731949, 32.690418, 49.196842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963787, 31.915358, 48.879154>,  <38.389606, 32.532269, 49.016640>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963787, 31.915358, 48.879154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.769444, 32.264759, 48.866951>,  <37.652836, 32.474400, 48.859631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.769444, 32.264759, 48.866951>,  <37.963787, 31.915358, 48.879154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769444, 32.264759, 48.866951> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151782, -0.118696, -0.981261,
		-0.860756, -0.472127, 0.190252,
		-0.485862, 0.873503, -0.030508,
		37.623684, 32.526810, 48.857800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418167, 31.715765, 48.501759>,  <37.963787, 31.915358, 48.879154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418167, 31.715765, 48.501759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.380280, 32.113949, 48.497936>,  <37.357548, 32.352859, 48.495644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.380280, 32.113949, 48.497936>,  <37.418167, 31.715765, 48.501759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380280, 32.113949, 48.497936> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336904, -0.041083, -0.940643,
		-0.936763, -0.085877, 0.339265,
		-0.094718, 0.995458, -0.009552,
		37.351864, 32.412586, 48.495071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746124, 31.843290, 48.271755>,  <37.418167, 31.715765, 48.501759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746124, 31.843290, 48.271755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.985451, 32.151638, 48.184322>,  <37.129047, 32.336647, 48.131863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.985451, 32.151638, 48.184322>,  <36.746124, 31.843290, 48.271755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985451, 32.151638, 48.184322> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157382, -0.154422, -0.975389,
		-0.785653, 0.617991, 0.028928,
		0.598315, 0.770870, -0.218583,
		37.164944, 32.382900, 48.118748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387310, 32.098141, 47.831726>,  <36.746124, 31.843290, 48.271755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387310, 32.098141, 47.831726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.740101, 32.276512, 47.770710>,  <36.951775, 32.383533, 47.734100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.740101, 32.276512, 47.770710>,  <36.387310, 32.098141, 47.831726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740101, 32.276512, 47.770710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170676, 0.000511, -0.985327,
		-0.439304, 0.895070, 0.076559,
		0.881976, 0.445925, -0.152542,
		37.004692, 32.410290, 47.724949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183941, 32.455978, 47.278629>,  <36.387310, 32.098141, 47.831726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183941, 32.455978, 47.278629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.583229, 32.463921, 47.256153>,  <36.822803, 32.468685, 47.242668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.583229, 32.463921, 47.256153>,  <36.183941, 32.455978, 47.278629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583229, 32.463921, 47.256153> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054834, -0.063251, -0.996490,
		-0.023336, 0.997800, -0.062050,
		0.998223, 0.019852, -0.056189,
		36.882694, 32.469875, 47.239296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597305, 32.856926, 47.180836>,  <36.183941, 32.455978, 47.278629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597305, 32.856926, 47.180836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.305748, 32.590351, 47.243538>,  <35.130814, 32.430408, 47.281158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.305748, 32.590351, 47.243538>,  <35.597305, 32.856926, 47.180836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305748, 32.590351, 47.243538> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068689, 0.299006, 0.951776,
		-0.681169, 0.682979, -0.263722,
		-0.728897, -0.666435, 0.156760,
		35.087078, 32.390419, 47.290565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899136, 33.214886, 47.484180>,  <35.597305, 32.856926, 47.180836>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899136, 33.214886, 47.484180> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.903301, 32.831524, 47.598274>,  <34.905800, 32.601509, 47.666729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.903301, 32.831524, 47.598274>,  <34.899136, 33.214886, 47.484180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903301, 32.831524, 47.598274> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028443, 0.285415, 0.957982,
		-0.999541, -0.001863, 0.030232,
		0.010413, -0.958402, 0.285231,
		34.906425, 32.544003, 47.683842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246407, 33.057632, 47.745377>,  <34.899136, 33.214886, 47.484180>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246407, 33.057632, 47.745377> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.489113, 32.785851, 47.910385>,  <34.634735, 32.622780, 48.009388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.489113, 32.785851, 47.910385>,  <34.246407, 33.057632, 47.745377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489113, 32.785851, 47.910385> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204704, 0.367895, 0.907055,
		-0.768070, -0.634814, 0.084138,
		0.606765, -0.679459, 0.412518,
		34.671143, 32.582012, 48.034142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918411, 32.968910, 48.350739>,  <34.246407, 33.057632, 47.745377>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918411, 32.968910, 48.350739> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.278030, 32.801514, 48.402252>,  <34.493801, 32.701077, 48.433159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.278030, 32.801514, 48.402252>,  <33.918411, 32.968910, 48.350739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278030, 32.801514, 48.402252> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031873, 0.230789, 0.972482,
		-0.436697, -0.878408, 0.194151,
		0.899043, -0.418492, 0.128782,
		34.547745, 32.675964, 48.440887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915806, 32.474731, 48.876213>,  <33.918411, 32.968910, 48.350739>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915806, 32.474731, 48.876213> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.290077, 32.614723, 48.858242>,  <34.514641, 32.698719, 48.847458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.290077, 32.614723, 48.858242>,  <33.915806, 32.474731, 48.876213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290077, 32.614723, 48.858242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040298, 0.232483, 0.971765,
		0.350544, -0.907450, 0.231633,
		0.935679, 0.349981, -0.044927,
		34.570782, 32.719719, 48.844765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092243, 32.420925, 49.587692>,  <33.915806, 32.474731, 48.876213>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092243, 32.420925, 49.587692> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.396240, 32.636009, 49.441662>,  <34.578640, 32.765060, 49.354042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.396240, 32.636009, 49.441662>,  <34.092243, 32.420925, 49.587692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396240, 32.636009, 49.441662> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267082, 0.253714, 0.929675,
		0.592520, -0.804052, 0.049208,
		0.759992, 0.537708, -0.365078,
		34.624237, 32.797321, 49.332138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721264, 32.181606, 49.877655>,  <34.092243, 32.420925, 49.587692>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721264, 32.181606, 49.877655> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.801212, 32.552586, 49.751228>,  <34.849182, 32.775173, 49.675373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.801212, 32.552586, 49.751228>,  <34.721264, 32.181606, 49.877655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801212, 32.552586, 49.751228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351896, 0.233105, 0.906549,
		0.914451, -0.292417, -0.279772,
		0.199874, 0.927445, -0.316063,
		34.861176, 32.830818, 49.656410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365807, 32.282955, 50.226086>,  <34.721264, 32.181606, 49.877655>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365807, 32.282955, 50.226086> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.212696, 32.640499, 50.132710>,  <35.120831, 32.855026, 50.076683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.212696, 32.640499, 50.132710>,  <35.365807, 32.282955, 50.226086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212696, 32.640499, 50.132710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343165, 0.372178, 0.862393,
		0.857742, 0.249992, -0.449202,
		-0.382775, 0.893861, -0.233444,
		35.097862, 32.908657, 50.062675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942413, 32.742119, 50.411274>,  <35.365807, 32.282955, 50.226086>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942413, 32.742119, 50.411274> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.592075, 32.933601, 50.386833>,  <35.381870, 33.048492, 50.372169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.592075, 32.933601, 50.386833>,  <35.942413, 32.742119, 50.411274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592075, 32.933601, 50.386833> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211674, 0.494848, 0.842805,
		0.433690, 0.725235, -0.534740,
		-0.875847, 0.478706, -0.061097,
		35.329323, 33.077213, 50.368504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140339, 33.369137, 50.614090>,  <35.942413, 32.742119, 50.411274>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140339, 33.369137, 50.614090> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.743717, 33.391068, 50.661106>,  <35.505745, 33.404228, 50.689316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.743717, 33.391068, 50.661106>,  <36.140339, 33.369137, 50.614090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743717, 33.391068, 50.661106> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129594, 0.455335, 0.880838,
		-0.005222, 0.888630, -0.458595,
		-0.991553, 0.054831, 0.117539,
		35.446251, 33.407516, 50.696369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018429, 34.057732, 50.667206>,  <36.140339, 33.369137, 50.614090>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018429, 34.057732, 50.667206> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.719215, 33.866245, 50.851063>,  <35.539688, 33.751354, 50.961376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.719215, 33.866245, 50.851063>,  <36.018429, 34.057732, 50.667206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719215, 33.866245, 50.851063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158957, 0.543192, 0.824424,
		-0.644340, 0.689763, -0.330232,
		-0.748036, -0.478717, 0.459644,
		35.494804, 33.722630, 50.988956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652512, 34.547894, 51.111233>,  <36.018429, 34.057732, 50.667206>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652512, 34.547894, 51.111233> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.514156, 34.206360, 51.266834>,  <35.431145, 34.001438, 51.360195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.514156, 34.206360, 51.266834>,  <35.652512, 34.547894, 51.111233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514156, 34.206360, 51.266834> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060434, 0.393460, 0.917353,
		-0.936328, 0.340810, -0.084492,
		-0.345887, -0.853837, 0.389004,
		35.410389, 33.950211, 51.383537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091328, 34.721786, 51.576664>,  <35.652512, 34.547894, 51.111233>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091328, 34.721786, 51.576664> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.257828, 34.376347, 51.690456>,  <35.357727, 34.169083, 51.758732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.257828, 34.376347, 51.690456>,  <35.091328, 34.721786, 51.576664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257828, 34.376347, 51.690456> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168809, 0.380835, 0.909103,
		-0.893440, -0.330396, 0.304307,
		0.416255, -0.863599, 0.284479,
		35.382706, 34.117268, 51.775799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821434, 34.544472, 52.172253>,  <35.091328, 34.721786, 51.576664>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821434, 34.544472, 52.172253> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.164539, 34.338997, 52.164600>,  <35.370403, 34.215714, 52.160007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.164539, 34.338997, 52.164600>,  <34.821434, 34.544472, 52.172253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164539, 34.338997, 52.164600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058642, 0.060806, 0.996425,
		-0.510685, -0.855822, 0.082281,
		0.857766, -0.513684, -0.019135,
		35.421867, 34.184891, 52.158859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956680, 35.144196, 52.585030>,  <34.821434, 34.544472, 52.172253>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956680, 35.144196, 52.585030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.173897, 35.479980, 52.576900>,  <35.304226, 35.681450, 52.572025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.173897, 35.479980, 52.576900>,  <34.956680, 35.144196, 52.585030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173897, 35.479980, 52.576900> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308791, 0.177134, -0.934490,
		-0.780870, 0.513737, 0.355409,
		0.543038, 0.839463, -0.020319,
		35.336807, 35.731819, 52.570805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498795, 35.643333, 52.318939>,  <34.956680, 35.144196, 52.585030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498795, 35.643333, 52.318939> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.855232, 35.797825, 52.223625>,  <35.069096, 35.890522, 52.166439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.855232, 35.797825, 52.223625>,  <34.498795, 35.643333, 52.318939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855232, 35.797825, 52.223625> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381443, 0.352959, -0.854354,
		-0.245876, 0.852200, 0.461845,
		0.891093, 0.386233, -0.238282,
		35.122559, 35.913696, 52.152142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449654, 36.362091, 52.248287>,  <34.498795, 35.643333, 52.318939>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449654, 36.362091, 52.248287> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.776588, 36.279190, 52.033249>,  <34.972748, 36.229450, 51.904228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.776588, 36.279190, 52.033249>,  <34.449654, 36.362091, 52.248287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776588, 36.279190, 52.033249> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342229, 0.575989, -0.742372,
		0.463505, 0.790748, 0.399850,
		0.817338, -0.207253, -0.537591,
		35.021790, 36.217014, 51.871971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553593, 36.999458, 51.834442>,  <34.449654, 36.362091, 52.248287>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553593, 36.999458, 51.834442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.801476, 36.740185, 51.657433>,  <34.950203, 36.584621, 51.551228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.801476, 36.740185, 51.657433>,  <34.553593, 36.999458, 51.834442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801476, 36.740185, 51.657433> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175574, 0.435057, -0.883119,
		0.764946, 0.624967, 0.155802,
		0.619703, -0.648184, -0.442523,
		34.987385, 36.545731, 51.524677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022499, 37.356213, 51.485958>,  <34.553593, 36.999458, 51.834442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022499, 37.356213, 51.485958> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.013298, 37.004959, 51.294815>,  <35.007778, 36.794205, 51.180130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.013298, 37.004959, 51.294815>,  <35.022499, 37.356213, 51.485958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013298, 37.004959, 51.294815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075630, 0.478143, -0.875019,
		0.996871, 0.016012, -0.077413,
		-0.023003, -0.878136, -0.477858,
		35.006397, 36.741520, 51.151459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000492, 37.631359, 50.828964>,  <35.022499, 37.356213, 51.485958>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000492, 37.631359, 50.828964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.991692, 37.244297, 50.728436>,  <34.986412, 37.012062, 50.668118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.991692, 37.244297, 50.728436>,  <35.000492, 37.631359, 50.828964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991692, 37.244297, 50.728436> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423068, 0.236776, -0.874614,
		0.905831, 0.087085, -0.414592,
		-0.021999, -0.967653, -0.251322,
		34.985092, 36.954002, 50.653038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365047, 37.657269, 50.122379>,  <35.000492, 37.631359, 50.828964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365047, 37.657269, 50.122379> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.185810, 37.299728, 50.116035>,  <35.078270, 37.085205, 50.112228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.185810, 37.299728, 50.116035>,  <35.365047, 37.657269, 50.122379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185810, 37.299728, 50.116035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308261, 0.171133, -0.935782,
		0.839160, -0.414428, -0.352221,
		-0.448091, -0.893848, -0.015856,
		35.051384, 37.031574, 50.111279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099571, 37.638676, 50.117207>,  <35.365047, 37.657269, 50.122379>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099571, 37.638676, 50.117207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.280029, 37.995621, 50.122162>,  <36.388302, 38.209789, 50.125134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.280029, 37.995621, 50.122162>,  <36.099571, 37.638676, 50.117207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280029, 37.995621, 50.122162> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109723, 0.041688, 0.993088,
		0.885682, -0.449381, 0.116720,
		0.451140, 0.892367, 0.012385,
		36.415371, 38.263332, 50.125877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842640, 37.672153, 50.456875>,  <36.099571, 37.638676, 50.117207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842640, 37.672153, 50.456875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.712856, 38.049698, 50.481689>,  <36.634987, 38.276226, 50.496578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.712856, 38.049698, 50.481689>,  <36.842640, 37.672153, 50.456875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712856, 38.049698, 50.481689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180033, -0.002768, 0.983657,
		0.928608, 0.330329, -0.169028,
		-0.324462, 0.943862, 0.062041,
		36.615517, 38.332855, 50.500301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222084, 37.812817, 51.017941>,  <36.842640, 37.672153, 50.456875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222084, 37.812817, 51.017941> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.012112, 38.151875, 50.987080>,  <36.886127, 38.355309, 50.968563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.012112, 38.151875, 50.987080>,  <37.222084, 37.812817, 51.017941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012112, 38.151875, 50.987080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326479, 0.284227, 0.901458,
		0.786043, 0.448012, -0.425936,
		-0.524927, 0.847644, -0.077148,
		36.854633, 38.406166, 50.963936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666824, 38.374786, 51.213482>,  <37.222084, 37.812817, 51.017941>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666824, 38.374786, 51.213482> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.291435, 38.499313, 51.273273>,  <37.066200, 38.574032, 51.309147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.291435, 38.499313, 51.273273>,  <37.666824, 38.374786, 51.213482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291435, 38.499313, 51.273273> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245959, 0.298712, 0.922104,
		0.242420, 0.902136, -0.356907,
		-0.938476, 0.311321, 0.149475,
		37.009892, 38.592709, 51.318115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791740, 39.002998, 51.479229>,  <37.666824, 38.374786, 51.213482>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791740, 39.002998, 51.479229> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.414635, 38.912731, 51.577435>,  <37.188374, 38.858570, 51.636356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.414635, 38.912731, 51.577435>,  <37.791740, 39.002998, 51.479229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414635, 38.912731, 51.577435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158292, 0.345168, 0.925096,
		-0.293506, 0.911007, -0.289690,
		-0.942761, -0.225666, 0.245514,
		37.131805, 38.845032, 51.651089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465302, 39.628231, 51.716503>,  <37.791740, 39.002998, 51.479229>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465302, 39.628231, 51.716503> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.267532, 39.310341, 51.857330>,  <37.148869, 39.119606, 51.941826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.267532, 39.310341, 51.857330>,  <37.465302, 39.628231, 51.716503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267532, 39.310341, 51.857330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110514, 0.344274, 0.932342,
		-0.862166, 0.499883, -0.082390,
		-0.494427, -0.794728, 0.352065,
		37.119205, 39.071922, 51.962952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132256, 39.887352, 52.211906>,  <37.465302, 39.628231, 51.716503>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132256, 39.887352, 52.211906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.096210, 39.496021, 52.286476>,  <37.074585, 39.261223, 52.331219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.096210, 39.496021, 52.286476>,  <37.132256, 39.887352, 52.211906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096210, 39.496021, 52.286476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112513, 0.175992, 0.977941,
		-0.989556, 0.109096, 0.094217,
		-0.090108, -0.978328, 0.186429,
		37.069180, 39.202522, 52.342403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772797, 39.880367, 52.791470>,  <37.132256, 39.887352, 52.211906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772797, 39.880367, 52.791470> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.970200, 39.532494, 52.787655>,  <37.088642, 39.323769, 52.785366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.970200, 39.532494, 52.787655>,  <36.772797, 39.880367, 52.791470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970200, 39.532494, 52.787655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008226, -0.006296, 0.999946,
		-0.869702, -0.493560, 0.004047,
		0.493508, -0.869689, -0.009536,
		37.118252, 39.271587, 52.784794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403721, 39.429741, 53.080345>,  <36.772797, 39.880367, 52.791470>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403721, 39.429741, 53.080345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.773109, 39.281250, 53.119087>,  <36.994743, 39.192154, 53.142334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.773109, 39.281250, 53.119087>,  <36.403721, 39.429741, 53.080345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773109, 39.281250, 53.119087> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081270, 0.057445, 0.995035,
		-0.374951, -0.926762, 0.022880,
		0.923475, -0.371231, 0.096857,
		37.050152, 39.169880, 53.148144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.658932, 38.272430, 37.066849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031487, 38.135876, 37.117416>,  <37.255020, 38.053944, 37.147755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031487, 38.135876, 37.117416>,  <36.658932, 38.272430, 37.066849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031487, 38.135876, 37.117416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165996, -0.089215, 0.982082,
		-0.323988, -0.935681, -0.139762,
		0.931385, -0.341383, 0.126414,
		37.310902, 38.033463, 37.155342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575562, 37.855415, 37.581310>,  <36.658932, 38.272430, 37.066849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575562, 37.855415, 37.581310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973755, 37.873470, 37.614708>,  <37.212673, 37.884304, 37.634747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973755, 37.873470, 37.614708>,  <36.575562, 37.855415, 37.581310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973755, 37.873470, 37.614708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075908, -0.149493, 0.985845,
		0.056978, -0.987732, -0.145392,
		0.995486, 0.045135, 0.083494,
		37.272400, 37.887009, 37.639755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846756, 37.165215, 37.724056>,  <36.575562, 37.855415, 37.581310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846756, 37.165215, 37.724056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062561, 37.470951, 37.865311>,  <37.192043, 37.654392, 37.950066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062561, 37.470951, 37.865311>,  <36.846756, 37.165215, 37.724056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062561, 37.470951, 37.865311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189957, -0.298110, 0.935440,
		0.820270, -0.571762, -0.015642,
		0.539512, 0.764342, 0.353140,
		37.224415, 37.700253, 37.971252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922344, 36.952381, 38.442650>,  <36.846756, 37.165215, 37.724056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922344, 36.952381, 38.442650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029774, 37.337341, 38.426361>,  <37.094231, 37.568317, 38.416588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029774, 37.337341, 38.426361>,  <36.922344, 36.952381, 38.442650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029774, 37.337341, 38.426361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182809, 0.092427, 0.978794,
		0.945754, -0.255430, 0.200759,
		0.268569, 0.962399, -0.040719,
		37.110344, 37.626060, 38.414146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182804, 37.107330, 39.078091>,  <36.922344, 36.952381, 38.442650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182804, 37.107330, 39.078091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137524, 37.482197, 38.946083>,  <37.110355, 37.707115, 38.866879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137524, 37.482197, 38.946083>,  <37.182804, 37.107330, 39.078091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137524, 37.482197, 38.946083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087119, 0.321509, 0.942890,
		0.989745, 0.135488, 0.045249,
		-0.113202, 0.937163, -0.330016,
		37.103561, 37.763348, 38.847076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765003, 37.410404, 39.273846>,  <37.182804, 37.107330, 39.078091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765003, 37.410404, 39.273846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465881, 37.671974, 39.227947>,  <37.286407, 37.828918, 39.200409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465881, 37.671974, 39.227947>,  <37.765003, 37.410404, 39.273846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465881, 37.671974, 39.227947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041114, 0.218113, 0.975057,
		0.662644, 0.724435, -0.189992,
		-0.747805, 0.653927, -0.114746,
		37.241539, 37.868153, 39.193523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989380, 38.018723, 39.752247>,  <37.765003, 37.410404, 39.273846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989380, 38.018723, 39.752247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602791, 38.054794, 39.656082>,  <37.370838, 38.076435, 39.598385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602791, 38.054794, 39.656082>,  <37.989380, 38.018723, 39.752247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602791, 38.054794, 39.656082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214500, 0.231087, 0.948994,
		0.141133, 0.968745, -0.203996,
		-0.966474, 0.090177, -0.240409,
		37.312847, 38.081848, 39.583958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826462, 38.847992, 39.901203>,  <37.989380, 38.018723, 39.752247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826462, 38.847992, 39.901203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488792, 38.633564, 39.901253>,  <37.286190, 38.504906, 39.901283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488792, 38.633564, 39.901253>,  <37.826462, 38.847992, 39.901203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488792, 38.633564, 39.901253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247580, 0.390073, 0.886875,
		-0.475478, 0.748644, -0.462009,
		-0.844171, -0.536074, 0.000122,
		37.235542, 38.472740, 39.901291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348106, 39.335022, 40.212616>,  <37.826462, 38.847992, 39.901203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348106, 39.335022, 40.212616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189949, 38.970169, 40.255848>,  <37.095055, 38.751259, 40.281788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189949, 38.970169, 40.255848>,  <37.348106, 39.335022, 40.212616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189949, 38.970169, 40.255848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226193, 0.210738, 0.951013,
		-0.890226, 0.351575, -0.289642,
		-0.395391, -0.912132, 0.108080,
		37.071331, 38.696529, 40.288273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737007, 39.419342, 40.322693>,  <37.348106, 39.335022, 40.212616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737007, 39.419342, 40.322693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806423, 39.052097, 40.465214>,  <36.848072, 38.831749, 40.550724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806423, 39.052097, 40.465214>,  <36.737007, 39.419342, 40.322693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806423, 39.052097, 40.465214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173506, 0.327628, 0.928739,
		-0.969422, -0.222996, -0.102441,
		0.173542, -0.918114, 0.356301,
		36.858486, 38.776665, 40.572105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370239, 39.306145, 40.824837>,  <36.737007, 39.419342, 40.322693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370239, 39.306145, 40.824837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611774, 39.011929, 40.947712>,  <36.756695, 38.835400, 41.021439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611774, 39.011929, 40.947712>,  <36.370239, 39.306145, 40.824837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611774, 39.011929, 40.947712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256463, 0.185613, 0.948565,
		-0.754723, -0.651561, -0.076558,
		0.603838, -0.735538, 0.307188,
		36.792927, 38.791267, 41.039867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045311, 38.827492, 41.359875>,  <36.370239, 39.306145, 40.824837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045311, 38.827492, 41.359875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442444, 38.800629, 41.399414>,  <36.680725, 38.784512, 41.423138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442444, 38.800629, 41.399414>,  <36.045311, 38.827492, 41.359875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442444, 38.800629, 41.399414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083244, 0.204785, 0.975261,
		-0.085741, -0.976500, 0.197727,
		0.992834, -0.067161, 0.098846,
		36.740295, 38.780479, 41.429070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379158, 38.469505, 41.187149>,  <36.045311, 38.827492, 41.359875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379158, 38.469505, 41.187149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008129, 38.398499, 41.318661>,  <34.785511, 38.355892, 41.397568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008129, 38.398499, 41.318661>,  <35.379158, 38.469505, 41.187149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008129, 38.398499, 41.318661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355241, 0.146281, -0.923258,
		0.115792, -0.973187, -0.198745,
		-0.927576, -0.177509, 0.328778,
		34.729858, 38.345242, 41.417294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104546, 38.094364, 40.661835>,  <35.379158, 38.469505, 41.187149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104546, 38.094364, 40.661835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762695, 38.218914, 40.828049>,  <34.557587, 38.293644, 40.927776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762695, 38.218914, 40.828049>,  <35.104546, 38.094364, 40.661835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762695, 38.218914, 40.828049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386513, 0.152925, -0.909517,
		-0.346744, -0.937903, -0.010344,
		-0.854621, 0.311372, 0.415537,
		34.506310, 38.312325, 40.952709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554688, 37.768688, 40.280640>,  <35.104546, 38.094364, 40.661835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554688, 37.768688, 40.280640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380222, 38.086330, 40.449947>,  <34.275543, 38.276917, 40.551533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380222, 38.086330, 40.449947>,  <34.554688, 37.768688, 40.280640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380222, 38.086330, 40.449947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539578, 0.145634, -0.829245,
		-0.720151, -0.590073, 0.364961,
		-0.436164, 0.794106, 0.423269,
		34.249374, 38.324562, 40.576927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822716, 37.689796, 40.057407>,  <34.554688, 37.768688, 40.280640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822716, 37.689796, 40.057407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898895, 38.065590, 40.171314>,  <33.944603, 38.291065, 40.239658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898895, 38.065590, 40.171314>,  <33.822716, 37.689796, 40.057407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898895, 38.065590, 40.171314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814687, 0.313105, -0.488109,
		-0.547734, -0.139037, 0.825019,
		0.190452, 0.939486, 0.284770,
		33.956032, 38.347435, 40.256744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255112, 37.753677, 40.448040>,  <33.822716, 37.689796, 40.057407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255112, 37.753677, 40.448040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370419, 38.102989, 40.290924>,  <33.439602, 38.312576, 40.196655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370419, 38.102989, 40.290924>,  <33.255112, 37.753677, 40.448040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370419, 38.102989, 40.290924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866073, 0.062812, -0.495956,
		-0.408438, 0.483150, 0.774432,
		0.288265, 0.873282, -0.392788,
		33.456898, 38.364975, 40.173088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710144, 38.192085, 40.490299>,  <33.255112, 37.753677, 40.448040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710144, 38.192085, 40.490299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937798, 38.359825, 40.207394>,  <33.074390, 38.460468, 40.037651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937798, 38.359825, 40.207394>,  <32.710144, 38.192085, 40.490299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937798, 38.359825, 40.207394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779635, 0.001918, -0.626231,
		-0.261256, 0.907821, 0.328034,
		0.569135, 0.419353, -0.707268,
		33.108540, 38.485630, 39.995213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379177, 38.801205, 40.250149>,  <32.710144, 38.192085, 40.490299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379177, 38.801205, 40.250149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644089, 38.728394, 39.959427>,  <32.803036, 38.684708, 39.784992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644089, 38.728394, 39.959427>,  <32.379177, 38.801205, 40.250149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644089, 38.728394, 39.959427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740387, -0.010209, -0.672103,
		0.114925, 0.983240, -0.141535,
		0.662283, -0.182032, -0.726805,
		32.842773, 38.673782, 39.741386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152287, 39.234257, 39.763428>,  <32.379177, 38.801205, 40.250149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152287, 39.234257, 39.763428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372738, 38.960766, 39.572105>,  <32.505009, 38.796669, 39.457314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372738, 38.960766, 39.572105>,  <32.152287, 39.234257, 39.763428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372738, 38.960766, 39.572105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641821, 0.018944, -0.766621,
		0.533222, 0.729489, -0.428392,
		0.551126, -0.683730, -0.478302,
		32.538074, 38.755646, 39.428616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252308, 39.422741, 39.146633>,  <32.152287, 39.234257, 39.763428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252308, 39.422741, 39.146633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346142, 39.044319, 39.057240>,  <32.402443, 38.817265, 39.003605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346142, 39.044319, 39.057240>,  <32.252308, 39.422741, 39.146633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346142, 39.044319, 39.057240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611985, 0.034891, -0.790099,
		0.755277, 0.322112, -0.570789,
		0.234585, -0.946058, -0.223480,
		32.416519, 38.760502, 38.990196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.311485, 39.402927, 38.438171>,  <32.252308, 39.422741, 39.146633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.311485, 39.402927, 38.438171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282417, 39.018780, 38.545815>,  <32.264977, 38.788292, 38.610401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282417, 39.018780, 38.545815>,  <32.311485, 39.402927, 38.438171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282417, 39.018780, 38.545815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588407, -0.176575, -0.789049,
		0.805293, -0.215686, -0.552253,
		-0.072672, -0.960365, 0.269106,
		32.260616, 38.730671, 38.626545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669189, 38.967484, 37.912373>,  <32.311485, 39.402927, 38.438171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669189, 38.967484, 37.912373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415581, 38.717892, 38.095093>,  <32.263416, 38.568138, 38.204727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415581, 38.717892, 38.095093>,  <32.669189, 38.967484, 37.912373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415581, 38.717892, 38.095093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387953, -0.254349, -0.885889,
		0.668963, -0.738890, -0.080812,
		-0.634020, -0.623978, 0.456804,
		32.225376, 38.530697, 38.232136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519455, 38.460434, 37.467709>,  <32.669189, 38.967484, 37.912373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519455, 38.460434, 37.467709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242626, 38.376282, 37.743904>,  <32.076530, 38.325790, 37.909622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242626, 38.376282, 37.743904>,  <32.519455, 38.460434, 37.467709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242626, 38.376282, 37.743904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603225, -0.356800, -0.713312,
		0.396437, -0.910183, 0.120021,
		-0.692068, -0.210383, 0.690493,
		32.035007, 38.313168, 37.951054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439205, 37.742050, 37.473488>,  <32.519455, 38.460434, 37.467709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439205, 37.742050, 37.473488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096222, 37.898155, 37.607632>,  <31.890432, 37.991817, 37.688118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096222, 37.898155, 37.607632>,  <32.439205, 37.742050, 37.473488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096222, 37.898155, 37.607632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513364, -0.604394, -0.609233,
		-0.035075, -0.694550, 0.718589,
		-0.857454, 0.390267, 0.335358,
		31.838985, 38.015236, 37.708241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911903, 37.155266, 37.570152>,  <32.439205, 37.742050, 37.473488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911903, 37.155266, 37.570152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730505, 37.500851, 37.482594>,  <31.621666, 37.708202, 37.430058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730505, 37.500851, 37.482594>,  <31.911903, 37.155266, 37.570152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730505, 37.500851, 37.482594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562183, -0.467874, -0.681941,
		-0.691585, -0.186198, 0.697883,
		-0.453497, 0.863958, -0.218898,
		31.594456, 37.760036, 37.416924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139328, 37.107346, 38.248501>,  <31.911903, 37.155266, 37.570152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139328, 37.107346, 38.248501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298656, 36.772293, 38.098988>,  <32.394253, 36.571262, 38.009281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298656, 36.772293, 38.098988>,  <32.139328, 37.107346, 38.248501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298656, 36.772293, 38.098988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400654, -0.525455, 0.750582,
		-0.825118, -0.149214, -0.544900,
		0.398318, -0.837635, -0.373779,
		32.418152, 36.521004, 37.986855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626209, 36.536945, 38.148148>,  <32.139328, 37.107346, 38.248501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626209, 36.536945, 38.148148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988476, 36.386757, 38.226929>,  <32.205837, 36.296646, 38.274197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988476, 36.386757, 38.226929>,  <31.626209, 36.536945, 38.148148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988476, 36.386757, 38.226929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371993, -0.480762, 0.794033,
		-0.203445, -0.792396, -0.575082,
		0.905666, -0.375468, 0.196958,
		32.260174, 36.274117, 38.286015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443697, 35.878613, 38.414371>,  <31.626209, 36.536945, 38.148148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443697, 35.878613, 38.414371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823341, 35.958721, 38.511597>,  <32.051128, 36.006786, 38.569931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823341, 35.958721, 38.511597>,  <31.443697, 35.878613, 38.414371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823341, 35.958721, 38.511597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062132, -0.637541, 0.767907,
		0.308758, -0.743930, -0.592653,
		0.949109, 0.200275, 0.243068,
		32.108074, 36.018803, 38.584518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721382, 35.147499, 38.510662>,  <31.443697, 35.878613, 38.414371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721382, 35.147499, 38.510662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997467, 35.382160, 38.680107>,  <32.163116, 35.522957, 38.781776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997467, 35.382160, 38.680107>,  <31.721382, 35.147499, 38.510662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997467, 35.382160, 38.680107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141095, -0.683293, 0.716381,
		0.709719, -0.434684, -0.554390,
		0.690211, 0.586651, 0.423615,
		32.204529, 35.558155, 38.807190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415222, 34.821030, 38.612820>,  <31.721382, 35.147499, 38.510662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415222, 34.821030, 38.612820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398090, 35.113178, 38.885502>,  <32.387810, 35.288467, 39.049110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398090, 35.113178, 38.885502>,  <32.415222, 34.821030, 38.612820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398090, 35.113178, 38.885502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207463, -0.660955, 0.721178,
		0.977305, 0.172316, -0.123216,
		-0.042831, 0.730374, 0.681703,
		32.385242, 35.332291, 39.090012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871727, 34.580338, 39.145367>,  <32.415222, 34.821030, 38.612820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871727, 34.580338, 39.145367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697300, 34.888084, 39.332096>,  <32.592644, 35.072731, 39.444134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697300, 34.888084, 39.332096>,  <32.871727, 34.580338, 39.145367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697300, 34.888084, 39.332096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181730, -0.432767, 0.882999,
		0.881374, 0.469882, 0.048898,
		-0.436067, 0.769366, 0.466821,
		32.566479, 35.118893, 39.472141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396923, 34.883865, 39.534431>,  <32.871727, 34.580338, 39.145367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396923, 34.883865, 39.534431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049850, 34.966877, 39.715126>,  <32.841606, 35.016685, 39.823544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049850, 34.966877, 39.715126>,  <33.396923, 34.883865, 39.534431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049850, 34.966877, 39.715126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336649, -0.423332, 0.841105,
		0.365786, 0.881886, 0.297452,
		-0.867680, 0.207528, 0.451735,
		32.789547, 35.029137, 39.850647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528934, 35.104649, 40.351089>,  <33.396923, 34.883865, 39.534431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528934, 35.104649, 40.351089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138359, 35.023216, 40.322437>,  <32.904015, 34.974358, 40.305244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138359, 35.023216, 40.322437>,  <33.528934, 35.104649, 40.351089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138359, 35.023216, 40.322437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000588, -0.334425, 0.942422,
		-0.215814, 0.920171, 0.326664,
		-0.976434, -0.203580, -0.071633,
		32.845428, 34.962143, 40.300949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193031, 35.336666, 40.946411>,  <33.528934, 35.104649, 40.351089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193031, 35.336666, 40.946411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940235, 35.064529, 40.797970>,  <32.788559, 34.901245, 40.708904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940235, 35.064529, 40.797970>,  <33.193031, 35.336666, 40.946411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940235, 35.064529, 40.797970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004526, -0.475609, 0.879645,
		-0.774962, 0.557608, 0.297501,
		-0.631991, -0.680345, -0.371103,
		32.750637, 34.860424, 40.686638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722149, 35.191727, 41.578896>,  <33.193031, 35.336666, 40.946411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722149, 35.191727, 41.578896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710072, 34.893944, 41.312099>,  <32.702827, 34.715275, 41.152020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710072, 34.893944, 41.312099>,  <32.722149, 35.191727, 41.578896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710072, 34.893944, 41.312099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015173, -0.666878, 0.745012,
		-0.999429, 0.032612, 0.008837,
		-0.030190, -0.744453, -0.666992,
		32.701015, 34.670609, 41.112003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134548, 34.747162, 41.746952>,  <32.722149, 35.191727, 41.578896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134548, 34.747162, 41.746952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414707, 34.536060, 41.554737>,  <32.582802, 34.409401, 41.439407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414707, 34.536060, 41.554737>,  <32.134548, 34.747162, 41.746952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414707, 34.536060, 41.554737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156851, -0.770605, 0.617710,
		-0.696302, -0.357272, -0.622511,
		0.700401, -0.527755, -0.480535,
		32.624828, 34.377735, 41.410576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880964, 34.080219, 41.998936>,  <32.134548, 34.747162, 41.746952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880964, 34.080219, 41.998936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217686, 33.990078, 41.802738>,  <32.419720, 33.935993, 41.685020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217686, 33.990078, 41.802738>,  <31.880964, 34.080219, 41.998936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217686, 33.990078, 41.802738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223111, -0.682166, 0.696326,
		-0.491519, -0.695604, -0.523969,
		0.841801, -0.225354, -0.490495,
		32.470226, 33.922470, 41.655590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848511, 33.400368, 41.928276>,  <31.880964, 34.080219, 41.998936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848511, 33.400368, 41.928276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231609, 33.510754, 41.895878>,  <32.461468, 33.576984, 41.876438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231609, 33.510754, 41.895878>,  <31.848511, 33.400368, 41.928276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231609, 33.510754, 41.895878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250761, -0.663339, 0.705054,
		0.140840, -0.695575, -0.704513,
		0.957749, 0.275964, -0.080998,
		32.518932, 33.593544, 41.871578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318836, 32.802269, 41.847618>,  <31.848511, 33.400368, 41.928276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318836, 32.802269, 41.847618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545681, 33.083241, 42.019653>,  <32.681786, 33.251823, 42.122875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545681, 33.083241, 42.019653>,  <32.318836, 32.802269, 41.847618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545681, 33.083241, 42.019653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311722, -0.666382, 0.677322,
		0.762377, -0.250046, -0.596874,
		0.567108, 0.702433, 0.430089,
		32.715813, 33.293972, 42.148682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935928, 32.443569, 41.992455>,  <32.318836, 32.802269, 41.847618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935928, 32.443569, 41.992455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981007, 32.777428, 42.208111>,  <33.008053, 32.977741, 42.337505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981007, 32.777428, 42.208111>,  <32.935928, 32.443569, 41.992455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981007, 32.777428, 42.208111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494905, -0.517654, 0.697928,
		0.861608, 0.188167, -0.471408,
		0.112699, 0.834642, 0.539140,
		33.014816, 33.027821, 42.369854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717766, 32.609943, 42.099403>,  <32.935928, 32.443569, 41.992455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717766, 32.609943, 42.099403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522511, 32.801258, 42.391418>,  <33.405357, 32.916046, 42.566628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522511, 32.801258, 42.391418>,  <33.717766, 32.609943, 42.099403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522511, 32.801258, 42.391418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579559, -0.447780, 0.680885,
		0.652557, 0.755469, -0.058617,
		-0.488140, 0.478289, 0.730041,
		33.376068, 32.944744, 42.610432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143780, 32.555874, 42.690304>,  <33.717766, 32.609943, 42.099403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143780, 32.555874, 42.690304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801323, 32.673519, 42.860252>,  <33.595848, 32.744106, 42.962223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801323, 32.673519, 42.860252>,  <34.143780, 32.555874, 42.690304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801323, 32.673519, 42.860252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248096, -0.487298, 0.837251,
		0.453288, 0.822215, 0.344227,
		-0.856141, 0.294115, 0.424875,
		33.544479, 32.761753, 42.987717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347218, 32.949387, 43.310127>,  <34.143780, 32.555874, 42.690304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347218, 32.949387, 43.310127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968822, 32.840057, 43.379868>,  <33.741783, 32.774460, 43.421711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968822, 32.840057, 43.379868>,  <34.347218, 32.949387, 43.310127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968822, 32.840057, 43.379868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246014, -0.254942, 0.935137,
		-0.211141, 0.927524, 0.308413,
		-0.945990, -0.273319, 0.174355,
		33.685024, 32.758060, 43.432175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180069, 33.439766, 43.853390>,  <34.347218, 32.949387, 43.310127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180069, 33.439766, 43.853390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937164, 33.121994, 43.849064>,  <33.791420, 32.931332, 43.846470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937164, 33.121994, 43.849064>,  <34.180069, 33.439766, 43.853390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937164, 33.121994, 43.849064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149707, -0.127782, 0.980438,
		-0.780271, 0.593762, 0.196529,
		-0.607260, -0.794429, -0.010814,
		33.754986, 32.883667, 43.845821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794716, 33.521130, 44.490475>,  <34.180069, 33.439766, 43.853390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794716, 33.521130, 44.490475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747871, 33.137798, 44.386257>,  <33.719765, 32.907799, 44.323727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747871, 33.137798, 44.386257>,  <33.794716, 33.521130, 44.490475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747871, 33.137798, 44.386257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034821, -0.258228, 0.965456,
		-0.992509, 0.122136, -0.003129,
		-0.117109, -0.958333, -0.260546,
		33.712738, 32.850300, 44.308094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224243, 33.190105, 44.987106>,  <33.794716, 33.521130, 44.490475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224243, 33.190105, 44.987106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454910, 32.906658, 44.824471>,  <33.593311, 32.736588, 44.726891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454910, 32.906658, 44.824471>,  <33.224243, 33.190105, 44.987106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454910, 32.906658, 44.824471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180317, -0.375006, 0.909316,
		-0.796834, -0.597686, -0.088476,
		0.576664, -0.708620, -0.406590,
		33.627911, 32.694073, 44.702492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011356, 32.652393, 45.343056>,  <33.224243, 33.190105, 44.987106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011356, 32.652393, 45.343056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370876, 32.554825, 45.197369>,  <33.586590, 32.496284, 45.109955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370876, 32.554825, 45.197369>,  <33.011356, 32.652393, 45.343056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370876, 32.554825, 45.197369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295732, -0.275900, 0.914561,
		-0.323568, -0.929722, -0.175845,
		0.898803, -0.243919, -0.364220,
		33.640518, 32.481647, 45.088104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238674, 32.157780, 45.765434>,  <33.011356, 32.652393, 45.343056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238674, 32.157780, 45.765434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572994, 32.244518, 45.563675>,  <33.773586, 32.296562, 45.442619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572994, 32.244518, 45.563675>,  <33.238674, 32.157780, 45.765434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572994, 32.244518, 45.563675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549034, -0.334095, 0.766122,
		-0.002388, -0.917256, -0.398292,
		0.835797, 0.216846, -0.504402,
		33.823734, 32.309570, 45.412354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729958, 31.511106, 45.756409>,  <33.238674, 32.157780, 45.765434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729958, 31.511106, 45.756409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942932, 31.845928, 45.706047>,  <34.070717, 32.046822, 45.675831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942932, 31.845928, 45.706047>,  <33.729958, 31.511106, 45.756409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942932, 31.845928, 45.706047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580185, -0.252572, 0.774334,
		0.616360, -0.485331, -0.620125,
		0.532434, 0.837055, -0.125907,
		34.102661, 32.097046, 45.668274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342731, 31.219271, 45.778042>,  <33.729958, 31.511106, 45.756409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342731, 31.219271, 45.778042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396656, 31.609322, 45.848419>,  <34.429012, 31.843351, 45.890644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396656, 31.609322, 45.848419>,  <34.342731, 31.219271, 45.778042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396656, 31.609322, 45.848419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598218, -0.221649, 0.770070,
		0.789912, 0.001435, -0.613219,
		0.134814, 0.975126, 0.175942,
		34.437099, 31.901859, 45.901203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118153, 31.363127, 45.767246>,  <34.342731, 31.219271, 45.778042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118153, 31.363127, 45.767246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945515, 31.657351, 45.976120>,  <34.841934, 31.833885, 46.101444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945515, 31.657351, 45.976120>,  <35.118153, 31.363127, 45.767246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945515, 31.657351, 45.976120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572242, -0.224238, 0.788832,
		0.697328, 0.639270, -0.324140,
		-0.431592, 0.735562, 0.522185,
		34.816036, 31.878019, 46.132774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620705, 31.603947, 46.191193>,  <35.118153, 31.363127, 45.767246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620705, 31.603947, 46.191193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300388, 31.765146, 46.368427>,  <35.108200, 31.861866, 46.474770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300388, 31.765146, 46.368427>,  <35.620705, 31.603947, 46.191193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300388, 31.765146, 46.368427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492651, 0.022457, 0.869937,
		0.340634, 0.914925, -0.216521,
		-0.800789, 0.402999, 0.443089,
		35.060150, 31.886045, 46.501354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876522, 32.258354, 46.492069>,  <35.620705, 31.603947, 46.191193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876522, 32.258354, 46.492069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534782, 32.158894, 46.674610>,  <35.329739, 32.099216, 46.784134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534782, 32.158894, 46.674610>,  <35.876522, 32.258354, 46.492069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534782, 32.158894, 46.674610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484852, -0.065228, 0.872160,
		-0.187100, 0.966393, 0.176288,
		-0.854349, -0.248655, 0.456354,
		35.278477, 32.084297, 46.811516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376797, 32.845154, 46.660858>,  <35.876522, 32.258354, 46.492069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376797, 32.845154, 46.660858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699387, 32.617653, 46.725491>,  <36.892941, 32.481152, 46.764271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699387, 32.617653, 46.725491>,  <36.376797, 32.845154, 46.660858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699387, 32.617653, 46.725491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083437, -0.161068, -0.983410,
		0.585346, 0.806581, -0.082443,
		0.806479, -0.568756, 0.161579,
		36.941330, 32.447025, 46.773964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989799, 33.055714, 46.285217>,  <36.376797, 32.845154, 46.660858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989799, 33.055714, 46.285217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047451, 32.667427, 46.362083>,  <37.082043, 32.434456, 46.408203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047451, 32.667427, 46.362083>,  <36.989799, 33.055714, 46.285217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047451, 32.667427, 46.362083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218339, -0.158215, -0.962962,
		0.965171, 0.180751, 0.189143,
		0.144131, -0.970720, 0.192169,
		37.090691, 32.376209, 46.419735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373615, 32.920811, 45.737007>,  <36.989799, 33.055714, 46.285217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373615, 32.920811, 45.737007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329296, 32.552280, 45.886078>,  <37.302704, 32.331161, 45.975521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329296, 32.552280, 45.886078>,  <37.373615, 32.920811, 45.737007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329296, 32.552280, 45.886078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096232, -0.383170, -0.918651,
		0.989173, -0.065923, 0.131115,
		-0.110800, -0.921322, 0.372677,
		37.296055, 32.275883, 45.997883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873280, 32.520180, 45.408997>,  <37.373615, 32.920811, 45.737007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873280, 32.520180, 45.408997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605915, 32.237778, 45.502628>,  <37.445496, 32.068336, 45.558807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605915, 32.237778, 45.502628>,  <37.873280, 32.520180, 45.408997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605915, 32.237778, 45.502628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210290, -0.122495, -0.969935,
		0.713448, -0.697537, -0.066588,
		-0.668408, -0.706001, 0.234079,
		37.405392, 32.025978, 45.572853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089523, 32.022564, 44.963631>,  <37.873280, 32.520180, 45.408997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089523, 32.022564, 44.963631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710323, 31.970350, 45.079735>,  <37.482803, 31.939020, 45.149395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710323, 31.970350, 45.079735>,  <38.089523, 32.022564, 44.963631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710323, 31.970350, 45.079735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256593, -0.226049, -0.939714,
		0.188282, -0.965330, 0.180800,
		-0.948003, -0.130540, 0.290258,
		37.425922, 31.931189, 45.166813>
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
