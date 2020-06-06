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
	<24.263666, 35.147472, 34.831631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.367918, 35.007271, 35.191456>,  <24.430470, 34.923149, 35.407352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.367918, 35.007271, 35.191456>,  <24.263666, 35.147472, 34.831631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.367918, 35.007271, 35.191456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908701, 0.403780, -0.105947,
		-0.326091, 0.845048, 0.423742,
		0.260629, -0.350506, 0.899565,
		24.446106, 34.902119, 35.461327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.588593, 35.780029, 35.107159>,  <24.263666, 35.147472, 34.831631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.588593, 35.780029, 35.107159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.695486, 35.434090, 35.277161>,  <24.759623, 35.226528, 35.379162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.695486, 35.434090, 35.277161>,  <24.588593, 35.780029, 35.107159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.695486, 35.434090, 35.277161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955919, 0.293608, -0.003600,
		-0.121671, 0.407229, 0.905185,
		0.267236, -0.864846, 0.425002,
		24.775658, 35.174637, 35.404663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.260139, 36.015141, 35.374645>,  <24.588593, 35.780029, 35.107159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.260139, 36.015141, 35.374645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.264235, 35.615547, 35.392189>,  <25.266691, 35.375790, 35.402718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.264235, 35.615547, 35.392189>,  <25.260139, 36.015141, 35.374645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.264235, 35.615547, 35.392189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992543, 0.004826, -0.121797,
		0.121462, 0.044782, 0.991585,
		0.010240, -0.998985, 0.043862,
		25.267307, 35.315853, 35.405346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.847755, 35.799622, 35.685356>,  <25.260139, 36.015141, 35.374645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.847755, 35.799622, 35.685356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734741, 35.459759, 35.507252>,  <25.666933, 35.255840, 35.400391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734741, 35.459759, 35.507252>,  <25.847755, 35.799622, 35.685356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.734741, 35.459759, 35.507252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923277, -0.114933, -0.366538,
		0.260258, -0.514655, 0.816943,
		-0.282535, -0.849659, -0.445257,
		25.649981, 35.204861, 35.373676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.308895, 35.351482, 35.902054>,  <25.847755, 35.799622, 35.685356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.308895, 35.351482, 35.902054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.168312, 35.196735, 35.561043>,  <26.083961, 35.103886, 35.356434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.168312, 35.196735, 35.561043>,  <26.308895, 35.351482, 35.902054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.168312, 35.196735, 35.561043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920691, -0.307913, -0.239829,
		-0.169722, -0.869206, 0.464408,
		-0.351458, -0.386872, -0.852530,
		26.062874, 35.080673, 35.305283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.986889, 34.976315, 36.134785>,  <26.308895, 35.351482, 35.902054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.986889, 34.976315, 36.134785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254261, 34.938766, 35.839653>,  <27.414684, 34.916237, 35.662575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254261, 34.938766, 35.839653>,  <26.986889, 34.976315, 36.134785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254261, 34.938766, 35.839653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597959, -0.657761, -0.458034,
		-0.442320, 0.747355, -0.495796,
		0.668429, -0.093868, -0.737829,
		27.454790, 34.910606, 35.618305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.640018, 34.612461, 35.549404>,  <26.986889, 34.976315, 36.134785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.640018, 34.612461, 35.549404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.036074, 34.596054, 35.495819>,  <27.273706, 34.586212, 35.463669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.036074, 34.596054, 35.495819>,  <26.640018, 34.612461, 35.549404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.036074, 34.596054, 35.495819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085134, -0.935538, -0.342813,
		-0.111271, 0.350837, -0.929803,
		0.990137, -0.041013, -0.133966,
		27.333115, 34.583752, 35.455627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.651342, 34.312904, 34.889084>,  <26.640018, 34.612461, 35.549404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.651342, 34.312904, 34.889084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.012007, 34.254105, 35.051758>,  <27.228405, 34.218822, 35.149364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.012007, 34.254105, 35.051758>,  <26.651342, 34.312904, 34.889084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.012007, 34.254105, 35.051758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004604, -0.937132, -0.348943,
		0.432415, 0.316502, -0.844301,
		0.901663, -0.147001, 0.406688,
		27.282505, 34.210003, 35.173763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.000162, 33.797512, 34.426533>,  <26.651342, 34.312904, 34.889084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.000162, 33.797512, 34.426533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162958, 33.755272, 34.789455>,  <27.260635, 33.729927, 35.007210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162958, 33.755272, 34.789455>,  <27.000162, 33.797512, 34.426533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.162958, 33.755272, 34.789455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128078, -0.990079, -0.057786,
		0.904409, -0.092687, -0.416476,
		0.406989, -0.105604, 0.907308,
		27.285055, 33.723591, 35.061649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.506355, 33.220539, 34.343594>,  <27.000162, 33.797512, 34.426533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.506355, 33.220539, 34.343594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423004, 33.250401, 34.733673>,  <27.372993, 33.268318, 34.967720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423004, 33.250401, 34.733673>,  <27.506355, 33.220539, 34.343594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.423004, 33.250401, 34.733673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040653, -0.995559, 0.084904,
		0.977203, 0.057337, 0.204419,
		-0.208379, 0.074658, 0.975195,
		27.360491, 33.272797, 35.026230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.956980, 32.668301, 34.751545>,  <27.506355, 33.220539, 34.343594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.956980, 32.668301, 34.751545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.646086, 32.777477, 34.978317>,  <27.459549, 32.842983, 35.114380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.646086, 32.777477, 34.978317>,  <27.956980, 32.668301, 34.751545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.646086, 32.777477, 34.978317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169081, -0.958474, 0.229651,
		0.606070, 0.082636, 0.791107,
		-0.777233, 0.272946, 0.566930,
		27.412916, 32.859360, 35.148396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.044191, 32.507385, 35.464249>,  <27.956980, 32.668301, 34.751545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.044191, 32.507385, 35.464249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652515, 32.507557, 35.383072>,  <27.417509, 32.507660, 35.334366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652515, 32.507557, 35.383072>,  <28.044191, 32.507385, 35.464249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.652515, 32.507557, 35.383072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049371, -0.970461, 0.236153,
		-0.196847, 0.241258, 0.950288,
		-0.979191, 0.000431, -0.202943,
		27.358759, 32.507687, 35.322189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488832, 32.028469, 35.139698>,  <28.044191, 32.507385, 35.464249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.488832, 32.028469, 35.139698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.328485, 32.184952, 34.808334>,  <27.232277, 32.278839, 34.609516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.328485, 32.184952, 34.808334>,  <27.488832, 32.028469, 35.139698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.328485, 32.184952, 34.808334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863617, 0.463125, -0.199202,
		0.305728, -0.795282, -0.523504,
		-0.400870, 0.391205, -0.828409,
		27.208225, 32.302315, 34.559811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.828440, 31.899372, 34.689804>,  <27.488832, 32.028469, 35.139698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.828440, 31.899372, 34.689804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.806549, 31.816425, 35.080498>,  <26.793415, 31.766657, 35.314915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.806549, 31.816425, 35.080498>,  <26.828440, 31.899372, 34.689804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.806549, 31.816425, 35.080498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280509, 0.941996, 0.184276,
		-0.958290, -0.263898, -0.109720,
		-0.054726, -0.207367, 0.976731,
		26.790131, 31.754215, 35.373516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.196602, 32.159462, 35.015377>,  <26.828440, 31.899372, 34.689804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.196602, 32.159462, 35.015377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524895, 32.164139, 35.243855>,  <26.721870, 32.166946, 35.380943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524895, 32.164139, 35.243855>,  <26.196602, 32.159462, 35.015377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.524895, 32.164139, 35.243855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117082, 0.982013, 0.148130,
		-0.559190, -0.188451, 0.807337,
		0.820730, 0.011692, 0.571196,
		26.771114, 32.167645, 35.415215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.170958, 32.795509, 35.539196>,  <26.196602, 32.159462, 35.015377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.170958, 32.795509, 35.539196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.559393, 32.701012, 35.525501>,  <26.792454, 32.644314, 35.517284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.559393, 32.701012, 35.525501>,  <26.170958, 32.795509, 35.539196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.559393, 32.701012, 35.525501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229000, 0.962433, -0.145884,
		0.067413, 0.133827, 0.988709,
		0.971089, -0.236249, -0.034234,
		26.850719, 32.630138, 35.515232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515606, 33.229679, 35.963688>,  <26.170958, 32.795509, 35.539196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515606, 33.229679, 35.963688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.776152, 33.108532, 35.685410>,  <26.932480, 33.035843, 35.518440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.776152, 33.108532, 35.685410>,  <26.515606, 33.229679, 35.963688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.776152, 33.108532, 35.685410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286449, 0.947188, -0.144156,
		0.702617, -0.105384, 0.703721,
		0.651365, -0.302867, -0.695698,
		26.971561, 33.017673, 35.476700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190252, 33.412975, 36.295052>,  <26.515606, 33.229679, 35.963688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.190252, 33.412975, 36.295052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243336, 33.357437, 35.902500>,  <27.275187, 33.324116, 35.666969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243336, 33.357437, 35.902500>,  <27.190252, 33.412975, 36.295052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.243336, 33.357437, 35.902500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493008, 0.868210, -0.056165,
		0.859843, -0.476375, 0.183672,
		0.132711, -0.138845, -0.981382,
		27.283150, 33.315784, 35.608086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851788, 33.629826, 36.294331>,  <27.190252, 33.412975, 36.295052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.851788, 33.629826, 36.294331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.690268, 33.662617, 35.929863>,  <27.593355, 33.682293, 35.711182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.690268, 33.662617, 35.929863>,  <27.851788, 33.629826, 36.294331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.690268, 33.662617, 35.929863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324711, 0.943973, -0.058971,
		0.855282, -0.319678, -0.407797,
		-0.403801, 0.081980, -0.911166,
		27.569128, 33.687210, 35.656513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359455, 33.809544, 35.824970>,  <27.851788, 33.629826, 36.294331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.359455, 33.809544, 35.824970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.008545, 33.925709, 35.672104>,  <27.797998, 33.995407, 35.580383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.008545, 33.925709, 35.672104>,  <28.359455, 33.809544, 35.824970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.008545, 33.925709, 35.672104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298764, 0.953538, 0.038786,
		0.375669, -0.080151, -0.923281,
		-0.877275, 0.290414, -0.382161,
		27.745361, 34.012833, 35.557457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535786, 34.396652, 35.455116>,  <28.359455, 33.809544, 35.824970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535786, 34.396652, 35.455116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.141424, 34.442039, 35.504307>,  <27.904808, 34.469273, 35.533821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.141424, 34.442039, 35.504307>,  <28.535786, 34.396652, 35.455116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.141424, 34.442039, 35.504307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143408, 0.951669, 0.271587,
		-0.086213, 0.285393, -0.954525,
		-0.985901, 0.113472, 0.122974,
		27.845654, 34.476082, 35.541199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.228962, 34.954533, 35.042820>,  <28.535786, 34.396652, 35.455116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.228962, 34.954533, 35.042820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.050299, 34.890381, 35.394905>,  <27.943100, 34.851891, 35.606155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.050299, 34.890381, 35.394905>,  <28.228962, 34.954533, 35.042820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.050299, 34.890381, 35.394905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206150, 0.938883, 0.275682,
		-0.870631, 0.304592, -0.386296,
		-0.446658, -0.160382, 0.880213,
		27.916302, 34.842266, 35.658970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712355, 35.502872, 35.341251>,  <28.228962, 34.954533, 35.042820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712355, 35.502872, 35.341251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894564, 35.344269, 35.660069>,  <28.003889, 35.249107, 35.851360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894564, 35.344269, 35.660069>,  <27.712355, 35.502872, 35.341251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894564, 35.344269, 35.660069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037854, 0.903149, 0.427655,
		-0.889418, -0.164635, 0.426416,
		0.455524, -0.396506, 0.797045,
		28.031221, 35.225319, 35.899181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.360197, 35.819016, 35.841106>,  <27.712355, 35.502872, 35.341251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.360197, 35.819016, 35.841106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706610, 35.677776, 35.982704>,  <27.914457, 35.593033, 36.067665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706610, 35.677776, 35.982704>,  <27.360197, 35.819016, 35.841106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.706610, 35.677776, 35.982704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117210, 0.831652, 0.542786,
		-0.486060, -0.428577, 0.761622,
		0.866030, -0.353096, 0.353999,
		27.966419, 35.571846, 36.088905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.538025, 35.680435, 36.543941>,  <27.360197, 35.819016, 35.841106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.538025, 35.680435, 36.543941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891462, 35.806900, 36.405777>,  <28.103525, 35.882778, 36.322880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891462, 35.806900, 36.405777>,  <27.538025, 35.680435, 36.543941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891462, 35.806900, 36.405777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110299, 0.857421, 0.502656,
		0.455082, -0.406044, 0.792483,
		0.883592, 0.316160, -0.345410,
		28.156540, 35.901749, 36.302155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930746, 35.984509, 37.026848>,  <27.538025, 35.680435, 36.543941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.930746, 35.984509, 37.026848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047754, 36.143898, 36.679134>,  <28.117960, 36.239532, 36.470509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047754, 36.143898, 36.679134>,  <27.930746, 35.984509, 37.026848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.047754, 36.143898, 36.679134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148369, 0.916947, 0.370397,
		0.944679, 0.020626, 0.327347,
		0.292520, 0.398475, -0.869281,
		28.135511, 36.263439, 36.418350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.588264, 36.429222, 37.016094>,  <27.930746, 35.984509, 37.026848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.588264, 36.429222, 37.016094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.328667, 36.567444, 36.744980>,  <28.172907, 36.650375, 36.582310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.328667, 36.567444, 36.744980>,  <28.588264, 36.429222, 37.016094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.328667, 36.567444, 36.744980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078278, 0.855842, 0.511279,
		0.756754, 0.384875, -0.528390,
		-0.648996, 0.345551, -0.677789,
		28.133968, 36.671108, 36.541641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651737, 37.106304, 36.851311>,  <28.588264, 36.429222, 37.016094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.651737, 37.106304, 36.851311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267075, 37.046803, 36.759144>,  <28.036278, 37.011101, 36.703842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267075, 37.046803, 36.759144>,  <28.651737, 37.106304, 36.851311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267075, 37.046803, 36.759144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238789, 0.867364, 0.436646,
		0.134908, 0.474925, -0.869624,
		-0.961655, -0.148750, -0.230421,
		27.978579, 37.002178, 36.690018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308128, 37.584793, 36.323261>,  <28.651737, 37.106304, 36.851311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308128, 37.584793, 36.323261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103901, 37.444275, 36.637180>,  <27.981365, 37.359962, 36.825531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103901, 37.444275, 36.637180>,  <28.308128, 37.584793, 36.323261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.103901, 37.444275, 36.637180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161489, 0.857312, 0.488812,
		-0.844536, 0.376309, -0.380987,
		-0.510569, -0.351294, 0.784800,
		27.950729, 37.338886, 36.872620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828716, 38.019604, 36.586613>,  <28.308128, 37.584793, 36.323261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828716, 38.019604, 36.586613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.873508, 37.784111, 36.906826>,  <27.900383, 37.642815, 37.098953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.873508, 37.784111, 36.906826>,  <27.828716, 38.019604, 36.586613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.873508, 37.784111, 36.906826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046457, 0.801621, 0.596024,
		-0.992624, -0.103934, 0.062415,
		0.111981, -0.588728, 0.800537,
		27.907103, 37.607494, 37.146988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.331409, 38.100178, 37.055248>,  <27.828716, 38.019604, 36.586613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.331409, 38.100178, 37.055248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.623594, 37.949139, 37.282875>,  <27.798906, 37.858517, 37.419453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.623594, 37.949139, 37.282875>,  <27.331409, 38.100178, 37.055248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.623594, 37.949139, 37.282875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114043, 0.754113, 0.646767,
		-0.673362, -0.537339, 0.507790,
		0.730464, -0.377599, 0.569071,
		27.842733, 37.835857, 37.453598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.069931, 38.159023, 37.774719>,  <27.331409, 38.100178, 37.055248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.069931, 38.159023, 37.774719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461891, 38.128632, 37.848495>,  <27.697067, 38.110397, 37.892761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461891, 38.128632, 37.848495>,  <27.069931, 38.159023, 37.774719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.461891, 38.128632, 37.848495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072757, 0.724810, 0.685097,
		-0.185738, -0.684747, 0.704715,
		0.979902, -0.075975, 0.184445,
		27.755861, 38.105839, 37.903828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.205830, 38.175304, 38.537251>,  <27.069931, 38.159023, 37.774719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.205830, 38.175304, 38.537251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553152, 38.270939, 38.363407>,  <27.761545, 38.328320, 38.259102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553152, 38.270939, 38.363407>,  <27.205830, 38.175304, 38.537251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.553152, 38.270939, 38.363407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117697, 0.751839, 0.648756,
		0.481862, -0.614471, 0.624687,
		0.868307, 0.239087, -0.434604,
		27.813644, 38.342667, 38.233025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.590538, 38.228371, 39.120819>,  <27.205830, 38.175304, 38.537251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.590538, 38.228371, 39.120819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825527, 38.411232, 38.853722>,  <27.966520, 38.520950, 38.693462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825527, 38.411232, 38.853722>,  <27.590538, 38.228371, 39.120819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825527, 38.411232, 38.853722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177121, 0.732504, 0.657317,
		0.789621, -0.504429, 0.349356,
		0.587474, 0.457153, -0.667746,
		28.001770, 38.548378, 38.653397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302982, 38.374226, 39.449566>,  <27.590538, 38.228371, 39.120819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302982, 38.374226, 39.449566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219355, 38.614773, 39.141113>,  <28.169178, 38.759102, 38.956039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219355, 38.614773, 39.141113>,  <28.302982, 38.374226, 39.449566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219355, 38.614773, 39.141113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275415, 0.792850, 0.543631,
		0.938316, -0.098726, -0.331385,
		-0.209069, 0.601366, -0.771135,
		28.156633, 38.795181, 38.909771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787931, 38.434986, 38.922935>,  <28.302982, 38.374226, 39.449566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.787931, 38.434986, 38.922935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725544, 38.775837, 38.723118>,  <28.688112, 38.980347, 38.603226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725544, 38.775837, 38.723118>,  <28.787931, 38.434986, 38.922935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.725544, 38.775837, 38.723118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205441, 0.466691, 0.860229,
		0.966161, 0.236796, 0.102274,
		-0.155968, 0.852131, -0.499547,
		28.678753, 39.031475, 38.573254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214302, 38.985771, 39.235409>,  <28.787931, 38.434986, 38.922935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214302, 38.985771, 39.235409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.899063, 39.145245, 39.047813>,  <28.709919, 39.240929, 38.935257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.899063, 39.145245, 39.047813>,  <29.214302, 38.985771, 39.235409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.899063, 39.145245, 39.047813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154476, 0.609426, 0.777648,
		0.595852, 0.685311, -0.418699,
		-0.788097, 0.398684, -0.468992,
		28.662634, 39.264851, 38.907116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339275, 39.716656, 39.241234>,  <29.214302, 38.985771, 39.235409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339275, 39.716656, 39.241234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949631, 39.648945, 39.181297>,  <28.715843, 39.608318, 39.145336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949631, 39.648945, 39.181297>,  <29.339275, 39.716656, 39.241234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.949631, 39.648945, 39.181297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214710, 0.485343, 0.847550,
		-0.070748, 0.857781, -0.509124,
		-0.974112, -0.169276, -0.149837,
		28.657396, 39.598164, 39.136345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972960, 40.309319, 39.315350>,  <29.339275, 39.716656, 39.241234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972960, 40.309319, 39.315350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707314, 40.023155, 39.402203>,  <28.547926, 39.851460, 39.454315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707314, 40.023155, 39.402203>,  <28.972960, 40.309319, 39.315350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707314, 40.023155, 39.402203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238837, 0.478225, 0.845138,
		-0.708457, 0.509406, -0.488461,
		-0.664113, -0.715406, 0.217137,
		28.508080, 39.808533, 39.467342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.348242, 40.576500, 39.625134>,  <28.972960, 40.309319, 39.315350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.348242, 40.576500, 39.625134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.288242, 40.193691, 39.724419>,  <28.252243, 39.964005, 39.783989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.288242, 40.193691, 39.724419>,  <28.348242, 40.576500, 39.625134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288242, 40.193691, 39.724419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557677, 0.289201, 0.778048,
		-0.816392, -0.021716, -0.577089,
		-0.149999, -0.957022, 0.248212,
		28.243242, 39.906586, 39.798882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.631533, 40.401684, 39.727535>,  <28.348242, 40.576500, 39.625134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.631533, 40.401684, 39.727535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.845934, 40.188332, 39.989288>,  <27.974575, 40.060322, 40.146339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.845934, 40.188332, 39.989288>,  <27.631533, 40.401684, 39.727535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.845934, 40.188332, 39.989288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569932, 0.343214, 0.746580,
		-0.622800, -0.773119, -0.120026,
		0.536001, -0.533377, 0.654379,
		28.006735, 40.028320, 40.185600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.021685, 40.052490, 40.073635>,  <27.631533, 40.401684, 39.727535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.021685, 40.052490, 40.073635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366741, 40.100636, 40.270153>,  <27.573774, 40.129520, 40.388062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366741, 40.100636, 40.270153>,  <27.021685, 40.052490, 40.073635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.366741, 40.100636, 40.270153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476345, 0.520014, 0.709000,
		-0.170144, -0.845636, 0.505916,
		0.862639, 0.120359, 0.491292,
		27.625532, 40.136742, 40.417542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.406818, 39.546967, 39.650173>,  <27.021685, 40.052490, 40.073635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.406818, 39.546967, 39.650173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737556, 39.719891, 39.506264>,  <27.935999, 39.823643, 39.419918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737556, 39.719891, 39.506264>,  <27.406818, 39.546967, 39.650173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.737556, 39.719891, 39.506264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053204, -0.696927, -0.715166,
		-0.559905, 0.572191, -0.599252,
		0.826846, 0.432308, -0.359770,
		27.985611, 39.849583, 39.398331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.368881, 39.477016, 39.013790>,  <27.406818, 39.546967, 39.650173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.368881, 39.477016, 39.013790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.764959, 39.526482, 39.039764>,  <28.002607, 39.556160, 39.055347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.764959, 39.526482, 39.039764>,  <27.368881, 39.477016, 39.013790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764959, 39.526482, 39.039764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121604, -0.534527, -0.836357,
		-0.068720, 0.836054, -0.544326,
		0.990197, 0.123667, 0.064934,
		28.062019, 39.563583, 39.059246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.551342, 39.690601, 38.383442>,  <27.368881, 39.477016, 39.013790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.551342, 39.690601, 38.383442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892950, 39.564960, 38.549328>,  <28.097916, 39.489574, 38.648861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892950, 39.564960, 38.549328>,  <27.551342, 39.690601, 38.383442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892950, 39.564960, 38.549328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184908, -0.561838, -0.806317,
		0.486269, 0.765295, -0.421741,
		0.854020, -0.314104, 0.414714,
		28.149157, 39.470730, 38.673740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925375, 39.492634, 37.787384>,  <27.551342, 39.690601, 38.383442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925375, 39.492634, 37.787384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.089653, 39.302578, 38.098660>,  <28.188219, 39.188545, 38.285423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.089653, 39.302578, 38.098660>,  <27.925375, 39.492634, 37.787384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.089653, 39.302578, 38.098660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197983, -0.786650, -0.584794,
		0.890018, 0.394240, -0.229004,
		0.410695, -0.475138, 0.778186,
		28.212862, 39.160038, 38.332115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.543873, 39.209469, 37.713970>,  <27.925375, 39.492634, 37.787384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.543873, 39.209469, 37.713970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381252, 38.994194, 38.009285>,  <28.283680, 38.865028, 38.186474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381252, 38.994194, 38.009285>,  <28.543873, 39.209469, 37.713970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381252, 38.994194, 38.009285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217292, -0.841856, -0.494028,
		0.887411, -0.040425, 0.459203,
		-0.406553, -0.538187, 0.738288,
		28.259287, 38.832737, 38.230770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.981943, 38.608719, 37.660885>,  <28.543873, 39.209469, 37.713970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.981943, 38.608719, 37.660885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664000, 38.517471, 37.885796>,  <28.473232, 38.462723, 38.020744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664000, 38.517471, 37.885796>,  <28.981943, 38.608719, 37.660885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.664000, 38.517471, 37.885796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051722, -0.897799, -0.437358,
		0.604585, -0.376721, 0.701825,
		-0.794860, -0.228120, 0.562280,
		28.425541, 38.449036, 38.054482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.024603, 37.880802, 37.920437>,  <28.981943, 38.608719, 37.660885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.024603, 37.880802, 37.920437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.630037, 37.944588, 37.936253>,  <28.393299, 37.982857, 37.945740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.630037, 37.944588, 37.936253>,  <29.024603, 37.880802, 37.920437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.630037, 37.944588, 37.936253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160646, -0.885801, -0.435374,
		-0.034402, -0.435810, 0.899381,
		-0.986413, 0.159460, 0.039537,
		28.334114, 37.992424, 37.948112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.655163, 37.315800, 38.265472>,  <29.024603, 37.880802, 37.920437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.655163, 37.315800, 38.265472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.416161, 37.502098, 38.004375>,  <28.272758, 37.613876, 37.847717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.416161, 37.502098, 38.004375>,  <28.655163, 37.315800, 38.265472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.416161, 37.502098, 38.004375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171112, -0.869337, -0.463653,
		-0.783393, -0.165344, 0.599130,
		-0.597508, 0.465741, -0.652740,
		28.236908, 37.641819, 37.808552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.315554, 36.731133, 38.078922>,  <28.655163, 37.315800, 38.265472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.315554, 36.731133, 38.078922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213362, 37.010208, 37.811203>,  <28.152046, 37.177654, 37.650570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213362, 37.010208, 37.811203>,  <28.315554, 36.731133, 38.078922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213362, 37.010208, 37.811203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070392, -0.703861, -0.706841,
		-0.964249, -0.133469, 0.228934,
		-0.255479, 0.697685, -0.669302,
		28.136719, 37.219513, 37.610413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.715389, 36.459545, 37.865242>,  <28.315554, 36.731133, 38.078922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.715389, 36.459545, 37.865242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.875336, 36.717407, 37.604618>,  <27.971304, 36.872124, 37.448242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.875336, 36.717407, 37.604618>,  <27.715389, 36.459545, 37.865242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.875336, 36.717407, 37.604618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073035, -0.686194, -0.723743,
		-0.913658, 0.336988, -0.227305,
		0.399868, 0.644652, -0.651559,
		27.995296, 36.910805, 37.409149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.158936, 36.492882, 37.292889>,  <27.715389, 36.459545, 37.865242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.158936, 36.492882, 37.292889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.529720, 36.580990, 37.171417>,  <27.752192, 36.633854, 37.098534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.529720, 36.580990, 37.171417>,  <27.158936, 36.492882, 37.292889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.529720, 36.580990, 37.171417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150001, -0.524338, -0.838194,
		-0.343858, 0.822528, -0.453001,
		0.926964, 0.220269, -0.303677,
		27.807810, 36.647072, 37.080315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128082, 36.824566, 36.664066>,  <27.158936, 36.492882, 37.292889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.128082, 36.824566, 36.664066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468126, 36.614464, 36.679142>,  <27.672152, 36.488403, 36.688187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468126, 36.614464, 36.679142>,  <27.128082, 36.824566, 36.664066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.468126, 36.614464, 36.679142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267403, -0.492222, -0.828380,
		0.453663, 0.694135, -0.558897,
		0.850109, -0.525256, 0.037689,
		27.723160, 36.456886, 36.690449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.634382, 37.350147, 36.772099>,  <27.128082, 36.824566, 36.664066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.634382, 37.350147, 36.772099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350479, 37.380932, 37.052189>,  <26.180138, 37.399403, 37.220245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350479, 37.380932, 37.052189>,  <26.634382, 37.350147, 36.772099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.350479, 37.380932, 37.052189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607178, 0.570843, 0.552696,
		-0.357183, 0.817444, -0.451892,
		-0.709758, 0.076965, 0.700229,
		26.137552, 37.404022, 37.262257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.049553, 37.793861, 36.878796>,  <26.634382, 37.350147, 36.772099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.049553, 37.793861, 36.878796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284941, 37.904358, 37.182743>,  <26.426172, 37.970657, 37.365112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284941, 37.904358, 37.182743>,  <26.049553, 37.793861, 36.878796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.284941, 37.904358, 37.182743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785989, 0.415781, 0.457545,
		-0.189543, -0.866496, 0.461799,
		0.588468, 0.276244, 0.759864,
		26.461481, 37.987232, 37.410702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.620365, 38.253819, 37.346836>,  <26.049553, 37.793861, 36.878796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.620365, 38.253819, 37.346836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.447388, 38.609344, 37.286179>,  <25.343601, 38.822659, 37.249783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.447388, 38.609344, 37.286179>,  <25.620365, 38.253819, 37.346836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.447388, 38.609344, 37.286179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240445, -0.275773, -0.930664,
		-0.869009, -0.365999, 0.332968,
		-0.432446, 0.888816, -0.151647,
		25.317654, 38.875988, 37.240685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.940598, 38.182766, 37.206387>,  <25.620365, 38.253819, 37.346836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.940598, 38.182766, 37.206387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.040665, 38.528568, 37.032009>,  <25.100706, 38.736050, 36.927383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.040665, 38.528568, 37.032009>,  <24.940598, 38.182766, 37.206387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.040665, 38.528568, 37.032009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278573, -0.366955, -0.887548,
		-0.927261, 0.343480, 0.149027,
		0.250169, 0.864503, -0.435947,
		25.115715, 38.787918, 36.901226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.296448, 38.370728, 36.740753>,  <24.940598, 38.182766, 37.206387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.296448, 38.370728, 36.740753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.665272, 38.504147, 36.662212>,  <24.886566, 38.584198, 36.615089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.665272, 38.504147, 36.662212>,  <24.296448, 38.370728, 36.740753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.665272, 38.504147, 36.662212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080542, -0.330840, -0.940243,
		-0.378573, 0.882775, -0.278190,
		0.922060, 0.333545, -0.196348,
		24.941891, 38.604210, 36.603310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.202787, 38.836010, 36.145187>,  <24.296448, 38.370728, 36.740753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.202787, 38.836010, 36.145187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.563793, 38.666515, 36.175949>,  <24.780396, 38.564819, 36.194408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.563793, 38.666515, 36.175949>,  <24.202787, 38.836010, 36.145187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.563793, 38.666515, 36.175949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127259, -0.433005, -0.892363,
		0.411430, 0.795583, -0.444718,
		0.902514, -0.423739, 0.076906,
		24.834547, 38.539394, 36.199020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.733217, 39.157810, 35.599834>,  <24.202787, 38.836010, 36.145187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.733217, 39.157810, 35.599834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.748257, 38.769844, 35.696049>,  <24.757280, 38.537064, 35.753777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.748257, 38.769844, 35.696049>,  <24.733217, 39.157810, 35.599834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.748257, 38.769844, 35.696049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284961, -0.241120, -0.927717,
		0.957801, -0.033661, -0.285453,
		0.037600, -0.969911, 0.240537,
		24.759537, 38.478870, 35.768211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.784098, 38.810738, 34.931267>,  <24.733217, 39.157810, 35.599834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.784098, 38.810738, 34.931267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.676521, 38.523811, 35.188370>,  <24.611975, 38.351658, 35.342632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.676521, 38.523811, 35.188370>,  <24.784098, 38.810738, 34.931267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.676521, 38.523811, 35.188370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357777, -0.545190, -0.758131,
		0.894240, -0.433856, -0.110013,
		-0.268942, -0.717312, 0.642755,
		24.595839, 38.308617, 35.381195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.132364, 38.061123, 34.840755>,  <24.784098, 38.810738, 34.931267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.132364, 38.061123, 34.840755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.752842, 38.063705, 34.967072>,  <24.525127, 38.065254, 35.042862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.752842, 38.063705, 34.967072>,  <25.132364, 38.061123, 34.840755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.752842, 38.063705, 34.967072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271110, -0.529634, -0.803733,
		0.162061, -0.848202, 0.504271,
		-0.948807, 0.006459, 0.315789,
		24.468199, 38.065643, 35.061810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.720984, 37.357151, 34.875484>,  <25.132364, 38.061123, 34.840755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.720984, 37.357151, 34.875484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.461544, 37.659687, 34.841389>,  <24.305880, 37.841209, 34.820930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.461544, 37.659687, 34.841389>,  <24.720984, 37.357151, 34.875484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.461544, 37.659687, 34.841389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481020, -0.494117, -0.724202,
		-0.589866, -0.428711, 0.684299,
		-0.648597, 0.756344, -0.085244,
		24.266964, 37.886589, 34.815815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.682560, 37.264751, 34.152466>,  <24.720984, 37.357151, 34.875484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.682560, 37.264751, 34.152466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.567812, 37.574318, 33.926628>,  <24.498962, 37.760056, 33.791126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.567812, 37.574318, 33.926628>,  <24.682560, 37.264751, 34.152466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.567812, 37.574318, 33.926628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944516, 0.130072, -0.301615,
		-0.159986, -0.619790, -0.768287,
		-0.286870, 0.773913, -0.564592,
		24.481750, 37.806492, 33.757252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.208439, 37.717712, 33.797241>,  <24.682560, 37.264751, 34.152466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.208439, 37.717712, 33.797241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.038429, 37.824028, 33.451130>,  <24.936422, 37.887817, 33.243462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.038429, 37.824028, 33.451130>,  <25.208439, 37.717712, 33.797241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.038429, 37.824028, 33.451130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794086, 0.568327, -0.215480,
		0.434489, -0.778690, -0.452616,
		-0.425026, 0.265793, -0.865279,
		24.910921, 37.903767, 33.191547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.790533, 37.680725, 34.253155>,  <25.208439, 37.717712, 33.797241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.790533, 37.680725, 34.253155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.922962, 37.888569, 34.568218>,  <26.002419, 38.013275, 34.757256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.922962, 37.888569, 34.568218>,  <25.790533, 37.680725, 34.253155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.922962, 37.888569, 34.568218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612506, 0.516635, -0.598268,
		-0.717794, 0.680514, -0.147218,
		0.331071, 0.519605, 0.787656,
		26.022284, 38.044449, 34.804516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.615900, 38.321892, 34.083588>,  <25.790533, 37.680725, 34.253155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.615900, 38.321892, 34.083588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.935104, 38.315720, 34.324566>,  <26.126627, 38.312016, 34.469151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.935104, 38.315720, 34.324566>,  <25.615900, 38.321892, 34.083588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.935104, 38.315720, 34.324566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492536, 0.592731, -0.637243,
		-0.347252, 0.805253, 0.480608,
		0.798013, -0.015433, 0.602443,
		26.174509, 38.311089, 34.505299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.789886, 39.047253, 34.273899>,  <25.615900, 38.321892, 34.083588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.789886, 39.047253, 34.273899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.114368, 38.816998, 34.315071>,  <26.309057, 38.678844, 34.339775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.114368, 38.816998, 34.315071>,  <25.789886, 39.047253, 34.273899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.114368, 38.816998, 34.315071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516348, 0.622495, -0.588119,
		0.274469, 0.530231, 0.802198,
		0.811203, -0.575634, 0.102928,
		26.357729, 38.644306, 34.345951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.342079, 39.501774, 34.464443>,  <25.789886, 39.047253, 34.273899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.342079, 39.501774, 34.464443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520206, 39.177326, 34.312767>,  <26.627083, 38.982658, 34.221764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520206, 39.177326, 34.312767>,  <26.342079, 39.501774, 34.464443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.520206, 39.177326, 34.312767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487784, 0.574907, -0.656924,
		0.750838, 0.107579, 0.651666,
		0.445318, -0.811116, -0.379187,
		26.653803, 38.933990, 34.199013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.989449, 39.653576, 34.511139>,  <26.342079, 39.501774, 34.464443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.989449, 39.653576, 34.511139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.953300, 39.383293, 34.218494>,  <26.931612, 39.221123, 34.042908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.953300, 39.383293, 34.218494>,  <26.989449, 39.653576, 34.511139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.953300, 39.383293, 34.218494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607224, 0.544885, -0.578256,
		0.789375, -0.496507, 0.361065,
		-0.090369, -0.675708, -0.731609,
		26.926189, 39.180580, 33.999012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.617073, 39.477726, 34.407158>,  <26.989449, 39.653576, 34.511139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.617073, 39.477726, 34.407158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465380, 39.317978, 34.073288>,  <27.374363, 39.222130, 33.872967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465380, 39.317978, 34.073288>,  <27.617073, 39.477726, 34.407158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.465380, 39.317978, 34.073288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707823, 0.455781, -0.539675,
		0.595959, -0.795468, 0.109833,
		-0.379235, -0.399366, -0.834678,
		27.351608, 39.198170, 33.822884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.112492, 39.471642, 33.969170>,  <27.617073, 39.477726, 34.407158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.112492, 39.471642, 33.969170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.848755, 39.391518, 33.679302>,  <27.690514, 39.343445, 33.505383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.848755, 39.391518, 33.679302>,  <28.112492, 39.471642, 33.969170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.848755, 39.391518, 33.679302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632663, 0.372942, -0.678713,
		0.406213, -0.905975, -0.119167,
		-0.659339, -0.200310, -0.724671,
		27.650953, 39.331425, 33.461903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485373, 39.152908, 33.375275>,  <28.112492, 39.471642, 33.969170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485373, 39.152908, 33.375275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165051, 39.327660, 33.211399>,  <27.972857, 39.432510, 33.113071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165051, 39.327660, 33.211399>,  <28.485373, 39.152908, 33.375275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.165051, 39.327660, 33.211399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578330, 0.386212, -0.718592,
		-0.155711, -0.812389, -0.561942,
		-0.800805, 0.436880, -0.409691,
		27.924809, 39.458725, 33.088493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570021, 39.083923, 32.682106>,  <28.485373, 39.152908, 33.375275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.570021, 39.083923, 32.682106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273726, 39.352604, 32.686569>,  <28.095949, 39.513813, 32.689247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273726, 39.352604, 32.686569>,  <28.570021, 39.083923, 32.682106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.273726, 39.352604, 32.686569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334492, 0.383165, -0.860988,
		-0.582602, -0.634034, -0.508504,
		-0.740736, 0.671703, 0.011154,
		28.051504, 39.554115, 32.689915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.173449, 39.091244, 32.040096>,  <28.570021, 39.083923, 32.682106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.173449, 39.091244, 32.040096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165792, 39.455761, 32.204624>,  <28.161200, 39.674469, 32.303341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165792, 39.455761, 32.204624>,  <28.173449, 39.091244, 32.040096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.165792, 39.455761, 32.204624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247816, 0.402882, -0.881064,
		-0.968618, 0.085068, -0.233544,
		-0.019140, 0.911290, 0.411320,
		28.160049, 39.729149, 32.328022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930889, 39.457466, 31.552704>,  <28.173449, 39.091244, 32.040096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.930889, 39.457466, 31.552704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.090891, 39.738468, 31.788157>,  <28.186892, 39.907070, 31.929428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.090891, 39.738468, 31.788157>,  <27.930889, 39.457466, 31.552704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.090891, 39.738468, 31.788157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231787, 0.543832, -0.806549,
		-0.886719, 0.459060, 0.054704,
		0.400004, 0.702503, 0.588630,
		28.210892, 39.949219, 31.964746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.763453, 39.959641, 31.188354>,  <27.930889, 39.457466, 31.552704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.763453, 39.959641, 31.188354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.062710, 40.051701, 31.437292>,  <28.242264, 40.106937, 31.586655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.062710, 40.051701, 31.437292>,  <27.763453, 39.959641, 31.188354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.062710, 40.051701, 31.437292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423900, 0.555793, -0.715124,
		-0.510478, 0.798828, 0.318255,
		0.748145, 0.230147, 0.622343,
		28.287153, 40.120743, 31.623995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.914181, 40.578518, 30.990795>,  <27.763453, 39.959641, 31.188354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.914181, 40.578518, 30.990795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.243633, 40.459949, 31.184193>,  <28.441305, 40.388809, 31.300232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.243633, 40.459949, 31.184193>,  <27.914181, 40.578518, 30.990795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.243633, 40.459949, 31.184193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566945, 0.408834, -0.715142,
		0.014311, 0.863129, 0.504781,
		0.823632, -0.296418, 0.483495,
		28.490723, 40.371025, 31.329241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.340185, 41.174191, 31.041838>,  <27.914181, 40.578518, 30.990795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.340185, 41.174191, 31.041838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.574038, 40.853531, 31.091736>,  <28.714350, 40.661133, 31.121675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.574038, 40.853531, 31.091736>,  <28.340185, 41.174191, 31.041838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.574038, 40.853531, 31.091736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663684, 0.384138, -0.641842,
		0.466614, 0.458033, 0.756622,
		0.584632, -0.801651, 0.124745,
		28.749428, 40.613037, 31.129160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059107, 41.468510, 31.048973>,  <28.340185, 41.174191, 31.041838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059107, 41.468510, 31.048973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112373, 41.077713, 30.982330>,  <29.144333, 40.843235, 30.942345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112373, 41.077713, 30.982330>,  <29.059107, 41.468510, 31.048973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.112373, 41.077713, 30.982330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821895, 0.202803, -0.532316,
		0.553855, -0.066046, 0.829989,
		0.133167, -0.976990, -0.166606,
		29.152323, 40.784615, 30.932348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.697548, 41.437340, 31.194145>,  <29.059107, 41.468510, 31.048973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.697548, 41.437340, 31.194145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592997, 41.115582, 30.980743>,  <29.530266, 40.922527, 30.852703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592997, 41.115582, 30.980743>,  <29.697548, 41.437340, 31.194145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592997, 41.115582, 30.980743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759252, 0.169947, -0.628215,
		0.596002, -0.569266, 0.566320,
		-0.261377, -0.804397, -0.533505,
		29.514584, 40.874264, 30.820692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244013, 40.930912, 31.333321>,  <29.697548, 41.437340, 31.194145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.244013, 40.930912, 31.333321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070353, 40.851101, 30.981934>,  <29.966156, 40.803215, 30.771101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070353, 40.851101, 30.981934>,  <30.244013, 40.930912, 31.333321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070353, 40.851101, 30.981934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899684, -0.046642, -0.434043,
		0.045631, -0.978781, 0.199763,
		-0.434150, -0.199530, -0.878465,
		29.940107, 40.791241, 30.718393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791698, 40.498688, 31.042452>,  <30.244013, 40.930912, 31.333321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791698, 40.498688, 31.042452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543283, 40.618263, 30.752638>,  <30.394234, 40.690006, 30.578749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543283, 40.618263, 30.752638>,  <30.791698, 40.498688, 31.042452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543283, 40.618263, 30.752638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755431, -0.018079, -0.654979,
		-0.208896, -0.954101, -0.214598,
		-0.621037, 0.298936, -0.724534,
		30.356972, 40.707943, 30.535278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985609, 40.154041, 30.426968>,  <30.791698, 40.498688, 31.042452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985609, 40.154041, 30.426968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773468, 40.467449, 30.297457>,  <30.646183, 40.655495, 30.219749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773468, 40.467449, 30.297457>,  <30.985609, 40.154041, 30.426968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773468, 40.467449, 30.297457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687719, 0.174280, -0.704747,
		-0.495752, -0.596431, -0.631268,
		-0.530351, 0.783516, -0.323777,
		30.614363, 40.702503, 30.200323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018206, 40.162556, 29.698048>,  <30.985609, 40.154041, 30.426968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018206, 40.162556, 29.698048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913469, 40.542103, 29.768574>,  <30.850628, 40.769833, 29.810890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913469, 40.542103, 29.768574>,  <31.018206, 40.162556, 29.698048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.913469, 40.542103, 29.768574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753475, 0.315143, -0.577027,
		-0.603089, -0.018237, -0.797466,
		-0.261839, 0.948869, 0.176318,
		30.834917, 40.826763, 29.821468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077110, 40.495064, 29.032431>,  <31.018206, 40.162556, 29.698048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077110, 40.495064, 29.032431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090431, 40.813789, 29.273756>,  <31.098423, 41.005024, 29.418550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090431, 40.813789, 29.273756>,  <31.077110, 40.495064, 29.032431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090431, 40.813789, 29.273756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757333, 0.373787, -0.535472,
		-0.652180, 0.474739, -0.591003,
		0.033301, 0.796810, 0.603312,
		31.100422, 41.052834, 29.454750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201698, 41.051029, 28.490042>,  <31.077110, 40.495064, 29.032431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201698, 41.051029, 28.490042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307024, 41.132767, 28.867170>,  <31.370220, 41.181808, 29.093447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307024, 41.132767, 28.867170>,  <31.201698, 41.051029, 28.490042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307024, 41.132767, 28.867170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849887, 0.413285, -0.326936,
		-0.456461, 0.887377, -0.064845,
		0.263316, 0.204345, 0.942819,
		31.386019, 41.194069, 29.150017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510332, 41.653519, 28.342396>,  <31.201698, 41.051029, 28.490042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510332, 41.653519, 28.342396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617105, 41.518517, 28.703468>,  <31.681170, 41.437515, 28.920113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617105, 41.518517, 28.703468>,  <31.510332, 41.653519, 28.342396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617105, 41.518517, 28.703468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947412, 0.263464, -0.181650,
		-0.176516, 0.903701, 0.390086,
		0.266931, -0.337508, 0.902683,
		31.697186, 41.417263, 28.974274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922771, 42.131340, 28.488436>,  <31.510332, 41.653519, 28.342396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922771, 42.131340, 28.488436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003071, 41.859467, 28.770636>,  <32.051250, 41.696342, 28.939957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003071, 41.859467, 28.770636>,  <31.922771, 42.131340, 28.488436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003071, 41.859467, 28.770636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904227, 0.405646, 0.133506,
		-0.376925, 0.611132, 0.696021,
		0.200749, -0.679683, 0.705501,
		32.063297, 41.655563, 28.982286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369980, 42.445812, 29.072104>,  <31.922771, 42.131340, 28.488436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369980, 42.445812, 29.072104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451591, 42.054588, 29.088972>,  <32.500557, 41.819855, 29.099094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451591, 42.054588, 29.088972>,  <32.369980, 42.445812, 29.072104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451591, 42.054588, 29.088972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978658, 0.204854, 0.016253,
		-0.024536, 0.037956, 0.998978,
		0.204027, -0.978057, 0.042173,
		32.512798, 41.761173, 29.101624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964462, 42.278179, 29.605444>,  <32.369980, 42.445812, 29.072104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964462, 42.278179, 29.605444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942974, 41.985310, 29.333847>,  <32.930080, 41.809586, 29.170889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942974, 41.985310, 29.333847>,  <32.964462, 42.278179, 29.605444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942974, 41.985310, 29.333847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942017, 0.188398, -0.277686,
		0.331236, -0.654542, 0.679601,
		-0.053722, -0.732175, -0.678994,
		32.926857, 41.765656, 29.130148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650700, 42.051422, 29.590765>,  <32.964462, 42.278179, 29.605444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650700, 42.051422, 29.590765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499283, 41.942497, 29.236916>,  <33.408432, 41.877144, 29.024607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499283, 41.942497, 29.236916>,  <33.650700, 42.051422, 29.590765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499283, 41.942497, 29.236916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885615, 0.171273, -0.431686,
		0.269064, -0.946844, 0.176330,
		-0.378538, -0.272311, -0.884622,
		33.385723, 41.860806, 28.971529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170612, 41.713345, 29.288212>,  <33.650700, 42.051422, 29.590765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170612, 41.713345, 29.288212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917332, 41.782589, 28.986460>,  <33.765362, 41.824135, 28.805408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917332, 41.782589, 28.986460>,  <34.170612, 41.713345, 29.288212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917332, 41.782589, 28.986460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767340, 0.267872, -0.582610,
		0.101222, -0.947775, -0.302451,
		-0.633201, 0.173110, -0.754380,
		33.727371, 41.834522, 28.760145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408722, 41.352005, 28.662628>,  <34.170612, 41.713345, 29.288212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408722, 41.352005, 28.662628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185337, 41.661354, 28.542620>,  <34.051308, 41.846962, 28.470613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185337, 41.661354, 28.542620>,  <34.408722, 41.352005, 28.662628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185337, 41.661354, 28.542620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678057, 0.217231, -0.702175,
		-0.477869, -0.595571, -0.645706,
		-0.558462, 0.773373, -0.300023,
		34.017799, 41.893368, 28.452612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614883, 41.369255, 28.068731>,  <34.408722, 41.352005, 28.662628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614883, 41.369255, 28.068731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444000, 41.729187, 28.104036>,  <34.341469, 41.945148, 28.125219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444000, 41.729187, 28.104036>,  <34.614883, 41.369255, 28.068731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444000, 41.729187, 28.104036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613158, 0.360074, -0.703125,
		-0.664477, -0.246261, -0.705568,
		-0.427209, 0.899834, 0.088264,
		34.315838, 41.999138, 28.130516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427181, 41.614548, 27.324770>,  <34.614883, 41.369255, 28.068731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427181, 41.614548, 27.324770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447655, 41.940449, 27.555788>,  <34.459938, 42.135990, 27.694399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447655, 41.940449, 27.555788>,  <34.427181, 41.614548, 27.324770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447655, 41.940449, 27.555788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557465, 0.456515, -0.693417,
		-0.828621, 0.357457, -0.430827,
		0.051188, 0.814751, 0.577547,
		34.463013, 42.184875, 27.729052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477066, 42.179028, 26.845425>,  <34.427181, 41.614548, 27.324770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477066, 42.179028, 26.845425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618649, 42.325893, 27.189495>,  <34.703598, 42.414013, 27.395937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618649, 42.325893, 27.189495>,  <34.477066, 42.179028, 26.845425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618649, 42.325893, 27.189495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703310, 0.501760, -0.503580,
		-0.616501, 0.783214, -0.080634,
		0.353952, 0.367168, 0.860178,
		34.724834, 42.436043, 27.447548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357258, 42.897354, 26.771946>,  <34.477066, 42.179028, 26.845425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357258, 42.897354, 26.771946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643826, 42.835018, 27.043964>,  <34.815765, 42.797619, 27.207176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643826, 42.835018, 27.043964>,  <34.357258, 42.897354, 26.771946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643826, 42.835018, 27.043964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650110, 0.502847, -0.569650,
		-0.253187, 0.850212, 0.461558,
		0.716417, -0.155835, 0.680046,
		34.858749, 42.788269, 27.247978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798225, 43.449406, 26.851017>,  <34.357258, 42.897354, 26.771946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798225, 43.449406, 26.851017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.061184, 43.199097, 27.018940>,  <35.218960, 43.048912, 27.119694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.061184, 43.199097, 27.018940>,  <34.798225, 43.449406, 26.851017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061184, 43.199097, 27.018940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753142, 0.527482, -0.393115,
		0.024561, 0.574607, 0.818061,
		0.657399, -0.625772, 0.419805,
		35.258404, 43.011364, 27.144882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361851, 43.860832, 27.112431>,  <34.798225, 43.449406, 26.851017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361851, 43.860832, 27.112431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549240, 43.508015, 27.132547>,  <35.661674, 43.296326, 27.144617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549240, 43.508015, 27.132547>,  <35.361851, 43.860832, 27.112431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549240, 43.508015, 27.132547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829920, 0.419843, -0.367376,
		0.302928, 0.213843, 0.928712,
		0.468474, -0.882045, 0.050290,
		35.689781, 43.243401, 27.147635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962524, 43.946491, 27.562847>,  <35.361851, 43.860832, 27.112431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962524, 43.946491, 27.562847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033916, 43.627441, 27.332392>,  <36.076752, 43.436012, 27.194118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033916, 43.627441, 27.332392>,  <35.962524, 43.946491, 27.562847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033916, 43.627441, 27.332392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953851, 0.283963, -0.097644,
		0.241486, -0.532124, 0.811498,
		0.178476, -0.797628, -0.576139,
		36.087460, 43.388153, 27.159550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612797, 43.821182, 27.756893>,  <35.962524, 43.946491, 27.562847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612797, 43.821182, 27.756893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542046, 43.654007, 27.400457>,  <36.499596, 43.553703, 27.186596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542046, 43.654007, 27.400457>,  <36.612797, 43.821182, 27.756893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542046, 43.654007, 27.400457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826047, 0.429210, -0.365276,
		0.535127, -0.800692, 0.269316,
		-0.176880, -0.417936, -0.891091,
		36.488983, 43.528625, 27.133131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268688, 43.551479, 27.536402>,  <36.612797, 43.821182, 27.756893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268688, 43.551479, 27.536402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043118, 43.587971, 27.208094>,  <36.907776, 43.609867, 27.011108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043118, 43.587971, 27.208094>,  <37.268688, 43.551479, 27.536402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043118, 43.587971, 27.208094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724549, 0.531544, -0.438737,
		0.396248, -0.842103, -0.365854,
		-0.563929, 0.091231, -0.820768,
		36.873940, 43.615341, 26.961863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655109, 43.225727, 26.923351>,  <37.268688, 43.551479, 27.536402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655109, 43.225727, 26.923351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408260, 43.493210, 26.757467>,  <37.260151, 43.653702, 26.657936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408260, 43.493210, 26.757467>,  <37.655109, 43.225727, 26.923351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408260, 43.493210, 26.757467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743574, 0.323190, -0.585359,
		-0.257406, -0.669607, -0.696684,
		-0.617122, 0.668711, -0.414712,
		37.223125, 43.693825, 26.633053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848305, 43.267872, 26.229500>,  <37.655109, 43.225727, 26.923351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848305, 43.267872, 26.229500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618824, 43.595066, 26.212683>,  <37.481136, 43.791382, 26.202593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618824, 43.595066, 26.212683>,  <37.848305, 43.267872, 26.229500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618824, 43.595066, 26.212683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614784, 0.396136, -0.681994,
		-0.541205, -0.417110, -0.730148,
		-0.573705, 0.817982, -0.042042,
		37.446712, 43.840462, 26.200069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774841, 43.466915, 25.536701>,  <37.848305, 43.267872, 26.229500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774841, 43.466915, 25.536701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695351, 43.803978, 25.736877>,  <37.647655, 44.006214, 25.856983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695351, 43.803978, 25.736877>,  <37.774841, 43.466915, 25.536701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695351, 43.803978, 25.736877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667351, 0.490304, -0.560575,
		-0.717739, 0.222568, -0.659783,
		-0.198729, 0.842654, 0.500441,
		37.635731, 44.056774, 25.887011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574272, 43.940819, 25.083105>,  <37.774841, 43.466915, 25.536701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574272, 43.940819, 25.083105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692822, 44.176033, 25.384138>,  <37.763950, 44.317162, 25.564758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692822, 44.176033, 25.384138>,  <37.574272, 43.940819, 25.083105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692822, 44.176033, 25.384138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565331, 0.527100, -0.634481,
		-0.769782, 0.613502, -0.176214,
		0.296372, 0.588031, 0.752584,
		37.781734, 44.352444, 25.609913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563782, 44.722466, 24.854086>,  <37.574272, 43.940819, 25.083105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563782, 44.722466, 24.854086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819721, 44.646965, 25.152069>,  <37.973286, 44.601665, 25.330858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819721, 44.646965, 25.152069>,  <37.563782, 44.722466, 24.854086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819721, 44.646965, 25.152069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743603, 0.396795, -0.538153,
		-0.194020, 0.898291, 0.394245,
		0.639852, -0.188749, 0.744958,
		38.011677, 44.590340, 25.375557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034752, 45.201847, 24.768602>,  <37.563782, 44.722466, 24.854086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034752, 45.201847, 24.768602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216499, 44.938656, 25.008804>,  <38.325550, 44.780743, 25.152925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216499, 44.938656, 25.008804>,  <38.034752, 45.201847, 24.768602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216499, 44.938656, 25.008804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888997, 0.291928, -0.352791,
		0.056825, 0.694148, 0.717586,
		0.454373, -0.657979, 0.600507,
		38.352810, 44.741261, 25.188957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509041, 45.533878, 25.191120>,  <38.034752, 45.201847, 24.768602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509041, 45.533878, 25.191120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600624, 45.151638, 25.116932>,  <38.655575, 44.922295, 25.072420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600624, 45.151638, 25.116932>,  <38.509041, 45.533878, 25.191120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600624, 45.151638, 25.116932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911024, 0.277480, -0.305025,
		0.342946, -0.099128, 0.934110,
		0.228960, -0.955604, -0.185469,
		38.669312, 44.864956, 25.061291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214542, 45.475025, 24.869648>,  <38.509041, 45.533878, 25.191120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214542, 45.475025, 24.869648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444866, 45.702934, 24.635109>,  <39.583061, 45.839680, 24.494385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444866, 45.702934, 24.635109>,  <39.214542, 45.475025, 24.869648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444866, 45.702934, 24.635109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626237, -0.768425, -0.131720,
		-0.525615, -0.291348, -0.799278,
		0.575809, 0.569771, -0.586349,
		39.617607, 45.873867, 24.459204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423004, 45.314823, 24.025928>,  <39.214542, 45.475025, 24.869648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423004, 45.314823, 24.025928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697887, 45.440697, 24.287836>,  <39.862816, 45.516220, 24.444981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697887, 45.440697, 24.287836>,  <39.423004, 45.314823, 24.025928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697887, 45.440697, 24.287836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595989, -0.759578, -0.260459,
		0.415388, 0.569225, -0.709532,
		0.687205, 0.314682, 0.654771,
		39.904049, 45.535103, 24.484268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204113, 45.314999, 23.694048>,  <39.423004, 45.314823, 24.025928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204113, 45.314999, 23.694048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132572, 45.249641, 24.082132>,  <40.089649, 45.210426, 24.314983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132572, 45.249641, 24.082132>,  <40.204113, 45.314999, 23.694048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132572, 45.249641, 24.082132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494631, -0.867368, -0.054896,
		0.850502, 0.470079, 0.235950,
		-0.178850, -0.163397, 0.970213,
		40.078918, 45.200623, 24.373196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819096, 45.194771, 24.173140>,  <40.204113, 45.314999, 23.694048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819096, 45.194771, 24.173140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497112, 44.990841, 24.294540>,  <40.303921, 44.868481, 24.367380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497112, 44.990841, 24.294540>,  <40.819096, 45.194771, 24.173140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497112, 44.990841, 24.294540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503300, -0.857615, -0.105757,
		0.314206, 0.067622, 0.946944,
		-0.804962, -0.509826, 0.303502,
		40.255623, 44.837894, 24.385592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988796, 44.735668, 24.798018>,  <40.819096, 45.194771, 24.173140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988796, 44.735668, 24.798018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698368, 44.581715, 24.570091>,  <40.524113, 44.489342, 24.433336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698368, 44.581715, 24.570091>,  <40.988796, 44.735668, 24.798018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698368, 44.581715, 24.570091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570247, -0.800096, -0.186187,
		-0.384246, -0.460119, 0.800403,
		-0.726067, -0.384886, -0.569815,
		40.480549, 44.466248, 24.399147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417820, 44.678413, 25.439470>,  <40.988796, 44.735668, 24.798018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.417820, 44.678413, 25.439470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251717, 45.032764, 25.522203>,  <41.152054, 45.245377, 25.571844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251717, 45.032764, 25.522203>,  <41.417820, 44.678413, 25.439470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251717, 45.032764, 25.522203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748779, -0.461969, 0.475306,
		0.516613, 0.042502, 0.855163,
		-0.415260, 0.885877, 0.206835,
		41.127140, 45.298527, 25.584253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226212, 44.662617, 26.197903>,  <41.417820, 44.678413, 25.439470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.226212, 44.662617, 26.197903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028290, 44.941689, 25.990669>,  <40.909534, 45.109131, 25.866329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028290, 44.941689, 25.990669>,  <41.226212, 44.662617, 26.197903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028290, 44.941689, 25.990669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862200, -0.319690, 0.392951,
		0.108527, 0.641126, 0.759723,
		-0.494807, 0.697679, -0.518084,
		40.879848, 45.150993, 25.835245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790829, 44.748146, 26.777590>,  <41.226212, 44.662617, 26.197903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790829, 44.748146, 26.777590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545574, 45.058086, 26.839125>,  <40.398422, 45.244049, 26.876045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545574, 45.058086, 26.839125>,  <40.790829, 44.748146, 26.777590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545574, 45.058086, 26.839125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308505, -0.414136, 0.856339,
		0.727246, 0.477593, 0.492968,
		-0.613137, 0.774852, 0.153839,
		40.361633, 45.290543, 26.885277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939240, 45.200317, 27.383434>,  <40.790829, 44.748146, 26.777590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939240, 45.200317, 27.383434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546585, 45.169506, 27.313637>,  <40.310993, 45.151020, 27.271757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546585, 45.169506, 27.313637>,  <40.939240, 45.200317, 27.383434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546585, 45.169506, 27.313637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130409, -0.396578, 0.908691,
		-0.139195, 0.914763, 0.379252,
		-0.981641, -0.077027, -0.174495,
		40.252094, 45.146397, 27.261288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587482, 45.299618, 27.988937>,  <40.939240, 45.200317, 27.383434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587482, 45.299618, 27.988937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321781, 45.090668, 27.775059>,  <40.162361, 44.965298, 27.646732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321781, 45.090668, 27.775059>,  <40.587482, 45.299618, 27.988937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321781, 45.090668, 27.775059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318093, -0.449779, 0.834575,
		-0.676454, 0.724449, 0.132603,
		-0.664249, -0.522372, -0.534697,
		40.122505, 44.933956, 27.614649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947201, 45.290932, 28.456562>,  <40.587482, 45.299618, 27.988937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947201, 45.290932, 28.456562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929028, 44.993874, 28.189304>,  <39.918121, 44.815639, 28.028950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929028, 44.993874, 28.189304>,  <39.947201, 45.290932, 28.456562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929028, 44.993874, 28.189304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313196, -0.624522, 0.715458,
		-0.948601, 0.241767, -0.204217,
		-0.045436, -0.742644, -0.668143,
		39.915398, 44.771080, 27.988861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233482, 45.068588, 28.556023>,  <39.947201, 45.290932, 28.456562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233482, 45.068588, 28.556023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399117, 44.753632, 28.373354>,  <39.498497, 44.564659, 28.263754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399117, 44.753632, 28.373354>,  <39.233482, 45.068588, 28.556023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399117, 44.753632, 28.373354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613607, -0.612042, 0.498889,
		-0.672322, 0.073633, -0.736587,
		0.414088, -0.787390, -0.456672,
		39.523342, 44.517414, 28.236353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690197, 44.625740, 28.115883>,  <39.233482, 45.068588, 28.556023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690197, 44.625740, 28.115883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000706, 44.391144, 28.208344>,  <39.187012, 44.250385, 28.263821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000706, 44.391144, 28.208344>,  <38.690197, 44.625740, 28.115883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000706, 44.391144, 28.208344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627549, -0.684085, 0.371766,
		-0.059912, -0.433649, -0.899088,
		0.776269, -0.586495, 0.231151,
		39.233585, 44.215195, 28.277689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553185, 43.970863, 28.032959>,  <38.690197, 44.625740, 28.115883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553185, 43.970863, 28.032959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877441, 43.891068, 28.253164>,  <39.071995, 43.843189, 28.385288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877441, 43.891068, 28.253164>,  <38.553185, 43.970863, 28.032959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877441, 43.891068, 28.253164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512163, -0.697268, 0.501504,
		0.283812, -0.688493, -0.667404,
		0.810641, -0.199487, 0.550513,
		39.120632, 43.831223, 28.418318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450493, 43.271217, 28.165598>,  <38.553185, 43.970863, 28.032959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450493, 43.271217, 28.165598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722919, 43.382641, 28.436466>,  <38.886375, 43.449493, 28.598988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722919, 43.382641, 28.436466>,  <38.450493, 43.271217, 28.165598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722919, 43.382641, 28.436466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334557, -0.704254, 0.626177,
		0.651327, -0.653017, -0.386447,
		0.681062, 0.278558, 0.677171,
		38.927238, 43.466209, 28.639618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862530, 42.550220, 28.399794>,  <38.450493, 43.271217, 28.165598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862530, 42.550220, 28.399794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874088, 42.838337, 28.677021>,  <38.881023, 43.011208, 28.843357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874088, 42.838337, 28.677021>,  <38.862530, 42.550220, 28.399794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874088, 42.838337, 28.677021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368249, -0.636921, 0.677291,
		0.929278, -0.274791, 0.246845,
		0.028893, 0.720292, 0.693069,
		38.882755, 43.054424, 28.884941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086460, 42.131527, 28.905952>,  <38.862530, 42.550220, 28.399794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086460, 42.131527, 28.905952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933041, 42.475063, 29.041769>,  <38.840988, 42.681187, 29.123259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933041, 42.475063, 29.041769>,  <39.086460, 42.131527, 28.905952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933041, 42.475063, 29.041769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505997, -0.502987, 0.700693,
		0.772567, 0.096942, 0.627489,
		-0.383546, 0.858840, 0.339539,
		38.817978, 42.732716, 29.143631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026237, 42.033367, 29.619499>,  <39.086460, 42.131527, 28.905952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026237, 42.033367, 29.619499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759464, 42.316444, 29.526224>,  <38.599400, 42.486290, 29.470259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759464, 42.316444, 29.526224>,  <39.026237, 42.033367, 29.619499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759464, 42.316444, 29.526224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655688, -0.408744, 0.634824,
		0.353944, 0.576283, 0.736628,
		-0.666931, 0.707691, -0.233189,
		38.559383, 42.528751, 29.456268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708447, 42.228523, 30.336046>,  <39.026237, 42.033367, 29.619499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708447, 42.228523, 30.336046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470104, 42.369698, 30.047493>,  <38.327099, 42.454403, 29.874361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470104, 42.369698, 30.047493>,  <38.708447, 42.228523, 30.336046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470104, 42.369698, 30.047493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802218, -0.219628, 0.555166,
		0.037501, 0.909506, 0.413997,
		-0.595852, 0.352935, -0.721385,
		38.291348, 42.475578, 29.831078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181725, 42.598324, 30.666229>,  <38.708447, 42.228523, 30.336046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181725, 42.598324, 30.666229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035107, 42.527912, 30.300791>,  <37.947136, 42.485664, 30.081528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035107, 42.527912, 30.300791>,  <38.181725, 42.598324, 30.666229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035107, 42.527912, 30.300791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874715, -0.269414, 0.402852,
		-0.317049, 0.946800, -0.055220,
		-0.366544, -0.176026, -0.913598,
		37.925144, 42.475105, 30.026712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582382, 42.934124, 30.657953>,  <38.181725, 42.598324, 30.666229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582382, 42.934124, 30.657953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541595, 42.673431, 30.357327>,  <37.517124, 42.517017, 30.176950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541595, 42.673431, 30.357327>,  <37.582382, 42.934124, 30.657953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541595, 42.673431, 30.357327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917921, -0.229568, 0.323603,
		-0.383438, 0.722875, -0.574828,
		-0.101963, -0.651729, -0.751567,
		37.511005, 42.477913, 30.131857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882233, 43.057953, 30.252260>,  <37.582382, 42.934124, 30.657953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882233, 43.057953, 30.252260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004982, 42.680782, 30.200527>,  <37.078632, 42.454479, 30.169487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004982, 42.680782, 30.200527>,  <36.882233, 43.057953, 30.252260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004982, 42.680782, 30.200527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925267, -0.327401, 0.191548,
		-0.222957, 0.060884, -0.972925,
		0.306874, -0.942922, -0.129330,
		37.097046, 42.397907, 30.161728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421463, 42.760399, 29.731955>,  <36.882233, 43.057953, 30.252260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421463, 42.760399, 29.731955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568233, 42.440151, 29.921429>,  <36.656296, 42.248005, 30.035112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568233, 42.440151, 29.921429>,  <36.421463, 42.760399, 29.731955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568233, 42.440151, 29.921429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923086, -0.376437, 0.078794,
		0.115228, -0.466164, -0.877162,
		0.366927, -0.800617, 0.473685,
		36.678310, 42.199966, 30.063534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012009, 42.201588, 29.455021>,  <36.421463, 42.760399, 29.731955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012009, 42.201588, 29.455021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173424, 42.077747, 29.799416>,  <36.270275, 42.003445, 30.006052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173424, 42.077747, 29.799416>,  <36.012009, 42.201588, 29.455021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173424, 42.077747, 29.799416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874765, -0.406403, 0.263860,
		0.268217, -0.859641, -0.434829,
		0.403541, -0.309602, 0.860988,
		36.294487, 41.984867, 30.057713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817574, 41.516293, 29.522026>,  <36.012009, 42.201588, 29.455021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817574, 41.516293, 29.522026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877502, 41.638744, 29.898077>,  <35.913460, 41.712215, 30.123707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877502, 41.638744, 29.898077>,  <35.817574, 41.516293, 29.522026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877502, 41.638744, 29.898077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809207, -0.508382, 0.294502,
		0.568098, -0.804882, 0.171550,
		0.149826, 0.306125, 0.940128,
		35.922451, 41.730583, 30.180115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486279, 40.944218, 29.959414>,  <35.817574, 41.516293, 29.522026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486279, 40.944218, 29.959414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572746, 41.229053, 30.226608>,  <35.624626, 41.399956, 30.386925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572746, 41.229053, 30.226608>,  <35.486279, 40.944218, 29.959414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572746, 41.229053, 30.226608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638591, -0.414413, 0.648432,
		0.738560, -0.566742, 0.365146,
		0.216173, 0.712085, 0.667985,
		35.637600, 41.442680, 30.427004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625080, 40.579010, 30.500742>,  <35.486279, 40.944218, 29.959414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625080, 40.579010, 30.500742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508934, 40.943630, 30.617197>,  <35.439247, 41.162403, 30.687071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508934, 40.943630, 30.617197>,  <35.625080, 40.579010, 30.500742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508934, 40.943630, 30.617197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714282, -0.408928, 0.567961,
		0.636780, -0.043037, 0.769844,
		-0.290367, 0.911551, 0.291138,
		35.421825, 41.217094, 30.704538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542675, 40.475784, 31.183323>,  <35.625080, 40.579010, 30.500742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542675, 40.475784, 31.183323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343822, 40.805656, 31.075422>,  <35.224510, 41.003578, 31.010683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343822, 40.805656, 31.075422>,  <35.542675, 40.475784, 31.183323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343822, 40.805656, 31.075422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764000, -0.268669, 0.586617,
		0.411299, 0.497713, 0.763620,
		-0.497128, 0.824681, -0.269750,
		35.194683, 41.053062, 30.994497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068649, 40.438049, 31.764914>,  <35.542675, 40.475784, 31.183323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068649, 40.438049, 31.764914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941200, 40.694534, 31.485678>,  <34.864731, 40.848423, 31.318136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941200, 40.694534, 31.485678>,  <35.068649, 40.438049, 31.764914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941200, 40.694534, 31.485678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947836, -0.208378, 0.241216,
		0.009204, 0.738531, 0.674157,
		-0.318625, 0.641210, -0.698088,
		34.845612, 40.886898, 31.276251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637794, 40.965321, 32.045830>,  <35.068649, 40.438049, 31.764914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637794, 40.965321, 32.045830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547615, 40.913738, 31.659557>,  <34.493507, 40.882790, 31.427794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547615, 40.913738, 31.659557>,  <34.637794, 40.965321, 32.045830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547615, 40.913738, 31.659557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949899, -0.191152, 0.247290,
		-0.216481, 0.973053, -0.079397,
		-0.225450, -0.128953, -0.965683,
		34.479980, 40.875053, 31.369852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085228, 41.512516, 31.831408>,  <34.637794, 40.965321, 32.045830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085228, 41.512516, 31.831408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051018, 41.205750, 31.577000>,  <34.030491, 41.021690, 31.424355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051018, 41.205750, 31.577000>,  <34.085228, 41.512516, 31.831408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051018, 41.205750, 31.577000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964172, -0.097180, 0.246836,
		-0.251112, 0.634344, -0.731129,
		-0.085528, -0.766918, -0.636020,
		34.025360, 40.975674, 31.386194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515141, 41.661537, 31.532127>,  <34.085228, 41.512516, 31.831408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515141, 41.661537, 31.532127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573326, 41.276955, 31.438793>,  <33.608238, 41.046207, 31.382793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573326, 41.276955, 31.438793>,  <33.515141, 41.661537, 31.532127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573326, 41.276955, 31.438793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970838, -0.184142, 0.153511,
		-0.190562, 0.204205, -0.960201,
		0.145466, -0.961453, -0.233341,
		33.616966, 40.988518, 31.368793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842922, 41.444019, 31.191767>,  <33.515141, 41.661537, 31.532127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842922, 41.444019, 31.191767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002800, 41.087151, 31.275925>,  <33.098728, 40.873028, 31.326420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002800, 41.087151, 31.275925>,  <32.842922, 41.444019, 31.191767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002800, 41.087151, 31.275925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896747, -0.333012, 0.291456,
		-0.189965, -0.305166, -0.933160,
		0.399696, -0.892175, 0.210396,
		33.122707, 40.819496, 31.339043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374672, 40.796497, 30.852280>,  <32.842922, 41.444019, 31.191767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374672, 40.796497, 30.852280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615509, 40.681271, 31.150139>,  <32.760010, 40.612137, 31.328856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615509, 40.681271, 31.150139>,  <32.374672, 40.796497, 30.852280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615509, 40.681271, 31.150139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738377, -0.555743, 0.382034,
		0.303783, -0.779852, -0.547309,
		0.602093, -0.288064, 0.744649,
		32.796139, 40.594852, 31.373533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153381, 40.138683, 31.002363>,  <32.374672, 40.796497, 30.852280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153381, 40.138683, 31.002363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373722, 40.215908, 31.327150>,  <32.505924, 40.262241, 31.522022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373722, 40.215908, 31.327150>,  <32.153381, 40.138683, 31.002363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373722, 40.215908, 31.327150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643908, -0.520654, 0.560627,
		0.530989, -0.831654, -0.162488,
		0.550848, 0.193059, 0.811970,
		32.538975, 40.273827, 31.570742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105293, 39.484535, 31.381651>,  <32.153381, 40.138683, 31.002363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105293, 39.484535, 31.381651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177685, 39.777328, 31.644390>,  <32.221119, 39.953003, 31.802032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177685, 39.777328, 31.644390>,  <32.105293, 39.484535, 31.381651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177685, 39.777328, 31.644390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596878, -0.449063, 0.664890,
		0.781654, -0.512389, 0.355633,
		0.180981, 0.731983, 0.656846,
		32.231979, 39.996925, 31.841444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781120, 39.226322, 32.028862>,  <32.105293, 39.484535, 31.381651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781120, 39.226322, 32.028862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920332, 39.577728, 32.159760>,  <32.003860, 39.788570, 32.238297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920332, 39.577728, 32.159760>,  <31.781120, 39.226322, 32.028862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920332, 39.577728, 32.159760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515589, -0.112165, 0.849463,
		0.782971, -0.464360, 0.413916,
		0.348029, 0.878515, 0.327241,
		32.024742, 39.841282, 32.257931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071617, 39.156506, 32.772263>,  <31.781120, 39.226322, 32.028862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071617, 39.156506, 32.772263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962334, 39.538628, 32.727104>,  <31.896763, 39.767902, 32.700008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962334, 39.538628, 32.727104>,  <32.071617, 39.156506, 32.772263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962334, 39.538628, 32.727104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639742, -0.092801, 0.762967,
		0.718391, 0.280674, 0.636504,
		-0.273213, 0.955306, -0.112892,
		31.880369, 39.825218, 32.693237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107704, 39.421314, 33.378521>,  <32.071617, 39.156506, 32.772263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107704, 39.421314, 33.378521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.834579, 39.625801, 33.169746>,  <31.670704, 39.748493, 33.044479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.834579, 39.625801, 33.169746>,  <32.107704, 39.421314, 33.378521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834579, 39.625801, 33.169746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702034, -0.261319, 0.662466,
		0.202274, 0.818758, 0.537327,
		-0.682813, 0.511221, -0.521938,
		31.629736, 39.779167, 33.013165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854006, 39.780006, 33.858463>,  <32.107704, 39.421314, 33.378521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854006, 39.780006, 33.858463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581696, 39.776848, 33.565483>,  <31.418310, 39.774952, 33.389694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581696, 39.776848, 33.565483>,  <31.854006, 39.780006, 33.858463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581696, 39.776848, 33.565483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732316, 0.029189, 0.680339,
		0.016010, 0.999543, -0.025652,
		-0.680776, -0.007893, -0.732449,
		31.377462, 39.774479, 33.345749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309689, 40.278988, 34.020393>,  <31.854006, 39.780006, 33.858463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309689, 40.278988, 34.020393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122616, 40.004784, 33.797199>,  <31.010372, 39.840260, 33.663284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122616, 40.004784, 33.797199>,  <31.309689, 40.278988, 34.020393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122616, 40.004784, 33.797199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734855, -0.049254, 0.676434,
		-0.491186, 0.726394, -0.480716,
		-0.467681, -0.685511, -0.557987,
		30.982311, 39.799129, 33.629803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.632124, 40.441132, 34.144951>,  <31.309689, 40.278988, 34.020393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.632124, 40.441132, 34.144951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.564573, 40.088268, 33.969101>,  <30.524044, 39.876549, 33.863590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.564573, 40.088268, 33.969101>,  <30.632124, 40.441132, 34.144951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.564573, 40.088268, 33.969101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747695, -0.175962, 0.640304,
		-0.642210, 0.436837, -0.629873,
		-0.168875, -0.882163, -0.439626,
		30.513910, 39.823620, 33.837212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924635, 40.330929, 34.123375>,  <30.632124, 40.441132, 34.144951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924635, 40.330929, 34.123375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.043467, 39.959145, 34.035881>,  <30.114765, 39.736073, 33.983383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.043467, 39.959145, 34.035881>,  <29.924635, 40.330929, 34.123375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.043467, 39.959145, 34.035881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764998, -0.368771, 0.528002,
		-0.571420, 0.010472, -0.820591,
		0.297081, -0.929461, -0.218734,
		30.132591, 39.680305, 33.970261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289204, 39.946720, 33.914627>,  <29.924635, 40.330929, 34.123375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289204, 39.946720, 33.914627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.562542, 39.691612, 34.056778>,  <29.726545, 39.538548, 34.142067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.562542, 39.691612, 34.056778>,  <29.289204, 39.946720, 33.914627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.562542, 39.691612, 34.056778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701620, -0.439034, 0.561229,
		-0.201908, -0.632856, -0.747480,
		0.683347, -0.637764, 0.355380,
		29.767546, 39.500282, 34.163391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.995275, 39.225441, 33.904716>,  <29.289204, 39.946720, 33.914627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.995275, 39.225441, 33.904716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314089, 39.215717, 34.146095>,  <29.505377, 39.209881, 34.290920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314089, 39.215717, 34.146095>,  <28.995275, 39.225441, 33.904716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314089, 39.215717, 34.146095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456268, -0.678865, 0.575293,
		0.395670, -0.733861, -0.552172,
		0.797035, -0.024312, 0.603443,
		29.553200, 39.208424, 34.327129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262659, 38.491638, 34.008007>,  <28.995275, 39.225441, 33.904716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.262659, 38.491638, 34.008007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.388927, 38.685547, 34.334282>,  <29.464689, 38.801891, 34.530048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.388927, 38.685547, 34.334282>,  <29.262659, 38.491638, 34.008007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.388927, 38.685547, 34.334282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407809, -0.706885, 0.577933,
		0.856763, -0.515081, -0.025448,
		0.315671, 0.484773, 0.815688,
		29.483629, 38.830978, 34.578987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400198, 37.965221, 34.423882>,  <29.262659, 38.491638, 34.008007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400198, 37.965221, 34.423882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.354172, 38.297802, 34.641304>,  <29.326555, 38.497349, 34.771759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.354172, 38.297802, 34.641304>,  <29.400198, 37.965221, 34.423882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.354172, 38.297802, 34.641304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614195, -0.489608, 0.618909,
		0.780721, -0.262634, 0.567009,
		-0.115066, 0.831449, 0.543556,
		29.319653, 38.547237, 34.804371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534548, 37.750912, 35.055592>,  <29.400198, 37.965221, 34.423882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534548, 37.750912, 35.055592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318729, 38.083187, 35.110512>,  <29.189238, 38.282551, 35.143463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318729, 38.083187, 35.110512>,  <29.534548, 37.750912, 35.055592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318729, 38.083187, 35.110512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602409, -0.494801, 0.626319,
		0.588211, 0.255217, 0.767380,
		-0.539548, 0.830684, 0.137303,
		29.156864, 38.332394, 35.151703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.120659, 37.791752, 35.518070>,  <29.534548, 37.750912, 35.055592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.120659, 37.791752, 35.518070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.212107, 37.414032, 35.423393>,  <30.266975, 37.187401, 35.366589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.212107, 37.414032, 35.423393>,  <30.120659, 37.791752, 35.518070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.212107, 37.414032, 35.423393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965817, 0.189489, 0.176891,
		-0.122188, -0.269043, 0.955346,
		0.228619, -0.944304, -0.236693,
		30.280693, 37.130741, 35.352386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737804, 37.540375, 35.966148>,  <30.120659, 37.791752, 35.518070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737804, 37.540375, 35.966148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741383, 37.304974, 35.642769>,  <30.743530, 37.163734, 35.448742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741383, 37.304974, 35.642769>,  <30.737804, 37.540375, 35.966148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741383, 37.304974, 35.642769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986274, 0.138498, -0.089903,
		0.164876, -0.796544, 0.581664,
		0.008947, -0.588503, -0.808446,
		30.744066, 37.128422, 35.400234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334560, 37.270512, 35.976864>,  <30.737804, 37.540375, 35.966148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334560, 37.270512, 35.976864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.221804, 37.176964, 35.604660>,  <31.154150, 37.120834, 35.381340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.221804, 37.176964, 35.604660>,  <31.334560, 37.270512, 35.976864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221804, 37.176964, 35.604660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955471, -0.156625, -0.250087,
		-0.087252, -0.959568, 0.267611,
		-0.281890, -0.233874, -0.930505,
		31.137236, 37.106800, 35.325508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739155, 36.663288, 35.776070>,  <31.334560, 37.270512, 35.976864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739155, 36.663288, 35.776070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604326, 36.826725, 35.436790>,  <31.523428, 36.924786, 35.233223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604326, 36.826725, 35.436790>,  <31.739155, 36.663288, 35.776070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604326, 36.826725, 35.436790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916313, -0.064530, -0.395229,
		-0.216222, -0.910432, -0.352649,
		-0.337073, 0.408594, -0.848194,
		31.503204, 36.949303, 35.182331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980909, 36.223003, 35.372707>,  <31.739155, 36.663288, 35.776070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980909, 36.223003, 35.372707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909996, 36.560707, 35.170403>,  <31.867449, 36.763329, 35.049019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909996, 36.560707, 35.170403>,  <31.980909, 36.223003, 35.372707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909996, 36.560707, 35.170403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846216, -0.131617, -0.516329,
		-0.502483, -0.519518, -0.691094,
		-0.177282, 0.844262, -0.505760,
		31.856812, 36.813984, 35.018673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042625, 36.078091, 34.730789>,  <31.980909, 36.223003, 35.372707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042625, 36.078091, 34.730789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100845, 36.473267, 34.709690>,  <32.135777, 36.710373, 34.697029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100845, 36.473267, 34.709690>,  <32.042625, 36.078091, 34.730789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100845, 36.473267, 34.709690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826550, -0.150725, -0.542307,
		-0.543720, 0.035330, -0.838523,
		0.145546, 0.987944, -0.052750,
		32.144508, 36.769650, 34.693867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254131, 36.167114, 34.078110>,  <32.042625, 36.078091, 34.730789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254131, 36.167114, 34.078110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374573, 36.502144, 34.260456>,  <32.446838, 36.703159, 34.369862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374573, 36.502144, 34.260456>,  <32.254131, 36.167114, 34.078110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374573, 36.502144, 34.260456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841472, -0.008478, -0.540234,
		-0.448619, 0.546264, -0.707345,
		0.301107, 0.837570, 0.455863,
		32.464905, 36.753414, 34.397217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522732, 36.515747, 33.487453>,  <32.254131, 36.167114, 34.078110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522732, 36.515747, 33.487453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681435, 36.704048, 33.802662>,  <32.776657, 36.817028, 33.991787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681435, 36.704048, 33.802662>,  <32.522732, 36.515747, 33.487453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681435, 36.704048, 33.802662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801106, 0.241527, -0.547625,
		-0.448124, 0.848561, -0.281297,
		0.396753, 0.470753, 0.788022,
		32.800461, 36.845276, 34.039070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733818, 37.095203, 33.171333>,  <32.522732, 36.515747, 33.487453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733818, 37.095203, 33.171333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928768, 37.088211, 33.520538>,  <33.045738, 37.084015, 33.730064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928768, 37.088211, 33.520538>,  <32.733818, 37.095203, 33.171333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928768, 37.088211, 33.520538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834831, 0.302415, -0.460002,
		-0.255972, 0.953016, 0.161984,
		0.487376, -0.017482, 0.873017,
		33.074982, 37.082966, 33.782444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098640, 37.678181, 33.128475>,  <32.733818, 37.095203, 33.171333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098640, 37.678181, 33.128475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274544, 37.452805, 33.408234>,  <33.380085, 37.317577, 33.576088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274544, 37.452805, 33.408234>,  <33.098640, 37.678181, 33.128475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274544, 37.452805, 33.408234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898073, 0.283535, -0.336263,
		-0.008839, 0.775980, 0.630696,
		0.439757, -0.563439, 0.699393,
		33.406471, 37.283772, 33.618050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509399, 38.103832, 33.552513>,  <33.098640, 37.678181, 33.128475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509399, 38.103832, 33.552513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686089, 37.751892, 33.622654>,  <33.792103, 37.540730, 33.664738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686089, 37.751892, 33.622654>,  <33.509399, 38.103832, 33.552513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686089, 37.751892, 33.622654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862438, 0.362602, -0.353157,
		0.247143, 0.307225, 0.918985,
		0.441724, -0.879848, 0.175348,
		33.818607, 37.487938, 33.675259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178379, 38.255444, 33.825344>,  <33.509399, 38.103832, 33.552513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178379, 38.255444, 33.825344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235485, 37.871120, 33.730289>,  <34.269749, 37.640526, 33.673256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235485, 37.871120, 33.730289>,  <34.178379, 38.255444, 33.825344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235485, 37.871120, 33.730289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908835, 0.222340, -0.352965,
		0.391966, -0.165580, 0.904956,
		0.142764, -0.960806, -0.237635,
		34.278313, 37.582878, 33.659000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897488, 37.987091, 34.087215>,  <34.178379, 38.255444, 33.825344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897488, 37.987091, 34.087215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775188, 37.745544, 33.792770>,  <34.701809, 37.600616, 33.616104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775188, 37.745544, 33.792770>,  <34.897488, 37.987091, 34.087215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775188, 37.745544, 33.792770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822304, 0.222234, -0.523859,
		0.479932, -0.765475, 0.428618,
		-0.305748, -0.603871, -0.736110,
		34.683464, 37.564384, 33.571938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466625, 37.654903, 33.893883>,  <34.897488, 37.987091, 34.087215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466625, 37.654903, 33.893883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220806, 37.598190, 33.583466>,  <35.073315, 37.564163, 33.397217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220806, 37.598190, 33.583466>,  <35.466625, 37.654903, 33.893883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220806, 37.598190, 33.583466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701959, 0.350618, -0.619936,
		0.359988, -0.925724, -0.115945,
		-0.614542, -0.141780, -0.776039,
		35.036442, 37.555656, 33.350655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915730, 37.253269, 33.476688>,  <35.466625, 37.654903, 33.893883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915730, 37.253269, 33.476688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614754, 37.430622, 33.281857>,  <35.434170, 37.537033, 33.164959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614754, 37.430622, 33.281857>,  <35.915730, 37.253269, 33.476688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614754, 37.430622, 33.281857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658071, 0.474730, -0.584444,
		-0.027901, -0.760292, -0.648983,
		-0.752439, 0.443383, -0.487080,
		35.389023, 37.563637, 33.135731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054096, 37.161064, 32.783916>,  <35.915730, 37.253269, 33.476688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054096, 37.161064, 32.783916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803791, 37.473019, 32.778336>,  <35.653606, 37.660191, 32.774986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803791, 37.473019, 32.778336>,  <36.054096, 37.161064, 32.783916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803791, 37.473019, 32.778336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642323, 0.505075, -0.576473,
		-0.442536, -0.369699, -0.816997,
		-0.625766, 0.779887, -0.013952,
		35.616062, 37.706985, 32.774151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951378, 37.368633, 32.151142>,  <36.054096, 37.161064, 32.783916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951378, 37.368633, 32.151142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.837112, 37.703270, 32.338123>,  <35.768555, 37.904053, 32.450314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.837112, 37.703270, 32.338123>,  <35.951378, 37.368633, 32.151142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837112, 37.703270, 32.338123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596982, 0.536920, -0.596095,
		-0.749673, 0.108780, -0.652808,
		-0.285662, 0.836590, 0.467454,
		35.751415, 37.954247, 32.478359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807892, 37.766979, 31.673794>,  <35.951378, 37.368633, 32.151142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807892, 37.766979, 31.673794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874081, 38.018211, 31.977936>,  <35.913795, 38.168949, 32.160419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874081, 38.018211, 31.977936>,  <35.807892, 37.766979, 31.673794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874081, 38.018211, 31.977936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554586, 0.578272, -0.598361,
		-0.815508, 0.520694, -0.252634,
		0.165472, 0.628076, 0.760355,
		35.923721, 38.206635, 32.206043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669765, 38.443169, 31.440571>,  <35.807892, 37.766979, 31.673794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669765, 38.443169, 31.440571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895180, 38.506416, 31.764898>,  <36.030430, 38.544365, 31.959494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895180, 38.506416, 31.764898>,  <35.669765, 38.443169, 31.440571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895180, 38.506416, 31.764898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627082, 0.557063, -0.544471,
		-0.537767, 0.815279, 0.214774,
		0.563538, 0.158118, 0.810817,
		36.064240, 38.553852, 32.008144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898651, 39.121441, 31.364101>,  <35.669765, 38.443169, 31.440571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898651, 39.121441, 31.364101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143665, 38.993626, 31.653292>,  <36.290676, 38.916939, 31.826805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143665, 38.993626, 31.653292>,  <35.898651, 39.121441, 31.364101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143665, 38.993626, 31.653292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703419, 0.637567, -0.314181,
		-0.360554, 0.701003, 0.615302,
		0.612538, -0.319536, 0.722976,
		36.327427, 38.897766, 31.870184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159832, 39.705002, 31.656759>,  <35.898651, 39.121441, 31.364101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159832, 39.705002, 31.656759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402351, 39.394352, 31.725174>,  <36.547863, 39.207962, 31.766224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402351, 39.394352, 31.725174>,  <36.159832, 39.705002, 31.656759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402351, 39.394352, 31.725174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770954, 0.521294, -0.365900,
		0.195005, 0.353709, 0.914802,
		0.606303, -0.776623, 0.171039,
		36.584244, 39.161366, 31.776485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890896, 39.961304, 31.971483>,  <36.159832, 39.705002, 31.656759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890896, 39.961304, 31.971483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932987, 39.608677, 31.787407>,  <36.958241, 39.397102, 31.676962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932987, 39.608677, 31.787407>,  <36.890896, 39.961304, 31.971483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932987, 39.608677, 31.787407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731828, 0.381971, -0.564381,
		0.673316, -0.277391, 0.685347,
		0.105228, -0.881563, -0.460189,
		36.964554, 39.344208, 31.649349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503460, 39.933720, 31.845337>,  <36.890896, 39.961304, 31.971483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503460, 39.933720, 31.845337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413517, 39.624416, 31.608183>,  <37.359550, 39.438835, 31.465891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413517, 39.624416, 31.608183>,  <37.503460, 39.933720, 31.845337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413517, 39.624416, 31.608183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722633, 0.275831, -0.633812,
		0.653636, -0.570956, 0.496758,
		-0.224857, -0.773257, -0.592885,
		37.346062, 39.392441, 31.430317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184170, 39.646992, 31.668026>,  <37.503460, 39.933720, 31.845337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184170, 39.646992, 31.668026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934837, 39.526230, 31.379496>,  <37.785236, 39.453773, 31.206377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934837, 39.526230, 31.379496>,  <38.184170, 39.646992, 31.668026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934837, 39.526230, 31.379496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621239, 0.369021, -0.691293,
		0.474889, -0.879020, -0.042467,
		-0.623331, -0.301905, -0.721326,
		37.747837, 39.435658, 31.163097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591869, 39.338799, 31.154655>,  <38.184170, 39.646992, 31.668026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591869, 39.338799, 31.154655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255638, 39.413136, 30.951130>,  <38.053902, 39.457737, 30.829014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255638, 39.413136, 30.951130>,  <38.591869, 39.338799, 31.154655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255638, 39.413136, 30.951130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541360, 0.255244, -0.801112,
		-0.019010, -0.948848, -0.315161,
		-0.840576, 0.185845, -0.508816,
		38.003464, 39.468887, 30.798485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535915, 38.956509, 30.455132>,  <38.591869, 39.338799, 31.154655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535915, 38.956509, 30.455132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.319973, 39.291668, 30.422935>,  <38.190407, 39.492764, 30.403618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.319973, 39.291668, 30.422935>,  <38.535915, 38.956509, 30.455132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319973, 39.291668, 30.422935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375757, 0.154318, -0.913779,
		-0.753234, -0.523556, -0.398157,
		-0.539857, 0.837899, -0.080492,
		38.158016, 39.543037, 30.398788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220299, 38.933460, 29.781591>,  <38.535915, 38.956509, 30.455132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220299, 38.933460, 29.781591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161499, 39.318298, 29.873480>,  <38.126221, 39.549202, 29.928614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161499, 39.318298, 29.873480>,  <38.220299, 38.933460, 29.781591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161499, 39.318298, 29.873480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347012, 0.267643, -0.898860,
		-0.926269, -0.052412, -0.373200,
		-0.146995, 0.962092, 0.229722,
		38.117401, 39.606926, 29.942396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804340, 39.267597, 29.223112>,  <38.220299, 38.933460, 29.781591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804340, 39.267597, 29.223112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040634, 39.534836, 29.404078>,  <38.182411, 39.695179, 29.512657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040634, 39.534836, 29.404078>,  <37.804340, 39.267597, 29.223112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040634, 39.534836, 29.404078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380645, 0.263634, -0.886345,
		-0.711436, 0.695804, -0.098570,
		0.590736, 0.668097, 0.452413,
		38.217854, 39.735264, 29.539801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656239, 39.850849, 28.693151>,  <37.804340, 39.267597, 29.223112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656239, 39.850849, 28.693151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962543, 39.964436, 28.923967>,  <38.146324, 40.032589, 29.062458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962543, 39.964436, 28.923967>,  <37.656239, 39.850849, 28.693151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962543, 39.964436, 28.923967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381091, 0.522401, -0.762802,
		-0.518057, 0.804028, 0.291816,
		0.765759, 0.283966, 0.577041,
		38.192272, 40.049625, 29.097080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792042, 40.563782, 28.414221>,  <37.656239, 39.850849, 28.693151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792042, 40.563782, 28.414221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107647, 40.425934, 28.617670>,  <38.297009, 40.343224, 28.739740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107647, 40.425934, 28.617670>,  <37.792042, 40.563782, 28.414221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107647, 40.425934, 28.617670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611942, 0.514477, -0.600700,
		-0.054663, 0.785208, 0.616815,
		0.789012, -0.344619, 0.508624,
		38.344349, 40.322548, 28.770258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300354, 41.130978, 28.486090>,  <37.792042, 40.563782, 28.414221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300354, 41.130978, 28.486090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529976, 40.803528, 28.493263>,  <38.667747, 40.607059, 28.497566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529976, 40.803528, 28.493263>,  <38.300354, 41.130978, 28.486090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529976, 40.803528, 28.493263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626841, 0.425265, -0.652855,
		0.526816, 0.386013, 0.757271,
		0.574051, -0.818623, 0.017932,
		38.702190, 40.557941, 28.498642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869179, 41.414280, 28.445400>,  <38.300354, 41.130978, 28.486090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869179, 41.414280, 28.445400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976883, 41.035034, 28.377773>,  <39.041504, 40.807487, 28.337196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976883, 41.035034, 28.377773>,  <38.869179, 41.414280, 28.445400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976883, 41.035034, 28.377773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665299, 0.310049, -0.679152,
		0.696330, 0.070389, 0.714261,
		0.269260, -0.948111, -0.169067,
		39.057659, 40.750599, 28.327053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641693, 41.310074, 28.453247>,  <38.869179, 41.414280, 28.445400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641693, 41.310074, 28.453247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470253, 41.044170, 28.208494>,  <39.367390, 40.884628, 28.061642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470253, 41.044170, 28.208494>,  <39.641693, 41.310074, 28.453247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470253, 41.044170, 28.208494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539535, 0.354914, -0.763504,
		0.724710, -0.657370, 0.206543,
		-0.428600, -0.664756, -0.611884,
		39.341675, 40.844742, 28.024929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134033, 41.150814, 28.010490>,  <39.641693, 41.310074, 28.453247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134033, 41.150814, 28.010490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839314, 40.970680, 27.808765>,  <39.662483, 40.862602, 27.687731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839314, 40.970680, 27.808765>,  <40.134033, 41.150814, 28.010490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839314, 40.970680, 27.808765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389946, 0.326305, -0.861084,
		0.552334, -0.831099, -0.064815,
		-0.736796, -0.450332, -0.504314,
		39.618275, 40.835583, 27.657471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452145, 40.929138, 27.455484>,  <40.134033, 41.150814, 28.010490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452145, 40.929138, 27.455484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062225, 40.926338, 27.366293>,  <39.828274, 40.924660, 27.312778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062225, 40.926338, 27.366293>,  <40.452145, 40.929138, 27.455484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062225, 40.926338, 27.366293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213466, 0.261097, -0.941414,
		0.064805, -0.965287, -0.253024,
		-0.974799, -0.006996, -0.222976,
		39.769787, 40.924240, 27.299400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461964, 40.604366, 26.862593>,  <40.452145, 40.929138, 27.455484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461964, 40.604366, 26.862593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118786, 40.809216, 26.878883>,  <39.912880, 40.932125, 26.888659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118786, 40.809216, 26.878883>,  <40.461964, 40.604366, 26.862593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118786, 40.809216, 26.878883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254672, 0.492817, -0.832030,
		-0.446172, -0.703465, -0.553234,
		-0.857947, 0.512122, 0.040728,
		39.861401, 40.962852, 26.891102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217587, 40.630306, 26.151346>,  <40.461964, 40.604366, 26.862593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217587, 40.630306, 26.151346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016048, 40.917263, 26.343798>,  <39.895126, 41.089439, 26.459269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016048, 40.917263, 26.343798>,  <40.217587, 40.630306, 26.151346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016048, 40.917263, 26.343798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217452, 0.644398, -0.733121,
		-0.835974, -0.264759, -0.480677,
		-0.503847, 0.717394, 0.481128,
		39.864895, 41.132481, 26.488136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565304, 40.978634, 25.715290>,  <40.217587, 40.630306, 26.151346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565304, 40.978634, 25.715290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744717, 41.210754, 25.987192>,  <39.852364, 41.350025, 26.150333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744717, 41.210754, 25.987192>,  <39.565304, 40.978634, 25.715290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744717, 41.210754, 25.987192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110518, 0.718705, -0.686476,
		-0.886907, 0.383033, 0.258229,
		0.448533, 0.580301, 0.679756,
		39.879276, 41.384846, 26.191118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118652, 41.214619, 25.143963>,  <39.565304, 40.978634, 25.715290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118652, 41.214619, 25.143963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211605, 40.860298, 24.983290>,  <39.267376, 40.647705, 24.886885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211605, 40.860298, 24.983290>,  <39.118652, 41.214619, 25.143963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211605, 40.860298, 24.983290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557586, -0.459714, 0.691203,
		-0.796931, 0.063352, -0.600740,
		0.232379, -0.885805, -0.401684,
		39.281319, 40.594555, 24.862785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536045, 40.855568, 24.946480>,  <39.118652, 41.214619, 25.143963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536045, 40.855568, 24.946480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797413, 40.556274, 24.992418>,  <38.954231, 40.376698, 25.019981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797413, 40.556274, 24.992418>,  <38.536045, 40.855568, 24.946480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797413, 40.556274, 24.992418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686189, -0.521373, 0.507261,
		-0.319672, -0.410261, -0.854105,
		0.653417, -0.748235, 0.114849,
		38.993439, 40.331802, 25.026873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206875, 40.305527, 24.619305>,  <38.536045, 40.855568, 24.946480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206875, 40.305527, 24.619305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490547, 40.140266, 24.847818>,  <38.660751, 40.041111, 24.984926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490547, 40.140266, 24.847818>,  <38.206875, 40.305527, 24.619305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490547, 40.140266, 24.847818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697074, -0.532261, 0.480402,
		0.105592, -0.738920, -0.665468,
		0.709182, -0.413154, 0.571284,
		38.703300, 40.016319, 25.019203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050095, 39.554375, 24.613853>,  <38.206875, 40.305527, 24.619305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050095, 39.554375, 24.613853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254398, 39.610165, 24.953186>,  <38.376980, 39.643639, 25.156786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254398, 39.610165, 24.953186>,  <38.050095, 39.554375, 24.613853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254398, 39.610165, 24.953186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621159, -0.622331, 0.476305,
		0.594377, -0.770227, -0.231225,
		0.510762, 0.139477, 0.848333,
		38.407627, 39.652008, 25.207685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866783, 38.895199, 25.015398>,  <38.050095, 39.554375, 24.613853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866783, 38.895199, 25.015398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060200, 39.106171, 25.294828>,  <38.176250, 39.232754, 25.462486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060200, 39.106171, 25.294828>,  <37.866783, 38.895199, 25.015398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060200, 39.106171, 25.294828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496071, -0.492421, 0.715147,
		0.721182, -0.692345, 0.023537,
		0.483539, 0.527427, 0.698577,
		38.205261, 39.264400, 25.504402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101871, 38.393227, 25.443867>,  <37.866783, 38.895199, 25.015398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101871, 38.393227, 25.443867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087799, 38.725708, 25.665808>,  <38.079357, 38.925198, 25.798971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087799, 38.725708, 25.665808>,  <38.101871, 38.393227, 25.443867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087799, 38.725708, 25.665808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480042, -0.501006, 0.720106,
		0.876540, -0.241021, 0.416638,
		-0.035177, 0.831205, 0.554852,
		38.077248, 38.975071, 25.832264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241886, 38.214176, 26.106720>,  <38.101871, 38.393227, 25.443867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241886, 38.214176, 26.106720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070129, 38.570168, 26.168112>,  <37.967075, 38.783764, 26.204947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070129, 38.570168, 26.168112>,  <38.241886, 38.214176, 26.106720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070129, 38.570168, 26.168112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478021, -0.368161, 0.797467,
		0.766235, 0.269061, 0.583515,
		-0.429395, 0.889980, 0.153481,
		37.941311, 38.837162, 26.214155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358826, 38.335155, 26.830290>,  <38.241886, 38.214176, 26.106720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358826, 38.335155, 26.830290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049316, 38.568478, 26.731476>,  <37.863609, 38.708469, 26.672188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049316, 38.568478, 26.731476>,  <38.358826, 38.335155, 26.830290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049316, 38.568478, 26.731476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439729, -0.213901, 0.872287,
		0.455968, 0.783583, 0.422008,
		-0.773777, 0.583304, -0.247033,
		37.817184, 38.743469, 26.657366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243832, 38.814137, 27.374004>,  <38.358826, 38.335155, 26.830290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243832, 38.814137, 27.374004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.898884, 38.813431, 27.171495>,  <37.691914, 38.813007, 27.049990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.898884, 38.813431, 27.171495>,  <38.243832, 38.814137, 27.374004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898884, 38.813431, 27.171495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499205, -0.163580, 0.850903,
		-0.084315, 0.986529, 0.140187,
		-0.862372, -0.001762, -0.506272,
		37.640171, 38.812901, 27.019613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697655, 39.030350, 27.920177>,  <38.243832, 38.814137, 27.374004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697655, 39.030350, 27.920177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510094, 38.855289, 27.613298>,  <37.397556, 38.750252, 27.429171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510094, 38.855289, 27.613298>,  <37.697655, 39.030350, 27.920177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510094, 38.855289, 27.613298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728389, -0.299694, 0.616144,
		-0.499582, 0.847728, -0.178254,
		-0.468901, -0.437652, -0.767198,
		37.369423, 38.723995, 27.383139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068130, 39.280388, 28.059839>,  <37.697655, 39.030350, 27.920177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068130, 39.280388, 28.059839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031841, 38.958939, 27.824566>,  <37.010067, 38.766068, 27.683403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031841, 38.958939, 27.824566>,  <37.068130, 39.280388, 28.059839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031841, 38.958939, 27.824566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740005, -0.340850, 0.579840,
		-0.666455, 0.487862, -0.563762,
		-0.090724, -0.803624, -0.588182,
		37.004623, 38.717850, 27.648111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375870, 39.186584, 27.727654>,  <37.068130, 39.280388, 28.059839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375870, 39.186584, 27.727654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532158, 38.819054, 27.749912>,  <36.625931, 38.598534, 27.763268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532158, 38.819054, 27.749912>,  <36.375870, 39.186584, 27.727654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532158, 38.819054, 27.749912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824955, -0.322700, 0.464020,
		-0.408397, -0.227206, -0.884076,
		0.390719, -0.918826, 0.055645,
		36.649372, 38.543407, 27.766605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816238, 38.770248, 27.897936>,  <36.375870, 39.186584, 27.727654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816238, 38.770248, 27.897936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112823, 38.503716, 27.929541>,  <36.290775, 38.343796, 27.948503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112823, 38.503716, 27.929541>,  <35.816238, 38.770248, 27.897936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112823, 38.503716, 27.929541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550167, -0.536304, 0.640074,
		-0.384125, -0.518059, -0.764240,
		0.741461, -0.666327, 0.079011,
		36.335262, 38.303818, 27.953243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551159, 38.153324, 27.921375>,  <35.816238, 38.770248, 27.897936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551159, 38.153324, 27.921375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908623, 38.052723, 28.070032>,  <36.123100, 37.992363, 28.159225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908623, 38.052723, 28.070032>,  <35.551159, 38.153324, 27.921375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908623, 38.052723, 28.070032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447666, -0.556975, 0.699553,
		0.031059, -0.791535, -0.610334,
		0.893661, -0.251498, 0.371642,
		36.176720, 37.977272, 28.181524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531067, 37.468822, 27.961889>,  <35.551159, 38.153324, 27.921375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531067, 37.468822, 27.961889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810078, 37.586208, 28.223373>,  <35.977482, 37.656639, 28.380264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810078, 37.586208, 28.223373>,  <35.531067, 37.468822, 27.961889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810078, 37.586208, 28.223373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346869, -0.659996, 0.666399,
		0.627009, -0.691583, -0.358571,
		0.697525, 0.293461, 0.653712,
		36.019337, 37.674248, 28.419487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761364, 36.863308, 28.185358>,  <35.531067, 37.468822, 27.961889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761364, 36.863308, 28.185358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843452, 37.133469, 28.468687>,  <35.892704, 37.295567, 28.638683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843452, 37.133469, 28.468687>,  <35.761364, 36.863308, 28.185358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843452, 37.133469, 28.468687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148166, -0.693943, 0.704620,
		0.967435, -0.249552, -0.042341,
		0.205222, 0.675401, 0.708320,
		35.905018, 37.336090, 28.681183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118038, 36.579407, 28.759754>,  <35.761364, 36.863308, 28.185358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118038, 36.579407, 28.759754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029217, 36.917904, 28.953485>,  <35.975925, 37.121002, 29.069723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029217, 36.917904, 28.953485>,  <36.118038, 36.579407, 28.759754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029217, 36.917904, 28.953485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214447, -0.526951, 0.822396,
		0.951160, 0.078752, 0.298484,
		-0.222052, 0.846239, 0.484327,
		35.962601, 37.171776, 29.098783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490307, 36.610775, 29.311558>,  <36.118038, 36.579407, 28.759754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490307, 36.610775, 29.311558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170830, 36.841221, 29.381044>,  <35.979145, 36.979488, 29.422735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170830, 36.841221, 29.381044>,  <36.490307, 36.610775, 29.311558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170830, 36.841221, 29.381044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157065, -0.478278, 0.864049,
		0.580878, 0.662825, 0.472486,
		-0.798693, 0.576119, 0.173714,
		35.931221, 37.014057, 29.433159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518101, 36.509251, 29.969620>,  <36.490307, 36.610775, 29.311558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518101, 36.509251, 29.969620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153988, 36.641937, 29.870543>,  <35.935520, 36.721550, 29.811096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153988, 36.641937, 29.870543>,  <36.518101, 36.509251, 29.969620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153988, 36.641937, 29.870543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385093, -0.458860, 0.800719,
		0.151952, 0.824266, 0.545433,
		-0.910283, 0.331713, -0.247694,
		35.880901, 36.741451, 29.796234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187477, 36.790916, 30.631529>,  <36.518101, 36.509251, 29.969620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187477, 36.790916, 30.631529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872566, 36.741425, 30.389904>,  <35.683620, 36.711731, 30.244930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872566, 36.741425, 30.389904>,  <36.187477, 36.790916, 30.631529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872566, 36.741425, 30.389904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562295, -0.257947, 0.785676,
		-0.253024, 0.958204, 0.133505,
		-0.787276, -0.123726, -0.604060,
		35.636383, 36.704308, 30.208687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625118, 37.225273, 30.870407>,  <36.187477, 36.790916, 30.631529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625118, 37.225273, 30.870407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459770, 36.936611, 30.648296>,  <35.360561, 36.763412, 30.515030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459770, 36.936611, 30.648296>,  <35.625118, 37.225273, 30.870407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459770, 36.936611, 30.648296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617403, -0.226090, 0.753456,
		-0.669279, 0.654291, -0.352093,
		-0.413375, -0.721656, -0.555279,
		35.335758, 36.720116, 30.481712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860447, 37.208332, 30.975853>,  <35.625118, 37.225273, 30.870407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860447, 37.208332, 30.975853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949646, 36.843929, 30.837099>,  <35.003166, 36.625286, 30.753847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949646, 36.843929, 30.837099>,  <34.860447, 37.208332, 30.975853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949646, 36.843929, 30.837099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511203, -0.412280, 0.754120,
		-0.830026, 0.009162, -0.557649,
		0.222998, -0.911011, -0.346887,
		35.016544, 36.570625, 30.733032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175781, 36.847767, 30.845922>,  <34.860447, 37.208332, 30.975853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175781, 36.847767, 30.845922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463593, 36.572754, 30.885080>,  <34.636280, 36.407745, 30.908575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463593, 36.572754, 30.885080>,  <34.175781, 36.847767, 30.845922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463593, 36.572754, 30.885080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656172, -0.626901, 0.420040,
		-0.227419, -0.366466, -0.902210,
		0.719527, -0.687530, 0.097896,
		34.679451, 36.366493, 30.914450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828423, 36.194248, 30.871468>,  <34.175781, 36.847767, 30.845922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828423, 36.194248, 30.871468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193275, 36.077145, 30.986219>,  <34.412189, 36.006882, 31.055071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193275, 36.077145, 30.986219>,  <33.828423, 36.194248, 30.871468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193275, 36.077145, 30.986219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409805, -0.665267, 0.624083,
		0.008150, -0.686815, -0.726787,
		0.912137, -0.292755, 0.286882,
		34.466915, 35.989319, 31.072285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908092, 35.433548, 30.761417>,  <33.828423, 36.194248, 30.871468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908092, 35.433548, 30.761417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159115, 35.559784, 31.046116>,  <34.309727, 35.635525, 31.216934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159115, 35.559784, 31.046116>,  <33.908092, 35.433548, 30.761417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159115, 35.559784, 31.046116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566911, -0.441374, 0.695558,
		0.533657, -0.839995, -0.098074,
		0.627553, 0.315590, 0.711744,
		34.347382, 35.654461, 31.259640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030262, 34.897778, 31.169224>,  <33.908092, 35.433548, 30.761417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030262, 34.897778, 31.169224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163651, 35.171886, 31.428207>,  <34.243683, 35.336349, 31.583597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163651, 35.171886, 31.428207>,  <34.030262, 34.897778, 31.169224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163651, 35.171886, 31.428207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297334, -0.575272, 0.762007,
		0.894644, -0.446621, 0.011916,
		0.333473, 0.685268, 0.647459,
		34.263691, 35.377468, 31.622446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210770, 34.441288, 31.736370>,  <34.030262, 34.897778, 31.169224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210770, 34.441288, 31.736370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193573, 34.815662, 31.876181>,  <34.183254, 35.040287, 31.960066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193573, 34.815662, 31.876181>,  <34.210770, 34.441288, 31.736370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193573, 34.815662, 31.876181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418108, -0.334592, 0.844532,
		0.907380, -0.109834, 0.405707,
		-0.042988, 0.935941, 0.349524,
		34.180676, 35.096443, 31.981037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492470, 34.367558, 32.430283>,  <34.210770, 34.441288, 31.736370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492470, 34.367558, 32.430283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282135, 34.707607, 32.419014>,  <34.155933, 34.911636, 32.412254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282135, 34.707607, 32.419014>,  <34.492470, 34.367558, 32.430283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282135, 34.707607, 32.419014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462941, -0.258250, 0.847934,
		0.713571, 0.458914, 0.529353,
		-0.525834, 0.850120, -0.028170,
		34.124386, 34.962643, 32.410564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522449, 34.661720, 33.142757>,  <34.492470, 34.367558, 32.430283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522449, 34.661720, 33.142757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200459, 34.782291, 32.938347>,  <34.007263, 34.854637, 32.815701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200459, 34.782291, 32.938347>,  <34.522449, 34.661720, 33.142757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200459, 34.782291, 32.938347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579536, -0.215023, 0.786068,
		0.127064, 0.928926, 0.347781,
		-0.804980, 0.301433, -0.511025,
		33.958965, 34.872723, 32.785038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054386, 34.927830, 33.658939>,  <34.522449, 34.661720, 33.142757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054386, 34.927830, 33.658939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812691, 34.864124, 33.346649>,  <33.667671, 34.825901, 33.159275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812691, 34.864124, 33.346649>,  <34.054386, 34.927830, 33.658939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812691, 34.864124, 33.346649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731989, -0.276135, 0.622850,
		-0.314780, 0.947832, 0.050276,
		-0.604240, -0.159259, -0.780724,
		33.631420, 34.816345, 33.112431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483467, 35.166000, 33.860664>,  <34.054386, 34.927830, 33.658939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483467, 35.166000, 33.860664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352505, 34.941917, 33.556301>,  <33.273930, 34.807468, 33.373684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352505, 34.941917, 33.556301>,  <33.483467, 35.166000, 33.860664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352505, 34.941917, 33.556301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709707, -0.385839, 0.589444,
		-0.623798, 0.733004, -0.271260,
		-0.327402, -0.560209, -0.760904,
		33.254284, 34.773853, 33.328030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764885, 35.275711, 33.867195>,  <33.483467, 35.166000, 33.860664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764885, 35.275711, 33.867195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789345, 34.939278, 33.652222>,  <32.804020, 34.737419, 33.523235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789345, 34.939278, 33.652222>,  <32.764885, 35.275711, 33.867195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789345, 34.939278, 33.652222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823448, -0.346809, 0.449063,
		-0.564087, 0.415092, -0.713796,
		0.061148, -0.841084, -0.537437,
		32.807690, 34.686951, 33.490990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148090, 35.176727, 33.378353>,  <32.764885, 35.275711, 33.867195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148090, 35.176727, 33.378353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306911, 34.821678, 33.471722>,  <32.402203, 34.608650, 33.527744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306911, 34.821678, 33.471722>,  <32.148090, 35.176727, 33.378353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306911, 34.821678, 33.471722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880233, -0.296263, 0.370700,
		-0.259885, -0.352654, -0.898941,
		0.397051, -0.887617, 0.233424,
		32.426025, 34.555393, 33.541748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528669, 34.833954, 33.267403>,  <32.148090, 35.176727, 33.378353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528669, 34.833954, 33.267403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764179, 34.565231, 33.447193>,  <31.905485, 34.403999, 33.555065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764179, 34.565231, 33.447193>,  <31.528669, 34.833954, 33.267403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764179, 34.565231, 33.447193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806395, -0.450065, 0.383625,
		-0.055429, -0.588321, -0.806726,
		0.588774, -0.671804, 0.449472,
		31.940811, 34.363689, 33.582035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291426, 34.115021, 33.208546>,  <31.528669, 34.833954, 33.267403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291426, 34.115021, 33.208546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532295, 34.085205, 33.526497>,  <31.676817, 34.067318, 33.717266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532295, 34.085205, 33.526497>,  <31.291426, 34.115021, 33.208546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532295, 34.085205, 33.526497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740554, -0.424121, 0.521249,
		0.298274, -0.902533, -0.310591,
		0.602173, -0.074534, 0.794879,
		31.712948, 34.062843, 33.764961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298494, 33.446278, 33.361511>,  <31.291426, 34.115021, 33.208546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298494, 33.446278, 33.361511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399153, 33.623234, 33.705830>,  <31.459547, 33.729408, 33.912422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399153, 33.623234, 33.705830>,  <31.298494, 33.446278, 33.361511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399153, 33.623234, 33.705830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672187, -0.560007, 0.484311,
		0.696305, -0.700489, 0.156445,
		0.251645, 0.442388, 0.860794,
		31.474646, 33.755951, 33.964069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.401096, 32.940548, 33.955864>,  <31.298494, 33.446278, 33.361511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.401096, 32.940548, 33.955864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303715, 33.278191, 34.146954>,  <31.245285, 33.480774, 34.261608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303715, 33.278191, 34.146954>,  <31.401096, 32.940548, 33.955864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303715, 33.278191, 34.146954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564785, -0.523797, 0.637695,
		0.788510, -0.114560, 0.604258,
		-0.243454, 0.844105, 0.477721,
		31.230679, 33.531422, 34.290268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209732, 32.737373, 34.660648>,  <31.401096, 32.940548, 33.955864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209732, 32.737373, 34.660648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.071762, 33.112682, 34.650249>,  <30.988979, 33.337868, 34.644009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.071762, 33.112682, 34.650249>,  <31.209732, 32.737373, 34.660648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071762, 33.112682, 34.650249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732928, -0.251928, 0.631941,
		0.586380, 0.237030, 0.774580,
		-0.344927, 0.938269, -0.026000,
		30.968285, 33.394161, 34.642448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043831, 32.875267, 35.275063>,  <31.209732, 32.737373, 34.660648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043831, 32.875267, 35.275063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.846987, 33.191795, 35.129932>,  <30.728880, 33.381714, 35.042854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.846987, 33.191795, 35.129932>,  <31.043831, 32.875267, 35.275063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846987, 33.191795, 35.129932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737291, -0.157269, 0.657015,
		0.462849, 0.590830, 0.660826,
		-0.492111, 0.791320, -0.362822,
		30.699354, 33.429192, 35.021088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.799156, 33.289196, 35.838432>,  <31.043831, 32.875267, 35.275063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.799156, 33.289196, 35.838432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.548075, 33.404522, 35.549194>,  <30.397427, 33.473717, 35.375652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.548075, 33.404522, 35.549194>,  <30.799156, 33.289196, 35.838432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548075, 33.404522, 35.549194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774839, -0.141995, 0.616005,
		0.074929, 0.946948, 0.312529,
		-0.627702, 0.288316, -0.723093,
		30.359764, 33.491016, 35.332268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306381, 33.649273, 36.171337>,  <30.799156, 33.289196, 35.838432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306381, 33.649273, 36.171337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.149754, 33.547333, 35.817677>,  <30.055777, 33.486168, 35.605480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.149754, 33.547333, 35.817677>,  <30.306381, 33.649273, 36.171337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.149754, 33.547333, 35.817677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837710, -0.298792, 0.457126,
		-0.380676, 0.919660, -0.096492,
		-0.391570, -0.254850, -0.884152,
		30.032282, 33.470879, 35.552429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218796, 34.366451, 36.315155>,  <30.306381, 33.649273, 36.171337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218796, 34.366451, 36.315155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598553, 34.252708, 36.368519>,  <30.826406, 34.184464, 36.400536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598553, 34.252708, 36.368519>,  <30.218796, 34.366451, 36.315155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.598553, 34.252708, 36.368519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012258, 0.390872, 0.920363,
		-0.313854, -0.875421, 0.367605,
		0.949392, -0.284354, 0.133408,
		30.883369, 34.167404, 36.408543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.413488, 33.946030, 36.829597>,  <30.218796, 34.366451, 36.315155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.413488, 33.946030, 36.829597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772346, 34.120739, 36.803181>,  <30.987661, 34.225563, 36.787331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772346, 34.120739, 36.803181>,  <30.413488, 33.946030, 36.829597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772346, 34.120739, 36.803181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021927, 0.193357, 0.980883,
		0.441196, -0.878544, 0.183046,
		0.897143, 0.436776, -0.066044,
		31.041489, 34.251770, 36.783367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896093, 33.623718, 37.439236>,  <30.413488, 33.946030, 36.829597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896093, 33.623718, 37.439236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974377, 33.995224, 37.313324>,  <31.021347, 34.218128, 37.237778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974377, 33.995224, 37.313324>,  <30.896093, 33.623718, 37.439236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974377, 33.995224, 37.313324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194020, 0.277972, 0.940791,
		0.961277, -0.245195, -0.125799,
		0.195708, 0.928769, -0.314781,
		31.033089, 34.273853, 37.218891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348475, 33.826035, 37.886688>,  <30.896093, 33.623718, 37.439236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348475, 33.826035, 37.886688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284618, 34.172508, 37.697269>,  <31.246305, 34.380394, 37.583618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284618, 34.172508, 37.697269>,  <31.348475, 33.826035, 37.886688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284618, 34.172508, 37.697269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382398, 0.496503, 0.779267,
		0.910103, -0.056681, -0.410488,
		-0.159639, 0.866183, -0.473543,
		31.236727, 34.432362, 37.555206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995857, 34.297203, 37.870121>,  <31.348475, 33.826035, 37.886688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995857, 34.297203, 37.870121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672552, 34.529564, 37.831604>,  <31.478569, 34.668980, 37.808495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672552, 34.529564, 37.831604>,  <31.995857, 34.297203, 37.870121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672552, 34.529564, 37.831604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338093, 0.591728, 0.731813,
		0.482086, 0.558942, -0.674668,
		-0.808261, 0.580898, -0.096290,
		31.430073, 34.703835, 37.802715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187420, 34.873592, 37.739452>,  <31.995857, 34.297203, 37.870121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187420, 34.873592, 37.739452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828079, 34.911613, 37.910995>,  <31.612474, 34.934425, 38.013924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828079, 34.911613, 37.910995>,  <32.187420, 34.873592, 37.739452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828079, 34.911613, 37.910995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402187, 0.570595, 0.716008,
		-0.176645, 0.815712, -0.550828,
		-0.898355, 0.095057, 0.428861,
		31.558573, 34.940132, 38.039654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066067, 35.638195, 37.747265>,  <32.187420, 34.873592, 37.739452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066067, 35.638195, 37.747265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875034, 35.449650, 38.043839>,  <31.760414, 35.336521, 38.221783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875034, 35.449650, 38.043839>,  <32.066067, 35.638195, 37.747265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875034, 35.449650, 38.043839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382039, 0.648523, 0.658380,
		-0.791178, 0.597688, -0.129641,
		-0.477581, -0.471367, 0.741437,
		31.731760, 35.308239, 38.266270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610126, 36.000576, 38.201054>,  <32.066067, 35.638195, 37.747265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610126, 36.000576, 38.201054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707787, 35.696972, 38.442482>,  <31.766382, 35.514809, 38.587337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707787, 35.696972, 38.442482>,  <31.610126, 36.000576, 38.201054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707787, 35.696972, 38.442482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353552, 0.649234, 0.673421,
		-0.902991, 0.048978, 0.426859,
		0.244148, -0.759010, 0.603569,
		31.781031, 35.469269, 38.623554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290554, 36.062630, 38.902172>,  <31.610126, 36.000576, 38.201054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290554, 36.062630, 38.902172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644657, 35.878605, 38.929489>,  <31.857119, 35.768188, 38.945881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644657, 35.878605, 38.929489>,  <31.290554, 36.062630, 38.902172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644657, 35.878605, 38.929489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281394, 0.646696, 0.708944,
		-0.370324, -0.608380, 0.701950,
		0.885256, -0.460063, 0.068292,
		31.910234, 35.740585, 38.949978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370514, 35.782639, 39.530231>,  <31.290554, 36.062630, 38.902172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370514, 35.782639, 39.530231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732927, 35.854519, 39.376968>,  <31.950375, 35.897648, 39.285011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732927, 35.854519, 39.376968>,  <31.370514, 35.782639, 39.530231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732927, 35.854519, 39.376968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111429, 0.772132, 0.625617,
		0.408273, -0.609525, 0.679553,
		0.906034, 0.179700, -0.383159,
		32.004738, 35.908428, 39.262020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778803, 36.055130, 40.088287>,  <31.370514, 35.782639, 39.530231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778803, 36.055130, 40.088287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924490, 36.159721, 39.730747>,  <32.011902, 36.222477, 39.516224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924490, 36.159721, 39.730747>,  <31.778803, 36.055130, 40.088287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924490, 36.159721, 39.730747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261769, 0.892341, 0.367701,
		0.893764, -0.367910, 0.256571,
		0.364230, 0.261476, -0.893850,
		32.033756, 36.238167, 39.462593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400513, 36.381756, 40.322384>,  <31.778803, 36.055130, 40.088287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400513, 36.381756, 40.322384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299366, 36.508781, 39.956825>,  <32.238678, 36.584999, 39.737488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299366, 36.508781, 39.956825>,  <32.400513, 36.381756, 40.322384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299366, 36.508781, 39.956825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225056, 0.937992, 0.263669,
		0.940963, -0.139006, -0.308653,
		-0.252862, 0.317566, -0.913900,
		32.223507, 36.604050, 39.682655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884361, 36.816719, 40.197826>,  <32.400513, 36.381756, 40.322384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884361, 36.816719, 40.197826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591694, 36.912903, 39.942692>,  <32.416092, 36.970615, 39.789612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591694, 36.912903, 39.942692>,  <32.884361, 36.816719, 40.197826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591694, 36.912903, 39.942692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212601, 0.969539, 0.121634,
		0.647655, -0.046608, -0.760507,
		-0.731672, 0.240461, -0.637835,
		32.372192, 36.985043, 39.751343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142689, 37.114391, 39.451691>,  <32.884361, 36.816719, 40.197826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142689, 37.114391, 39.451691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838970, 37.233631, 39.683071>,  <32.656738, 37.305176, 39.821899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838970, 37.233631, 39.683071>,  <33.142689, 37.114391, 39.451691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838970, 37.233631, 39.683071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430274, 0.896848, 0.102605,
		-0.488197, 0.326800, -0.809237,
		-0.759294, 0.298103, 0.578452,
		32.611183, 37.323063, 39.856606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925705, 37.811234, 39.279751>,  <33.142689, 37.114391, 39.451691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925705, 37.811234, 39.279751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830746, 37.777054, 39.666809>,  <32.773769, 37.756546, 39.899044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830746, 37.777054, 39.666809>,  <32.925705, 37.811234, 39.279751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830746, 37.777054, 39.666809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338920, 0.926244, 0.164943,
		-0.910370, 0.367112, -0.190931,
		-0.237401, -0.085449, 0.967646,
		32.759525, 37.751419, 39.957104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412285, 38.319580, 39.595791>,  <32.925705, 37.811234, 39.279751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412285, 38.319580, 39.595791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704048, 38.181679, 39.832134>,  <32.879105, 38.098938, 39.973938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704048, 38.181679, 39.832134>,  <32.412285, 38.319580, 39.595791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704048, 38.181679, 39.832134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374582, 0.924013, 0.076728,
		-0.572411, 0.165358, 0.803121,
		0.729407, -0.344755, 0.590855,
		32.922871, 38.078251, 40.009392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392609, 38.761990, 40.159519>,  <32.412285, 38.319580, 39.595791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392609, 38.761990, 40.159519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758289, 38.601528, 40.136505>,  <32.977699, 38.505253, 40.122696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758289, 38.601528, 40.136505>,  <32.392609, 38.761990, 40.159519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758289, 38.601528, 40.136505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404196, 0.892298, 0.201072,
		-0.029324, -0.207075, 0.977885,
		0.914202, -0.401154, -0.057533,
		33.032551, 38.481182, 40.119244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714024, 38.557461, 40.860794>,  <32.392609, 38.761990, 40.159519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714024, 38.557461, 40.860794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866203, 38.615543, 41.226128>,  <32.957512, 38.650394, 41.445328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866203, 38.615543, 41.226128>,  <32.714024, 38.557461, 40.860794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866203, 38.615543, 41.226128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881591, 0.241412, -0.405607,
		-0.279386, 0.959497, -0.036168,
		0.380448, 0.145206, 0.913332,
		32.980339, 38.659103, 41.500126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055466, 39.241867, 40.874134>,  <32.714024, 38.557461, 40.860794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055466, 39.241867, 40.874134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221188, 39.051807, 41.184639>,  <33.320621, 38.937771, 41.370941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221188, 39.051807, 41.184639>,  <33.055466, 39.241867, 40.874134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221188, 39.051807, 41.184639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910137, 0.218151, -0.352222,
		-0.001985, 0.852434, 0.522830,
		0.414302, -0.475148, 0.776265,
		33.345478, 38.909264, 41.417519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561909, 39.726284, 41.220848>,  <33.055466, 39.241867, 40.874134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561909, 39.726284, 41.220848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643894, 39.336876, 41.261326>,  <33.693085, 39.103230, 41.285614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643894, 39.336876, 41.261326>,  <33.561909, 39.726284, 41.220848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643894, 39.336876, 41.261326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909702, 0.151325, -0.386709,
		0.361157, 0.171318, 0.916633,
		0.204960, -0.973525, 0.101197,
		33.705383, 39.044819, 41.291683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094910, 39.755577, 41.595264>,  <33.561909, 39.726284, 41.220848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094910, 39.755577, 41.595264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136414, 39.387375, 41.444584>,  <34.161316, 39.166454, 41.354176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136414, 39.387375, 41.444584>,  <34.094910, 39.755577, 41.595264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136414, 39.387375, 41.444584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978174, 0.162996, -0.128867,
		0.180023, -0.355104, 0.917329,
		0.103760, -0.920507, -0.376697,
		34.167542, 39.111221, 41.331573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720222, 39.603870, 41.907021>,  <34.094910, 39.755577, 41.595264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720222, 39.603870, 41.907021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647633, 39.331860, 41.622871>,  <34.604080, 39.168652, 41.452381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647633, 39.331860, 41.622871>,  <34.720222, 39.603870, 41.907021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647633, 39.331860, 41.622871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982730, -0.098816, -0.156452,
		0.036196, -0.726493, 0.686220,
		-0.181471, -0.680032, -0.710370,
		34.593193, 39.127850, 41.409760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099831, 39.107796, 42.204533>,  <34.720222, 39.603870, 41.907021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099831, 39.107796, 42.204533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044579, 39.100525, 41.808434>,  <35.011425, 39.096165, 41.570774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044579, 39.100525, 41.808434>,  <35.099831, 39.107796, 42.204533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044579, 39.100525, 41.808434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960265, -0.247272, -0.129413,
		-0.242508, -0.968776, 0.051610,
		-0.138134, -0.018176, -0.990247,
		35.003139, 39.095074, 41.511360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394318, 39.690178, 42.430237>,  <35.099831, 39.107796, 42.204533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394318, 39.690178, 42.430237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720356, 39.794769, 42.223454>,  <35.915981, 39.857525, 42.099384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720356, 39.794769, 42.223454>,  <35.394318, 39.690178, 42.430237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720356, 39.794769, 42.223454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296743, 0.577952, 0.760207,
		0.497555, -0.773046, 0.393496,
		0.815097, 0.261477, -0.516959,
		35.964886, 39.873211, 42.068367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194088, 39.531395, 42.716217>,  <35.394318, 39.690178, 42.430237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194088, 39.531395, 42.716217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139561, 39.858276, 42.492218>,  <36.106846, 40.054405, 42.357819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139561, 39.858276, 42.492218>,  <36.194088, 39.531395, 42.716217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139561, 39.858276, 42.492218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232558, 0.575875, 0.783764,
		0.962982, -0.023391, -0.268550,
		-0.136318, 0.817203, -0.559996,
		36.098667, 40.103436, 42.324219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693893, 39.239700, 42.131935>,  <36.194088, 39.531395, 42.716217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693893, 39.239700, 42.131935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063114, 39.203819, 42.281567>,  <37.284645, 39.182289, 42.371346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063114, 39.203819, 42.281567>,  <36.693893, 39.239700, 42.131935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063114, 39.203819, 42.281567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361700, 0.128682, 0.923371,
		-0.130967, -0.987621, 0.086334,
		0.923050, -0.089704, 0.374076,
		37.340031, 39.176910, 42.393791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019211, 39.697495, 41.659492>,  <36.693893, 39.239700, 42.131935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019211, 39.697495, 41.659492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972786, 39.568512, 41.283714>,  <36.944931, 39.491123, 41.058247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972786, 39.568512, 41.283714>,  <37.019211, 39.697495, 41.659492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972786, 39.568512, 41.283714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356488, -0.869290, 0.342419,
		-0.927063, 0.374641, -0.014063,
		-0.116060, -0.322457, -0.939442,
		36.937969, 39.471775, 41.001881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385010, 40.177059, 41.985424>,  <37.019211, 39.697495, 41.659492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385010, 40.177059, 41.985424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643414, 40.143799, 42.288937>,  <37.798458, 40.123840, 42.471046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643414, 40.143799, 42.288937>,  <37.385010, 40.177059, 41.985424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643414, 40.143799, 42.288937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670114, -0.414240, -0.615915,
		0.365534, 0.906361, -0.211882,
		0.646012, -0.083153, 0.758785,
		37.837215, 40.118855, 42.516571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974503, 40.458145, 41.699631>,  <37.385010, 40.177059, 41.985424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974503, 40.458145, 41.699631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049435, 40.177963, 41.975101>,  <38.094395, 40.009853, 42.140385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049435, 40.177963, 41.975101>,  <37.974503, 40.458145, 41.699631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049435, 40.177963, 41.975101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641693, -0.443555, -0.625691,
		0.743731, 0.559131, 0.366382,
		0.187333, -0.700451, 0.688676,
		38.105633, 39.967827, 42.181705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650635, 40.390739, 41.712433>,  <37.974503, 40.458145, 41.699631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650635, 40.390739, 41.712433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492023, 40.043659, 41.832336>,  <38.396854, 39.835411, 41.904278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492023, 40.043659, 41.832336>,  <38.650635, 40.390739, 41.712433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492023, 40.043659, 41.832336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601372, -0.492235, -0.629330,
		0.693623, -0.069282, 0.716998,
		-0.396533, -0.867701, 0.299762,
		38.373062, 39.783348, 41.922264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976437, 40.751068, 41.215771>,  <38.650635, 40.390739, 41.712433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976437, 40.751068, 41.215771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982708, 40.992119, 40.896622>,  <38.986469, 41.136749, 40.705132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982708, 40.992119, 40.896622>,  <38.976437, 40.751068, 41.215771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982708, 40.992119, 40.896622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705534, -0.572100, -0.418239,
		-0.708503, -0.556365, -0.434144,
		0.015680, 0.602627, -0.797869,
		38.987411, 41.172905, 40.657261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704235, 40.480907, 40.578907>,  <38.976437, 40.751068, 41.215771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704235, 40.480907, 40.578907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928062, 40.760384, 40.400597>,  <39.062359, 40.928070, 40.293610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928062, 40.760384, 40.400597>,  <38.704235, 40.480907, 40.578907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928062, 40.760384, 40.400597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361492, -0.689761, -0.627338,
		-0.745795, 0.189892, -0.638538,
		0.559565, 0.698692, -0.445776,
		39.095932, 40.969990, 40.266865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497108, 40.562550, 39.845581>,  <38.704235, 40.480907, 40.578907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497108, 40.562550, 39.845581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885761, 40.657131, 39.843811>,  <39.118954, 40.713879, 39.842747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885761, 40.657131, 39.843811>,  <38.497108, 40.562550, 39.845581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885761, 40.657131, 39.843811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155069, -0.651131, -0.742955,
		-0.178557, 0.721193, -0.669327,
		0.971633, 0.236452, -0.004429,
		39.177250, 40.728065, 39.842484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603756, 40.623497, 39.071217>,  <38.497108, 40.562550, 39.845581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603756, 40.623497, 39.071217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916225, 40.580776, 39.317261>,  <39.103706, 40.555145, 39.464886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916225, 40.580776, 39.317261>,  <38.603756, 40.623497, 39.071217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916225, 40.580776, 39.317261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328346, -0.767701, -0.550294,
		0.530990, 0.631845, -0.564643,
		0.781177, -0.106802, 0.615106,
		39.150578, 40.548737, 39.501793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164806, 40.677700, 38.627895>,  <38.603756, 40.623497, 39.071217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164806, 40.677700, 38.627895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188179, 40.453854, 38.958572>,  <39.202202, 40.319546, 39.156979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188179, 40.453854, 38.958572>,  <39.164806, 40.677700, 38.627895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188179, 40.453854, 38.958572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340064, -0.767422, -0.543526,
		0.938585, 0.312886, 0.145465,
		0.058428, -0.559613, 0.826692,
		39.205708, 40.285969, 39.206581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254227, 40.000359, 38.263470>,  <39.164806, 40.677700, 38.627895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254227, 40.000359, 38.263470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100910, 39.777702, 38.558289>,  <39.008919, 39.644108, 38.735180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100910, 39.777702, 38.558289>,  <39.254227, 40.000359, 38.263470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100910, 39.777702, 38.558289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741445, 0.290420, 0.604910,
		-0.550769, 0.778339, 0.301399,
		-0.383293, -0.556636, 0.737050,
		38.985924, 39.610710, 38.779404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807919, 40.276276, 37.782364>,  <39.254227, 40.000359, 38.263470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807919, 40.276276, 37.782364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497295, 40.522255, 37.837212>,  <38.310921, 40.669842, 37.870121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497295, 40.522255, 37.837212>,  <38.807919, 40.276276, 37.782364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497295, 40.522255, 37.837212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503217, -0.736323, 0.452328,
		0.379119, 0.282259, 0.881248,
		-0.776557, 0.614945, 0.137117,
		38.264328, 40.706738, 37.878345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655323, 39.473892, 37.637764>,  <38.807919, 40.276276, 37.782364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655323, 39.473892, 37.637764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954613, 39.339550, 37.408901>,  <39.134186, 39.258945, 37.271584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954613, 39.339550, 37.408901>,  <38.655323, 39.473892, 37.637764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954613, 39.339550, 37.408901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472060, -0.336478, 0.814826,
		-0.466180, -0.879765, -0.093218,
		0.748221, -0.335851, -0.572161,
		39.179081, 39.238796, 37.237251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790318, 38.725384, 37.712158>,  <38.655323, 39.473892, 37.637764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790318, 38.725384, 37.712158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126461, 38.923313, 37.623661>,  <39.328148, 39.042072, 37.570564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126461, 38.923313, 37.623661>,  <38.790318, 38.725384, 37.712158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126461, 38.923313, 37.623661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429257, -0.358311, 0.829067,
		0.330970, -0.791681, -0.513516,
		0.840356, 0.494827, -0.221244,
		39.378567, 39.071762, 37.557289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213036, 38.091179, 37.603901>,  <38.790318, 38.725384, 37.712158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213036, 38.091179, 37.603901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104534, 37.867977, 37.917603>,  <39.039433, 37.734055, 38.105824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104534, 37.867977, 37.917603>,  <39.213036, 38.091179, 37.603901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104534, 37.867977, 37.917603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915867, -0.400201, 0.032031,
		0.295985, 0.726958, 0.619616,
		-0.271257, -0.558006, 0.784251,
		39.023159, 37.700577, 38.152878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811367, 37.631065, 37.159626>,  <39.213036, 38.091179, 37.603901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811367, 37.631065, 37.159626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005966, 37.978165, 37.118969>,  <39.122726, 38.186424, 37.094574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005966, 37.978165, 37.118969>,  <38.811367, 37.631065, 37.159626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005966, 37.978165, 37.118969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787878, -0.486021, -0.378195,
		-0.377579, 0.103909, -0.920129,
		0.486499, 0.867748, -0.101644,
		39.151917, 38.238487, 37.088474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879585, 37.724152, 36.437706>,  <38.811367, 37.631065, 37.159626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879585, 37.724152, 36.437706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180134, 37.888268, 36.644432>,  <39.360462, 37.986736, 36.768467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180134, 37.888268, 36.644432>,  <38.879585, 37.724152, 36.437706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180134, 37.888268, 36.644432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659714, -0.484410, -0.574564,
		0.014617, 0.772666, -0.634645,
		0.751375, 0.410286, 0.516819,
		39.405548, 38.011353, 36.799477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265228, 37.907017, 35.996368>,  <38.879585, 37.724152, 36.437706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265228, 37.907017, 35.996368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516968, 37.852894, 36.302471>,  <39.668011, 37.820419, 36.486134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516968, 37.852894, 36.302471>,  <39.265228, 37.907017, 35.996368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516968, 37.852894, 36.302471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612796, -0.519175, -0.595767,
		0.477913, 0.843889, -0.243824,
		0.629349, -0.135311, 0.765252,
		39.705772, 37.812302, 36.532047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934994, 38.092594, 35.832222>,  <39.265228, 37.907017, 35.996368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934994, 38.092594, 35.832222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011993, 37.822384, 36.116928>,  <40.058193, 37.660255, 36.287750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011993, 37.822384, 36.116928>,  <39.934994, 38.092594, 35.832222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011993, 37.822384, 36.116928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717797, -0.397641, -0.571532,
		0.669112, 0.620919, 0.408348,
		0.192499, -0.675530, 0.711761,
		40.069744, 37.619724, 36.330456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654270, 38.083469, 36.101719>,  <39.934994, 38.092594, 35.832222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654270, 38.083469, 36.101719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509293, 37.710766, 36.093239>,  <40.422306, 37.487144, 36.088150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509293, 37.710766, 36.093239>,  <40.654270, 38.083469, 36.101719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509293, 37.710766, 36.093239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815480, -0.306039, -0.491256,
		0.451247, -0.195340, 0.870757,
		-0.362448, -0.931763, -0.021196,
		40.400558, 37.431236, 36.086880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094078, 37.534649, 36.484161>,  <40.654270, 38.083469, 36.101719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094078, 37.534649, 36.484161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879578, 37.386326, 36.180862>,  <40.750877, 37.297333, 35.998882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879578, 37.386326, 36.180862>,  <41.094078, 37.534649, 36.484161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879578, 37.386326, 36.180862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823864, -0.425283, -0.374677,
		-0.183535, -0.825612, 0.533554,
		-0.536249, -0.370810, -0.758246,
		40.718704, 37.275082, 35.953388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107296, 36.812683, 36.521561>,  <41.094078, 37.534649, 36.484161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107296, 36.812683, 36.521561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015835, 36.925117, 36.148743>,  <40.960957, 36.992577, 35.925053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015835, 36.925117, 36.148743>,  <41.107296, 36.812683, 36.521561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015835, 36.925117, 36.148743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883229, -0.342750, -0.320047,
		-0.409418, -0.896390, -0.169889,
		-0.228657, 0.281084, -0.932045,
		40.947239, 37.009441, 35.869129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207684, 36.277710, 35.943325>,  <41.107296, 36.812683, 36.521561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207684, 36.277710, 35.943325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.232937, 36.620251, 35.738319>,  <41.248089, 36.825775, 35.615318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.232937, 36.620251, 35.738319>,  <41.207684, 36.277710, 35.943325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.232937, 36.620251, 35.738319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872092, -0.297032, -0.388879,
		-0.485252, -0.422404, -0.765575,
		0.063137, 0.856357, -0.512510,
		41.251877, 36.877159, 35.584568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552498, 36.212341, 35.379982>,  <41.207684, 36.277710, 35.943325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552498, 36.212341, 35.379982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624088, 36.605473, 35.361977>,  <41.667042, 36.841351, 35.351173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624088, 36.605473, 35.361977>,  <41.552498, 36.212341, 35.379982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624088, 36.605473, 35.361977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977275, -0.182873, -0.107193,
		-0.113583, -0.024806, -0.993219,
		0.178974, 0.982824, -0.045014,
		41.677780, 36.900318, 35.348473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.941593, 36.273949, 34.737591>,  <41.552498, 36.212341, 35.379982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.941593, 36.273949, 34.737591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.021301, 36.540607, 35.024887>,  <42.069126, 36.700603, 35.197266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.021301, 36.540607, 35.024887>,  <41.941593, 36.273949, 34.737591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.021301, 36.540607, 35.024887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975830, -0.202089, -0.083161,
		0.089711, 0.717454, -0.690805,
		0.199268, 0.666648, 0.718243,
		42.081081, 36.740601, 35.240360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491035, 36.649868, 34.473682>,  <41.941593, 36.273949, 34.737591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.491035, 36.649868, 34.473682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510658, 36.670937, 34.872646>,  <42.522430, 36.683578, 35.112022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510658, 36.670937, 34.872646>,  <42.491035, 36.649868, 34.473682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510658, 36.670937, 34.872646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962987, -0.267493, -0.033236,
		0.265048, 0.962119, -0.063845,
		0.049055, 0.052673, 0.997406,
		42.525375, 36.686737, 35.171867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.215248, 37.058804, 34.655468>,  <42.491035, 36.649868, 34.473682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.215248, 37.058804, 34.655468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.071949, 36.790169, 34.914894>,  <42.985970, 36.628986, 35.070549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.071949, 36.790169, 34.914894>,  <43.215248, 37.058804, 34.655468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.071949, 36.790169, 34.914894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908796, -0.409989, 0.077445,
		0.213892, 0.617154, 0.757213,
		-0.358245, -0.671587, 0.648561,
		42.964474, 36.588692, 35.109463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.789665, 36.862244, 35.048180>,  <43.215248, 37.058804, 34.655468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.789665, 36.862244, 35.048180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.570709, 36.562767, 35.197750>,  <43.439335, 36.383080, 35.287495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.570709, 36.562767, 35.197750>,  <43.789665, 36.862244, 35.048180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.570709, 36.562767, 35.197750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835027, -0.458947, 0.303475,
		-0.055595, 0.478360, 0.876402,
		-0.547393, -0.748691, 0.373929,
		43.406490, 36.338161, 35.309929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.856480, 36.797848, 35.822094>,  <43.789665, 36.862244, 35.048180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.856480, 36.797848, 35.822094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.765575, 36.453182, 36.003597>,  <43.711033, 36.246384, 36.112499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.765575, 36.453182, 36.003597>,  <43.856480, 36.797848, 35.822094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.765575, 36.453182, 36.003597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848127, -0.404108, -0.342605,
		0.478576, 0.306986, 0.822633,
		-0.227257, -0.861659, 0.453759,
		43.697399, 36.194683, 36.139725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.452435, 36.535812, 36.106667>,  <43.856480, 36.797848, 35.822094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.452435, 36.535812, 36.106667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.243496, 36.202915, 36.032330>,  <44.118134, 36.003178, 35.987728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.243496, 36.202915, 36.032330>,  <44.452435, 36.535812, 36.106667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.243496, 36.202915, 36.032330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826789, -0.440924, -0.349295,
		0.208755, -0.336103, 0.918399,
		-0.522343, -0.832239, -0.185841,
		44.086792, 35.953243, 35.976578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.644722, 35.833992, 36.363277>,  <44.452435, 36.535812, 36.106667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.644722, 35.833992, 36.363277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497025, 35.849636, 35.991875>,  <44.408405, 35.859024, 35.769032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497025, 35.849636, 35.991875>,  <44.644722, 35.833992, 36.363277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.497025, 35.849636, 35.991875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749727, -0.577851, -0.322488,
		-0.549153, -0.815205, 0.184045,
		-0.369244, 0.039112, -0.928509,
		44.386250, 35.861370, 35.713322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.564877, 35.202885, 36.129105>,  <44.644722, 35.833992, 36.363277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.564877, 35.202885, 36.129105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627010, 35.486946, 35.854424>,  <44.664291, 35.657383, 35.689613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627010, 35.486946, 35.854424>,  <44.564877, 35.202885, 36.129105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.627010, 35.486946, 35.854424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922985, -0.352094, -0.155334,
		-0.352094, -0.609686, -0.710150,
		0.155334, 0.710150, -0.686701,
		44.673611, 35.699989, 35.648415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.872219, 34.931290, 35.517166>,  <44.564877, 35.202885, 36.129105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.872219, 34.931290, 35.517166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.948162, 35.322876, 35.547062>,  <44.993729, 35.557827, 35.564999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.948162, 35.322876, 35.547062>,  <44.872219, 34.931290, 35.517166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.948162, 35.322876, 35.547062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960345, -0.169339, -0.221498,
		-0.204182, 0.113830, -0.972292,
		0.189861, 0.978962, 0.074740,
		45.005119, 35.616566, 35.569485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.323921, 34.538586, 35.106476>,  <44.872219, 34.931290, 35.517166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.323921, 34.538586, 35.106476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.929180, 34.561714, 35.166855>,  <44.692337, 34.575592, 35.203083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.929180, 34.561714, 35.166855>,  <45.323921, 34.538586, 35.106476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.929180, 34.561714, 35.166855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008346, -0.950815, 0.309647,
		0.161432, 0.304315, 0.938793,
		-0.986849, 0.057823, 0.150952,
		44.633125, 34.579060, 35.212139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.888741, 34.379261, 35.598373>,  <45.323921, 34.538586, 35.106476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.888741, 34.379261, 35.598373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.964600, 34.008675, 35.728420>,  <46.010113, 33.786324, 35.806450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.964600, 34.008675, 35.728420>,  <45.888741, 34.379261, 35.598373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.964600, 34.008675, 35.728420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714328, 0.096992, 0.693058,
		-0.673625, -0.363677, -0.643403,
		0.189645, -0.926462, 0.325121,
		46.021492, 33.730736, 35.825958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.998634, 35.163948, 35.814522>,  <45.888741, 34.379261, 35.598373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.998634, 35.163948, 35.814522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.234390, 35.474979, 35.726887>,  <46.375843, 35.661598, 35.674305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.234390, 35.474979, 35.726887>,  <45.998634, 35.163948, 35.814522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.234390, 35.474979, 35.726887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535462, -0.579086, -0.614768,
		-0.604900, 0.245022, -0.757668,
		0.589387, 0.777575, -0.219089,
		46.411205, 35.708252, 35.661160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.978275, 35.341942, 35.126762>,  <45.998634, 35.163948, 35.814522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.978275, 35.341942, 35.126762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.335243, 35.410595, 35.293678>,  <46.549423, 35.451786, 35.393826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.335243, 35.410595, 35.293678>,  <45.978275, 35.341942, 35.126762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.335243, 35.410595, 35.293678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433045, -0.585523, -0.685299,
		0.126711, 0.792279, -0.596857,
		0.892421, 0.171631, 0.417285,
		46.602970, 35.462086, 35.418865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.271343, 35.330544, 34.528820>,  <45.978275, 35.341942, 35.126762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.271343, 35.330544, 34.528820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.517914, 35.237385, 34.829693>,  <46.665855, 35.181488, 35.010216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.517914, 35.237385, 34.829693>,  <46.271343, 35.330544, 34.528820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.517914, 35.237385, 34.829693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297984, -0.815217, -0.496615,
		0.728853, 0.530264, -0.433121,
		0.616425, -0.232897, 0.752183,
		46.702843, 35.167515, 35.055347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.056725, 35.410164, 34.483208>,  <46.271343, 35.330544, 34.528820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.056725, 35.410164, 34.483208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.932182, 35.085655, 34.681156>,  <46.857456, 34.890949, 34.799927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.932182, 35.085655, 34.681156>,  <47.056725, 35.410164, 34.483208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.932182, 35.085655, 34.681156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155609, -0.557252, -0.815632,
		0.937468, -0.176941, 0.299742,
		-0.311351, -0.811272, 0.494872,
		46.838776, 34.842274, 34.829617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.574619, 34.934933, 34.665417>,  <47.056725, 35.410164, 34.483208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.574619, 34.934933, 34.665417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.223434, 34.745632, 34.636543>,  <47.012722, 34.632053, 34.619217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.223434, 34.745632, 34.636543>,  <47.574619, 34.934933, 34.665417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.223434, 34.745632, 34.636543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214046, -0.253188, -0.943440,
		0.428208, -0.843759, 0.323588,
		-0.877965, -0.473251, -0.072186,
		46.960045, 34.603657, 34.614887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.365341, 34.996563, 35.388054>,  <47.574619, 34.934933, 34.665417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.365341, 34.996563, 35.388054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.715153, 34.893009, 35.224014>,  <47.925037, 34.830875, 35.125591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.715153, 34.893009, 35.224014>,  <47.365341, 34.996563, 35.388054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.715153, 34.893009, 35.224014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091949, 0.741762, -0.664330,
		0.476181, 0.618683, 0.624887,
		0.874527, -0.258884, -0.410100,
		47.977512, 34.815346, 35.100983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.942080, 38.835228, 26.649862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.011116, 39.165997, 26.863934>,  <32.052540, 39.364456, 26.992376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.011116, 39.165997, 26.863934>,  <31.942080, 38.835228, 26.649862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011116, 39.165997, 26.863934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818470, -0.181893, 0.544998,
		0.548014, -0.532091, 0.645414,
		0.172592, 0.826919, 0.535180,
		32.062893, 39.414074, 27.024488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962103, 38.623592, 27.372219>,  <31.942080, 38.835228, 26.649862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962103, 38.623592, 27.372219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.871054, 39.013016, 27.364420>,  <31.816423, 39.246670, 27.359741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.871054, 39.013016, 27.364420>,  <31.962103, 38.623592, 27.372219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871054, 39.013016, 27.364420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730659, -0.157529, 0.664320,
		0.643680, 0.165462, 0.747194,
		-0.227624, 0.973554, -0.019498,
		31.802767, 39.305080, 27.358570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939114, 38.864021, 28.088444>,  <31.962103, 38.623592, 27.372219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939114, 38.864021, 28.088444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.716684, 39.116581, 27.872253>,  <31.583227, 39.268116, 27.742538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.716684, 39.116581, 27.872253>,  <31.939114, 38.864021, 28.088444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716684, 39.116581, 27.872253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716418, -0.034478, 0.696819,
		0.421338, 0.774690, 0.471519,
		-0.556075, 0.631401, -0.540475,
		31.549862, 39.306000, 27.710112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558653, 39.371273, 28.588116>,  <31.939114, 38.864021, 28.088444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558653, 39.371273, 28.588116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.316244, 39.411213, 28.272453>,  <31.170799, 39.435177, 28.083055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.316244, 39.411213, 28.272453>,  <31.558653, 39.371273, 28.588116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316244, 39.411213, 28.272453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791461, -0.174897, 0.585662,
		-0.079543, 0.979511, 0.185018,
		-0.606021, 0.099850, -0.789157,
		31.134438, 39.441166, 28.035706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066326, 39.805836, 28.861820>,  <31.558653, 39.371273, 28.588116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066326, 39.805836, 28.861820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.907257, 39.626625, 28.541540>,  <30.811815, 39.519096, 28.349371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.907257, 39.626625, 28.541540>,  <31.066326, 39.805836, 28.861820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907257, 39.626625, 28.541540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827708, -0.201393, 0.523775,
		-0.395923, 0.871039, -0.290750,
		-0.397674, -0.448031, -0.800702,
		30.787954, 39.492214, 28.301329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385414, 40.092442, 28.873854>,  <31.066326, 39.805836, 28.861820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385414, 40.092442, 28.873854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.344818, 39.777382, 28.630770>,  <30.320459, 39.588348, 28.484919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.344818, 39.777382, 28.630770>,  <30.385414, 40.092442, 28.873854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344818, 39.777382, 28.630770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793983, -0.303928, 0.526516,
		-0.599408, 0.535950, -0.594531,
		-0.101491, -0.787646, -0.607712,
		30.314371, 39.541088, 28.448456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.652245, 40.116840, 28.692488>,  <30.385414, 40.092442, 28.873854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.652245, 40.116840, 28.692488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.800554, 39.750931, 28.628334>,  <29.889540, 39.531387, 28.589842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.800554, 39.750931, 28.628334>,  <29.652245, 40.116840, 28.692488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.800554, 39.750931, 28.628334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788561, -0.401314, 0.465960,
		-0.490610, -0.046293, -0.870148,
		0.370774, -0.914770, -0.160384,
		29.911787, 39.476501, 28.580219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092627, 39.757793, 28.479940>,  <29.652245, 40.116840, 28.692488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092627, 39.757793, 28.479940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.341555, 39.465206, 28.591417>,  <29.490911, 39.289654, 28.658302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.341555, 39.465206, 28.591417>,  <29.092627, 39.757793, 28.479940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.341555, 39.465206, 28.591417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756078, -0.469551, 0.455925,
		-0.202636, -0.494444, -0.845260,
		0.622322, -0.731469, 0.278690,
		29.528252, 39.245766, 28.675024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735233, 39.119415, 28.300676>,  <29.092627, 39.757793, 28.479940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735233, 39.119415, 28.300676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.005508, 39.047234, 28.586580>,  <29.167673, 39.003925, 28.758123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.005508, 39.047234, 28.586580>,  <28.735233, 39.119415, 28.300676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.005508, 39.047234, 28.586580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620656, -0.662430, 0.419492,
		0.397781, -0.727066, -0.559594,
		0.675690, -0.180449, 0.714759,
		29.208216, 38.993099, 28.801008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572325, 38.418358, 28.476343>,  <28.735233, 39.119415, 28.300676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.572325, 38.418358, 28.476343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.805351, 38.554642, 28.771513>,  <28.945168, 38.636414, 28.948614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.805351, 38.554642, 28.771513>,  <28.572325, 38.418358, 28.476343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.805351, 38.554642, 28.771513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500584, -0.564869, 0.656002,
		0.640340, -0.751557, -0.158516,
		0.582564, 0.340714, 0.737925,
		28.980120, 38.656857, 28.992891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865683, 37.771385, 28.908720>,  <28.572325, 38.418358, 28.476343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865683, 37.771385, 28.908720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.812708, 38.102478, 29.126829>,  <28.780922, 38.301132, 29.257694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.812708, 38.102478, 29.126829>,  <28.865683, 37.771385, 28.908720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.812708, 38.102478, 29.126829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376977, -0.550841, 0.744622,
		0.916705, -0.106938, 0.384988,
		-0.132439, 0.827731, 0.545272,
		28.772976, 38.350796, 29.290411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069246, 37.500923, 29.503729>,  <28.865683, 37.771385, 28.908720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.069246, 37.500923, 29.503729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.884825, 37.845352, 29.589506>,  <28.774172, 38.052010, 29.640972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.884825, 37.845352, 29.589506>,  <29.069246, 37.500923, 29.503729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884825, 37.845352, 29.589506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238252, -0.352907, 0.904817,
		0.854790, 0.366077, 0.367861,
		-0.461053, 0.861072, 0.214442,
		28.746510, 38.103672, 29.653839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381214, 37.721283, 30.137531>,  <29.069246, 37.500923, 29.503729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381214, 37.721283, 30.137531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.023067, 37.897148, 30.109222>,  <28.808178, 38.002666, 30.092237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.023067, 37.897148, 30.109222>,  <29.381214, 37.721283, 30.137531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023067, 37.897148, 30.109222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230596, -0.321782, 0.918304,
		0.380972, 0.838541, 0.389499,
		-0.895369, 0.439665, -0.070774,
		28.754457, 38.029049, 30.087990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.272274, 37.945477, 30.829311>,  <29.381214, 37.721283, 30.137531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.272274, 37.945477, 30.829311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.902264, 37.972012, 30.679688>,  <28.680258, 37.987934, 30.589912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.902264, 37.972012, 30.679688>,  <29.272274, 37.945477, 30.829311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.902264, 37.972012, 30.679688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379489, -0.207084, 0.901723,
		-0.017641, 0.976071, 0.216734,
		-0.925028, 0.066341, -0.374062,
		28.624756, 37.991913, 30.567469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797937, 38.437523, 31.186157>,  <29.272274, 37.945477, 30.829311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797937, 38.437523, 31.186157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.603148, 38.139198, 31.004337>,  <28.486273, 37.960201, 30.895247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.603148, 38.139198, 31.004337>,  <28.797937, 38.437523, 31.186157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603148, 38.139198, 31.004337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457349, -0.225630, 0.860188,
		-0.744100, 0.626779, -0.231220,
		-0.486977, -0.745815, -0.454548,
		28.457054, 37.915455, 30.867973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.143959, 38.442184, 31.399687>,  <28.797937, 38.437523, 31.186157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.143959, 38.442184, 31.399687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.146791, 38.065987, 31.263798>,  <28.148491, 37.840267, 31.182264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.146791, 38.065987, 31.263798>,  <28.143959, 38.442184, 31.399687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146791, 38.065987, 31.263798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529686, -0.291684, 0.796463,
		-0.848164, 0.174308, -0.500234,
		0.007080, -0.940499, -0.339724,
		28.148916, 37.783836, 31.161880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454086, 38.249340, 31.556839>,  <28.143959, 38.442184, 31.399687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.454086, 38.249340, 31.556839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.649338, 37.905376, 31.497120>,  <27.766489, 37.698997, 31.461288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.649338, 37.905376, 31.497120>,  <27.454086, 38.249340, 31.556839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.649338, 37.905376, 31.497120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459671, -0.398711, 0.793557,
		-0.741911, -0.318731, -0.589897,
		0.488130, -0.859907, -0.149297,
		27.795776, 37.647404, 31.452332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.921169, 37.723488, 31.672531>,  <27.454086, 38.249340, 31.556839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.921169, 37.723488, 31.672531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.270691, 37.533318, 31.713402>,  <27.480404, 37.419216, 31.737925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.270691, 37.533318, 31.713402>,  <26.921169, 37.723488, 31.672531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270691, 37.533318, 31.713402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347029, -0.462470, 0.815900,
		-0.340647, -0.748393, -0.569093,
		0.873802, -0.475426, 0.102175,
		27.532831, 37.390690, 31.744055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.706860, 37.075535, 31.849066>,  <26.921169, 37.723488, 31.672531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.706860, 37.075535, 31.849066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.090691, 37.047848, 31.958185>,  <27.320990, 37.031235, 32.023659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.090691, 37.047848, 31.958185>,  <26.706860, 37.075535, 31.849066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.090691, 37.047848, 31.958185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265712, -0.542321, 0.797048,
		0.092777, -0.837315, -0.538791,
		0.959578, -0.069215, 0.272800,
		27.378565, 37.027084, 32.040024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.822670, 36.408073, 31.906408>,  <26.706860, 37.075535, 31.849066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.822670, 36.408073, 31.906408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.139650, 36.535793, 32.114281>,  <27.329838, 36.612427, 32.239002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.139650, 36.535793, 32.114281>,  <26.822670, 36.408073, 31.906408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139650, 36.535793, 32.114281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256715, -0.598277, 0.759054,
		0.553281, -0.734922, -0.392135,
		0.792451, 0.319303, 0.519680,
		27.377386, 36.631584, 32.270184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.134619, 35.846455, 32.205372>,  <26.822670, 36.408073, 31.906408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.134619, 35.846455, 32.205372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.261339, 36.148373, 32.435127>,  <27.337372, 36.329525, 32.572979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.261339, 36.148373, 32.435127>,  <27.134619, 35.846455, 32.205372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.261339, 36.148373, 32.435127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111509, -0.571739, 0.812822,
		0.941914, -0.321553, -0.096962,
		0.316803, 0.754797, 0.574385,
		27.356380, 36.374813, 32.607441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457232, 35.460484, 32.757759>,  <27.134619, 35.846455, 32.205372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457232, 35.460484, 32.757759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.407625, 35.836235, 32.885632>,  <27.377861, 36.061684, 32.962353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.407625, 35.836235, 32.885632>,  <27.457232, 35.460484, 32.757759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.407625, 35.836235, 32.885632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362771, -0.342785, 0.866543,
		0.923590, -0.008505, 0.383288,
		-0.124015, 0.939375, 0.319678,
		27.370420, 36.118046, 32.981537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237459, 35.679844, 32.582798>,  <27.457232, 35.460484, 32.757759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237459, 35.679844, 32.582798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.389240, 35.309780, 32.586895>,  <28.480309, 35.087742, 32.589352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.389240, 35.309780, 32.586895>,  <28.237459, 35.679844, 32.582798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.389240, 35.309780, 32.586895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853198, 0.345613, -0.390648,
		0.357871, 0.156969, 0.920483,
		0.379450, -0.925155, 0.010240,
		28.503075, 35.032234, 32.589966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881184, 35.752666, 32.873852>,  <28.237459, 35.679844, 32.582798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881184, 35.752666, 32.873852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.885733, 35.427120, 32.641476>,  <28.888462, 35.231792, 32.502048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.885733, 35.427120, 32.641476>,  <28.881184, 35.752666, 32.873852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885733, 35.427120, 32.641476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931980, 0.219149, -0.288769,
		0.362332, -0.538143, 0.760998,
		0.011373, -0.813865, -0.580943,
		28.889145, 35.182961, 32.467194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.553402, 35.549431, 32.984669>,  <28.881184, 35.752666, 32.873852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.553402, 35.549431, 32.984669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.415434, 35.383945, 32.647655>,  <29.332653, 35.284653, 32.445446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.415434, 35.383945, 32.647655>,  <29.553402, 35.549431, 32.984669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415434, 35.383945, 32.647655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917874, 0.039072, -0.394945,
		0.196315, -0.909567, 0.366263,
		-0.344918, -0.413717, -0.842538,
		29.311958, 35.259830, 32.394894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.047581, 35.125896, 32.845310>,  <29.553402, 35.549431, 32.984669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.047581, 35.125896, 32.845310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.841377, 35.150154, 32.503414>,  <29.717655, 35.164707, 32.298279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.841377, 35.150154, 32.503414>,  <30.047581, 35.125896, 32.845310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841377, 35.150154, 32.503414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856034, -0.007985, -0.516857,
		-0.038170, -0.998128, -0.047798,
		-0.515508, 0.060645, -0.854736,
		29.686726, 35.168346, 32.246994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323372, 34.614967, 32.418293>,  <30.047581, 35.125896, 32.845310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323372, 34.614967, 32.418293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.169424, 34.909897, 32.196220>,  <30.077055, 35.086857, 32.062977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.169424, 34.909897, 32.196220>,  <30.323372, 34.614967, 32.418293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.169424, 34.909897, 32.196220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858111, 0.064341, -0.509417,
		-0.339886, -0.672465, -0.657471,
		-0.384868, 0.737327, -0.555181,
		30.053965, 35.131096, 32.029667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680267, 34.465012, 31.745951>,  <30.323372, 34.614967, 32.418293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680267, 34.465012, 31.745951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.505919, 34.808308, 31.637558>,  <30.401308, 35.014286, 31.572521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.505919, 34.808308, 31.637558>,  <30.680267, 34.465012, 31.745951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505919, 34.808308, 31.637558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856357, 0.302858, -0.418247,
		-0.276889, -0.414361, -0.866971,
		-0.435874, 0.858244, -0.270983,
		30.375156, 35.065781, 31.556263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720392, 34.424091, 31.034790>,  <30.680267, 34.465012, 31.745951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720392, 34.424091, 31.034790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.700243, 34.796349, 31.179773>,  <30.688154, 35.019703, 31.266764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.700243, 34.796349, 31.179773>,  <30.720392, 34.424091, 31.034790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700243, 34.796349, 31.179773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841772, 0.234869, -0.486062,
		-0.537478, 0.280622, -0.795216,
		-0.050371, 0.930638, 0.362457,
		30.685131, 35.075539, 31.288509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820166, 34.913803, 30.455606>,  <30.720392, 34.424091, 31.034790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820166, 34.913803, 30.455606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.887718, 35.147747, 30.772951>,  <30.928249, 35.288113, 30.963358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.887718, 35.147747, 30.772951>,  <30.820166, 34.913803, 30.455606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887718, 35.147747, 30.772951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813752, 0.371433, -0.447040,
		-0.556134, 0.721096, -0.413200,
		0.168882, 0.584857, 0.793360,
		30.938383, 35.323204, 31.010960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905249, 35.700462, 30.203566>,  <30.820166, 34.913803, 30.455606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905249, 35.700462, 30.203566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.106077, 35.628063, 30.541836>,  <31.226574, 35.584625, 30.744799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.106077, 35.628063, 30.541836>,  <30.905249, 35.700462, 30.203566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.106077, 35.628063, 30.541836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853811, 0.259318, -0.451400,
		-0.137597, 0.948681, 0.284732,
		0.502070, -0.180996, 0.845675,
		31.256699, 35.573765, 30.795538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426722, 36.223133, 30.189268>,  <30.905249, 35.700462, 30.203566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426722, 36.223133, 30.189268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.545696, 35.950130, 30.456318>,  <31.617081, 35.786331, 30.616549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.545696, 35.950130, 30.456318>,  <31.426722, 36.223133, 30.189268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545696, 35.950130, 30.456318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943723, 0.104235, -0.313882,
		0.144635, 0.723412, 0.675097,
		0.297435, -0.682503, 0.667625,
		31.634926, 35.745380, 30.656605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888411, 36.562119, 30.515770>,  <31.426722, 36.223133, 30.189268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888411, 36.562119, 30.515770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.964695, 36.172916, 30.567764>,  <32.010468, 35.939396, 30.598961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.964695, 36.172916, 30.567764>,  <31.888411, 36.562119, 30.515770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964695, 36.172916, 30.567764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888818, 0.114948, -0.443610,
		0.416692, 0.200137, 0.886743,
		0.190712, -0.973002, 0.129987,
		32.021908, 35.881016, 30.606760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151978, 37.145988, 30.154408>,  <31.888411, 36.562119, 30.515770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151978, 37.145988, 30.154408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.448589, 36.878468, 30.175749>,  <32.626556, 36.717957, 30.188555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.448589, 36.878468, 30.175749>,  <32.151978, 37.145988, 30.154408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448589, 36.878468, 30.175749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410608, 0.389486, -0.824440,
		0.530605, 0.633251, 0.563429,
		0.741525, -0.668800, 0.053355,
		32.671047, 36.677826, 30.191755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896755, 37.363335, 30.114231>,  <32.151978, 37.145988, 30.154408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896755, 37.363335, 30.114231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.860641, 36.991539, 29.971178>,  <32.838974, 36.768463, 29.885345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.860641, 36.991539, 29.971178>,  <32.896755, 37.363335, 30.114231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860641, 36.991539, 29.971178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430667, 0.287352, -0.855544,
		0.897984, -0.231259, 0.374357,
		-0.090280, -0.929488, -0.357634,
		32.833557, 36.712692, 29.863888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584381, 37.119884, 29.950506>,  <32.896755, 37.363335, 30.114231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584381, 37.119884, 29.950506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.306194, 36.928383, 29.736176>,  <33.139282, 36.813480, 29.607576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.306194, 36.928383, 29.736176>,  <33.584381, 37.119884, 29.950506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306194, 36.928383, 29.736176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527710, 0.165812, -0.833084,
		0.487693, -0.862146, 0.137330,
		-0.695469, -0.478759, -0.535829,
		33.097553, 36.784756, 29.575426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964172, 36.706810, 29.495960>,  <33.584381, 37.119884, 29.950506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964172, 36.706810, 29.495960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.597607, 36.733982, 29.338194>,  <33.377666, 36.750286, 29.243534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.597607, 36.733982, 29.338194>,  <33.964172, 36.706810, 29.495960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597607, 36.733982, 29.338194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400039, 0.125692, -0.907838,
		-0.012095, -0.989741, -0.142361,
		-0.916418, 0.067930, -0.394415,
		33.322681, 36.754360, 29.219870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950176, 36.268784, 29.023447>,  <33.964172, 36.706810, 29.495960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950176, 36.268784, 29.023447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.663494, 36.529762, 28.924942>,  <33.491486, 36.686352, 28.865839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.663494, 36.529762, 28.924942>,  <33.950176, 36.268784, 29.023447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663494, 36.529762, 28.924942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512661, 0.253530, -0.820306,
		-0.472775, -0.714164, -0.516191,
		-0.716703, 0.652451, -0.246261,
		33.448483, 36.725498, 28.851063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862083, 36.108395, 28.377077>,  <33.950176, 36.268784, 29.023447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862083, 36.108395, 28.377077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.658352, 36.452610, 28.374136>,  <33.536114, 36.659142, 28.372372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.658352, 36.452610, 28.374136>,  <33.862083, 36.108395, 28.377077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658352, 36.452610, 28.374136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281816, 0.158714, -0.946251,
		-0.813120, -0.484025, -0.323351,
		-0.509329, 0.860541, -0.007353,
		33.505554, 36.710773, 28.371931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486816, 36.060772, 27.736362>,  <33.862083, 36.108395, 28.377077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486816, 36.060772, 27.736362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.534470, 36.439693, 27.855310>,  <33.563061, 36.667046, 27.926680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.534470, 36.439693, 27.855310>,  <33.486816, 36.060772, 27.736362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534470, 36.439693, 27.855310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348056, 0.240651, -0.906060,
		-0.929873, 0.211447, -0.301042,
		0.119138, 0.947300, 0.297370,
		33.570210, 36.723885, 27.944521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<32.837875, 36.467487, 27.385654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.149910, 36.697689, 27.483843>,  <33.337132, 36.835812, 27.542755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.149910, 36.697689, 27.483843>,  <32.837875, 36.467487, 27.385654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149910, 36.697689, 27.483843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119848, 0.247619, -0.961416,
		-0.614086, 0.779407, 0.124191,
		0.780087, 0.575508, 0.245470,
		33.383938, 36.870342, 27.557484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785183, 37.133949, 26.937944>,  <32.837875, 36.467487, 27.385654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785183, 37.133949, 26.937944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.149498, 37.201473, 27.088665>,  <33.368088, 37.241985, 27.179098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.149498, 37.201473, 27.088665>,  <32.785183, 37.133949, 26.937944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149498, 37.201473, 27.088665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232925, 0.543449, -0.806479,
		-0.340911, 0.822294, 0.455645,
		0.910783, 0.168806, 0.376801,
		33.422733, 37.252113, 27.201706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897259, 37.892265, 26.953110>,  <32.785183, 37.133949, 26.937944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897259, 37.892265, 26.953110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.253174, 37.709751, 26.949572>,  <33.466724, 37.600243, 26.947449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.253174, 37.709751, 26.949572>,  <32.897259, 37.892265, 26.953110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253174, 37.709751, 26.949572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317480, 0.632807, -0.706231,
		0.327840, 0.625589, 0.707926,
		0.889791, -0.456283, -0.008847,
		33.520111, 37.572865, 26.946917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312202, 38.429882, 27.009401>,  <32.897259, 37.892265, 26.953110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312202, 38.429882, 27.009401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.549553, 38.145054, 26.859276>,  <33.691963, 37.974155, 26.769201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.549553, 38.145054, 26.859276>,  <33.312202, 38.429882, 27.009401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549553, 38.145054, 26.859276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404553, 0.666924, -0.625739,
		0.695877, 0.219462, 0.683806,
		0.593373, -0.712073, -0.375313,
		33.727566, 37.931431, 26.746681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930550, 38.735664, 26.904655>,  <33.312202, 38.429882, 27.009401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930550, 38.735664, 26.904655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.976295, 38.419506, 26.663923>,  <34.003742, 38.229813, 26.519484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.976295, 38.419506, 26.663923>,  <33.930550, 38.735664, 26.904655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976295, 38.419506, 26.663923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497538, 0.569921, -0.653946,
		0.859871, -0.224647, 0.458427,
		0.114360, -0.790394, -0.601830,
		34.010605, 38.182388, 26.483374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678761, 38.623898, 26.819120>,  <33.930550, 38.735664, 26.904655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678761, 38.623898, 26.819120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.459515, 38.467125, 26.523561>,  <34.327969, 38.373062, 26.346226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.459515, 38.467125, 26.523561>,  <34.678761, 38.623898, 26.819120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459515, 38.467125, 26.523561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504227, 0.550005, -0.665770,
		0.667331, -0.737486, -0.103843,
		-0.548110, -0.391929, -0.738896,
		34.295082, 38.349545, 26.301893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163685, 38.531796, 26.335720>,  <34.678761, 38.623898, 26.819120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163685, 38.531796, 26.335720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.837337, 38.481312, 26.110004>,  <34.641529, 38.451023, 25.974575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.837337, 38.481312, 26.110004>,  <35.163685, 38.531796, 26.335720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837337, 38.481312, 26.110004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464014, 0.439406, -0.769164,
		0.345024, -0.889379, -0.299939,
		-0.815873, -0.126204, -0.564290,
		34.592575, 38.443451, 25.940718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410488, 38.194576, 25.734255>,  <35.163685, 38.531796, 26.335720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410488, 38.194576, 25.734255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.070724, 38.387978, 25.649649>,  <34.866867, 38.504017, 25.598885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.070724, 38.387978, 25.649649>,  <35.410488, 38.194576, 25.734255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070724, 38.387978, 25.649649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446633, 0.445096, -0.776150,
		-0.281123, -0.753736, -0.594013,
		-0.849405, 0.483499, -0.211517,
		34.815903, 38.533028, 25.586193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264999, 38.110355, 24.962507>,  <35.410488, 38.194576, 25.734255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264999, 38.110355, 24.962507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.032028, 38.408592, 25.092047>,  <34.892246, 38.587532, 25.169769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.032028, 38.408592, 25.092047>,  <35.264999, 38.110355, 24.962507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032028, 38.408592, 25.092047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251686, 0.544219, -0.800300,
		-0.772939, -0.384607, -0.504622,
		-0.582426, 0.745589, 0.323848,
		34.857300, 38.632271, 25.189201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926373, 38.352238, 24.397238>,  <35.264999, 38.110355, 24.962507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926373, 38.352238, 24.397238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.954964, 38.632458, 24.681244>,  <34.972118, 38.800591, 24.851648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.954964, 38.632458, 24.681244>,  <34.926373, 38.352238, 24.397238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954964, 38.632458, 24.681244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277845, 0.669679, -0.688718,
		-0.957963, 0.246500, -0.146779,
		0.071474, 0.700548, 0.710016,
		34.976406, 38.842621, 24.894249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587872, 38.892818, 24.126421>,  <34.926373, 38.352238, 24.397238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587872, 38.892818, 24.126421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.829849, 39.048630, 24.404215>,  <34.975037, 39.142117, 24.570892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.829849, 39.048630, 24.404215>,  <34.587872, 38.892818, 24.126421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829849, 39.048630, 24.404215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388087, 0.617341, -0.684309,
		-0.695292, 0.683490, 0.222285,
		0.604944, 0.389529, 0.694485,
		35.011333, 39.165489, 24.612560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629078, 39.523716, 23.938980>,  <34.587872, 38.892818, 24.126421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629078, 39.523716, 23.938980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.951824, 39.466839, 24.168327>,  <35.145470, 39.432713, 24.305935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.951824, 39.466839, 24.168327>,  <34.629078, 39.523716, 23.938980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951824, 39.466839, 24.168327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562289, 0.482439, -0.671627,
		-0.181113, 0.864311, 0.469218,
		0.806864, -0.142195, 0.573368,
		35.193882, 39.424179, 24.340338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920326, 40.180866, 24.087017>,  <34.629078, 39.523716, 23.938980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920326, 40.180866, 24.087017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.206089, 39.901318, 24.100910>,  <35.377544, 39.733589, 24.109245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.206089, 39.901318, 24.100910>,  <34.920326, 40.180866, 24.087017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206089, 39.901318, 24.100910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607006, 0.594276, -0.527617,
		0.348095, 0.398016, 0.848772,
		0.714404, -0.698871, 0.034733,
		35.420410, 39.691658, 24.111330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551708, 40.572441, 24.044436>,  <34.920326, 40.180866, 24.087017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551708, 40.572441, 24.044436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.678013, 40.196976, 23.989008>,  <35.753796, 39.971695, 23.955751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.678013, 40.196976, 23.989008>,  <35.551708, 40.572441, 24.044436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678013, 40.196976, 23.989008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759429, 0.337571, -0.556159,
		0.568824, 0.070383, 0.819442,
		0.315764, -0.938665, -0.138567,
		35.772743, 39.915375, 23.947437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257549, 40.603634, 24.192337>,  <35.551708, 40.572441, 24.044436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257549, 40.603634, 24.192337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.209038, 40.258915, 23.995321>,  <36.179932, 40.052082, 23.877111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.209038, 40.258915, 23.995321>,  <36.257549, 40.603634, 24.192337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209038, 40.258915, 23.995321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709617, 0.271686, -0.650101,
		0.694072, -0.428357, 0.578597,
		-0.121279, -0.861799, -0.492539,
		36.172653, 40.000374, 23.847559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913616, 40.288231, 24.147371>,  <36.257549, 40.603634, 24.192337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913616, 40.288231, 24.147371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.684101, 40.142899, 23.853769>,  <36.546391, 40.055698, 23.677608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.684101, 40.142899, 23.853769>,  <36.913616, 40.288231, 24.147371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684101, 40.142899, 23.853769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752610, 0.119571, -0.647519,
		0.323029, -0.923955, 0.204838,
		-0.573786, -0.363330, -0.734003,
		36.511967, 40.033901, 23.633568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343121, 39.762699, 23.769739>,  <36.913616, 40.288231, 24.147371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343121, 39.762699, 23.769739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.051342, 39.867596, 23.517029>,  <36.876274, 39.930534, 23.365402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.051342, 39.867596, 23.517029>,  <37.343121, 39.762699, 23.769739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051342, 39.867596, 23.517029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684030, 0.274576, -0.675804,
		-0.003755, -0.925114, -0.379670,
		-0.729444, 0.262243, -0.631775,
		36.832508, 39.946270, 23.327496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585976, 39.521271, 23.198524>,  <37.343121, 39.762699, 23.769739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585976, 39.521271, 23.198524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.331261, 39.805092, 23.077833>,  <37.178432, 39.975384, 23.005419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.331261, 39.805092, 23.077833>,  <37.585976, 39.521271, 23.198524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331261, 39.805092, 23.077833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707190, 0.381556, -0.595229,
		-0.307220, -0.592412, -0.744757,
		-0.636788, 0.709551, -0.301726,
		37.140224, 40.017956, 22.987316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726994, 39.679981, 22.455929>,  <37.585976, 39.521271, 23.198524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726994, 39.679981, 22.455929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.526779, 40.007977, 22.566978>,  <37.406651, 40.204773, 22.633608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.526779, 40.007977, 22.566978>,  <37.726994, 39.679981, 22.455929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526779, 40.007977, 22.566978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639992, 0.566443, -0.519185,
		-0.582985, -0.082195, -0.808315,
		-0.500539, 0.819991, 0.277624,
		37.376617, 40.253975, 22.650265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542103, 40.021481, 21.862595>,  <37.726994, 39.679981, 22.455929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542103, 40.021481, 21.862595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.545120, 40.302872, 22.146866>,  <37.546932, 40.471706, 22.317429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.545120, 40.302872, 22.146866>,  <37.542103, 40.021481, 21.862595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545120, 40.302872, 22.146866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715901, 0.492398, -0.495005,
		-0.698161, 0.512510, -0.499905,
		0.007542, 0.703476, 0.710679,
		37.547382, 40.513916, 22.360069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517174, 40.679699, 21.538445>,  <37.542103, 40.021481, 21.862595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517174, 40.679699, 21.538445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.694714, 40.739319, 21.891893>,  <37.801235, 40.775089, 22.103962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.694714, 40.739319, 21.891893>,  <37.517174, 40.679699, 21.538445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694714, 40.739319, 21.891893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545081, 0.737761, -0.398240,
		-0.711258, 0.658402, 0.246209,
		0.443845, 0.149047, 0.883621,
		37.827866, 40.784035, 22.156981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442989, 41.368370, 21.636093>,  <37.517174, 40.679699, 21.538445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442989, 41.368370, 21.636093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.733955, 41.241623, 21.879555>,  <37.908535, 41.165573, 22.025633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.733955, 41.241623, 21.879555>,  <37.442989, 41.368370, 21.636093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733955, 41.241623, 21.879555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517700, 0.835611, -0.183685,
		-0.450395, 0.448716, 0.771880,
		0.727413, -0.316872, 0.608656,
		37.952179, 41.146561, 22.062151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747818, 41.955151, 22.119015>,  <37.442989, 41.368370, 21.636093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747818, 41.955151, 22.119015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.019211, 41.680294, 22.015089>,  <38.182045, 41.515381, 21.952734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.019211, 41.680294, 22.015089>,  <37.747818, 41.955151, 22.119015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019211, 41.680294, 22.015089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641994, 0.726528, -0.244950,
		0.357078, -0.000607, 0.934074,
		0.678482, -0.687137, -0.259816,
		38.222755, 41.474152, 21.937143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422077, 41.958687, 22.520527>,  <37.747818, 41.955151, 22.119015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422077, 41.958687, 22.520527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.469517, 41.881027, 22.131016>,  <38.497982, 41.834431, 21.897310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.469517, 41.881027, 22.131016>,  <38.422077, 41.958687, 22.520527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469517, 41.881027, 22.131016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431491, 0.893337, -0.125558,
		0.894287, -0.405285, 0.189722,
		0.118599, -0.194149, -0.973776,
		38.505096, 41.822784, 21.838882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031082, 42.529873, 22.834820>,  <38.422077, 41.958687, 22.520527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031082, 42.529873, 22.834820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.982574, 42.910309, 22.948462>,  <37.953468, 43.138573, 23.016647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.982574, 42.910309, 22.948462>,  <38.031082, 42.529873, 22.834820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982574, 42.910309, 22.948462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756742, -0.273807, 0.593609,
		0.642368, -0.143008, 0.752936,
		-0.121268, 0.951093, 0.284105,
		37.946194, 43.195637, 23.033693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944603, 42.399807, 23.534721>,  <38.031082, 42.529873, 22.834820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944603, 42.399807, 23.534721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.811066, 42.770035, 23.463316>,  <37.730946, 42.992172, 23.420473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.811066, 42.770035, 23.463316>,  <37.944603, 42.399807, 23.534721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811066, 42.770035, 23.463316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759771, -0.152117, 0.632146,
		0.557942, 0.346665, 0.754006,
		-0.333839, 0.925572, -0.178514,
		37.710915, 43.047707, 23.409761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852425, 42.678848, 24.258671>,  <37.944603, 42.399807, 23.534721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852425, 42.678848, 24.258671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.624821, 42.887413, 24.004313>,  <37.488258, 43.012550, 23.851698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.624821, 42.887413, 24.004313>,  <37.852425, 42.678848, 24.258671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624821, 42.887413, 24.004313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733747, 0.027214, 0.678878,
		0.371277, 0.852874, 0.367097,
		-0.569006, 0.521408, -0.635897,
		37.454121, 43.043835, 23.813543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511406, 43.047852, 24.754335>,  <37.852425, 42.678848, 24.258671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511406, 43.047852, 24.754335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.320637, 43.088100, 24.405067>,  <37.206177, 43.112251, 24.195507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.320637, 43.088100, 24.405067>,  <37.511406, 43.047852, 24.754335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320637, 43.088100, 24.405067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863582, -0.238584, 0.444188,
		-0.163627, 0.965894, 0.200683,
		-0.476919, 0.100625, -0.873168,
		37.177563, 43.118286, 24.143116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934429, 43.544754, 24.912258>,  <37.511406, 43.047852, 24.754335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934429, 43.544754, 24.912258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.820385, 43.360195, 24.576204>,  <36.751961, 43.249458, 24.374573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.820385, 43.360195, 24.576204>,  <36.934429, 43.544754, 24.912258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820385, 43.360195, 24.576204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820130, -0.336222, 0.462970,
		-0.496085, 0.821016, -0.282546,
		-0.285108, -0.461397, -0.840135,
		36.734852, 43.221775, 24.324163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223331, 43.762177, 24.852388>,  <36.934429, 43.544754, 24.912258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223331, 43.762177, 24.852388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.274200, 43.444641, 24.614513>,  <36.304722, 43.254120, 24.471788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.274200, 43.444641, 24.614513>,  <36.223331, 43.762177, 24.852388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274200, 43.444641, 24.614513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749513, -0.469604, 0.466587,
		-0.649661, 0.386391, -0.654709,
		0.127169, -0.793835, -0.594688,
		36.312351, 43.206490, 24.436108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631474, 43.604282, 24.410891>,  <36.223331, 43.762177, 24.852388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631474, 43.604282, 24.410891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.825649, 43.256138, 24.443926>,  <35.942154, 43.047253, 24.463747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.825649, 43.256138, 24.443926>,  <35.631474, 43.604282, 24.410891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825649, 43.256138, 24.443926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862379, -0.461163, 0.208883,
		-0.143717, -0.172622, -0.974447,
		0.485437, -0.870363, 0.082588,
		35.971279, 42.995029, 24.468702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079460, 43.129448, 24.420576>,  <35.631474, 43.604282, 24.410891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079460, 43.129448, 24.420576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.377998, 42.889694, 24.536303>,  <35.557121, 42.745842, 24.605740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.377998, 42.889694, 24.536303>,  <35.079460, 43.129448, 24.420576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377998, 42.889694, 24.536303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665522, -0.667525, 0.333903,
		-0.007010, -0.441755, -0.897108,
		0.746346, -0.599386, 0.289318,
		35.601902, 42.709877, 24.623098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879250, 42.491150, 24.197758>,  <35.079460, 43.129448, 24.420576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879250, 42.491150, 24.197758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.142868, 42.408672, 24.487072>,  <35.301041, 42.359188, 24.660662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.142868, 42.408672, 24.487072>,  <34.879250, 42.491150, 24.197758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142868, 42.408672, 24.487072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631181, -0.674587, 0.382810,
		0.408988, -0.708814, -0.574727,
		0.659045, -0.206192, 0.723287,
		35.340580, 42.346813, 24.704058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779091, 41.821423, 24.216383>,  <34.879250, 42.491150, 24.197758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779091, 41.821423, 24.216383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.974480, 41.921040, 24.550896>,  <35.091713, 41.980808, 24.751604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.974480, 41.921040, 24.550896>,  <34.779091, 41.821423, 24.216383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974480, 41.921040, 24.550896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556936, -0.648811, 0.518523,
		0.671725, -0.719042, -0.178226,
		0.488475, 0.249044, 0.836283,
		35.121021, 41.995754, 24.801781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078033, 41.223930, 24.463963>,  <34.779091, 41.821423, 24.216383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078033, 41.223930, 24.463963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.012527, 41.482224, 24.762281>,  <34.973225, 41.637199, 24.941273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.012527, 41.482224, 24.762281>,  <35.078033, 41.223930, 24.463963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012527, 41.482224, 24.762281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648098, -0.640390, 0.412153,
		0.743740, -0.415850, 0.523373,
		-0.163769, 0.645732, 0.745795,
		34.963398, 41.675941, 24.986019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087334, 40.845684, 25.034662>,  <35.078033, 41.223930, 24.463963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087334, 40.845684, 25.034662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.914696, 41.174679, 25.182848>,  <34.811111, 41.372074, 25.271759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.914696, 41.174679, 25.182848>,  <35.087334, 40.845684, 25.034662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914696, 41.174679, 25.182848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625550, -0.568784, 0.534014,
		0.649933, -0.001266, 0.759990,
		-0.431594, 0.822486, 0.370464,
		34.785217, 41.421425, 25.293987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124851, 40.816353, 25.668356>,  <35.087334, 40.845684, 25.034662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124851, 40.816353, 25.668356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.810028, 41.056122, 25.610079>,  <34.621132, 41.199982, 25.575113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.810028, 41.056122, 25.610079>,  <35.124851, 40.816353, 25.668356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810028, 41.056122, 25.610079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581832, -0.642885, 0.498167,
		0.204949, 0.476857, 0.854753,
		-0.787063, 0.599422, -0.145692,
		34.573910, 41.235947, 25.566372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820381, 40.937389, 26.343502>,  <35.124851, 40.816353, 25.668356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820381, 40.937389, 26.343502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.529198, 41.017216, 26.081127>,  <34.354488, 41.065113, 25.923702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.529198, 41.017216, 26.081127>,  <34.820381, 40.937389, 26.343502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529198, 41.017216, 26.081127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652624, -0.494928, 0.573698,
		-0.210152, 0.845707, 0.490526,
		-0.727955, 0.199565, -0.655938,
		34.310810, 41.077084, 25.884346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251057, 41.175198, 26.722509>,  <34.820381, 40.937389, 26.343502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251057, 41.175198, 26.722509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.076519, 41.089787, 26.372879>,  <33.971798, 41.038540, 26.163101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.076519, 41.089787, 26.372879>,  <34.251057, 41.175198, 26.722509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076519, 41.089787, 26.372879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834833, -0.266301, 0.481807,
		-0.335645, 0.939942, -0.062058,
		-0.436344, -0.213524, -0.874077,
		33.945614, 41.025730, 26.110657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494583, 41.395084, 26.768074>,  <34.251057, 41.175198, 26.722509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494583, 41.395084, 26.768074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.498882, 41.119694, 26.478001>,  <33.501461, 40.954460, 26.303957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.498882, 41.119694, 26.478001>,  <33.494583, 41.395084, 26.768074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498882, 41.119694, 26.478001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771875, -0.466750, 0.431687,
		-0.635684, 0.555113, -0.536429,
		0.010743, -0.688472, -0.725183,
		33.502106, 40.913151, 26.260447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757977, 41.356445, 26.643496>,  <33.494583, 41.395084, 26.768074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757977, 41.356445, 26.643496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.895187, 41.024124, 26.468184>,  <32.977516, 40.824730, 26.362995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.895187, 41.024124, 26.468184>,  <32.757977, 41.356445, 26.643496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895187, 41.024124, 26.468184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689777, -0.539515, 0.482837,
		-0.637604, 0.136690, -0.758141,
		0.343029, -0.830807, -0.438282,
		32.998096, 40.774883, 26.336699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213848, 40.926418, 26.257799>,  <32.757977, 41.356445, 26.643496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213848, 40.926418, 26.257799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.501377, 40.661148, 26.341208>,  <32.673897, 40.501984, 26.391253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.501377, 40.661148, 26.341208>,  <32.213848, 40.926418, 26.257799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501377, 40.661148, 26.341208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666334, -0.571745, 0.478652,
		-0.198210, -0.483013, -0.852884,
		0.718827, -0.663179, 0.208522,
		32.717026, 40.462193, 26.403765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005730, 40.229027, 25.929779>,  <32.213848, 40.926418, 26.257799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005730, 40.229027, 25.929779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.264519, 40.144932, 26.222961>,  <32.419792, 40.094475, 26.398870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.264519, 40.144932, 26.222961>,  <32.005730, 40.229027, 25.929779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264519, 40.144932, 26.222961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617052, -0.709061, 0.341290,
		0.447960, -0.673078, -0.588471,
		0.646976, -0.210233, 0.732955,
		32.458611, 40.081863, 26.442848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904749, 39.563213, 26.071325>,  <32.005730, 40.229027, 25.929779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904749, 39.563213, 26.071325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.088070, 39.686695, 26.404711>,  <32.198063, 39.760784, 26.604742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.088070, 39.686695, 26.404711>,  <31.904749, 39.563213, 26.071325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088070, 39.686695, 26.404711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594305, -0.590836, 0.545633,
		0.660878, -0.745396, -0.087319,
		0.458304, 0.308703, 0.833463,
		32.225559, 39.779305, 26.654749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<32.085152, 34.749226, 30.161291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.299377, 35.011425, 30.374264>,  <32.427914, 35.168747, 30.502048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.299377, 35.011425, 30.374264>,  <32.085152, 34.749226, 30.161291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299377, 35.011425, 30.374264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788727, 0.162955, 0.592753,
		0.301788, -0.737403, 0.604285,
		0.535569, 0.655501, 0.532432,
		32.460049, 35.208076, 30.533993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136608, 34.615047, 30.942808>,  <32.085152, 34.749226, 30.161291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136608, 34.615047, 30.942808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.135822, 35.006199, 30.859137>,  <32.135349, 35.240891, 30.808933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.135822, 35.006199, 30.859137>,  <32.136608, 34.615047, 30.942808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135822, 35.006199, 30.859137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783336, 0.128519, 0.608168,
		0.621596, 0.165056, 0.765751,
		-0.001969, 0.977875, -0.209181,
		32.135231, 35.299561, 30.796383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056595, 34.914062, 31.572292>,  <32.136608, 34.615047, 30.942808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056595, 34.914062, 31.572292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.934813, 35.165691, 31.286194>,  <31.861744, 35.316669, 31.114534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.934813, 35.165691, 31.286194>,  <32.056595, 34.914062, 31.572292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934813, 35.165691, 31.286194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842681, 0.172185, 0.510138,
		0.444068, 0.758037, 0.477685,
		-0.304454, 0.629072, -0.715246,
		31.843477, 35.354412, 31.071621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830460, 35.548477, 31.938515>,  <32.056595, 34.914062, 31.572292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830460, 35.548477, 31.938515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.667902, 35.529423, 31.573532>,  <31.570368, 35.517990, 31.354544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.667902, 35.529423, 31.573532>,  <31.830460, 35.548477, 31.938515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667902, 35.529423, 31.573532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913055, 0.058595, 0.403604,
		0.034238, 0.997144, -0.067312,
		-0.406396, -0.047641, -0.912454,
		31.545982, 35.515129, 31.299795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247673, 36.037971, 32.088573>,  <31.830460, 35.548477, 31.938515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247673, 36.037971, 32.088573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.159269, 35.846500, 31.748688>,  <31.106226, 35.731617, 31.544756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.159269, 35.846500, 31.748688>,  <31.247673, 36.037971, 32.088573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.159269, 35.846500, 31.748688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927545, -0.166049, 0.334795,
		-0.301354, 0.862145, -0.407298,
		-0.221011, -0.478679, -0.849718,
		31.092966, 35.702896, 31.493773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656681, 36.355442, 31.676678>,  <31.247673, 36.037971, 32.088573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656681, 36.355442, 31.676678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.658905, 35.970936, 31.566446>,  <30.660240, 35.740234, 31.500307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.658905, 35.970936, 31.566446>,  <30.656681, 36.355442, 31.676678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658905, 35.970936, 31.566446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940974, -0.098298, 0.323891,
		-0.338433, 0.257513, -0.905069,
		0.005561, -0.961262, -0.275580,
		30.660574, 35.682556, 31.483772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078268, 36.304256, 31.308197>,  <30.656681, 36.355442, 31.676678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078268, 36.304256, 31.308197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.165791, 35.925667, 31.403114>,  <30.218304, 35.698513, 31.460064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.165791, 35.925667, 31.403114>,  <30.078268, 36.304256, 31.308197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165791, 35.925667, 31.403114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897622, -0.099881, 0.429299,
		-0.382620, -0.306931, -0.871433,
		0.218805, -0.946476, 0.237292,
		30.231432, 35.641724, 31.474302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489378, 35.966305, 31.185978>,  <30.078268, 36.304256, 31.308197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489378, 35.966305, 31.185978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.659870, 35.700645, 31.431656>,  <29.762165, 35.541252, 31.579063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.659870, 35.700645, 31.431656>,  <29.489378, 35.966305, 31.185978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659870, 35.700645, 31.431656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904036, -0.336987, 0.262980,
		0.032319, -0.667345, -0.744047,
		0.426233, -0.664146, 0.614195,
		29.787741, 35.501400, 31.615915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116339, 35.307636, 31.070635>,  <29.489378, 35.966305, 31.185978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116339, 35.307636, 31.070635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.307606, 35.246605, 31.416599>,  <29.422367, 35.209988, 31.624178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.307606, 35.246605, 31.416599>,  <29.116339, 35.307636, 31.070635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.307606, 35.246605, 31.416599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828996, -0.403624, 0.387108,
		0.290035, -0.902112, -0.319488,
		0.478168, -0.152579, 0.864913,
		29.451056, 35.200832, 31.676073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966707, 34.601849, 31.309135>,  <29.116339, 35.307636, 31.070635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966707, 34.601849, 31.309135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.078274, 34.786068, 31.646206>,  <29.145214, 34.896599, 31.848448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.078274, 34.786068, 31.646206>,  <28.966707, 34.601849, 31.309135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078274, 34.786068, 31.646206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677368, -0.527663, 0.512586,
		0.680719, -0.713769, 0.164787,
		0.278915, 0.460549, 0.842675,
		29.161949, 34.924232, 31.899008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059988, 34.054916, 31.832718>,  <28.966707, 34.601849, 31.309135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059988, 34.054916, 31.832718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.994070, 34.407402, 32.009945>,  <28.954519, 34.618893, 32.116283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.994070, 34.407402, 32.009945>,  <29.059988, 34.054916, 31.832718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994070, 34.407402, 32.009945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717068, -0.415480, 0.559633,
		0.677241, -0.225487, 0.700357,
		-0.164794, 0.881211, 0.443070,
		28.944632, 34.671764, 32.142864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025520, 33.814423, 32.490219>,  <29.059988, 34.054916, 31.832718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025520, 33.814423, 32.490219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.847664, 34.172279, 32.472778>,  <28.740950, 34.386993, 32.462315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.847664, 34.172279, 32.472778>,  <29.025520, 33.814423, 32.490219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847664, 34.172279, 32.472778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734757, -0.336471, 0.588998,
		0.512275, 0.293930, 0.806957,
		-0.444642, 0.894646, -0.043602,
		28.714272, 34.440674, 32.459698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903336, 34.078449, 33.145458>,  <29.025520, 33.814423, 32.490219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.903336, 34.078449, 33.145458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.632877, 34.231876, 32.893841>,  <28.470602, 34.323933, 32.742870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.632877, 34.231876, 32.893841>,  <28.903336, 34.078449, 33.145458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.632877, 34.231876, 32.893841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736635, -0.335775, 0.587046,
		0.013954, 0.860308, 0.509584,
		-0.676146, 0.383569, -0.629048,
		28.430033, 34.346947, 32.705128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224195, 33.781666, 33.731361>,  <28.903336, 34.078449, 33.145458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224195, 33.781666, 33.731361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.109804, 33.723000, 34.110138>,  <29.041170, 33.687801, 34.337406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.109804, 33.723000, 34.110138>,  <29.224195, 33.781666, 33.731361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109804, 33.723000, 34.110138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803400, -0.575308, 0.153523,
		0.522268, 0.804680, 0.282357,
		-0.285979, -0.146665, 0.946945,
		29.024010, 33.679001, 34.394222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628075, 33.797302, 34.371544>,  <29.224195, 33.781666, 33.731361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628075, 33.797302, 34.371544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.867229, 33.722233, 34.683262>,  <30.010723, 33.677189, 34.870293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.867229, 33.722233, 34.683262>,  <29.628075, 33.797302, 34.371544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867229, 33.722233, 34.683262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786996, 0.322042, -0.526238,
		-0.152205, 0.927937, 0.340246,
		0.597889, -0.187676, 0.779298,
		30.046597, 33.665932, 34.917053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111868, 34.285545, 34.337242>,  <29.628075, 33.797302, 34.371544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111868, 34.285545, 34.337242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.303251, 34.030842, 34.579109>,  <30.418081, 33.878021, 34.724228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.303251, 34.030842, 34.579109>,  <30.111868, 34.285545, 34.337242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303251, 34.030842, 34.579109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855185, 0.181576, -0.485477,
		0.199339, 0.749380, 0.631422,
		0.478458, -0.636758, 0.604664,
		30.446789, 33.839813, 34.760509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729441, 34.640137, 34.650074>,  <30.111868, 34.285545, 34.337242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729441, 34.640137, 34.650074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.798035, 34.246643, 34.671436>,  <30.839191, 34.010548, 34.684254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.798035, 34.246643, 34.671436>,  <30.729441, 34.640137, 34.650074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798035, 34.246643, 34.671436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879943, 0.128561, -0.457354,
		0.443051, 0.125422, 0.887680,
		0.171483, -0.983738, 0.053405,
		30.849480, 33.951523, 34.687458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385460, 34.595787, 34.962032>,  <30.729441, 34.640137, 34.650074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385460, 34.595787, 34.962032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.301655, 34.267452, 34.749493>,  <31.251371, 34.070450, 34.621971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.301655, 34.267452, 34.749493>,  <31.385460, 34.595787, 34.962032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301655, 34.267452, 34.749493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920203, 0.018235, -0.391016,
		0.330650, -0.570869, 0.751518,
		-0.209515, -0.820839, -0.531344,
		31.238800, 34.021202, 34.590088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846785, 34.168747, 35.118576>,  <31.385460, 34.595787, 34.962032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846785, 34.168747, 35.118576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.726486, 34.047638, 34.756828>,  <31.654308, 33.974972, 34.539780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.726486, 34.047638, 34.756828>,  <31.846785, 34.168747, 35.118576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726486, 34.047638, 34.756828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925872, 0.134727, -0.353001,
		0.228723, -0.943492, 0.239812,
		-0.300745, -0.302774, -0.904367,
		31.636263, 33.956806, 34.485519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466217, 33.969509, 34.831005>,  <31.846785, 34.168747, 35.118576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466217, 33.969509, 34.831005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.251263, 33.963116, 34.493732>,  <32.122292, 33.959278, 34.291367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.251263, 33.963116, 34.493732>,  <32.466217, 33.969509, 34.831005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251263, 33.963116, 34.493732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818803, 0.229515, -0.526199,
		0.201934, -0.973174, -0.110250,
		-0.537387, -0.015985, -0.843184,
		32.090046, 33.958321, 34.240776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755711, 33.485584, 34.268093>,  <32.466217, 33.969509, 34.831005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755711, 33.485584, 34.268093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.522247, 33.721119, 34.044445>,  <32.382168, 33.862442, 33.910255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.522247, 33.721119, 34.044445>,  <32.755711, 33.485584, 34.268093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522247, 33.721119, 34.044445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745072, 0.114625, -0.657061,
		-0.322815, -0.800081, -0.505630,
		-0.583659, 0.588840, -0.559116,
		32.347149, 33.897770, 33.876709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973198, 33.377136, 33.527328>,  <32.755711, 33.485584, 34.268093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973198, 33.377136, 33.527328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.783413, 33.728802, 33.545013>,  <32.669540, 33.939800, 33.555626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.783413, 33.728802, 33.545013>,  <32.973198, 33.377136, 33.527328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783413, 33.728802, 33.545013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642367, 0.380136, -0.665478,
		-0.601871, -0.287345, -0.745107,
		-0.474464, 0.879164, 0.044213,
		32.641075, 33.992550, 33.558277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965599, 33.586899, 32.824242>,  <32.973198, 33.377136, 33.527328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965599, 33.586899, 32.824242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.919170, 33.926117, 33.031059>,  <32.891312, 34.129650, 33.155151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.919170, 33.926117, 33.031059>,  <32.965599, 33.586899, 32.824242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919170, 33.926117, 33.031059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658355, 0.455473, -0.599260,
		-0.743704, 0.270843, -0.611186,
		-0.116074, 0.848050, 0.517048,
		32.884350, 34.180531, 33.186172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881042, 34.096176, 32.312195>,  <32.965599, 33.586899, 32.824242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881042, 34.096176, 32.312195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.991642, 34.308655, 32.632538>,  <33.058002, 34.436142, 32.824745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.991642, 34.308655, 32.632538>,  <32.881042, 34.096176, 32.312195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991642, 34.308655, 32.632538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548294, 0.597207, -0.585421,
		-0.789253, 0.600976, -0.126123,
		0.276503, 0.531198, 0.800859,
		33.074593, 34.468014, 32.872795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808685, 34.788242, 32.093849>,  <32.881042, 34.096176, 32.312195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808685, 34.788242, 32.093849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.063526, 34.778240, 32.402000>,  <33.216431, 34.772240, 32.586891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.063526, 34.778240, 32.402000>,  <32.808685, 34.788242, 32.093849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063526, 34.778240, 32.402000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610752, 0.626080, -0.484774,
		-0.470195, 0.779358, 0.414147,
		0.637102, -0.025003, 0.770374,
		33.254658, 34.770741, 32.633114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885277, 35.448170, 32.344059>,  <32.808685, 34.788242, 32.093849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885277, 35.448170, 32.344059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.210815, 35.240932, 32.449303>,  <33.406139, 35.116589, 32.512447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.210815, 35.240932, 32.449303>,  <32.885277, 35.448170, 32.344059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210815, 35.240932, 32.449303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564938, 0.599518, -0.566942,
		0.135990, 0.610046, 0.780609,
		0.813850, -0.518094, 0.263110,
		33.454971, 35.085503, 32.528236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307571, 35.909153, 32.307472>,  <32.885277, 35.448170, 32.344059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307571, 35.909153, 32.307472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.568005, 35.610256, 32.360718>,  <33.724266, 35.430920, 32.392666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.568005, 35.610256, 32.360718>,  <33.307571, 35.909153, 32.307472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568005, 35.610256, 32.360718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585053, 0.382359, -0.715202,
		0.483529, 0.543539, 0.686123,
		0.651086, -0.747240, 0.133118,
		33.763329, 35.386086, 32.400654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935692, 36.274540, 32.479412>,  <33.307571, 35.909153, 32.307472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935692, 36.274540, 32.479412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.003639, 35.914982, 32.317852>,  <34.044407, 35.699249, 32.220917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.003639, 35.914982, 32.317852>,  <33.935692, 36.274540, 32.479412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003639, 35.914982, 32.317852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772649, 0.375890, -0.511586,
		0.611683, -0.225172, 0.758381,
		0.169873, -0.898891, -0.403904,
		34.054600, 35.645313, 32.196682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317730, 36.390236, 33.150227>,  <33.935692, 36.274540, 32.479412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317730, 36.390236, 33.150227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.323788, 36.750244, 33.324459>,  <34.327423, 36.966251, 33.428997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.323788, 36.750244, 33.324459>,  <34.317730, 36.390236, 33.150227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323788, 36.750244, 33.324459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711914, -0.296187, 0.636751,
		0.702103, -0.319739, 0.636253,
		0.015144, 0.900022, 0.435581,
		34.328331, 37.020252, 33.455132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398727, 36.354210, 33.939682>,  <34.317730, 36.390236, 33.150227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398727, 36.354210, 33.939682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.204567, 36.689842, 33.841431>,  <34.088070, 36.891220, 33.782478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.204567, 36.689842, 33.841431>,  <34.398727, 36.354210, 33.939682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204567, 36.689842, 33.841431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731969, -0.236381, 0.639019,
		0.478124, 0.489975, 0.728919,
		-0.485406, 0.839076, -0.245627,
		34.058945, 36.941566, 33.767742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998512, 36.454861, 34.536728>,  <34.398727, 36.354210, 33.939682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998512, 36.454861, 34.536728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.843708, 36.707306, 34.267826>,  <33.750824, 36.858772, 34.106483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.843708, 36.707306, 34.267826>,  <33.998512, 36.454861, 34.536728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843708, 36.707306, 34.267826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883286, -0.044507, 0.466717,
		0.264629, 0.774416, 0.574675,
		-0.387010, 0.631109, -0.672253,
		33.727604, 36.896637, 34.066151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810253, 37.030548, 34.858868>,  <33.998512, 36.454861, 34.536728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810253, 37.030548, 34.858868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.585079, 37.050388, 34.528862>,  <33.449974, 37.062290, 34.330860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.585079, 37.050388, 34.528862>,  <33.810253, 37.030548, 34.858868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585079, 37.050388, 34.528862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825343, 0.019152, 0.564307,
		0.043789, 0.998586, 0.030153,
		-0.562931, 0.049597, -0.825014,
		33.416199, 37.065266, 34.281357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318321, 37.412304, 35.111210>,  <33.810253, 37.030548, 34.858868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318321, 37.412304, 35.111210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.167942, 37.255074, 34.775555>,  <33.077713, 37.160736, 34.574162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.167942, 37.255074, 34.775555>,  <33.318321, 37.412304, 35.111210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167942, 37.255074, 34.775555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922676, 0.075127, 0.378188,
		-0.085615, 0.916431, -0.390927,
		-0.375952, -0.393077, -0.839137,
		33.055157, 37.137150, 34.523815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850197, 37.855232, 34.991520>,  <33.318321, 37.412304, 35.111210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850197, 37.855232, 34.991520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.725563, 37.527214, 34.799503>,  <32.650784, 37.330402, 34.684296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.725563, 37.527214, 34.799503>,  <32.850197, 37.855232, 34.991520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725563, 37.527214, 34.799503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941235, 0.197059, 0.274307,
		-0.130348, 0.537300, -0.833258,
		-0.311586, -0.820047, -0.480039,
		32.632088, 37.281200, 34.655491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210876, 38.050453, 34.654411>,  <32.850197, 37.855232, 34.991520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210876, 38.050453, 34.654411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.211929, 37.651348, 34.681114>,  <32.212563, 37.411884, 34.697136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.211929, 37.651348, 34.681114>,  <32.210876, 38.050453, 34.654411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211929, 37.651348, 34.681114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984435, 0.009147, 0.175512,
		-0.175731, -0.066176, -0.982211,
		0.002631, -0.997766, 0.066754,
		32.212719, 37.352016, 34.701141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642076, 37.902119, 34.309361>,  <32.210876, 38.050453, 34.654411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642076, 37.902119, 34.309361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.734320, 37.586868, 34.537632>,  <31.789665, 37.397717, 34.674595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.734320, 37.586868, 34.537632>,  <31.642076, 37.902119, 34.309361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734320, 37.586868, 34.537632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966880, -0.119677, 0.225434,
		-0.109371, -0.603772, -0.789619,
		0.230610, -0.788123, 0.570686,
		31.803503, 37.350430, 34.708836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220606, 37.487255, 34.007782>,  <31.642076, 37.902119, 34.309361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220606, 37.487255, 34.007782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.293322, 37.322742, 34.365063>,  <31.336950, 37.224037, 34.579430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.293322, 37.322742, 34.365063>,  <31.220606, 37.487255, 34.007782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293322, 37.322742, 34.365063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982256, -0.118551, 0.145325,
		0.046121, -0.903767, -0.425532,
		0.181788, -0.411279, 0.893198,
		31.347858, 37.199360, 34.633022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903299, 36.860149, 34.052116>,  <31.220606, 37.487255, 34.007782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903299, 36.860149, 34.052116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.965977, 36.941597, 34.438690>,  <31.003584, 36.990463, 34.670635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.965977, 36.941597, 34.438690>,  <30.903299, 36.860149, 34.052116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965977, 36.941597, 34.438690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928063, -0.304374, 0.214603,
		0.337853, -0.930535, 0.141276,
		0.156695, 0.203618, 0.966430,
		31.012985, 37.002682, 34.728619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687157, 36.261852, 34.364101>,  <30.903299, 36.860149, 34.052116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687157, 36.261852, 34.364101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.711231, 36.537235, 34.653214>,  <30.725676, 36.702465, 34.826679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.711231, 36.537235, 34.653214>,  <30.687157, 36.261852, 34.364101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711231, 36.537235, 34.653214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877355, -0.308846, 0.367237,
		0.476053, -0.656233, 0.585433,
		0.060185, 0.688457, 0.722776,
		30.729286, 36.743771, 34.870045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493198, 35.917904, 34.852306>,  <30.687157, 36.261852, 34.364101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493198, 35.917904, 34.852306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.404922, 36.283073, 34.989635>,  <30.351957, 36.502174, 35.072033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.404922, 36.283073, 34.989635>,  <30.493198, 35.917904, 34.852306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404922, 36.283073, 34.989635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859124, -0.348591, 0.374687,
		0.461739, -0.212267, 0.861243,
		-0.220688, 0.912922, 0.343322,
		30.338717, 36.556950, 35.092632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.440315, 38.185211, 32.159313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198490, 38.489899, 32.066120>,  <37.053394, 38.672710, 32.010204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198490, 38.489899, 32.066120>,  <37.440315, 38.185211, 32.159313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198490, 38.489899, 32.066120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617937, -0.263924, 0.740607,
		0.502647, 0.591713, 0.630255,
		-0.604566, 0.761722, -0.232981,
		37.017120, 38.718414, 31.996225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211105, 38.436359, 32.802486>,  <37.440315, 38.185211, 32.159313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211105, 38.436359, 32.802486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946522, 38.566158, 32.532024>,  <36.787773, 38.644035, 32.369747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946522, 38.566158, 32.532024>,  <37.211105, 38.436359, 32.802486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946522, 38.566158, 32.532024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749456, -0.252181, 0.612144,
		0.028124, 0.911652, 0.410000,
		-0.661456, 0.324493, -0.676151,
		36.748085, 38.663506, 32.329178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644230, 38.677197, 33.129890>,  <37.211105, 38.436359, 32.802486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644230, 38.677197, 33.129890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452217, 38.660088, 32.779408>,  <36.337009, 38.649822, 32.569118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452217, 38.660088, 32.779408>,  <36.644230, 38.677197, 33.129890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452217, 38.660088, 32.779408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827818, -0.308475, 0.468573,
		-0.290330, 0.950270, 0.112671,
		-0.480027, -0.042770, -0.876210,
		36.308208, 38.647255, 32.516544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006023, 39.040089, 33.208225>,  <36.644230, 38.677197, 33.129890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006023, 39.040089, 33.208225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966080, 38.784153, 32.903427>,  <35.942116, 38.630592, 32.720547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966080, 38.784153, 32.903427>,  <36.006023, 39.040089, 33.208225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966080, 38.784153, 32.903427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685210, -0.511071, 0.518934,
		-0.721467, 0.573946, -0.387390,
		-0.099856, -0.639838, -0.761995,
		35.936123, 38.592201, 32.674828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340172, 39.060066, 32.941681>,  <36.006023, 39.040089, 33.208225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340172, 39.060066, 32.941681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463902, 38.698048, 32.824921>,  <35.538139, 38.480835, 32.754864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463902, 38.698048, 32.824921>,  <35.340172, 39.060066, 32.941681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463902, 38.698048, 32.824921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797293, -0.414119, 0.439123,
		-0.518309, 0.096897, -0.849687,
		0.309321, -0.905051, -0.291897,
		35.556698, 38.426533, 32.737350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817799, 38.708126, 32.967472>,  <35.340172, 39.060066, 32.941681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817799, 38.708126, 32.967472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065880, 38.399757, 32.909477>,  <35.214729, 38.214737, 32.874680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065880, 38.399757, 32.909477>,  <34.817799, 38.708126, 32.967472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065880, 38.399757, 32.909477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674755, -0.618554, 0.402614,
		-0.400069, -0.151870, -0.903814,
		0.620202, -0.770926, -0.144990,
		35.251942, 38.168480, 32.865982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405464, 38.242954, 32.626118>,  <34.817799, 38.708126, 32.967472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405464, 38.242954, 32.626118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714821, 38.015526, 32.738255>,  <34.900433, 37.879066, 32.805538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714821, 38.015526, 32.738255>,  <34.405464, 38.242954, 32.626118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714821, 38.015526, 32.738255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628572, -0.745174, 0.222738,
		0.082263, -0.348481, -0.933699,
		0.773388, -0.568574, 0.280346,
		34.946838, 37.844955, 32.822357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212795, 37.543682, 32.375626>,  <34.405464, 38.242954, 32.626118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212795, 37.543682, 32.375626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487961, 37.533417, 32.665764>,  <34.653061, 37.527256, 32.839848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487961, 37.533417, 32.665764>,  <34.212795, 37.543682, 32.375626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487961, 37.533417, 32.665764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490094, -0.753553, 0.438138,
		0.535338, -0.656886, -0.530956,
		0.687911, -0.025667, 0.725341,
		34.694336, 37.525715, 32.883366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347958, 36.857548, 32.565063>,  <34.212795, 37.543682, 32.375626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347958, 36.857548, 32.565063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434471, 37.087292, 32.880871>,  <34.486378, 37.225140, 33.070354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434471, 37.087292, 32.880871>,  <34.347958, 36.857548, 32.565063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434471, 37.087292, 32.880871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693993, -0.478346, 0.538106,
		0.686727, -0.664301, 0.295144,
		0.216283, 0.574360, 0.789514,
		34.499355, 37.259598, 33.117725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650719, 36.196068, 32.524048>,  <34.347958, 36.857548, 32.565063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650719, 36.196068, 32.524048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530304, 35.960903, 32.223717>,  <34.458054, 35.819805, 32.043518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530304, 35.960903, 32.223717>,  <34.650719, 36.196068, 32.524048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530304, 35.960903, 32.223717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705469, 0.392463, -0.590158,
		0.641631, -0.707343, 0.296607,
		-0.301036, -0.587911, -0.750825,
		34.439995, 35.784531, 31.998468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238552, 36.070770, 32.087620>,  <34.650719, 36.196068, 32.524048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238552, 36.070770, 32.087620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946049, 35.960823, 31.837915>,  <34.770546, 35.894855, 31.688091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946049, 35.960823, 31.837915>,  <35.238552, 36.070770, 32.087620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946049, 35.960823, 31.837915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584223, 0.219979, -0.781212,
		0.352056, -0.935979, -0.000277,
		-0.731259, -0.274869, -0.624266,
		34.726669, 35.878365, 31.650637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629467, 35.725159, 31.537264>,  <35.238552, 36.070770, 32.087620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629467, 35.725159, 31.537264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267899, 35.810295, 31.388876>,  <35.050957, 35.861378, 31.299843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267899, 35.810295, 31.388876>,  <35.629467, 35.725159, 31.537264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267899, 35.810295, 31.388876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424143, 0.334610, -0.841510,
		-0.054979, -0.918005, -0.392738,
		-0.903924, 0.212843, -0.370969,
		34.996719, 35.874149, 31.277586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604961, 35.497330, 30.781569>,  <35.629467, 35.725159, 31.537264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604961, 35.497330, 30.781569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284252, 35.732708, 30.823318>,  <35.091827, 35.873936, 30.848368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284252, 35.732708, 30.823318>,  <35.604961, 35.497330, 30.781569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284252, 35.732708, 30.823318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237960, 0.474541, -0.847458,
		-0.548213, -0.654631, -0.520501,
		-0.801772, 0.588446, 0.104374,
		35.043720, 35.909241, 30.854631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196011, 35.466160, 30.169184>,  <35.604961, 35.497330, 30.781569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196011, 35.466160, 30.169184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141338, 35.811550, 30.363388>,  <35.108536, 36.018784, 30.479910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141338, 35.811550, 30.363388>,  <35.196011, 35.466160, 30.169184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141338, 35.811550, 30.363388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082126, 0.498300, -0.863106,
		-0.987206, -0.078093, -0.139019,
		-0.136676, 0.863481, 0.485511,
		35.100334, 36.070595, 30.509041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793320, 35.767696, 29.735323>,  <35.196011, 35.466160, 30.169184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793320, 35.767696, 29.735323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961082, 36.051346, 29.962036>,  <35.061741, 36.221535, 30.098064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961082, 36.051346, 29.962036>,  <34.793320, 35.767696, 29.735323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961082, 36.051346, 29.962036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246122, 0.512142, -0.822882,
		-0.873795, 0.484624, 0.040268,
		0.419412, 0.709119, 0.566784,
		35.086906, 36.264080, 30.132071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641678, 36.456631, 29.431479>,  <34.793320, 35.767696, 29.735323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641678, 36.456631, 29.431479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961143, 36.527420, 29.661543>,  <35.152824, 36.569893, 29.799582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961143, 36.527420, 29.661543>,  <34.641678, 36.456631, 29.431479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961143, 36.527420, 29.661543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350482, 0.640148, -0.683647,
		-0.489177, 0.747590, 0.449239,
		0.798667, 0.176974, 0.575162,
		35.200745, 36.580513, 29.834091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640995, 37.177998, 29.558037>,  <34.641678, 36.456631, 29.431479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640995, 37.177998, 29.558037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018024, 37.056122, 29.612755>,  <35.244244, 36.982998, 29.645586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018024, 37.056122, 29.612755>,  <34.640995, 37.177998, 29.558037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018024, 37.056122, 29.612755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329732, 0.783760, -0.526304,
		0.053142, 0.541189, 0.839220,
		0.942577, -0.304687, 0.136797,
		35.300797, 36.964714, 29.653793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969296, 37.800091, 29.794071>,  <34.640995, 37.177998, 29.558037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969296, 37.800091, 29.794071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262707, 37.556870, 29.672615>,  <35.438755, 37.410934, 29.599741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262707, 37.556870, 29.672615>,  <34.969296, 37.800091, 29.794071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262707, 37.556870, 29.672615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276910, 0.675372, -0.683516,
		0.620687, 0.417300, 0.663783,
		0.733532, -0.608058, -0.303640,
		35.482765, 37.374451, 29.581524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592999, 38.229156, 29.753269>,  <34.969296, 37.800091, 29.794071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592999, 38.229156, 29.753269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690746, 37.911457, 29.530756>,  <35.749393, 37.720837, 29.397247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690746, 37.911457, 29.530756>,  <35.592999, 38.229156, 29.753269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690746, 37.911457, 29.530756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579868, 0.579492, -0.572663,
		0.777199, -0.182631, 0.602169,
		0.244366, -0.794251, -0.556282,
		35.764057, 37.673183, 29.363871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364029, 38.291801, 29.494526>,  <35.592999, 38.229156, 29.753269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364029, 38.291801, 29.494526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229866, 37.993122, 29.264761>,  <36.149368, 37.813915, 29.126902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229866, 37.993122, 29.264761>,  <36.364029, 38.291801, 29.494526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229866, 37.993122, 29.264761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534625, 0.351172, -0.768671,
		0.775681, -0.564910, 0.281418,
		-0.335403, -0.746696, -0.574412,
		36.129246, 37.769112, 29.092438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935856, 37.921738, 29.304855>,  <36.364029, 38.291801, 29.494526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935856, 37.921738, 29.304855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654549, 37.863289, 29.026556>,  <36.485764, 37.828220, 28.859577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654549, 37.863289, 29.026556>,  <36.935856, 37.921738, 29.304855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654549, 37.863289, 29.026556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639643, 0.297071, -0.708947,
		0.310280, -0.943609, -0.115453,
		-0.703266, -0.146124, -0.695748,
		36.443569, 37.819454, 28.817831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296070, 37.755238, 28.764982>,  <36.935856, 37.921738, 29.304855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296070, 37.755238, 28.764982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949314, 37.819359, 28.576176>,  <36.741261, 37.857834, 28.462893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949314, 37.819359, 28.576176>,  <37.296070, 37.755238, 28.764982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949314, 37.819359, 28.576176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496410, 0.364105, -0.788038,
		0.045536, -0.917458, -0.395218,
		-0.866893, 0.160307, -0.472015,
		36.689247, 37.867451, 28.434570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468483, 37.581776, 28.163748>,  <37.296070, 37.755238, 28.764982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468483, 37.581776, 28.163748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125565, 37.780968, 28.111496>,  <36.919815, 37.900482, 28.080145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125565, 37.780968, 28.111496>,  <37.468483, 37.581776, 28.163748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125565, 37.780968, 28.111496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292136, 0.261618, -0.919898,
		-0.423917, -0.826783, -0.369762,
		-0.857293, 0.497981, -0.130629,
		36.868378, 37.930363, 28.072308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.259964, 42.805367, 27.976894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.498199, 42.524071, 28.132193>,  <33.641140, 42.355293, 28.225372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.498199, 42.524071, 28.132193>,  <33.259964, 42.805367, 27.976894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498199, 42.524071, 28.132193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780744, -0.393056, 0.485743,
		-0.188990, -0.592422, -0.783147,
		0.595585, -0.703237, 0.388246,
		33.676876, 42.313099, 28.248667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925488, 42.123905, 27.764240>,  <33.259964, 42.805367, 27.976894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925488, 42.123905, 27.764240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.177116, 42.028885, 28.060305>,  <33.328094, 41.971874, 28.237944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.177116, 42.028885, 28.060305>,  <32.925488, 42.123905, 27.764240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177116, 42.028885, 28.060305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755715, -0.409957, 0.510715,
		0.182115, -0.880628, -0.437412,
		0.629070, -0.237550, 0.740162,
		33.365837, 41.957619, 28.282354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934814, 41.416634, 27.853783>,  <32.925488, 42.123905, 27.764240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934814, 41.416634, 27.853783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.060074, 41.573116, 28.199936>,  <33.135231, 41.667007, 28.407629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.060074, 41.573116, 28.199936>,  <32.934814, 41.416634, 27.853783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060074, 41.573116, 28.199936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602735, -0.622315, 0.499434,
		0.733926, -0.677996, 0.040920,
		0.313149, 0.391211, 0.865385,
		33.154018, 41.690479, 28.459551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900944, 40.865452, 28.227732>,  <32.934814, 41.416634, 27.853783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900944, 40.865452, 28.227732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.913994, 41.149853, 28.508703>,  <32.921825, 41.320496, 28.677286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.913994, 41.149853, 28.508703>,  <32.900944, 40.865452, 28.227732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913994, 41.149853, 28.508703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743672, -0.452277, 0.492339,
		0.667748, -0.538440, 0.514000,
		0.032624, 0.711005, 0.702429,
		32.923782, 41.363155, 28.719433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633671, 40.502052, 28.891895>,  <32.900944, 40.865452, 28.227732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633671, 40.502052, 28.891895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.594162, 40.897243, 28.939455>,  <32.570457, 41.134357, 28.967991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.594162, 40.897243, 28.939455>,  <32.633671, 40.502052, 28.891895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594162, 40.897243, 28.939455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837233, -0.147087, 0.526693,
		0.537851, -0.047523, 0.841699,
		-0.098773, 0.987981, 0.118898,
		32.564529, 41.193638, 28.975124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491444, 40.646984, 29.628578>,  <32.633671, 40.502052, 28.891895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491444, 40.646984, 29.628578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.340324, 40.950027, 29.415674>,  <32.249653, 41.131855, 29.287931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.340324, 40.950027, 29.415674>,  <32.491444, 40.646984, 29.628578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340324, 40.950027, 29.415674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819067, -0.005409, 0.573672,
		0.431739, 0.652688, 0.622575,
		-0.377796, 0.757607, -0.532260,
		32.226986, 41.177311, 29.255997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080132, 40.980000, 30.139519>,  <32.491444, 40.646984, 29.628578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080132, 40.980000, 30.139519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.962339, 41.132336, 29.788921>,  <31.891663, 41.223740, 29.578564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.962339, 41.132336, 29.788921>,  <32.080132, 40.980000, 30.139519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962339, 41.132336, 29.788921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944102, 0.026252, 0.328606,
		0.148157, 0.924267, 0.351823,
		-0.294483, 0.380842, -0.876493,
		31.873995, 41.246590, 29.525974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710285, 41.639912, 30.326223>,  <32.080132, 40.980000, 30.139519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710285, 41.639912, 30.326223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.599491, 41.481167, 29.976187>,  <31.533014, 41.385921, 29.766165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.599491, 41.481167, 29.976187>,  <31.710285, 41.639912, 30.326223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599491, 41.481167, 29.976187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958831, 0.054779, 0.278646,
		-0.062647, 0.916244, -0.395693,
		-0.276983, -0.396859, -0.875091,
		31.516396, 41.362110, 29.713659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106928, 42.056732, 30.272711>,  <31.710285, 41.639912, 30.326223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106928, 42.056732, 30.272711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.116474, 41.751896, 30.013901>,  <31.122202, 41.568993, 29.858614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.116474, 41.751896, 30.013901>,  <31.106928, 42.056732, 30.272711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116474, 41.751896, 30.013901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922996, -0.265440, 0.278603,
		-0.384069, 0.590553, -0.709746,
		0.023865, -0.762095, -0.647025,
		31.123634, 41.523266, 29.819794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.449923, 42.062294, 29.982262>,  <31.106928, 42.056732, 30.272711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.449923, 42.062294, 29.982262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.578959, 41.690697, 29.909698>,  <30.656380, 41.467739, 29.866159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.578959, 41.690697, 29.909698>,  <30.449923, 42.062294, 29.982262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578959, 41.690697, 29.909698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893820, -0.362046, 0.264591,
		-0.311481, 0.076792, -0.947145,
		0.322591, -0.928991, -0.181408,
		30.675735, 41.411999, 29.855276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919199, 41.710850, 29.729851>,  <30.449923, 42.062294, 29.982262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919199, 41.710850, 29.729851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.133806, 41.398651, 29.858210>,  <30.262571, 41.211330, 29.935225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.133806, 41.398651, 29.858210>,  <29.919199, 41.710850, 29.729851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133806, 41.398651, 29.858210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835189, -0.436638, 0.334374,
		-0.120861, -0.447409, -0.886125,
		0.536518, -0.780495, 0.320898,
		30.294762, 41.164501, 29.954479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543295, 41.154388, 29.654495>,  <29.919199, 41.710850, 29.729851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543295, 41.154388, 29.654495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.796555, 41.014633, 29.930771>,  <29.948511, 40.930779, 30.096537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.796555, 41.014633, 29.930771>,  <29.543295, 41.154388, 29.654495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.796555, 41.014633, 29.930771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737814, -0.542178, 0.402087,
		0.233991, -0.764180, -0.601063,
		0.633149, -0.349388, 0.690688,
		29.986500, 40.909817, 30.137978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382322, 40.491692, 29.631329>,  <29.543295, 41.154388, 29.654495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382322, 40.491692, 29.631329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.565268, 40.549995, 29.982231>,  <29.675034, 40.584976, 30.192772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.565268, 40.549995, 29.982231>,  <29.382322, 40.491692, 29.631329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565268, 40.549995, 29.982231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813967, -0.328689, 0.478978,
		0.358158, -0.933123, -0.031689,
		0.457362, 0.145756, 0.877254,
		29.702477, 40.593723, 30.245407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464830, 39.806679, 30.087666>,  <29.382322, 40.491692, 29.631329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464830, 39.806679, 30.087666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.442188, 40.131527, 30.319960>,  <29.428602, 40.326435, 30.459337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.442188, 40.131527, 30.319960>,  <29.464830, 39.806679, 30.087666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.442188, 40.131527, 30.319960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801014, -0.384151, 0.459134,
		0.595963, -0.439189, 0.672266,
		-0.056605, 0.812121, 0.580737,
		29.425207, 40.375164, 30.494181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595078, 39.062134, 30.086277>,  <29.464830, 39.806679, 30.087666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595078, 39.062134, 30.086277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.409096, 38.943783, 29.752504>,  <29.297506, 38.872772, 29.552240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.409096, 38.943783, 29.752504>,  <29.595078, 39.062134, 30.086277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.409096, 38.943783, 29.752504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716156, 0.428432, -0.550968,
		0.520517, -0.853757, 0.012695,
		-0.464954, -0.295880, -0.834430,
		29.269609, 38.855019, 29.502176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032734, 38.547115, 29.662399>,  <29.595078, 39.062134, 30.086277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032734, 38.547115, 29.662399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.772133, 38.701447, 29.401117>,  <29.615772, 38.794044, 29.244349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.772133, 38.701447, 29.401117>,  <30.032734, 38.547115, 29.662399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772133, 38.701447, 29.401117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755009, 0.245549, -0.608002,
		-0.074191, -0.889292, -0.451281,
		-0.651503, 0.385829, -0.653207,
		29.576681, 38.817196, 29.205154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261955, 38.284657, 29.085669>,  <30.032734, 38.547115, 29.662399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261955, 38.284657, 29.085669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.049469, 38.596722, 28.953510>,  <29.921978, 38.783958, 28.874216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.049469, 38.596722, 28.953510>,  <30.261955, 38.284657, 29.085669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049469, 38.596722, 28.953510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766662, 0.276652, -0.579391,
		-0.360613, -0.561082, -0.745081,
		-0.531214, 0.780160, -0.330396,
		29.890104, 38.830769, 28.854391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207348, 38.196461, 28.365223>,  <30.261955, 38.284657, 29.085669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207348, 38.196461, 28.365223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.142717, 38.584164, 28.439444>,  <30.103939, 38.816788, 28.483976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.142717, 38.584164, 28.439444>,  <30.207348, 38.196461, 28.365223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142717, 38.584164, 28.439444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630506, 0.246034, -0.736159,
		-0.759181, -0.001955, -0.650877,
		-0.161577, 0.969259, 0.185551,
		30.094244, 38.874943, 28.495110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.248674, 38.427959, 27.670988>,  <30.207348, 38.196461, 28.365223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.248674, 38.427959, 27.670988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.278248, 38.760864, 27.890759>,  <30.295992, 38.960609, 28.022621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.278248, 38.760864, 27.890759>,  <30.248674, 38.427959, 27.670988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.278248, 38.760864, 27.890759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593729, 0.405918, -0.694778,
		-0.801262, 0.377575, -0.464130,
		0.073932, 0.832266, 0.549424,
		30.300428, 39.010544, 28.055586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204020, 38.995895, 27.160128>,  <30.248674, 38.427959, 27.670988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204020, 38.995895, 27.160128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.365931, 39.134686, 27.498539>,  <30.463078, 39.217960, 27.701586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.365931, 39.134686, 27.498539>,  <30.204020, 38.995895, 27.160128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.365931, 39.134686, 27.498539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759026, 0.388468, -0.522467,
		-0.509937, 0.853642, -0.106118,
		0.404776, 0.346971, 0.846030,
		30.487364, 39.238777, 27.752348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359003, 39.618046, 27.048336>,  <30.204020, 38.995895, 27.160128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359003, 39.618046, 27.048336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.602951, 39.513748, 27.347689>,  <30.749319, 39.451172, 27.527300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.602951, 39.513748, 27.347689>,  <30.359003, 39.618046, 27.048336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602951, 39.513748, 27.347689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755319, 0.477103, -0.449295,
		-0.239905, 0.839277, 0.487914,
		0.609868, -0.260742, 0.748381,
		30.785912, 39.435524, 27.572203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873878, 40.176613, 27.089504>,  <30.359003, 39.618046, 27.048336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873878, 40.176613, 27.089504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.082626, 39.880661, 27.259317>,  <31.207876, 39.703091, 27.361206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.082626, 39.880661, 27.259317>,  <30.873878, 40.176613, 27.089504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082626, 39.880661, 27.259317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837784, 0.350908, -0.418308,
		0.160526, 0.573970, 0.802988,
		0.521871, -0.739880, 0.424533,
		31.239187, 39.658695, 27.386677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386208, 40.501736, 27.295927>,  <30.873878, 40.176613, 27.089504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386208, 40.501736, 27.295927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.533585, 40.129890, 27.299339>,  <31.622011, 39.906784, 27.301386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.533585, 40.129890, 27.299339>,  <31.386208, 40.501736, 27.295927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533585, 40.129890, 27.299339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882919, 0.347034, -0.316263,
		0.291041, 0.124055, 0.948633,
		0.368442, -0.929612, 0.008529,
		31.644117, 39.851006, 27.301897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990456, 40.476830, 27.714634>,  <31.386208, 40.501736, 27.295927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990456, 40.476830, 27.714634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.031342, 40.162457, 27.470713>,  <32.055874, 39.973831, 27.324360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.031342, 40.162457, 27.470713>,  <31.990456, 40.476830, 27.714634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031342, 40.162457, 27.470713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799931, 0.429341, -0.419258,
		0.591322, -0.444947, 0.672577,
		0.102217, -0.785932, -0.609805,
		32.062008, 39.926678, 27.287771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744694, 40.244850, 27.728703>,  <31.990456, 40.476830, 27.714634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744694, 40.244850, 27.728703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.590118, 40.095013, 27.391573>,  <32.497375, 40.005112, 27.189295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.590118, 40.095013, 27.391573>,  <32.744694, 40.244850, 27.728703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590118, 40.095013, 27.391573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802480, 0.313887, -0.507445,
		0.454635, -0.872443, 0.179304,
		-0.386436, -0.374590, -0.842823,
		32.474186, 39.982635, 27.138725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337101, 39.949821, 27.432629>,  <32.744694, 40.244850, 27.728703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337101, 39.949821, 27.432629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.084026, 39.969528, 27.123493>,  <32.932182, 39.981354, 26.938011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.084026, 39.969528, 27.123493>,  <33.337101, 39.949821, 27.432629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084026, 39.969528, 27.123493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737926, 0.341059, -0.582361,
		0.234894, -0.938750, -0.252138,
		-0.632685, 0.049266, -0.772841,
		32.894222, 39.984306, 26.891642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682381, 39.738991, 26.855104>,  <33.337101, 39.949821, 27.432629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682381, 39.738991, 26.855104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.369633, 39.937016, 26.703531>,  <33.181984, 40.055828, 26.612587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.369633, 39.937016, 26.703531>,  <33.682381, 39.738991, 26.855104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369633, 39.937016, 26.703531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610196, 0.483067, -0.627939,
		-0.127817, -0.722193, -0.679780,
		-0.781872, 0.495060, -0.378935,
		33.135071, 40.085533, 26.589851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665501, 39.658901, 26.048246>,  <33.682381, 39.738991, 26.855104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665501, 39.658901, 26.048246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.446564, 39.988152, 26.108751>,  <33.315201, 40.185703, 26.145054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.446564, 39.988152, 26.108751>,  <33.665501, 39.658901, 26.048246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446564, 39.988152, 26.108751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532198, 0.481817, -0.696145,
		-0.645896, -0.300527, -0.701785,
		-0.547342, 0.823126, 0.151264,
		33.282360, 40.235088, 26.154131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662498, 39.081985, 25.460381>,  <33.665501, 39.658901, 26.048246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662498, 39.081985, 25.460381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.014793, 38.892632, 25.454588>,  <34.226170, 38.779018, 25.451113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.014793, 38.892632, 25.454588>,  <33.662498, 39.081985, 25.460381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014793, 38.892632, 25.454588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396091, -0.753010, 0.525441,
		-0.259637, -0.457041, -0.850707,
		0.880739, -0.473381, -0.014480,
		34.279015, 38.750618, 25.450243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499523, 38.484829, 25.256701>,  <33.662498, 39.081985, 25.460381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499523, 38.484829, 25.256701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.841274, 38.453983, 25.462257>,  <34.046326, 38.435474, 25.585592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.841274, 38.453983, 25.462257>,  <33.499523, 38.484829, 25.256701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841274, 38.453983, 25.462257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385466, -0.757266, 0.527224,
		0.348496, -0.648538, -0.676719,
		0.854381, -0.077117, 0.513893,
		34.097588, 38.430847, 25.616425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793995, 37.791462, 25.217199>,  <33.499523, 38.484829, 25.256701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793995, 37.791462, 25.217199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.919594, 37.962158, 25.556446>,  <33.994953, 38.064575, 25.759995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.919594, 37.962158, 25.556446>,  <33.793995, 37.791462, 25.217199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919594, 37.962158, 25.556446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431531, -0.731546, 0.527846,
		0.845688, -0.531730, -0.045550,
		0.313994, 0.426737, 0.848117,
		34.013790, 38.090179, 25.810881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978466, 37.220325, 25.567471>,  <33.793995, 37.791462, 25.217199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978466, 37.220325, 25.567471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.982391, 37.507275, 25.846121>,  <33.984749, 37.679443, 26.013311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.982391, 37.507275, 25.846121>,  <33.978466, 37.220325, 25.567471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982391, 37.507275, 25.846121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056831, -0.695132, 0.716632,
		0.998336, -0.046624, 0.033946,
		0.009815, 0.717369, 0.696624,
		33.985336, 37.722485, 26.055109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454327, 36.984760, 26.127171>,  <33.978466, 37.220325, 25.567471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454327, 36.984760, 26.127171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.204685, 37.248589, 26.294724>,  <34.054901, 37.406887, 26.395254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.204685, 37.248589, 26.294724>,  <34.454327, 36.984760, 26.127171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204685, 37.248589, 26.294724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050665, -0.569139, 0.820679,
		0.779697, 0.490966, 0.388619,
		-0.624104, 0.659570, 0.418881,
		34.017452, 37.446461, 26.420387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661076, 36.979500, 26.897940>,  <34.454327, 36.984760, 26.127171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661076, 36.979500, 26.897940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.322186, 37.191216, 26.916090>,  <34.118851, 37.318245, 26.926979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.322186, 37.191216, 26.916090>,  <34.661076, 36.979500, 26.897940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322186, 37.191216, 26.916090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159367, -0.334713, 0.928746,
		0.506765, 0.779626, 0.367929,
		-0.847225, 0.529292, 0.045374,
		34.068016, 37.350002, 26.929703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667931, 37.207588, 27.600500>,  <34.661076, 36.979500, 26.897940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667931, 37.207588, 27.600500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.300045, 37.232021, 27.445374>,  <34.079315, 37.246681, 27.352297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.300045, 37.232021, 27.445374>,  <34.667931, 37.207588, 27.600500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300045, 37.232021, 27.445374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392589, -0.149752, 0.907440,
		-0.002648, 0.986835, 0.161709,
		-0.919710, 0.061082, -0.387817,
		34.024132, 37.250347, 27.329029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242382, 37.744305, 28.000301>,  <34.667931, 37.207588, 27.600500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242382, 37.744305, 28.000301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.959190, 37.506874, 27.847235>,  <33.789276, 37.364414, 27.755394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.959190, 37.506874, 27.847235>,  <34.242382, 37.744305, 28.000301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959190, 37.506874, 27.847235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437379, -0.056909, 0.897475,
		-0.554499, 0.802761, -0.219329,
		-0.707977, -0.593579, -0.382667,
		33.746796, 37.328800, 27.732435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511173, 37.980930, 28.318674>,  <34.242382, 37.744305, 28.000301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511173, 37.980930, 28.318674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.509457, 37.600349, 28.195574>,  <33.508427, 37.372002, 28.121714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.509457, 37.600349, 28.195574>,  <33.511173, 37.980930, 28.318674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509457, 37.600349, 28.195574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493492, -0.265655, 0.828187,
		-0.869740, 0.155428, -0.468396,
		-0.004292, -0.951457, -0.307753,
		33.508167, 37.314911, 28.103249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856396, 37.846569, 28.532534>,  <33.511173, 37.980930, 28.318674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856396, 37.846569, 28.532534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.049454, 37.503098, 28.463566>,  <33.165287, 37.297016, 28.422186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.049454, 37.503098, 28.463566>,  <32.856396, 37.846569, 28.532534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049454, 37.503098, 28.463566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374068, -0.380112, 0.845924,
		-0.791915, -0.343783, -0.504662,
		0.482642, -0.858678, -0.172418,
		33.194248, 37.245495, 28.411840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347752, 37.373772, 28.640968>,  <32.856396, 37.846569, 28.532534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347752, 37.373772, 28.640968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.699680, 37.188911, 28.685387>,  <32.910839, 37.077995, 28.712038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.699680, 37.188911, 28.685387>,  <32.347752, 37.373772, 28.640968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699680, 37.188911, 28.685387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336394, -0.440400, 0.832398,
		-0.335788, -0.769717, -0.542938,
		0.879821, -0.462151, 0.111047,
		32.963627, 37.050266, 28.718700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032116, 36.789124, 28.807785>,  <32.347752, 37.373772, 28.640968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032116, 36.789124, 28.807785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.419247, 36.796738, 28.908150>,  <32.651524, 36.801304, 28.968369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.419247, 36.796738, 28.908150>,  <32.032116, 36.789124, 28.807785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419247, 36.796738, 28.908150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201187, -0.540374, 0.817018,
		0.151136, -0.841209, -0.519158,
		0.967823, 0.019033, 0.250911,
		32.709595, 36.802448, 28.983423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245232, 36.006294, 28.987617>,  <32.032116, 36.789124, 28.807785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245232, 36.006294, 28.987617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.532715, 36.233772, 29.147635>,  <32.705204, 36.370258, 29.243645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.532715, 36.233772, 29.147635>,  <32.245232, 36.006294, 28.987617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532715, 36.233772, 29.147635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073794, -0.509708, 0.857177,
		0.691380, -0.645584, -0.324367,
		0.718712, 0.568699, 0.400043,
		32.748329, 36.404381, 29.267647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657909, 35.545147, 29.279554>,  <32.245232, 36.006294, 28.987617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657909, 35.545147, 29.279554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.685547, 35.899220, 29.463589>,  <32.702129, 36.111664, 29.574009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.685547, 35.899220, 29.463589>,  <32.657909, 35.545147, 29.279554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685547, 35.899220, 29.463589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253822, -0.430411, 0.866210,
		0.964780, -0.176633, 0.194939,
		0.069097, 0.885182, 0.460085,
		32.706276, 36.164776, 29.601614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.107674, 37.346020, 27.583883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.958153, 37.714119, 27.630217>,  <36.868439, 37.934978, 27.658016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.958153, 37.714119, 27.630217>,  <37.107674, 37.346020, 27.583883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958153, 37.714119, 27.630217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432148, 0.283303, -0.856147,
		-0.820681, -0.269977, -0.503582,
		-0.373806, 0.920246, 0.115832,
		36.846012, 37.990192, 27.664967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980156, 37.610329, 26.901094>,  <37.107674, 37.346020, 27.583883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980156, 37.610329, 26.901094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.979866, 37.948368, 27.114941>,  <36.979694, 38.151192, 27.243248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.979866, 37.948368, 27.114941>,  <36.980156, 37.610329, 26.901094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979866, 37.948368, 27.114941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381330, 0.494452, -0.781092,
		-0.924439, 0.203302, -0.322617,
		-0.000721, 0.845095, 0.534616,
		36.979649, 38.201897, 27.275326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734669, 38.130222, 26.435831>,  <36.980156, 37.610329, 26.901094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734669, 38.130222, 26.435831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.944866, 38.307873, 26.726103>,  <37.070984, 38.414463, 26.900267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.944866, 38.307873, 26.726103>,  <36.734669, 38.130222, 26.435831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944866, 38.307873, 26.726103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511263, 0.516921, -0.686589,
		-0.680053, 0.731807, 0.044569,
		0.525489, 0.444130, 0.725679,
		37.102512, 38.441113, 26.943806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559536, 38.795490, 26.325090>,  <36.734669, 38.130222, 26.435831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559536, 38.795490, 26.325090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.899815, 38.782162, 26.534933>,  <37.103981, 38.774166, 26.660839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.899815, 38.782162, 26.534933>,  <36.559536, 38.795490, 26.325090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899815, 38.782162, 26.534933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456767, 0.540783, -0.706341,
		-0.260165, 0.840502, 0.475258,
		0.850693, -0.033317, 0.524606,
		37.155022, 38.772167, 26.692314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845398, 39.503723, 26.268559>,  <36.559536, 38.795490, 26.325090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845398, 39.503723, 26.268559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.155308, 39.291538, 26.406153>,  <37.341255, 39.164227, 26.488710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.155308, 39.291538, 26.406153>,  <36.845398, 39.503723, 26.268559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155308, 39.291538, 26.406153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628305, 0.585463, -0.512315,
		0.070373, 0.613059, 0.786897,
		0.774778, -0.530464, 0.343987,
		37.387741, 39.132401, 26.509348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382622, 39.984688, 26.454092>,  <36.845398, 39.503723, 26.268559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382622, 39.984688, 26.454092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.556938, 39.633652, 26.374178>,  <37.661530, 39.423031, 26.326229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.556938, 39.633652, 26.374178>,  <37.382622, 39.984688, 26.454092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556938, 39.633652, 26.374178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704952, 0.470821, -0.530443,
		0.559577, 0.090323, 0.823842,
		0.435793, -0.877593, -0.199787,
		37.687675, 39.370373, 26.314241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108276, 40.103027, 26.497158>,  <37.382622, 39.984688, 26.454092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108276, 40.103027, 26.497158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.097904, 39.765213, 26.283211>,  <38.091682, 39.562523, 26.154842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.097904, 39.765213, 26.283211>,  <38.108276, 40.103027, 26.497158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097904, 39.765213, 26.283211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753635, 0.335014, -0.565509,
		0.656782, -0.417757, 0.627787,
		-0.025928, -0.844538, -0.534867,
		38.090126, 39.511852, 26.122751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797115, 40.253296, 26.281036>,  <38.108276, 40.103027, 26.497158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797115, 40.253296, 26.281036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.639603, 39.941376, 26.086369>,  <38.545094, 39.754223, 25.969568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.639603, 39.941376, 26.086369>,  <38.797115, 40.253296, 26.281036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639603, 39.941376, 26.086369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753693, 0.029169, -0.656579,
		0.526195, -0.625350, 0.576243,
		-0.393783, -0.779799, -0.486671,
		38.521469, 39.707436, 25.940367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246372, 39.743290, 26.229301>,  <38.797115, 40.253296, 26.281036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246372, 39.743290, 26.229301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.986088, 39.724758, 25.926136>,  <38.829918, 39.713638, 25.744236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.986088, 39.724758, 25.926136>,  <39.246372, 39.743290, 26.229301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986088, 39.724758, 25.926136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726034, 0.254365, -0.638884,
		0.222384, -0.965998, -0.131882,
		-0.650707, -0.046327, -0.757914,
		38.790874, 39.710861, 25.698761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589520, 39.377010, 25.702568>,  <39.246372, 39.743290, 26.229301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589520, 39.377010, 25.702568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.309326, 39.599499, 25.523710>,  <39.141209, 39.732990, 25.416395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.309326, 39.599499, 25.523710>,  <39.589520, 39.377010, 25.702568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309326, 39.599499, 25.523710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669539, 0.295299, -0.681554,
		-0.247053, -0.776799, -0.579264,
		-0.700487, 0.556220, -0.447143,
		39.099178, 39.766365, 25.389568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831894, 39.371700, 25.076366>,  <39.589520, 39.377010, 25.702568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831894, 39.371700, 25.076366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.564270, 39.667461, 25.046310>,  <39.403698, 39.844917, 25.028276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.564270, 39.667461, 25.046310>,  <39.831894, 39.371700, 25.076366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564270, 39.667461, 25.046310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532676, 0.406567, -0.742267,
		-0.518286, -0.536642, -0.665879,
		-0.669056, 0.739404, -0.075139,
		39.363552, 39.889282, 25.023769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718849, 39.436241, 24.357227>,  <39.831894, 39.371700, 25.076366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718849, 39.436241, 24.357227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.607941, 39.791233, 24.504465>,  <39.541397, 40.004230, 24.592808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.607941, 39.791233, 24.504465>,  <39.718849, 39.436241, 24.357227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607941, 39.791233, 24.504465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382502, 0.453410, -0.805054,
		-0.881370, -0.082423, -0.465182,
		-0.277273, 0.887483, 0.368095,
		39.524757, 40.057480, 24.614893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505478, 39.750057, 23.813030>,  <39.718849, 39.436241, 24.357227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505478, 39.750057, 23.813030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.568211, 40.031158, 24.090605>,  <39.605850, 40.199818, 24.257149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.568211, 40.031158, 24.090605>,  <39.505478, 39.750057, 23.813030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568211, 40.031158, 24.090605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593001, 0.494871, -0.635179,
		-0.789781, 0.511120, -0.339121,
		0.156832, 0.702751, 0.693934,
		39.615261, 40.241985, 24.298784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156433, 40.468281, 23.669277>,  <39.505478, 39.750057, 23.813030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156433, 40.468281, 23.669277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.507858, 40.294437, 23.590048>,  <39.718716, 40.190132, 23.542509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.507858, 40.294437, 23.590048>,  <39.156433, 40.468281, 23.669277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507858, 40.294437, 23.590048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438527, -0.569703, -0.695077,
		0.189243, 0.697534, -0.691111,
		0.878568, -0.434610, -0.198075,
		39.771427, 40.164055, 23.530624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875443, 40.824413, 22.989754>,  <39.156433, 40.468281, 23.669277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875443, 40.824413, 22.989754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.589474, 40.933784, 22.732344>,  <38.417892, 40.999405, 22.577898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.589474, 40.933784, 22.732344>,  <38.875443, 40.824413, 22.989754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589474, 40.933784, 22.732344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678164, -0.495249, 0.542976,
		-0.170242, 0.824601, 0.539491,
		-0.714921, 0.273426, -0.643527,
		38.374996, 41.015812, 22.539286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211540, 41.052090, 23.346691>,  <38.875443, 40.824413, 22.989754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211540, 41.052090, 23.346691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.096310, 40.966221, 22.973396>,  <38.027172, 40.914700, 22.749420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.096310, 40.966221, 22.973396>,  <38.211540, 41.052090, 23.346691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096310, 40.966221, 22.973396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791622, -0.494986, 0.358222,
		-0.538838, 0.841966, -0.027342,
		-0.288077, -0.214668, -0.933236,
		38.009888, 40.901821, 22.693426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448563, 41.254864, 23.392347>,  <38.211540, 41.052090, 23.346691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448563, 41.254864, 23.392347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.484623, 41.025276, 23.066788>,  <37.506260, 40.887524, 22.871452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.484623, 41.025276, 23.066788>,  <37.448563, 41.254864, 23.392347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484623, 41.025276, 23.066788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782780, -0.546089, 0.298399,
		-0.615733, 0.610204, -0.498522,
		0.090153, -0.573967, -0.813901,
		37.511669, 40.853085, 22.822618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770714, 41.298374, 23.058210>,  <37.448563, 41.254864, 23.392347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770714, 41.298374, 23.058210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.947674, 40.965153, 22.925365>,  <37.053848, 40.765221, 22.845659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.947674, 40.965153, 22.925365>,  <36.770714, 41.298374, 23.058210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947674, 40.965153, 22.925365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850793, -0.506967, 0.138331,
		-0.283608, 0.221362, -0.933041,
		0.442399, -0.833057, -0.332113,
		37.080395, 40.715237, 22.825731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265770, 40.893444, 22.565327>,  <36.770714, 41.298374, 23.058210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265770, 40.893444, 22.565327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.544476, 40.647617, 22.713291>,  <36.711697, 40.500122, 22.802071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.544476, 40.647617, 22.713291>,  <36.265770, 40.893444, 22.565327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544476, 40.647617, 22.713291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714229, -0.642093, 0.278555,
		0.066329, -0.458289, -0.886325,
		0.696761, -0.614563, 0.369913,
		36.753506, 40.463249, 22.824265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918320, 40.304062, 22.471468>,  <36.265770, 40.893444, 22.565327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918320, 40.304062, 22.471468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.203579, 40.195637, 22.730061>,  <36.374737, 40.130581, 22.885216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.203579, 40.195637, 22.730061>,  <35.918320, 40.304062, 22.471468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203579, 40.195637, 22.730061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651894, -0.595562, 0.469404,
		0.257781, -0.756194, -0.601431,
		0.713150, -0.271065, 0.646483,
		36.417522, 40.114319, 22.924006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858967, 39.531597, 22.636650>,  <35.918320, 40.304062, 22.471468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858967, 39.531597, 22.636650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.044380, 39.695572, 22.950871>,  <36.155628, 39.793957, 23.139402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.044380, 39.695572, 22.950871>,  <35.858967, 39.531597, 22.636650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044380, 39.695572, 22.950871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594886, -0.513066, 0.618767,
		0.656695, -0.754132, 0.006043,
		0.463532, 0.409936, 0.785551,
		36.183441, 39.818554, 23.186537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124008, 39.022476, 23.031563>,  <35.858967, 39.531597, 22.636650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124008, 39.022476, 23.031563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.108162, 39.328190, 23.289028>,  <36.098656, 39.511616, 23.443508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.108162, 39.328190, 23.289028>,  <36.124008, 39.022476, 23.031563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108162, 39.328190, 23.289028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565155, -0.548373, 0.616349,
		0.824033, -0.339352, 0.453662,
		-0.039617, 0.764282, 0.643664,
		36.096275, 39.557476, 23.482128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227314, 38.680618, 23.670792>,  <36.124008, 39.022476, 23.031563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227314, 38.680618, 23.670792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.092533, 39.046207, 23.761223>,  <36.011665, 39.265560, 23.815481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.092533, 39.046207, 23.761223>,  <36.227314, 38.680618, 23.670792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092533, 39.046207, 23.761223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580120, -0.390666, 0.714732,
		0.741567, 0.109683, 0.661852,
		-0.336957, 0.913975, 0.226076,
		35.991447, 39.320400, 23.829046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329937, 38.859016, 24.426447>,  <36.227314, 38.680618, 23.670792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329937, 38.859016, 24.426447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.051331, 39.127178, 24.324139>,  <35.884167, 39.288074, 24.262753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.051331, 39.127178, 24.324139>,  <36.329937, 38.859016, 24.426447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051331, 39.127178, 24.324139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539467, -0.254227, 0.802711,
		0.473119, 0.697081, 0.538736,
		-0.696515, 0.670408, -0.255772,
		35.842377, 39.328300, 24.247406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264935, 39.336231, 25.090378>,  <36.329937, 38.859016, 24.426447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264935, 39.336231, 25.090378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930176, 39.361328, 24.872879>,  <35.729321, 39.376385, 24.742380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930176, 39.361328, 24.872879>,  <36.264935, 39.336231, 25.090378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930176, 39.361328, 24.872879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518634, -0.408467, 0.751115,
		-0.174975, 0.910614, 0.374387,
		-0.836901, 0.062743, -0.543747,
		35.679104, 39.380150, 24.709755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736340, 39.692768, 25.530134>,  <36.264935, 39.336231, 25.090378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736340, 39.692768, 25.530134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.536404, 39.498829, 25.243055>,  <35.416443, 39.382465, 25.070808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.536404, 39.498829, 25.243055>,  <35.736340, 39.692768, 25.530134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536404, 39.498829, 25.243055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699719, -0.262311, 0.664520,
		-0.510448, 0.834338, -0.208142,
		-0.499836, -0.484844, -0.717698,
		35.386452, 39.353374, 25.027746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988377, 39.744030, 25.764847>,  <35.736340, 39.692768, 25.530134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988377, 39.744030, 25.764847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.001053, 39.453800, 25.489882>,  <35.008659, 39.279663, 25.324902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.001053, 39.453800, 25.489882>,  <34.988377, 39.744030, 25.764847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001053, 39.453800, 25.489882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786620, -0.442409, 0.430702,
		-0.616624, 0.527084, -0.584771,
		0.031692, -0.725573, -0.687414,
		35.010559, 39.236130, 25.283657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226822, 39.666225, 25.518181>,  <34.988377, 39.744030, 25.764847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226822, 39.666225, 25.518181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.459873, 39.347969, 25.451859>,  <34.599705, 39.157013, 25.412066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.459873, 39.347969, 25.451859>,  <34.226822, 39.666225, 25.518181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459873, 39.347969, 25.451859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657482, -0.581349, 0.479324,
		-0.477762, -0.170255, -0.861833,
		0.582633, -0.795642, -0.165806,
		34.634663, 39.109276, 25.402117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590603, 40.092285, 25.293121>,  <34.226822, 39.666225, 25.518181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590603, 40.092285, 25.293121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.535442, 40.345463, 25.597849>,  <33.502346, 40.497368, 25.780685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.535442, 40.345463, 25.597849>,  <33.590603, 40.092285, 25.293121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535442, 40.345463, 25.597849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480802, 0.715240, -0.507210,
		-0.865918, 0.296342, -0.402950,
		-0.137898, 0.632941, 0.761820,
		33.494072, 40.535343, 25.826395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414242, 40.768494, 24.966417>,  <33.590603, 40.092285, 25.293121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414242, 40.768494, 24.966417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.578648, 40.840309, 25.323927>,  <33.677292, 40.883400, 25.538433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.578648, 40.840309, 25.323927>,  <33.414242, 40.768494, 24.966417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578648, 40.840309, 25.323927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594127, 0.690850, -0.411995,
		-0.691432, 0.700352, 0.177283,
		0.411018, 0.179538, 0.893773,
		33.701954, 40.894169, 25.592058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338642, 41.450546, 25.099932>,  <33.414242, 40.768494, 24.966417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338642, 41.450546, 25.099932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.633392, 41.338554, 25.346062>,  <33.810242, 41.271358, 25.493740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.633392, 41.338554, 25.346062>,  <33.338642, 41.450546, 25.099932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633392, 41.338554, 25.346062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563665, 0.756966, -0.330582,
		-0.373224, 0.590436, 0.715605,
		0.736876, -0.279980, 0.615326,
		33.854454, 41.254559, 25.530659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622177, 42.086216, 25.376284>,  <33.338642, 41.450546, 25.099932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622177, 42.086216, 25.376284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.910366, 41.817402, 25.444731>,  <34.083279, 41.656113, 25.485798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.910366, 41.817402, 25.444731>,  <33.622177, 42.086216, 25.376284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910366, 41.817402, 25.444731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687821, 0.661037, -0.299886,
		0.088421, 0.333758, 0.938503,
		0.720475, -0.672038, 0.171116,
		34.126507, 41.615791, 25.496065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137272, 42.482933, 25.770128>,  <33.622177, 42.086216, 25.376284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137272, 42.482933, 25.770128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.331348, 42.173332, 25.607391>,  <34.447792, 41.987572, 25.509748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.331348, 42.173332, 25.607391>,  <34.137272, 42.482933, 25.770128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331348, 42.173332, 25.607391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790886, 0.586897, -0.173356,
		0.372951, -0.237656, 0.896899,
		0.485188, -0.773997, -0.406842,
		34.476906, 41.941132, 25.485338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845963, 42.311630, 26.066914>,  <34.137272, 42.482933, 25.770128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845963, 42.311630, 26.066914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.868660, 42.154690, 25.699688>,  <34.882278, 42.060528, 25.479353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.868660, 42.154690, 25.699688>,  <34.845963, 42.311630, 26.066914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868660, 42.154690, 25.699688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878605, 0.456346, -0.140720,
		0.474167, -0.798631, 0.370613,
		0.056745, -0.392347, -0.918065,
		34.885685, 42.036987, 25.424269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623367, 42.220078, 25.978161>,  <34.845963, 42.311630, 26.066914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623367, 42.220078, 25.978161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.445423, 42.189934, 25.621191>,  <35.338657, 42.171848, 25.407009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.445423, 42.189934, 25.621191>,  <35.623367, 42.220078, 25.978161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445423, 42.189934, 25.621191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753519, 0.507072, -0.418435,
		0.484057, -0.858603, -0.168788,
		-0.444857, -0.075361, -0.892425,
		35.311966, 42.167324, 25.353464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265636, 42.475658, 26.339964>,  <35.623367, 42.220078, 25.978161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265636, 42.475658, 26.339964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.219746, 42.769882, 26.607035>,  <36.192211, 42.946415, 26.767277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.219746, 42.769882, 26.607035>,  <36.265636, 42.475658, 26.339964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219746, 42.769882, 26.607035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662748, -0.557347, 0.500129,
		0.740001, -0.385120, 0.551435,
		-0.114731, 0.735559, 0.667675,
		36.185326, 42.990551, 26.807337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251545, 42.110313, 27.007071>,  <36.265636, 42.475658, 26.339964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251545, 42.110313, 27.007071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.078129, 42.467953, 27.052010>,  <35.974079, 42.682537, 27.078974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.078129, 42.467953, 27.052010>,  <36.251545, 42.110313, 27.007071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078129, 42.467953, 27.052010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708175, -0.415149, 0.571086,
		0.557251, 0.168027, 0.813165,
		-0.433543, 0.894102, 0.112349,
		35.948067, 42.736183, 27.085714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158875, 42.243164, 27.703915>,  <36.251545, 42.110313, 27.007071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158875, 42.243164, 27.703915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.871792, 42.460293, 27.529446>,  <35.699543, 42.590569, 27.424765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.871792, 42.460293, 27.529446>,  <36.158875, 42.243164, 27.703915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871792, 42.460293, 27.529446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627687, -0.233092, 0.742750,
		0.301511, 0.806855, 0.508012,
		-0.717705, 0.542820, -0.436173,
		35.656479, 42.623138, 27.398594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744854, 42.535751, 28.251081>,  <36.158875, 42.243164, 27.703915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744854, 42.535751, 28.251081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.477680, 42.629959, 27.968691>,  <35.317375, 42.686485, 27.799257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.477680, 42.629959, 27.968691>,  <35.744854, 42.535751, 28.251081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477680, 42.629959, 27.968691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741643, -0.131716, 0.657736,
		0.061920, 0.962903, 0.262648,
		-0.667931, 0.235518, -0.705974,
		35.277302, 42.700615, 27.756899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145023, 42.977173, 28.582195>,  <35.744854, 42.535751, 28.251081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145023, 42.977173, 28.582195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.010105, 42.830257, 28.235477>,  <34.929153, 42.742107, 28.027447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.010105, 42.830257, 28.235477>,  <35.145023, 42.977173, 28.582195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010105, 42.830257, 28.235477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849534, -0.277964, 0.448362,
		-0.405615, 0.887601, -0.218267,
		-0.337296, -0.367287, -0.866794,
		34.908916, 42.720070, 27.975439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521358, 43.271725, 28.393970>,  <35.145023, 42.977173, 28.582195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521358, 43.271725, 28.393970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.504681, 42.926384, 28.192822>,  <34.494675, 42.719181, 28.072132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.504681, 42.926384, 28.192822>,  <34.521358, 43.271725, 28.393970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504681, 42.926384, 28.192822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857538, -0.227364, 0.461448,
		-0.512728, 0.450474, -0.730878,
		-0.041695, -0.863353, -0.502875,
		34.492172, 42.667377, 28.041960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839520, 43.195900, 28.128979>,  <34.521358, 43.271725, 28.393970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839520, 43.195900, 28.128979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.977283, 42.820381, 28.131611>,  <34.059940, 42.595070, 28.133190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.977283, 42.820381, 28.131611>,  <33.839520, 43.195900, 28.128979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977283, 42.820381, 28.131611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871408, -0.317061, 0.374327,
		-0.349331, -0.134654, -0.927274,
		0.344407, -0.938797, 0.006580,
		34.080605, 42.538742, 28.133585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.888752, 42.285755, 27.010206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.735317, 42.055183, 26.721598>,  <39.643257, 41.916840, 26.548433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.735317, 42.055183, 26.721598>,  <39.888752, 42.285755, 27.010206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735317, 42.055183, 26.721598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302280, -0.659878, 0.687887,
		-0.872632, 0.481966, 0.078879,
		-0.383588, -0.576429, -0.721519,
		39.620239, 41.882256, 26.505142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211292, 42.056103, 27.130127>,  <39.888752, 42.285755, 27.010206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211292, 42.056103, 27.130127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.392342, 41.765614, 26.923153>,  <39.500969, 41.591320, 26.798969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.392342, 41.765614, 26.923153>,  <39.211292, 42.056103, 27.130127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392342, 41.765614, 26.923153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213347, -0.651619, 0.727926,
		-0.865805, -0.219081, -0.449872,
		0.452620, -0.726221, -0.517435,
		39.528126, 41.547749, 26.767923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752335, 41.530865, 27.170702>,  <39.211292, 42.056103, 27.130127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752335, 41.530865, 27.170702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.101017, 41.363487, 27.068701>,  <39.310226, 41.263062, 27.007500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.101017, 41.363487, 27.068701>,  <38.752335, 41.530865, 27.170702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101017, 41.363487, 27.068701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145944, -0.718472, 0.680072,
		-0.467786, -0.555608, -0.687369,
		0.871709, -0.418446, -0.255004,
		39.362530, 41.237953, 26.992199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494846, 40.854031, 27.073605>,  <38.752335, 41.530865, 27.170702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494846, 40.854031, 27.073605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.890594, 40.878311, 27.126463>,  <39.128044, 40.892879, 27.158178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.890594, 40.878311, 27.126463>,  <38.494846, 40.854031, 27.073605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890594, 40.878311, 27.126463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048782, -0.717519, 0.694829,
		0.136999, -0.693888, -0.706930,
		0.989369, 0.060706, 0.132148,
		39.187405, 40.896523, 27.166107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656010, 40.234322, 27.072588>,  <38.494846, 40.854031, 27.073605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656010, 40.234322, 27.072588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.956879, 40.426670, 27.252810>,  <39.137402, 40.542080, 27.360943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.956879, 40.426670, 27.252810>,  <38.656010, 40.234322, 27.072588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956879, 40.426670, 27.252810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154013, -0.536504, 0.829725,
		0.640717, -0.693486, -0.329482,
		0.752171, 0.480874, 0.450553,
		39.182529, 40.570930, 27.387976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028820, 39.765369, 27.343220>,  <38.656010, 40.234322, 27.072588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028820, 39.765369, 27.343220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.120491, 40.081711, 27.570213>,  <39.175491, 40.271515, 27.706409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.120491, 40.081711, 27.570213>,  <39.028820, 39.765369, 27.343220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120491, 40.081711, 27.570213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336345, -0.482749, 0.808595,
		0.913429, -0.376178, 0.155365,
		0.229173, 0.790850, 0.567482,
		39.189243, 40.318966, 27.740458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063473, 39.481125, 28.104856>,  <39.028820, 39.765369, 27.343220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063473, 39.481125, 28.104856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.073372, 39.878223, 28.151909>,  <39.079311, 40.116482, 28.180141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.073372, 39.878223, 28.151909>,  <39.063473, 39.481125, 28.104856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073372, 39.878223, 28.151909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356448, -0.101172, 0.928821,
		0.933987, -0.064918, 0.351360,
		0.024750, 0.992749, 0.117633,
		39.080795, 40.176048, 28.187199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400768, 39.512161, 28.705418>,  <39.063473, 39.481125, 28.104856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400768, 39.512161, 28.705418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.186001, 39.845730, 28.654341>,  <39.057140, 40.045872, 28.623695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.186001, 39.845730, 28.654341>,  <39.400768, 39.512161, 28.705418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186001, 39.845730, 28.654341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553863, -0.234263, 0.798972,
		0.636363, 0.499703, 0.587655,
		-0.536915, 0.833917, -0.127691,
		39.024925, 40.095905, 28.616034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417809, 39.841965, 29.280237>,  <39.400768, 39.512161, 28.705418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417809, 39.841965, 29.280237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.080669, 39.986855, 29.121044>,  <38.878384, 40.073788, 29.025528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.080669, 39.986855, 29.121044>,  <39.417809, 39.841965, 29.280237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080669, 39.986855, 29.121044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513786, -0.321660, 0.795336,
		0.160077, 0.874829, 0.457218,
		-0.842852, 0.362227, -0.397985,
		38.827812, 40.095524, 29.001648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285217, 40.297340, 29.724609>,  <39.417809, 39.841965, 29.280237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285217, 40.297340, 29.724609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.948387, 40.190140, 29.537380>,  <38.746288, 40.125820, 29.425043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.948387, 40.190140, 29.537380>,  <39.285217, 40.297340, 29.724609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948387, 40.190140, 29.537380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496902, 0.047957, 0.866480,
		-0.209770, 0.962224, -0.173553,
		-0.842072, -0.268000, -0.468072,
		38.695766, 40.109741, 29.396959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809891, 40.744808, 30.050920>,  <39.285217, 40.297340, 29.724609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809891, 40.744808, 30.050920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.614517, 40.433422, 29.893227>,  <38.497295, 40.246590, 29.798611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.614517, 40.433422, 29.893227>,  <38.809891, 40.744808, 30.050920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614517, 40.433422, 29.893227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513065, -0.109246, 0.851370,
		-0.705832, 0.618105, -0.346045,
		-0.488432, -0.778468, -0.394237,
		38.467987, 40.199883, 29.774956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080761, 40.878975, 30.156836>,  <38.809891, 40.744808, 30.050920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080761, 40.878975, 30.156836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.112354, 40.483517, 30.105701>,  <38.131310, 40.246243, 30.075022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.112354, 40.483517, 30.105701>,  <38.080761, 40.878975, 30.156836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112354, 40.483517, 30.105701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697111, -0.146444, 0.701847,
		-0.712599, 0.033680, -0.700763,
		0.078984, -0.988645, -0.127835,
		38.136051, 40.186924, 30.067350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571438, 41.217541, 29.780127>,  <38.080761, 40.878975, 30.156836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571438, 41.217541, 29.780127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.422218, 41.565887, 29.908144>,  <37.332687, 41.774895, 29.984955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.422218, 41.565887, 29.908144>,  <37.571438, 41.217541, 29.780127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422218, 41.565887, 29.908144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652118, 0.491480, -0.577226,
		-0.659980, -0.006630, -0.751254,
		-0.373053, 0.870864, 0.320043,
		37.310303, 41.827148, 30.004156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363815, 41.590904, 29.195560>,  <37.571438, 41.217541, 29.780127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363815, 41.590904, 29.195560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.444206, 41.864014, 29.476536>,  <37.492443, 42.027882, 29.645121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.444206, 41.864014, 29.476536>,  <37.363815, 41.590904, 29.195560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444206, 41.864014, 29.476536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807882, 0.290016, -0.513048,
		-0.554016, 0.670602, -0.493314,
		0.200982, 0.682776, 0.702441,
		37.504501, 42.068848, 29.687267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421593, 42.222324, 28.884384>,  <37.363815, 41.590904, 29.195560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421593, 42.222324, 28.884384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.593601, 42.284092, 29.240189>,  <37.696808, 42.321152, 29.453672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.593601, 42.284092, 29.240189>,  <37.421593, 42.222324, 28.884384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593601, 42.284092, 29.240189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848592, 0.267181, -0.456624,
		-0.308172, 0.951194, -0.016143,
		0.430025, 0.154418, 0.889513,
		37.722610, 42.330418, 29.507042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476551, 42.950531, 28.919014>,  <37.421593, 42.222324, 28.884384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476551, 42.950531, 28.919014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.733494, 42.791954, 29.181376>,  <37.887661, 42.696808, 29.338793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.733494, 42.791954, 29.181376>,  <37.476551, 42.950531, 28.919014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733494, 42.791954, 29.181376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737330, 0.553159, -0.387762,
		-0.209093, 0.732699, 0.647636,
		0.642359, -0.396443, 0.655902,
		37.926201, 42.673019, 29.378147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724846, 43.459888, 29.227272>,  <37.476551, 42.950531, 28.919014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724846, 43.459888, 29.227272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.993404, 43.177822, 29.318459>,  <38.154541, 43.008583, 29.373171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.993404, 43.177822, 29.318459>,  <37.724846, 43.459888, 29.227272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993404, 43.177822, 29.318459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737631, 0.606155, -0.297450,
		0.071567, 0.367864, 0.927122,
		0.671400, -0.705162, 0.227967,
		38.194824, 42.966274, 29.386848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300644, 43.773106, 29.679295>,  <37.724846, 43.459888, 29.227272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300644, 43.773106, 29.679295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.457611, 43.448124, 29.506821>,  <38.551792, 43.253136, 29.403337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.457611, 43.448124, 29.506821>,  <38.300644, 43.773106, 29.679295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457611, 43.448124, 29.506821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686876, 0.570634, -0.450087,
		0.611724, -0.119545, 0.781987,
		0.392423, -0.812457, -0.431183,
		38.575336, 43.204388, 29.377466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966961, 43.910976, 29.807014>,  <38.300644, 43.773106, 29.679295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966961, 43.910976, 29.807014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.967495, 43.625946, 29.526379>,  <38.967815, 43.454926, 29.357996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.967495, 43.625946, 29.526379>,  <38.966961, 43.910976, 29.807014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967495, 43.625946, 29.526379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708345, 0.495902, -0.502323,
		0.705865, -0.496299, 0.505413,
		0.001333, -0.712578, -0.701591,
		38.967896, 43.412174, 29.315901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751076, 43.790825, 29.596888>,  <38.966961, 43.910976, 29.807014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751076, 43.790825, 29.596888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.505592, 43.698875, 29.294758>,  <39.358303, 43.643703, 29.113480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.505592, 43.698875, 29.294758>,  <39.751076, 43.790825, 29.596888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505592, 43.698875, 29.294758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659860, 0.375962, -0.650566,
		0.433524, -0.897668, -0.079046,
		-0.613711, -0.229877, -0.755325,
		39.321480, 43.629913, 29.068161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158291, 43.557732, 29.134960>,  <39.751076, 43.790825, 29.596888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158291, 43.557732, 29.134960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.831131, 43.637875, 28.919224>,  <39.634834, 43.685959, 28.789782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.831131, 43.637875, 28.919224>,  <40.158291, 43.557732, 29.134960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831131, 43.637875, 28.919224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572744, 0.372723, -0.730097,
		0.054744, -0.906054, -0.419605,
		-0.817904, 0.200358, -0.539342,
		39.585758, 43.697983, 28.757421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244118, 43.395523, 28.512018>,  <40.158291, 43.557732, 29.134960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244118, 43.395523, 28.512018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.943409, 43.649269, 28.439993>,  <39.762985, 43.801517, 28.396778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.943409, 43.649269, 28.439993>,  <40.244118, 43.395523, 28.512018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943409, 43.649269, 28.439993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575899, 0.498584, -0.647884,
		-0.321218, -0.590758, -0.740151,
		-0.751770, 0.634365, -0.180063,
		39.717876, 43.839577, 28.385975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194511, 43.501682, 27.784576>,  <40.244118, 43.395523, 28.512018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194511, 43.501682, 27.784576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.983276, 43.820129, 27.902775>,  <39.856533, 44.011196, 27.973694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.983276, 43.820129, 27.902775>,  <40.194511, 43.501682, 27.784576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983276, 43.820129, 27.902775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358663, 0.524518, -0.772166,
		-0.769729, -0.301789, -0.562531,
		-0.528089, 0.796118, 0.295496,
		39.824848, 44.058964, 27.991425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845387, 43.754147, 27.242050>,  <40.194511, 43.501682, 27.784576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845387, 43.754147, 27.242050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.868168, 44.075558, 27.479063>,  <39.881836, 44.268406, 27.621271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.868168, 44.075558, 27.479063>,  <39.845387, 43.754147, 27.242050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868168, 44.075558, 27.479063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265312, 0.559975, -0.784880,
		-0.962479, 0.201908, -0.181294,
		0.056954, 0.803530, 0.592533,
		39.885254, 44.316616, 27.656822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265232, 44.267895, 26.993002>,  <39.845387, 43.754147, 27.242050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265232, 44.267895, 26.993002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.548035, 44.476738, 27.183807>,  <39.717716, 44.602043, 27.298290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.548035, 44.476738, 27.183807>,  <39.265232, 44.267895, 26.993002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548035, 44.476738, 27.183807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067638, 0.621490, -0.780497,
		-0.703962, 0.584083, 0.404085,
		0.707010, 0.522108, 0.477012,
		39.760139, 44.633369, 27.326910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044380, 44.972370, 26.887581>,  <39.265232, 44.267895, 26.993002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044380, 44.972370, 26.887581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.431343, 45.001080, 26.984716>,  <39.663521, 45.018307, 27.042997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.431343, 45.001080, 26.984716>,  <39.044380, 44.972370, 26.887581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431343, 45.001080, 26.984716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135686, 0.662779, -0.736420,
		-0.213805, 0.745368, 0.631438,
		0.967407, 0.071773, 0.242841,
		39.721565, 45.022610, 27.057570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864395, 44.449184, 26.346289>,  <39.044380, 44.972370, 26.887581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864395, 44.449184, 26.346289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.589779, 44.530006, 26.066910>,  <38.425007, 44.578499, 25.899282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.589779, 44.530006, 26.066910>,  <38.864395, 44.449184, 26.346289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589779, 44.530006, 26.066910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713588, -0.371501, 0.593952,
		-0.139463, 0.906179, 0.399237,
		-0.686544, 0.202056, -0.698449,
		38.383816, 44.590622, 25.857376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286457, 44.909637, 26.668303>,  <38.864395, 44.449184, 26.346289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286457, 44.909637, 26.668303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.140423, 44.731331, 26.341375>,  <38.052803, 44.624348, 26.145220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.140423, 44.731331, 26.341375>,  <38.286457, 44.909637, 26.668303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140423, 44.731331, 26.341375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848295, -0.202406, 0.489313,
		-0.383548, 0.871966, -0.304245,
		-0.365084, -0.445765, -0.817317,
		38.030899, 44.597603, 26.096180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574814, 45.063595, 26.686443>,  <38.286457, 44.909637, 26.668303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574814, 45.063595, 26.686443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.596226, 44.746418, 26.443668>,  <37.609074, 44.556110, 26.298004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.596226, 44.746418, 26.443668>,  <37.574814, 45.063595, 26.686443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596226, 44.746418, 26.443668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826765, -0.376054, 0.418381,
		-0.559994, 0.479395, -0.675712,
		0.053534, -0.792946, -0.606935,
		37.612286, 44.508533, 26.261587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864628, 44.925095, 26.468077>,  <37.574814, 45.063595, 26.686443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864628, 44.925095, 26.468077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.071228, 44.595139, 26.376181>,  <37.195187, 44.397163, 26.321043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.071228, 44.595139, 26.376181>,  <36.864628, 44.925095, 26.468077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071228, 44.595139, 26.376181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769085, -0.564853, 0.299082,
		-0.376480, 0.022215, -0.926158,
		0.516499, -0.824893, -0.229741,
		37.226177, 44.347672, 26.307259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288666, 44.525375, 26.117086>,  <36.864628, 44.925095, 26.468077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288666, 44.525375, 26.117086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.577568, 44.282459, 26.249479>,  <36.750908, 44.136711, 26.328915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.577568, 44.282459, 26.249479>,  <36.288666, 44.525375, 26.117086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577568, 44.282459, 26.249479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688717, -0.587670, 0.424631,
		-0.063366, -0.534645, -0.842698,
		0.722255, -0.607288, 0.330981,
		36.794243, 44.100273, 26.348774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141628, 43.819817, 25.875059>,  <36.288666, 44.525375, 26.117086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141628, 43.819817, 25.875059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.349159, 43.769653, 26.213310>,  <36.473679, 43.739555, 26.416262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.349159, 43.769653, 26.213310>,  <36.141628, 43.819817, 25.875059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349159, 43.769653, 26.213310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557679, -0.799370, 0.223610,
		0.647927, -0.587605, -0.484676,
		0.518830, -0.125410, 0.845628,
		36.504807, 43.732029, 26.466999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247372, 43.092812, 25.903107>,  <36.141628, 43.819817, 25.875059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247372, 43.092812, 25.903107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.296711, 43.223995, 26.277748>,  <36.326317, 43.302704, 26.502533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.296711, 43.223995, 26.277748>,  <36.247372, 43.092812, 25.903107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296711, 43.223995, 26.277748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476756, -0.808173, 0.345774,
		0.870338, -0.489184, 0.056665,
		0.123352, 0.327955, 0.936605,
		36.333717, 43.322380, 26.558729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307686, 42.432304, 25.532274>,  <36.247372, 43.092812, 25.903107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307686, 42.432304, 25.532274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.012291, 42.340233, 25.278769>,  <35.835056, 42.284988, 25.126665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.012291, 42.340233, 25.278769>,  <36.307686, 42.432304, 25.532274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012291, 42.340233, 25.278769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517386, 0.409289, -0.751528,
		0.432382, -0.882892, -0.183160,
		-0.738483, -0.230183, -0.633765,
		35.790745, 42.271179, 25.088638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619942, 42.030987, 24.993074>,  <36.307686, 42.432304, 25.532274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619942, 42.030987, 24.993074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.301048, 42.228466, 24.854120>,  <36.109711, 42.346954, 24.770748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.301048, 42.228466, 24.854120>,  <36.619942, 42.030987, 24.993074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301048, 42.228466, 24.854120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545736, 0.343453, -0.764338,
		-0.258040, -0.798939, -0.543242,
		-0.797238, 0.493696, -0.347385,
		36.061878, 42.376575, 24.749905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487522, 41.819420, 24.288565>,  <36.619942, 42.030987, 24.993074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487522, 41.819420, 24.288565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.331577, 42.182945, 24.347994>,  <36.238010, 42.401058, 24.383652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.331577, 42.182945, 24.347994>,  <36.487522, 41.819420, 24.288565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331577, 42.182945, 24.347994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533704, 0.354469, -0.767797,
		-0.750446, -0.220040, -0.623228,
		-0.389861, 0.908809, 0.148574,
		36.214619, 42.455589, 24.392567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182236, 42.150909, 23.685394>,  <36.487522, 41.819420, 24.288565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182236, 42.150909, 23.685394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.251099, 42.463341, 23.925486>,  <36.292416, 42.650799, 24.069540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.251099, 42.463341, 23.925486>,  <36.182236, 42.150909, 23.685394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251099, 42.463341, 23.925486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646293, 0.370291, -0.667226,
		-0.743417, 0.502789, -0.441060,
		0.172153, 0.781081, 0.600229,
		36.302746, 42.697666, 24.105555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441231, 42.524841, 23.229776>,  <36.182236, 42.150909, 23.685394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441231, 42.524841, 23.229776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.506439, 42.755459, 23.550032>,  <36.545563, 42.893829, 23.742186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.506439, 42.755459, 23.550032>,  <36.441231, 42.524841, 23.229776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506439, 42.755459, 23.550032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750105, 0.454724, -0.480176,
		-0.640912, 0.678841, -0.358340,
		0.163017, 0.576543, 0.800640,
		36.555344, 42.928421, 23.790224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398994, 43.276814, 23.050568>,  <36.441231, 42.524841, 23.229776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398994, 43.276814, 23.050568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.630779, 43.237820, 23.374228>,  <36.769852, 43.214424, 23.568424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.630779, 43.237820, 23.374228>,  <36.398994, 43.276814, 23.050568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630779, 43.237820, 23.374228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749060, 0.454916, -0.481623,
		-0.321146, 0.885183, 0.336625,
		0.579461, -0.097481, 0.809149,
		36.804619, 43.208576, 23.616972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804413, 43.782425, 22.970209>,  <36.398994, 43.276814, 23.050568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804413, 43.782425, 22.970209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.998051, 43.563709, 23.243464>,  <37.114231, 43.432480, 23.407415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.998051, 43.563709, 23.243464>,  <36.804413, 43.782425, 22.970209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998051, 43.563709, 23.243464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874985, 0.295754, -0.383316,
		0.007554, 0.783293, 0.621606,
		0.484091, -0.546792, 0.683136,
		37.143276, 43.399673, 23.448404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257313, 44.300495, 23.277994>,  <36.804413, 43.782425, 22.970209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257313, 44.300495, 23.277994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.417511, 43.938114, 23.332916>,  <37.513630, 43.720688, 23.365870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.417511, 43.938114, 23.332916>,  <37.257313, 44.300495, 23.277994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417511, 43.938114, 23.332916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869177, 0.328180, -0.369904,
		0.290054, 0.267491, 0.918867,
		0.400500, -0.905950, 0.137307,
		37.537663, 43.666328, 23.374109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926517, 44.365410, 23.668667>,  <37.257313, 44.300495, 23.277994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926517, 44.365410, 23.668667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.935471, 44.017563, 23.471382>,  <37.940842, 43.808853, 23.353012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.935471, 44.017563, 23.471382>,  <37.926517, 44.365410, 23.668667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935471, 44.017563, 23.471382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976907, 0.123881, -0.174088,
		0.212491, -0.477926, 0.852312,
		0.022384, -0.869621, -0.493212,
		37.942184, 43.756676, 23.323418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<26.921417, 37.279560, 33.360775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.103632, 36.939369, 33.255573>,  <27.212961, 36.735252, 33.192451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.103632, 36.939369, 33.255573>,  <26.921417, 37.279560, 33.360775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.103632, 36.939369, 33.255573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411280, 0.463079, -0.785116,
		0.789516, 0.249483, 0.560735,
		0.455537, -0.850480, -0.263000,
		27.240294, 36.684227, 33.176674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.735176, 37.361084, 33.314796>,  <26.921417, 37.279560, 33.360775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.735176, 37.361084, 33.314796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.615599, 37.047508, 33.097145>,  <27.543852, 36.859364, 32.966557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.615599, 37.047508, 33.097145>,  <27.735176, 37.361084, 33.314796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.615599, 37.047508, 33.097145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317505, 0.456004, -0.831415,
		0.899903, -0.421307, 0.112586,
		-0.298941, -0.783939, -0.544126,
		27.525917, 36.812328, 32.933907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343441, 37.148544, 33.006145>,  <27.735176, 37.361084, 33.314796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343441, 37.148544, 33.006145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.042229, 37.020329, 32.776295>,  <27.861502, 36.943398, 32.638386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.042229, 37.020329, 32.776295>,  <28.343441, 37.148544, 33.006145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.042229, 37.020329, 32.776295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471714, 0.345853, -0.811092,
		0.458724, -0.881839, -0.109235,
		-0.753032, -0.320540, -0.574627,
		27.816319, 36.924168, 32.603905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.656116, 36.886841, 32.364441>,  <28.343441, 37.148544, 33.006145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.656116, 36.886841, 32.364441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.270741, 36.958405, 32.284664>,  <28.039515, 37.001343, 32.236797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.270741, 36.958405, 32.284664>,  <28.656116, 36.886841, 32.364441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270741, 36.958405, 32.284664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252306, 0.355393, -0.900021,
		-0.090144, -0.917435, -0.387539,
		-0.963440, 0.178910, -0.199438,
		27.981709, 37.012077, 32.224834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.576992, 36.584438, 31.809961>,  <28.656116, 36.886841, 32.364441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.576992, 36.584438, 31.809961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.277138, 36.849133, 31.814873>,  <28.097225, 37.007950, 31.817820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.277138, 36.849133, 31.814873>,  <28.576992, 36.584438, 31.809961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277138, 36.849133, 31.814873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163750, 0.203413, -0.965303,
		-0.641275, -0.721614, -0.260845,
		-0.749635, 0.661738, 0.012280,
		28.052248, 37.047653, 31.818556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.440378, 36.593506, 31.134043>,  <28.576992, 36.584438, 31.809961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.440378, 36.593506, 31.134043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.228098, 36.918827, 31.229458>,  <28.100729, 37.114017, 31.286707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.228098, 36.918827, 31.229458>,  <28.440378, 36.593506, 31.134043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.228098, 36.918827, 31.229458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123459, 0.352621, -0.927586,
		-0.838519, -0.462821, -0.287545,
		-0.530701, 0.813299, 0.238540,
		28.068888, 37.162815, 31.301020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875740, 36.681473, 30.582352>,  <28.440378, 36.593506, 31.134043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875740, 36.681473, 30.582352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.980734, 37.027931, 30.752480>,  <28.043730, 37.235806, 30.854557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.980734, 37.027931, 30.752480>,  <27.875740, 36.681473, 30.582352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.980734, 37.027931, 30.752480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083607, 0.418704, -0.904266,
		-0.961307, 0.272915, 0.037487,
		0.262484, 0.866143, 0.425321,
		28.059479, 37.287773, 30.880075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.447296, 37.303379, 30.279680>,  <27.875740, 36.681473, 30.582352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.447296, 37.303379, 30.279680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.770401, 37.461975, 30.454182>,  <27.964264, 37.557133, 30.558884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.770401, 37.461975, 30.454182>,  <27.447296, 37.303379, 30.279680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.770401, 37.461975, 30.454182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258627, 0.426666, -0.866642,
		-0.529748, 0.812867, 0.242102,
		0.807762, 0.396488, 0.436255,
		28.012730, 37.580921, 30.585058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.491156, 37.940647, 30.017595>,  <27.447296, 37.303379, 30.279680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.491156, 37.940647, 30.017595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.848734, 37.953236, 30.196423>,  <28.063280, 37.960789, 30.303719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.848734, 37.953236, 30.196423>,  <27.491156, 37.940647, 30.017595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.848734, 37.953236, 30.196423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406545, 0.362901, -0.838465,
		-0.188629, 0.931296, 0.311620,
		0.893946, 0.031471, 0.447068,
		28.116919, 37.962677, 30.330544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.671949, 38.751011, 30.027822>,  <27.491156, 37.940647, 30.017595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.671949, 38.751011, 30.027822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.998125, 38.520226, 30.046446>,  <28.193830, 38.381752, 30.057621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.998125, 38.520226, 30.046446>,  <27.671949, 38.751011, 30.027822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998125, 38.520226, 30.046446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407225, 0.514654, -0.754519,
		0.411369, 0.634225, 0.654625,
		0.815440, -0.576966, 0.046560,
		28.242758, 38.347137, 30.060413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172756, 39.269745, 30.040031>,  <27.671949, 38.751011, 30.027822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172756, 39.269745, 30.040031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.350229, 38.927757, 29.932573>,  <28.456713, 38.722565, 29.868097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.350229, 38.927757, 29.932573>,  <28.172756, 39.269745, 30.040031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.350229, 38.927757, 29.932573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566165, 0.499777, -0.655500,
		0.694696, 0.138736, 0.705797,
		0.443683, -0.854971, -0.268646,
		28.483334, 38.671265, 29.851980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.873018, 39.371223, 30.000341>,  <28.172756, 39.269745, 30.040031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.873018, 39.371223, 30.000341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.851988, 39.033939, 29.786337>,  <28.839369, 38.831570, 29.657934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.851988, 39.033939, 29.786337>,  <28.873018, 39.371223, 30.000341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851988, 39.033939, 29.786337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702019, 0.349816, -0.620321,
		0.710215, -0.408202, 0.573556,
		-0.052577, -0.843208, -0.535010,
		28.836214, 38.780975, 29.625834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.264112, 39.530262, 30.718613>,  <28.873018, 39.371223, 30.000341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.264112, 39.530262, 30.718613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.235704, 39.924141, 30.782261>,  <29.218660, 40.160469, 30.820450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.235704, 39.924141, 30.782261>,  <29.264112, 39.530262, 30.718613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235704, 39.924141, 30.782261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492050, -0.173346, 0.853134,
		0.867666, -0.017706, 0.496833,
		-0.071019, 0.984702, 0.159119,
		29.214399, 40.219551, 30.829996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.531162, 39.600178, 31.339609>,  <29.264112, 39.530262, 30.718613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.531162, 39.600178, 31.339609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.305534, 39.922783, 31.268780>,  <29.170156, 40.116348, 31.226282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.305534, 39.922783, 31.268780>,  <29.531162, 39.600178, 31.339609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.305534, 39.922783, 31.268780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479437, -0.145298, 0.865464,
		0.672282, 0.573080, 0.468632,
		-0.564071, 0.806516, -0.177074,
		29.136312, 40.164738, 31.215658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.553911, 40.138466, 32.003281>,  <29.531162, 39.600178, 31.339609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.553911, 40.138466, 32.003281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.221399, 40.200993, 31.789909>,  <29.021893, 40.238506, 31.661888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.221399, 40.200993, 31.789909>,  <29.553911, 40.138466, 32.003281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221399, 40.200993, 31.789909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549521, -0.086644, 0.830975,
		0.083674, 0.983900, 0.157922,
		-0.831279, 0.156313, -0.533424,
		28.972015, 40.247887, 31.629883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.180941, 40.382622, 32.552616>,  <29.553911, 40.138466, 32.003281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.180941, 40.382622, 32.552616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.912794, 40.338970, 32.259029>,  <28.751907, 40.312778, 32.082878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.912794, 40.338970, 32.259029>,  <29.180941, 40.382622, 32.552616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.912794, 40.338970, 32.259029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736504, -0.022655, 0.676054,
		-0.090406, 0.993769, -0.065189,
		-0.670365, -0.109131, -0.733963,
		28.711685, 40.306232, 32.038841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665638, 40.889187, 32.726723>,  <29.180941, 40.382622, 32.552616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665638, 40.889187, 32.726723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.514240, 40.606194, 32.487991>,  <28.423403, 40.436398, 32.344753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.514240, 40.606194, 32.487991>,  <28.665638, 40.889187, 32.726723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.514240, 40.606194, 32.487991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728632, -0.169913, 0.663494,
		-0.570823, 0.685997, -0.451187,
		-0.378492, -0.707487, -0.596830,
		28.400692, 40.393948, 32.308941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879433, 40.859222, 32.800838>,  <28.665638, 40.889187, 32.726723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879433, 40.859222, 32.800838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.957256, 40.491600, 32.663738>,  <28.003950, 40.271027, 32.581478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.957256, 40.491600, 32.663738>,  <27.879433, 40.859222, 32.800838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.957256, 40.491600, 32.663738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711573, -0.372754, 0.595582,
		-0.675137, 0.128017, -0.726500,
		0.194561, -0.919057, -0.342753,
		28.015625, 40.215881, 32.560913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.171148, 40.475677, 32.694557>,  <27.879433, 40.859222, 32.800838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.171148, 40.475677, 32.694557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.442209, 40.181580, 32.688751>,  <27.604845, 40.005123, 32.685268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.442209, 40.181580, 32.688751>,  <27.171148, 40.475677, 32.694557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.442209, 40.181580, 32.688751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608934, -0.572088, 0.549468,
		-0.412297, -0.363506, -0.835389,
		0.677651, -0.735241, -0.014519,
		27.645504, 39.961006, 32.684395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.767323, 39.860855, 32.660309>,  <27.171148, 40.475677, 32.694557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.767323, 39.860855, 32.660309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.131577, 39.748882, 32.781887>,  <27.350130, 39.681698, 32.854832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.131577, 39.748882, 32.781887>,  <26.767323, 39.860855, 32.660309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.131577, 39.748882, 32.781887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410022, -0.703316, 0.580714,
		0.051209, -0.653442, -0.755242,
		0.910637, -0.279929, 0.303942,
		27.404768, 39.664906, 32.873070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.867661, 39.223015, 32.437336>,  <26.767323, 39.860855, 32.660309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.867661, 39.223015, 32.437336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.072863, 39.288929, 32.774303>,  <27.195984, 39.328476, 32.976486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.072863, 39.288929, 32.774303>,  <26.867661, 39.223015, 32.437336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.072863, 39.288929, 32.774303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488515, -0.750923, 0.444373,
		0.705820, -0.639500, -0.304726,
		0.513003, 0.164784, 0.842422,
		27.226763, 39.338364, 33.027031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.616171, 38.726665, 32.877346>,  <26.867661, 39.223015, 32.437336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.616171, 38.726665, 32.877346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.861368, 38.883583, 33.151672>,  <27.008486, 38.977734, 33.316269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.861368, 38.883583, 33.151672>,  <26.616171, 38.726665, 32.877346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.861368, 38.883583, 33.151672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370685, -0.623769, 0.688117,
		0.697734, -0.676034, -0.236950,
		0.612992, 0.392289, 0.685820,
		27.045265, 39.001270, 33.357418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.000235, 38.197998, 33.154041>,  <26.616171, 38.726665, 32.877346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.000235, 38.197998, 33.154041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.967955, 38.490711, 33.424736>,  <26.948587, 38.666340, 33.587154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.967955, 38.490711, 33.424736>,  <27.000235, 38.197998, 33.154041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.967955, 38.490711, 33.424736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182304, -0.678338, 0.711775,
		0.979925, -0.065932, 0.188149,
		-0.080700, 0.731786, 0.676740,
		26.943745, 38.710247, 33.627758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.324999, 37.945320, 33.774208>,  <27.000235, 38.197998, 33.154041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.324999, 37.945320, 33.774208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.091610, 38.250908, 33.884415>,  <26.951576, 38.434261, 33.950539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.091610, 38.250908, 33.884415>,  <27.324999, 37.945320, 33.774208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.091610, 38.250908, 33.884415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347835, -0.541636, 0.765272,
		0.733875, 0.350681, 0.581765,
		-0.583471, 0.763972, 0.275514,
		26.916569, 38.480099, 33.967068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.387121, 37.886139, 34.346615>,  <27.324999, 37.945320, 33.774208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.387121, 37.886139, 34.346615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.052452, 38.102291, 34.310894>,  <26.851650, 38.231983, 34.289463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.052452, 38.102291, 34.310894>,  <27.387121, 37.886139, 34.346615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.052452, 38.102291, 34.310894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336213, -0.378019, 0.862590,
		0.432367, 0.751728, 0.497959,
		-0.836671, 0.540376, -0.089298,
		26.801451, 38.264404, 34.284103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.338024, 38.311893, 34.913986>,  <27.387121, 37.886139, 34.346615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.338024, 38.311893, 34.913986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.964376, 38.277996, 34.775284>,  <26.740187, 38.257660, 34.692062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.964376, 38.277996, 34.775284>,  <27.338024, 38.311893, 34.913986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.964376, 38.277996, 34.775284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302534, -0.327626, 0.895061,
		-0.189454, 0.941000, 0.280405,
		-0.934120, -0.084741, -0.346754,
		26.684141, 38.252575, 34.671257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.086452, 38.254410, 34.871452>,  <27.338024, 38.311893, 34.913986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.086452, 38.254410, 34.871452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.212420, 38.316288, 35.246025>,  <28.288000, 38.353413, 35.470768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.212420, 38.316288, 35.246025>,  <28.086452, 38.254410, 34.871452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.212420, 38.316288, 35.246025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674121, 0.658071, -0.335414,
		-0.668123, 0.736893, 0.102955,
		0.314917, 0.154694, 0.936428,
		28.306894, 38.362698, 35.526955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.131989, 39.014660, 34.973297>,  <28.086452, 38.254410, 34.871452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.131989, 39.014660, 34.973297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.374743, 38.788322, 35.196548>,  <28.520395, 38.652519, 35.330502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.374743, 38.788322, 35.196548>,  <28.131989, 39.014660, 34.973297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374743, 38.788322, 35.196548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793577, 0.470173, -0.386229,
		-0.043875, 0.677319, 0.734380,
		0.606887, -0.565841, 0.558133,
		28.556808, 38.618568, 35.363987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592924, 39.503258, 35.207272>,  <28.131989, 39.014660, 34.973297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.592924, 39.503258, 35.207272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.782631, 39.154049, 35.252697>,  <28.896454, 38.944523, 35.279953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.782631, 39.154049, 35.252697>,  <28.592924, 39.503258, 35.207272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782631, 39.154049, 35.252697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857303, 0.428633, -0.285142,
		0.200260, 0.232590, 0.951734,
		0.474266, -0.873027, 0.113562,
		28.924911, 38.892139, 35.286766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223167, 39.611538, 35.570129>,  <28.592924, 39.503258, 35.207272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223167, 39.611538, 35.570129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.278942, 39.270344, 35.368942>,  <29.312407, 39.065628, 35.248230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.278942, 39.270344, 35.368942>,  <29.223167, 39.611538, 35.570129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278942, 39.270344, 35.368942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822402, 0.382669, -0.420975,
		0.551555, -0.354944, 0.754852,
		0.139436, -0.852982, -0.502970,
		29.320772, 39.014450, 35.218052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946569, 39.453362, 35.567001>,  <29.223167, 39.611538, 35.570129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946569, 39.453362, 35.567001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.780663, 39.264290, 35.255993>,  <29.681118, 39.150848, 35.069386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.780663, 39.264290, 35.255993>,  <29.946569, 39.453362, 35.567001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.780663, 39.264290, 35.255993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668337, 0.421617, -0.612833,
		0.617490, -0.773832, 0.141035,
		-0.414767, -0.472678, -0.777525,
		29.656233, 39.122486, 35.022736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517172, 39.185371, 35.100353>,  <29.946569, 39.453362, 35.567001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517172, 39.185371, 35.100353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.178514, 39.177143, 34.887650>,  <29.975321, 39.172207, 34.760025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.178514, 39.177143, 34.887650>,  <30.517172, 39.185371, 35.100353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178514, 39.177143, 34.887650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524899, 0.132235, -0.840830,
		0.087615, -0.991005, -0.101158,
		-0.846643, -0.020572, -0.531764,
		29.924522, 39.170971, 34.728119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550671, 38.608955, 34.583946>,  <30.517172, 39.185371, 35.100353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550671, 38.608955, 34.583946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.326073, 38.917465, 34.464035>,  <30.191315, 39.102570, 34.392090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.326073, 38.917465, 34.464035>,  <30.550671, 38.608955, 34.583946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326073, 38.917465, 34.464035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527834, 0.054836, -0.847576,
		-0.637272, -0.634140, -0.437893,
		-0.561494, 0.771271, -0.299775,
		30.157625, 39.148846, 34.374104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487146, 38.447250, 33.902626>,  <30.550671, 38.608955, 34.583946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487146, 38.447250, 33.902626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.388311, 38.833561, 33.934170>,  <30.329010, 39.065350, 33.953094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.388311, 38.833561, 33.934170>,  <30.487146, 38.447250, 33.902626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388311, 38.833561, 33.934170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608429, 0.217970, -0.763088,
		-0.754163, -0.140570, -0.641465,
		-0.247087, 0.965779, 0.078858,
		30.314186, 39.123295, 33.957829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451420, 38.697441, 33.156071>,  <30.487146, 38.447250, 33.902626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451420, 38.697441, 33.156071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.457024, 39.047802, 33.348988>,  <30.460386, 39.258018, 33.464737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.457024, 39.047802, 33.348988>,  <30.451420, 38.697441, 33.156071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457024, 39.047802, 33.348988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548742, 0.396481, -0.735992,
		-0.835874, 0.274964, -0.475089,
		0.014008, 0.875898, 0.482293,
		30.461226, 39.310570, 33.493675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.288210, 39.199673, 32.707390>,  <30.451420, 38.697441, 33.156071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.288210, 39.199673, 32.707390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.505850, 39.385551, 32.986824>,  <30.636433, 39.497078, 33.154484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.505850, 39.385551, 32.986824>,  <30.288210, 39.199673, 32.707390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505850, 39.385551, 32.986824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630393, 0.323036, -0.705870,
		-0.553681, 0.824443, -0.117177,
		0.544097, 0.464695, 0.698582,
		30.669079, 39.524960, 33.196400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.449091, 39.839668, 32.453255>,  <30.288210, 39.199673, 32.707390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.449091, 39.839668, 32.453255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.732944, 39.818729, 32.734303>,  <30.903257, 39.806168, 32.902931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.732944, 39.818729, 32.734303>,  <30.449091, 39.839668, 32.453255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732944, 39.818729, 32.734303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653706, 0.420938, -0.628872,
		-0.262842, 0.905578, 0.332930,
		0.709635, -0.052345, 0.702622,
		30.945835, 39.803024, 32.945087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679968, 40.508556, 32.565395>,  <30.449091, 39.839668, 32.453255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679968, 40.508556, 32.565395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.979334, 40.271626, 32.684738>,  <31.158953, 40.129467, 32.756344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.979334, 40.271626, 32.684738>,  <30.679968, 40.508556, 32.565395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979334, 40.271626, 32.684738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606934, 0.430300, -0.668186,
		0.267404, 0.681165, 0.681549,
		0.748415, -0.592331, 0.298359,
		31.203859, 40.093925, 32.774246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293179, 40.981609, 32.524654>,  <30.679968, 40.508556, 32.565395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293179, 40.981609, 32.524654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.444141, 40.611515, 32.540146>,  <31.534719, 40.389458, 32.549442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.444141, 40.611515, 32.540146>,  <31.293179, 40.981609, 32.524654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444141, 40.611515, 32.540146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785212, 0.297557, -0.543049,
		0.490926, 0.235360, 0.838807,
		0.377405, -0.925238, 0.038729,
		31.557364, 40.333942, 32.551765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958759, 41.068470, 32.672230>,  <31.293179, 40.981609, 32.524654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958759, 41.068470, 32.672230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.976782, 40.694756, 32.530769>,  <31.987595, 40.470528, 32.445892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.976782, 40.694756, 32.530769>,  <31.958759, 41.068470, 32.672230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976782, 40.694756, 32.530769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913063, 0.182150, -0.364879,
		0.405321, -0.306470, 0.861273,
		0.045056, -0.934290, -0.353656,
		31.990299, 40.414467, 32.424671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660679, 40.797421, 32.768017>,  <31.958759, 41.068470, 32.672230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660679, 40.797421, 32.768017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.508865, 40.564060, 32.480797>,  <32.417778, 40.424046, 32.308464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.508865, 40.564060, 32.480797>,  <32.660679, 40.797421, 32.768017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508865, 40.564060, 32.480797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867348, 0.045725, -0.495597,
		0.321964, -0.810898, 0.488655,
		-0.379535, -0.583398, -0.718053,
		32.395004, 40.389042, 32.265381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274097, 40.498425, 32.645103>,  <32.660679, 40.797421, 32.768017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274097, 40.498425, 32.645103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.045471, 40.412655, 32.328285>,  <32.908295, 40.361195, 32.138195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.045471, 40.412655, 32.328285>,  <33.274097, 40.498425, 32.645103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045471, 40.412655, 32.328285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744640, 0.269948, -0.610442,
		0.344705, -0.938696, 0.005377,
		-0.571568, -0.214426, -0.792043,
		32.874001, 40.348328, 32.090672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615623, 40.064041, 32.244492>,  <33.274097, 40.498425, 32.645103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615623, 40.064041, 32.244492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.364681, 40.224770, 31.977669>,  <33.214115, 40.321209, 31.817575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.364681, 40.224770, 31.977669>,  <33.615623, 40.064041, 32.244492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364681, 40.224770, 31.977669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765513, 0.161064, -0.622935,
		-0.142872, -0.901441, -0.408646,
		-0.627357, 0.401825, -0.667053,
		33.176476, 40.345318, 31.777554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719246, 39.721722, 31.712730>,  <33.615623, 40.064041, 32.244492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719246, 39.721722, 31.712730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.546635, 40.064056, 31.598656>,  <33.443069, 40.269459, 31.530210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.546635, 40.064056, 31.598656>,  <33.719246, 39.721722, 31.712730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546635, 40.064056, 31.598656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774844, 0.189753, -0.603001,
		-0.461955, -0.481185, -0.745023,
		-0.431525, 0.855836, -0.285186,
		33.417175, 40.320808, 31.513100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819942, 39.777836, 31.010939>,  <33.719246, 39.721722, 31.712730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819942, 39.777836, 31.010939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.758961, 40.156353, 31.124983>,  <33.722370, 40.383465, 31.193409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.758961, 40.156353, 31.124983>,  <33.819942, 39.777836, 31.010939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758961, 40.156353, 31.124983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833762, 0.278046, -0.477002,
		-0.530657, 0.164992, -0.831373,
		-0.152458, 0.946292, 0.285111,
		33.713223, 40.440239, 31.210516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029106, 40.115864, 30.427450>,  <33.819942, 39.777836, 31.010939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029106, 40.115864, 30.427450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.016563, 40.379421, 30.728083>,  <34.009037, 40.537556, 30.908463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.016563, 40.379421, 30.728083>,  <34.029106, 40.115864, 30.427450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016563, 40.379421, 30.728083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794138, 0.473029, -0.381560,
		-0.606927, 0.584894, -0.538088,
		-0.031359, 0.658895, 0.751581,
		34.007156, 40.577091, 30.953556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115540, 40.775433, 30.153658>,  <34.029106, 40.115864, 30.427450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115540, 40.775433, 30.153658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.221298, 40.826164, 30.536074>,  <34.284756, 40.856602, 30.765522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.221298, 40.826164, 30.536074>,  <34.115540, 40.775433, 30.153658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221298, 40.826164, 30.536074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807021, 0.513657, -0.291330,
		-0.528024, 0.848570, 0.033459,
		0.264400, 0.126828, 0.956037,
		34.300617, 40.864212, 30.822886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192379, 41.540710, 30.265833>,  <34.115540, 40.775433, 30.153658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192379, 41.540710, 30.265833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.400883, 41.358459, 30.554470>,  <34.525986, 41.249111, 30.727652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.400883, 41.358459, 30.554470>,  <34.192379, 41.540710, 30.265833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400883, 41.358459, 30.554470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781314, 0.594909, -0.188762,
		-0.343278, 0.662185, 0.666087,
		0.521256, -0.455626, 0.721594,
		34.557259, 41.221771, 30.770948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536812, 42.065498, 30.663048>,  <34.192379, 41.540710, 30.265833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536812, 42.065498, 30.663048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.749283, 41.740601, 30.759481>,  <34.876766, 41.545662, 30.817341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.749283, 41.740601, 30.759481>,  <34.536812, 42.065498, 30.663048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749283, 41.740601, 30.759481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842965, 0.535258, -0.053938,
		-0.085231, 0.231875, 0.969005,
		0.531174, -0.812240, 0.241083,
		34.908634, 41.496929, 30.831806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075138, 42.405293, 31.115135>,  <34.536812, 42.065498, 30.663048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075138, 42.405293, 31.115135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.192596, 42.047070, 30.981424>,  <35.263073, 41.832134, 30.901197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.192596, 42.047070, 30.981424>,  <35.075138, 42.405293, 31.115135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192596, 42.047070, 30.981424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938707, 0.336207, -0.076125,
		0.180560, -0.291434, 0.939396,
		0.293646, -0.895562, -0.334277,
		35.280689, 41.778400, 30.881142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789280, 42.334206, 31.335066>,  <35.075138, 42.405293, 31.115135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789280, 42.334206, 31.335066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.753204, 42.038193, 31.068468>,  <35.731560, 41.860584, 30.908510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.753204, 42.038193, 31.068468>,  <35.789280, 42.334206, 31.335066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753204, 42.038193, 31.068468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966588, 0.096191, -0.237603,
		0.239945, -0.665653, 0.706634,
		-0.090189, -0.740036, -0.666493,
		35.726147, 41.816181, 30.868521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295864, 41.852692, 31.450974>,  <35.789280, 42.334206, 31.335066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295864, 41.852692, 31.450974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.202538, 41.822304, 31.063202>,  <36.146542, 41.804073, 30.830538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.202538, 41.822304, 31.063202>,  <36.295864, 41.852692, 31.450974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202538, 41.822304, 31.063202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971127, 0.032832, -0.236294,
		0.049779, -0.996570, 0.066112,
		-0.233313, -0.075966, -0.969430,
		36.132545, 41.799515, 30.772373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761890, 41.507698, 31.191236>,  <36.295864, 41.852692, 31.450974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761890, 41.507698, 31.191236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.612362, 41.683121, 30.864328>,  <36.522644, 41.788376, 30.668184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.612362, 41.683121, 30.864328>,  <36.761890, 41.507698, 31.191236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612362, 41.683121, 30.864328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892314, -0.070352, -0.445899,
		-0.253048, -0.895946, -0.365030,
		-0.373821, 0.438555, -0.817268,
		36.500217, 41.814686, 30.619148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120365, 41.154541, 30.644173>,  <36.761890, 41.507698, 31.191236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120365, 41.154541, 30.644173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.992146, 41.494797, 30.477478>,  <36.915215, 41.698948, 30.377460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.992146, 41.494797, 30.477478>,  <37.120365, 41.154541, 30.644173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992146, 41.494797, 30.477478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861477, 0.078877, -0.501634,
		-0.393836, -0.519806, -0.758086,
		-0.320548, 0.850635, -0.416736,
		36.895981, 41.749989, 30.352457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280720, 40.476360, 30.418945>,  <37.120365, 41.154541, 30.644173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280720, 40.476360, 30.418945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.553242, 40.187199, 30.372936>,  <37.716755, 40.013702, 30.345331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.553242, 40.187199, 30.372936>,  <37.280720, 40.476360, 30.418945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553242, 40.187199, 30.372936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527788, -0.594016, 0.607112,
		-0.507206, -0.352925, -0.786248,
		0.681308, -0.722903, -0.115019,
		37.757633, 39.970329, 30.338430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934719, 39.888931, 30.181673>,  <37.280720, 40.476360, 30.418945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934719, 39.888931, 30.181673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.258366, 39.754654, 30.374607>,  <37.452553, 39.674088, 30.490368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.258366, 39.754654, 30.374607>,  <36.934719, 39.888931, 30.181673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258366, 39.754654, 30.374607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560537, -0.687331, 0.461925,
		0.176455, -0.644114, -0.744299,
		0.809112, -0.335697, 0.482333,
		37.501099, 39.653946, 30.519306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795845, 39.273643, 30.232210>,  <36.934719, 39.888931, 30.181673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795845, 39.273643, 30.232210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.077610, 39.295952, 30.515247>,  <37.246670, 39.309338, 30.685070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.077610, 39.295952, 30.515247>,  <36.795845, 39.273643, 30.232210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077610, 39.295952, 30.515247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476422, -0.701815, 0.529601,
		0.526139, -0.710172, -0.467796,
		0.704415, 0.055775, 0.707594,
		37.288933, 39.312683, 30.727526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954311, 38.658646, 30.447002>,  <36.795845, 39.273643, 30.232210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954311, 38.658646, 30.447002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.085476, 38.881710, 30.752024>,  <37.164173, 39.015549, 30.935038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.085476, 38.881710, 30.752024>,  <36.954311, 38.658646, 30.447002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085476, 38.881710, 30.752024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438297, -0.625251, 0.645723,
		0.836882, -0.545964, 0.039395,
		0.327910, 0.557660, 0.762555,
		37.183849, 39.049007, 30.980791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016506, 38.152332, 31.038599>,  <36.954311, 38.658646, 30.447002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016506, 38.152332, 31.038599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.999058, 38.517033, 31.201963>,  <36.988586, 38.735855, 31.299982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.999058, 38.517033, 31.201963>,  <37.016506, 38.152332, 31.038599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999058, 38.517033, 31.201963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569918, -0.358470, 0.739387,
		0.820543, -0.200505, 0.535263,
		-0.043625, 0.911755, 0.408412,
		36.985970, 38.790558, 31.324488>
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
