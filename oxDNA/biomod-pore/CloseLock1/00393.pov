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
	<24.039879, 34.991325, 34.739906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.207930, 34.803326, 35.050415>,  <24.308760, 34.690525, 35.236721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.207930, 34.803326, 35.050415>,  <24.039879, 34.991325, 34.739906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.207930, 34.803326, 35.050415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907166, 0.195551, -0.372571,
		0.023307, 0.860734, 0.508522,
		0.420127, -0.469997, 0.776271,
		24.333967, 34.662327, 35.283295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.524027, 35.377781, 35.159168>,  <24.039879, 34.991325, 34.739906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.524027, 35.377781, 35.159168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.695719, 35.017365, 35.184128>,  <24.798735, 34.801117, 35.199104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.695719, 35.017365, 35.184128>,  <24.524027, 35.377781, 35.159168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.695719, 35.017365, 35.184128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886916, 0.407429, -0.217673,
		0.170709, 0.148772, 0.974025,
		0.429230, -0.901038, 0.062396,
		24.824488, 34.747055, 35.202847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.062332, 35.260941, 35.756645>,  <24.524027, 35.377781, 35.159168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.062332, 35.260941, 35.756645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.127504, 35.065266, 35.413918>,  <25.166607, 34.947861, 35.208279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.127504, 35.065266, 35.413918>,  <25.062332, 35.260941, 35.756645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.127504, 35.065266, 35.413918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848110, 0.513184, -0.131721,
		0.504145, -0.705220, 0.498500,
		0.162930, -0.489190, -0.856824,
		25.176384, 34.918510, 35.156872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.782562, 35.200970, 35.742317>,  <25.062332, 35.260941, 35.756645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.782562, 35.200970, 35.742317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.680006, 35.130924, 35.362087>,  <25.618471, 35.088898, 35.133949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.680006, 35.130924, 35.362087>,  <25.782562, 35.200970, 35.742317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.680006, 35.130924, 35.362087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883670, 0.356022, -0.303933,
		0.391650, -0.917923, 0.063464,
		-0.256393, -0.175117, -0.950577,
		25.603088, 35.078388, 35.076916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.051815, 34.704758, 36.247807>,  <25.782562, 35.200970, 35.742317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.051815, 34.704758, 36.247807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.449436, 34.689987, 36.288788>,  <26.688009, 34.681126, 36.313377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.449436, 34.689987, 36.288788>,  <26.051815, 34.704758, 36.247807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.449436, 34.689987, 36.288788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070090, 0.503138, 0.861359,
		-0.083356, -0.863417, 0.497557,
		0.994052, -0.036925, 0.102457,
		26.747652, 34.678909, 36.319527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.200365, 34.226173, 36.865089>,  <26.051815, 34.704758, 36.247807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.200365, 34.226173, 36.865089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.476540, 34.500618, 36.773399>,  <26.642244, 34.665287, 36.718388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.476540, 34.500618, 36.773399>,  <26.200365, 34.226173, 36.865089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.476540, 34.500618, 36.773399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156752, 0.451244, 0.878526,
		0.706206, -0.570635, 0.419105,
		0.690436, 0.686116, -0.229223,
		26.683670, 34.706451, 36.704632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.550186, 34.216896, 37.409332>,  <26.200365, 34.226173, 36.865089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.550186, 34.216896, 37.409332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.642801, 34.557102, 37.220432>,  <26.698370, 34.761227, 37.107094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.642801, 34.557102, 37.220432>,  <26.550186, 34.216896, 37.409332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.642801, 34.557102, 37.220432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087893, 0.501746, 0.860538,
		0.968847, -0.157740, 0.190928,
		0.231539, 0.850511, -0.472251,
		26.712263, 34.812256, 37.078758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.919645, 34.532207, 37.951683>,  <26.550186, 34.216896, 37.409332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.919645, 34.532207, 37.951683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.871071, 34.830376, 37.689507>,  <26.841927, 35.009277, 37.532200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.871071, 34.830376, 37.689507>,  <26.919645, 34.532207, 37.951683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.871071, 34.830376, 37.689507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111009, 0.645989, 0.755232,
		0.986372, 0.164475, 0.004300,
		-0.121438, 0.745417, -0.655444,
		26.834639, 35.054001, 37.492874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.397985, 35.015900, 38.106655>,  <26.919645, 34.532207, 37.951683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.397985, 35.015900, 38.106655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.081329, 35.179947, 37.925499>,  <26.891336, 35.278374, 37.816803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.081329, 35.179947, 37.925499>,  <27.397985, 35.015900, 38.106655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.081329, 35.179947, 37.925499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205488, 0.519358, 0.829483,
		0.575397, 0.749716, -0.326871,
		-0.791640, 0.410114, -0.452894,
		26.843838, 35.302982, 37.789631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.438900, 35.794277, 38.178307>,  <27.397985, 35.015900, 38.106655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.438900, 35.794277, 38.178307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058289, 35.673855, 38.153130>,  <26.829922, 35.601601, 38.138023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058289, 35.673855, 38.153130>,  <27.438900, 35.794277, 38.178307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.058289, 35.673855, 38.153130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233664, 0.574544, 0.784411,
		-0.199989, 0.761096, -0.617040,
		-0.951528, -0.301053, -0.062938,
		26.772831, 35.583538, 38.134247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.070190, 36.421555, 38.165600>,  <27.438900, 35.794277, 38.178307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.070190, 36.421555, 38.165600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794481, 36.142315, 38.243126>,  <26.629055, 35.974773, 38.289642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794481, 36.142315, 38.243126>,  <27.070190, 36.421555, 38.165600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.794481, 36.142315, 38.243126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319555, 0.533028, 0.783433,
		-0.650220, 0.478064, -0.590482,
		-0.689274, -0.698095, 0.193817,
		26.587700, 35.932888, 38.301270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.563633, 36.822823, 38.402714>,  <27.070190, 36.421555, 38.165600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.563633, 36.822823, 38.402714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.458195, 36.451065, 38.506046>,  <26.394932, 36.228008, 38.568047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.458195, 36.451065, 38.506046>,  <26.563633, 36.822823, 38.402714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.458195, 36.451065, 38.506046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339289, 0.340020, 0.877080,
		-0.902995, 0.143545, -0.404962,
		-0.263596, -0.929398, 0.258333,
		26.379116, 36.172245, 38.583546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.943544, 36.954659, 38.788349>,  <26.563633, 36.822823, 38.402714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.943544, 36.954659, 38.788349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.052210, 36.579826, 38.876060>,  <26.117409, 36.354927, 38.928688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.052210, 36.579826, 38.876060>,  <25.943544, 36.954659, 38.788349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.052210, 36.579826, 38.876060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227185, 0.158964, 0.960790,
		-0.935193, -0.310830, -0.169705,
		0.271665, -0.937078, 0.219278,
		26.133709, 36.298702, 38.941845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.341528, 36.567459, 39.148853>,  <25.943544, 36.954659, 38.788349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.341528, 36.567459, 39.148853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.683258, 36.388527, 39.254700>,  <25.888296, 36.281166, 39.318207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.683258, 36.388527, 39.254700>,  <25.341528, 36.567459, 39.148853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.683258, 36.388527, 39.254700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186135, 0.212019, 0.959376,
		-0.485262, -0.868874, 0.097870,
		0.854327, -0.447331, 0.264612,
		25.939556, 36.254326, 39.334084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.138735, 36.072983, 39.668453>,  <25.341528, 36.567459, 39.148853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.138735, 36.072983, 39.668453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.534231, 36.124092, 39.699596>,  <25.771530, 36.154758, 39.718285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.534231, 36.124092, 39.699596>,  <25.138735, 36.072983, 39.668453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.534231, 36.124092, 39.699596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107250, 0.242332, 0.964247,
		0.104338, -0.961742, 0.253308,
		0.988742, 0.127774, 0.077862,
		25.830854, 36.162426, 39.722954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.377018, 35.488777, 40.206638>,  <25.138735, 36.072983, 39.668453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.377018, 35.488777, 40.206638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.636591, 35.791309, 40.173542>,  <25.792336, 35.972828, 40.153683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.636591, 35.791309, 40.173542>,  <25.377018, 35.488777, 40.206638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.636591, 35.791309, 40.173542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033013, 0.080660, 0.996195,
		0.760128, -0.649196, 0.027374,
		0.648934, 0.756332, -0.082744,
		25.831272, 36.018208, 40.148720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.816164, 35.383778, 40.817467>,  <25.377018, 35.488777, 40.206638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.816164, 35.383778, 40.817467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.850008, 35.762478, 40.693207>,  <25.870316, 35.989697, 40.618649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.850008, 35.762478, 40.693207>,  <25.816164, 35.383778, 40.817467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.850008, 35.762478, 40.693207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103864, 0.318452, 0.942232,
		0.990986, -0.047457, 0.125278,
		0.084611, 0.946750, -0.310652,
		25.875391, 36.046501, 40.600010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.268494, 35.648460, 41.297428>,  <25.816164, 35.383778, 40.817467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.268494, 35.648460, 41.297428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055422, 35.948853, 41.141338>,  <25.927578, 36.129089, 41.047684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055422, 35.948853, 41.141338>,  <26.268494, 35.648460, 41.297428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.055422, 35.948853, 41.141338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113215, 0.393711, 0.912236,
		0.838709, 0.530111, -0.124700,
		-0.532682, 0.750983, -0.390225,
		25.895617, 36.174149, 41.024269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.583441, 36.163879, 41.611084>,  <26.268494, 35.648460, 41.297428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.583441, 36.163879, 41.611084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.230537, 36.298664, 41.479588>,  <26.018795, 36.379536, 41.400688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.230537, 36.298664, 41.479588>,  <26.583441, 36.163879, 41.611084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.230537, 36.298664, 41.479588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142329, 0.474708, 0.868559,
		0.448731, 0.813085, -0.370856,
		-0.882260, 0.336965, -0.328742,
		25.965858, 36.399754, 41.380966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.588823, 36.863472, 41.808212>,  <26.583441, 36.163879, 41.611084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.588823, 36.863472, 41.808212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205187, 36.769573, 41.744919>,  <25.975004, 36.713234, 41.706944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205187, 36.769573, 41.744919>,  <26.588823, 36.863472, 41.808212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.205187, 36.769573, 41.744919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231746, 0.330026, 0.915083,
		-0.162589, 0.914319, -0.370926,
		-0.959092, -0.234744, -0.158231,
		25.917459, 36.699150, 41.697449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.316299, 37.398678, 41.926697>,  <26.588823, 36.863472, 41.808212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.316299, 37.398678, 41.926697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.017532, 37.134422, 41.956795>,  <25.838272, 36.975868, 41.974854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.017532, 37.134422, 41.956795>,  <26.316299, 37.398678, 41.926697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.017532, 37.134422, 41.956795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237643, 0.370932, 0.897739,
		-0.620996, 0.652657, -0.434054,
		-0.746920, -0.660643, 0.075248,
		25.793457, 36.936230, 41.979370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.660543, 37.776585, 42.076328>,  <26.316299, 37.398678, 41.926697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.660543, 37.776585, 42.076328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.685005, 37.401695, 42.213661>,  <25.699682, 37.176762, 42.296059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.685005, 37.401695, 42.213661>,  <25.660543, 37.776585, 42.076328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.685005, 37.401695, 42.213661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219976, 0.322861, 0.920528,
		-0.973587, -0.131817, -0.186422,
		0.061153, -0.937222, 0.343330,
		25.703352, 37.120529, 42.316662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.089334, 37.781189, 42.576378>,  <25.660543, 37.776585, 42.076328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.089334, 37.781189, 42.576378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.281767, 37.443520, 42.670971>,  <25.397226, 37.240917, 42.727726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.281767, 37.443520, 42.670971>,  <25.089334, 37.781189, 42.576378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.281767, 37.443520, 42.670971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068400, 0.232786, 0.970120,
		-0.874004, -0.482881, 0.054247,
		0.481080, -0.844178, 0.236485,
		25.426090, 37.190266, 42.741917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.733503, 37.381054, 43.036816>,  <25.089334, 37.781189, 42.576378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.733503, 37.381054, 43.036816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.117634, 37.286839, 43.096539>,  <25.348112, 37.230309, 43.132374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.117634, 37.286839, 43.096539>,  <24.733503, 37.381054, 43.036816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.117634, 37.286839, 43.096539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127689, 0.104613, 0.986282,
		-0.247929, -0.966218, 0.070387,
		0.960326, -0.235540, 0.149312,
		25.405731, 37.216175, 43.141331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.701172, 36.947975, 43.600887>,  <24.733503, 37.381054, 43.036816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.701172, 36.947975, 43.600887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.077559, 37.083248, 43.595089>,  <25.303391, 37.164413, 43.591610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.077559, 37.083248, 43.595089>,  <24.701172, 36.947975, 43.600887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.077559, 37.083248, 43.595089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039601, -0.067456, 0.996936,
		0.336172, -0.938659, -0.076866,
		0.940968, 0.338186, -0.014495,
		25.359848, 37.184704, 43.590740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.183693, 36.523956, 43.969074>,  <24.701172, 36.947975, 43.600887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.183693, 36.523956, 43.969074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.366018, 36.879875, 43.960194>,  <25.475414, 37.093426, 43.954865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.366018, 36.879875, 43.960194>,  <25.183693, 36.523956, 43.969074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.366018, 36.879875, 43.960194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232191, -0.094784, 0.968041,
		0.859257, -0.446401, -0.249807,
		0.455813, 0.889799, -0.022206,
		25.502762, 37.146816, 43.953533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.825911, 36.506329, 44.300468>,  <25.183693, 36.523956, 43.969074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.825911, 36.506329, 44.300468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.671881, 36.874783, 44.323204>,  <25.579464, 37.095856, 44.336845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.671881, 36.874783, 44.323204>,  <25.825911, 36.506329, 44.300468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.671881, 36.874783, 44.323204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318112, 0.074661, 0.945109,
		0.866328, 0.382018, -0.321774,
		-0.385073, 0.921134, 0.056843,
		25.556358, 37.151123, 44.340256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.310709, 36.946869, 44.491188>,  <25.825911, 36.506329, 44.300468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.310709, 36.946869, 44.491188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.022772, 37.038967, 44.753124>,  <25.850010, 37.094227, 44.910286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.022772, 37.038967, 44.753124>,  <26.310709, 36.946869, 44.491188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.022772, 37.038967, 44.753124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637112, -0.155306, 0.754963,
		0.275527, 0.960660, -0.034897,
		-0.719842, 0.230246, 0.654839,
		25.806820, 37.108040, 44.949577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.906452, 37.266346, 44.826511>,  <26.310709, 36.946869, 44.491188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.906452, 37.266346, 44.826511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251598, 37.134075, 44.979412>,  <27.458687, 37.054714, 45.071152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251598, 37.134075, 44.979412>,  <26.906452, 37.266346, 44.826511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.251598, 37.134075, 44.979412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439700, 0.864063, -0.245070,
		-0.249250, 0.379539, 0.890969,
		0.862866, -0.330675, 0.382251,
		27.510458, 37.034874, 45.094086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.206322, 37.803974, 45.079777>,  <26.906452, 37.266346, 44.826511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.206322, 37.803974, 45.079777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518709, 37.562149, 45.017044>,  <27.706142, 37.417053, 44.979404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518709, 37.562149, 45.017044>,  <27.206322, 37.803974, 45.079777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518709, 37.562149, 45.017044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548696, 0.784065, -0.290128,
		0.298364, 0.140530, 0.944050,
		0.780968, -0.604560, -0.156829,
		27.753000, 37.380779, 44.969994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.898373, 37.976345, 45.462227>,  <27.206322, 37.803974, 45.079777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.898373, 37.976345, 45.462227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.017227, 37.776657, 45.136654>,  <28.088539, 37.656845, 44.941311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.017227, 37.776657, 45.136654>,  <27.898373, 37.976345, 45.462227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.017227, 37.776657, 45.136654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529242, 0.795619, -0.294776,
		0.794740, -0.343181, 0.500614,
		0.297137, -0.499217, -0.813936,
		28.106369, 37.626892, 44.892471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.693655, 37.819904, 45.292877>,  <27.898373, 37.976345, 45.462227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.693655, 37.819904, 45.292877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.445444, 37.895592, 44.988472>,  <28.296518, 37.941002, 44.805828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.445444, 37.895592, 44.988472>,  <28.693655, 37.819904, 45.292877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.445444, 37.895592, 44.988472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424153, 0.897230, -0.122769,
		0.659575, -0.398968, -0.637012,
		-0.620528, 0.189216, -0.761014,
		28.259285, 37.952358, 44.760166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176252, 38.033772, 44.739529>,  <28.693655, 37.819904, 45.292877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176252, 38.033772, 44.739529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813984, 38.198673, 44.699928>,  <28.596622, 38.297615, 44.676167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813984, 38.198673, 44.699928>,  <29.176252, 38.033772, 44.739529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813984, 38.198673, 44.699928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423943, 0.877478, -0.224286,
		-0.005591, -0.245101, -0.969481,
		-0.905672, 0.412259, -0.099003,
		28.542282, 38.322350, 44.670227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977243, 38.495991, 44.120964>,  <29.176252, 38.033772, 44.739529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977243, 38.495991, 44.120964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.746675, 38.614742, 44.425491>,  <28.608334, 38.685993, 44.608208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.746675, 38.614742, 44.425491>,  <28.977243, 38.495991, 44.120964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.746675, 38.614742, 44.425491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201717, 0.954531, -0.219502,
		-0.791864, 0.027045, -0.610098,
		-0.576421, 0.296883, 0.761314,
		28.573750, 38.703808, 44.653885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670218, 38.505623, 43.463924>,  <28.977243, 38.495991, 44.120964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670218, 38.505623, 43.463924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.859442, 38.834728, 43.337894>,  <28.972977, 39.032192, 43.262276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.859442, 38.834728, 43.337894>,  <28.670218, 38.505623, 43.463924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.859442, 38.834728, 43.337894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794245, 0.243484, -0.556678,
		-0.381297, 0.513592, 0.768658,
		0.473062, 0.822763, -0.315078,
		29.001360, 39.081558, 43.243370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.149075, 38.515438, 42.952793>,  <28.670218, 38.505623, 43.463924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.149075, 38.515438, 42.952793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855978, 38.610397, 42.697693>,  <28.680120, 38.667374, 42.544632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855978, 38.610397, 42.697693>,  <29.149075, 38.515438, 42.952793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855978, 38.610397, 42.697693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217972, -0.805919, -0.550438,
		-0.644653, -0.542341, 0.538784,
		-0.732742, 0.237402, -0.637754,
		28.636156, 38.681618, 42.506367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825201, 37.932137, 42.940369>,  <29.149075, 38.515438, 42.952793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825201, 37.932137, 42.940369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.741573, 38.151375, 42.616421>,  <28.691397, 38.282917, 42.422054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.741573, 38.151375, 42.616421>,  <28.825201, 37.932137, 42.940369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741573, 38.151375, 42.616421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378884, -0.718081, -0.583786,
		-0.901519, -0.428897, -0.057536,
		-0.209068, 0.548094, -0.809866,
		28.678852, 38.315804, 42.373463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.882090, 37.401623, 42.463966>,  <28.825201, 37.932137, 42.940369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.882090, 37.401623, 42.463966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.831890, 37.738960, 42.254959>,  <28.801771, 37.941360, 42.129555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.831890, 37.738960, 42.254959>,  <28.882090, 37.401623, 42.463966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.831890, 37.738960, 42.254959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177191, -0.499164, -0.848197,
		-0.976142, -0.199032, -0.086789,
		-0.125497, 0.843340, -0.522521,
		28.794241, 37.991962, 42.098202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.348860, 37.323196, 41.935921>,  <28.882090, 37.401623, 42.463966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.348860, 37.323196, 41.935921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.603872, 37.601120, 41.802780>,  <28.756880, 37.767876, 41.722897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.603872, 37.601120, 41.802780>,  <28.348860, 37.323196, 41.935921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603872, 37.601120, 41.802780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189726, -0.560320, -0.806254,
		-0.746697, 0.450863, -0.489047,
		0.637532, 0.694812, -0.332849,
		28.795132, 37.809563, 41.702927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.054808, 37.541210, 41.296555>,  <28.348860, 37.323196, 41.935921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.054808, 37.541210, 41.296555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439861, 37.648613, 41.282471>,  <28.670893, 37.713055, 41.274021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439861, 37.648613, 41.282471>,  <28.054808, 37.541210, 41.296555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.439861, 37.648613, 41.282471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094073, -0.453472, -0.886292,
		-0.253940, 0.849863, -0.461787,
		0.962634, 0.268507, -0.035205,
		28.728651, 37.729164, 41.271908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151701, 37.743969, 40.679764>,  <28.054808, 37.541210, 41.296555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151701, 37.743969, 40.679764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.526205, 37.663876, 40.795227>,  <28.750908, 37.615818, 40.864506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.526205, 37.663876, 40.795227>,  <28.151701, 37.743969, 40.679764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.526205, 37.663876, 40.795227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210747, -0.337265, -0.917517,
		0.281069, 0.919869, -0.273570,
		0.936261, -0.200232, 0.288654,
		28.807083, 37.603806, 40.881824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597841, 38.151505, 40.248039>,  <28.151701, 37.743969, 40.679764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597841, 38.151505, 40.248039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.825342, 37.848667, 40.376617>,  <28.961843, 37.666965, 40.453762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.825342, 37.848667, 40.376617>,  <28.597841, 38.151505, 40.248039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.825342, 37.848667, 40.376617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093983, -0.328428, -0.939842,
		0.817121, 0.564749, -0.115640,
		0.568754, -0.757096, 0.321442,
		28.995968, 37.621540, 40.473049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127619, 38.061581, 39.717381>,  <28.597841, 38.151505, 40.248039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127619, 38.061581, 39.717381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.138634, 37.715618, 39.917850>,  <29.145243, 37.508041, 40.038132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.138634, 37.715618, 39.917850>,  <29.127619, 38.061581, 39.717381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138634, 37.715618, 39.917850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167865, -0.490246, -0.855266,
		0.985425, 0.107682, 0.131688,
		0.027537, -0.864907, 0.501177,
		29.146894, 37.456146, 40.068203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736664, 37.650242, 39.504902>,  <29.127619, 38.061581, 39.717381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736664, 37.650242, 39.504902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.486179, 37.389454, 39.675919>,  <29.335888, 37.232983, 39.778530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.486179, 37.389454, 39.675919>,  <29.736664, 37.650242, 39.504902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486179, 37.389454, 39.675919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288146, -0.703088, -0.650106,
		0.724451, -0.283909, 0.628145,
		-0.626212, -0.651968, 0.427546,
		29.298315, 37.193863, 39.804184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190859, 36.954872, 39.599430>,  <29.736664, 37.650242, 39.504902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190859, 36.954872, 39.599430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799042, 36.880116, 39.569588>,  <29.563951, 36.835262, 39.551682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799042, 36.880116, 39.569588>,  <30.190859, 36.954872, 39.599430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.799042, 36.880116, 39.569588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182594, -0.669643, -0.719887,
		0.084586, -0.718782, 0.690070,
		-0.979543, -0.186895, -0.074603,
		29.505178, 36.824047, 39.547207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.101068, 36.161942, 39.530285>,  <30.190859, 36.954872, 39.599430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.101068, 36.161942, 39.530285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750034, 36.298504, 39.395653>,  <29.539413, 36.380440, 39.314873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750034, 36.298504, 39.395653>,  <30.101068, 36.161942, 39.530285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750034, 36.298504, 39.395653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006506, -0.710478, -0.703689,
		-0.479377, -0.615357, 0.625726,
		-0.877585, 0.341403, -0.336584,
		29.486759, 36.400925, 39.294678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.724247, 35.546455, 39.356628>,  <30.101068, 36.161942, 39.530285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.724247, 35.546455, 39.356628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.539417, 35.835766, 39.151356>,  <29.428518, 36.009354, 39.028194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.539417, 35.835766, 39.151356>,  <29.724247, 35.546455, 39.356628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.539417, 35.835766, 39.151356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194086, -0.647108, -0.737280,
		-0.865342, -0.241078, 0.439391,
		-0.462076, 0.723279, -0.513179,
		29.400795, 36.052750, 38.997402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.066998, 35.273624, 39.188820>,  <29.724247, 35.546455, 39.356628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.066998, 35.273624, 39.188820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.162355, 35.562462, 38.929054>,  <29.219570, 35.735764, 38.773193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.162355, 35.562462, 38.929054>,  <29.066998, 35.273624, 39.188820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162355, 35.562462, 38.929054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414562, -0.529046, -0.740438,
		-0.878240, 0.445741, 0.173232,
		0.238396, 0.722098, -0.649417,
		29.233873, 35.779091, 38.734230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468882, 35.354958, 38.894581>,  <29.066998, 35.273624, 39.188820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468882, 35.354958, 38.894581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756054, 35.478745, 38.645164>,  <28.928356, 35.553017, 38.495514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756054, 35.478745, 38.645164>,  <28.468882, 35.354958, 38.894581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.756054, 35.478745, 38.645164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388121, -0.565646, -0.727603,
		-0.577876, 0.764378, -0.285982,
		0.717929, 0.309468, -0.623545,
		28.971432, 35.571587, 38.458099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.183050, 35.515713, 38.257496>,  <28.468882, 35.354958, 38.894581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.183050, 35.515713, 38.257496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563705, 35.492050, 38.136909>,  <28.792099, 35.477852, 38.064556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563705, 35.492050, 38.136909>,  <28.183050, 35.515713, 38.257496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.563705, 35.492050, 38.136909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279577, -0.573523, -0.770005,
		-0.127349, 0.817051, -0.562325,
		0.951640, -0.059154, -0.301466,
		28.849197, 35.474304, 38.046471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145184, 35.695442, 37.572159>,  <28.183050, 35.515713, 38.257496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145184, 35.695442, 37.572159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.506790, 35.534107, 37.628830>,  <28.723755, 35.437305, 37.662830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.506790, 35.534107, 37.628830>,  <28.145184, 35.695442, 37.572159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.506790, 35.534107, 37.628830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037975, -0.405860, -0.913146,
		0.425808, 0.820119, -0.382221,
		0.904016, -0.403339, 0.141674,
		28.777996, 35.413105, 37.671333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.489201, 35.867241, 36.947639>,  <28.145184, 35.695442, 37.572159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.489201, 35.867241, 36.947639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654692, 35.544769, 37.116829>,  <28.753986, 35.351288, 37.218342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654692, 35.544769, 37.116829>,  <28.489201, 35.867241, 36.947639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654692, 35.544769, 37.116829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035581, -0.478568, -0.877329,
		0.909706, 0.347924, -0.226681,
		0.413726, -0.806177, 0.422976,
		28.778811, 35.302917, 37.243721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011835, 35.638721, 36.506924>,  <28.489201, 35.867241, 36.947639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011835, 35.638721, 36.506924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938875, 35.320007, 36.737354>,  <28.895100, 35.128780, 36.875614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938875, 35.320007, 36.737354>,  <29.011835, 35.638721, 36.506924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938875, 35.320007, 36.737354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062634, -0.575300, -0.815541,
		0.981227, -0.184837, 0.055029,
		-0.182400, -0.796784, 0.576077,
		28.884155, 35.080971, 36.910179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300673, 35.136318, 36.117798>,  <29.011835, 35.638721, 36.506924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300673, 35.136318, 36.117798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.091602, 34.920559, 36.381874>,  <28.966160, 34.791103, 36.540321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.091602, 34.920559, 36.381874>,  <29.300673, 35.136318, 36.117798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.091602, 34.920559, 36.381874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159153, -0.699043, -0.697144,
		0.837544, -0.469452, 0.279526,
		-0.522676, -0.539401, 0.660194,
		28.934799, 34.758739, 36.579933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571529, 34.455925, 36.212357>,  <29.300673, 35.136318, 36.117798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.571529, 34.455925, 36.212357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.183435, 34.419846, 36.302250>,  <28.950579, 34.398197, 36.356186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.183435, 34.419846, 36.302250>,  <29.571529, 34.455925, 36.212357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183435, 34.419846, 36.302250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111962, -0.655809, -0.746578,
		0.214724, -0.749519, 0.626191,
		-0.970236, -0.090198, 0.224736,
		28.892365, 34.392788, 36.369671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485666, 33.741142, 36.105568>,  <29.571529, 34.455925, 36.212357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485666, 33.741142, 36.105568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121193, 33.905704, 36.096668>,  <28.902510, 34.004440, 36.091328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121193, 33.905704, 36.096668>,  <29.485666, 33.741142, 36.105568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121193, 33.905704, 36.096668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260707, -0.617551, -0.742066,
		-0.319030, -0.670356, 0.669957,
		-0.911182, 0.411404, -0.022251,
		28.847839, 34.029125, 36.089993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137770, 33.541641, 35.788010>,  <29.485666, 33.741142, 36.105568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137770, 33.541641, 35.788010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.009876, 33.838696, 35.552631>,  <29.933140, 34.016926, 35.411404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.009876, 33.838696, 35.552631>,  <30.137770, 33.541641, 35.788010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009876, 33.838696, 35.552631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796802, -0.125317, -0.591102,
		-0.512715, -0.657869, -0.551664,
		-0.319734, 0.742634, -0.588443,
		29.913956, 34.061485, 35.376099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511068, 33.646229, 35.218742>,  <30.137770, 33.541641, 35.788010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511068, 33.646229, 35.218742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.316368, 33.977478, 35.107540>,  <30.199549, 34.176228, 35.040817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.316368, 33.977478, 35.107540>,  <30.511068, 33.646229, 35.218742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316368, 33.977478, 35.107540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760228, 0.244828, -0.601758,
		-0.430265, -0.504255, -0.748732,
		-0.486750, 0.828122, -0.278008,
		30.170343, 34.225914, 35.024139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621525, 34.290646, 35.191860>,  <30.511068, 33.646229, 35.218742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621525, 34.290646, 35.191860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805502, 33.948322, 35.097157>,  <30.915888, 33.742928, 35.040333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805502, 33.948322, 35.097157>,  <30.621525, 34.290646, 35.191860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.805502, 33.948322, 35.097157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885345, 0.462398, 0.048506,
		0.067965, -0.231922, 0.970357,
		0.459940, -0.855804, -0.236758,
		30.943483, 33.691582, 35.026131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051960, 34.114262, 35.577644>,  <30.621525, 34.290646, 35.191860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051960, 34.114262, 35.577644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220102, 33.911560, 35.276577>,  <31.320988, 33.789940, 35.095936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220102, 33.911560, 35.276577>,  <31.051960, 34.114262, 35.577644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220102, 33.911560, 35.276577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896727, 0.358633, 0.259352,
		0.138502, -0.783954, 0.605173,
		0.420355, -0.506754, -0.752664,
		31.346209, 33.759533, 35.050777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650003, 33.656487, 35.903316>,  <31.051960, 34.114262, 35.577644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650003, 33.656487, 35.903316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674238, 33.724232, 35.509842>,  <31.688778, 33.764877, 35.273758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674238, 33.724232, 35.509842>,  <31.650003, 33.656487, 35.903316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674238, 33.724232, 35.509842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994572, 0.073273, 0.073872,
		0.084589, -0.982826, -0.164006,
		0.060586, 0.169364, -0.983690,
		31.692413, 33.775040, 35.214737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137020, 33.195786, 35.584827>,  <31.650003, 33.656487, 35.903316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137020, 33.195786, 35.584827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115017, 33.553291, 35.406765>,  <32.101814, 33.767796, 35.299927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115017, 33.553291, 35.406765>,  <32.137020, 33.195786, 35.584827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115017, 33.553291, 35.406765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984094, 0.123951, 0.127261,
		0.168919, -0.431074, -0.886364,
		-0.055007, 0.893762, -0.445155,
		32.098515, 33.821419, 35.273220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637695, 33.211376, 35.102119>,  <32.137020, 33.195786, 35.584827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637695, 33.211376, 35.102119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596149, 33.597488, 35.197987>,  <32.571220, 33.829155, 35.255505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596149, 33.597488, 35.197987>,  <32.637695, 33.211376, 35.102119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596149, 33.597488, 35.197987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978905, 0.056590, 0.196321,
		0.175942, 0.255001, -0.950799,
		-0.103868, 0.965283, 0.239665,
		32.564987, 33.887074, 35.269886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205856, 33.592236, 34.719303>,  <32.637695, 33.211376, 35.102119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205856, 33.592236, 34.719303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102295, 33.738167, 35.077045>,  <33.040157, 33.825726, 35.291691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102295, 33.738167, 35.077045>,  <33.205856, 33.592236, 34.719303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102295, 33.738167, 35.077045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965251, 0.063707, 0.253440,
		0.035485, 0.928893, -0.368644,
		-0.258904, 0.364827, 0.894354,
		33.024624, 33.847614, 35.345352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760433, 33.458401, 35.319477>,  <33.205856, 33.592236, 34.719303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760433, 33.458401, 35.319477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090023, 33.237896, 35.371895>,  <34.287777, 33.105595, 35.403343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090023, 33.237896, 35.371895>,  <33.760433, 33.458401, 35.319477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090023, 33.237896, 35.371895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142167, 0.425002, 0.893958,
		-0.548496, -0.717973, 0.428564,
		0.823979, -0.551260, 0.131040,
		34.337215, 33.072517, 35.411205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784264, 33.134285, 35.978889>,  <33.760433, 33.458401, 35.319477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784264, 33.134285, 35.978889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171886, 33.120739, 35.881092>,  <34.404461, 33.112610, 35.822414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171886, 33.120739, 35.881092>,  <33.784264, 33.134285, 35.978889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171886, 33.120739, 35.881092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245353, 0.240269, 0.939187,
		0.026935, -0.970116, 0.241144,
		0.969060, -0.033868, -0.244492,
		34.462605, 33.110580, 35.807743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080784, 32.768017, 36.477474>,  <33.784264, 33.134285, 35.978889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080784, 32.768017, 36.477474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382935, 32.982769, 36.327183>,  <34.564224, 33.111618, 36.237007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382935, 32.982769, 36.327183>,  <34.080784, 32.768017, 36.477474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382935, 32.982769, 36.327183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386553, 0.097924, 0.917054,
		0.529139, -0.837957, -0.133563,
		0.755373, 0.536878, -0.375730,
		34.609547, 33.143833, 36.214462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600689, 32.656189, 36.906376>,  <34.080784, 32.768017, 36.477474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600689, 32.656189, 36.906376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712582, 32.988495, 36.713886>,  <34.779716, 33.187878, 36.598392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712582, 32.988495, 36.713886>,  <34.600689, 32.656189, 36.906376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712582, 32.988495, 36.713886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483155, 0.311325, 0.818315,
		0.829645, -0.461417, -0.314300,
		0.279735, 0.830766, -0.481225,
		34.796501, 33.237724, 36.569519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344341, 32.707840, 36.913265>,  <34.600689, 32.656189, 36.906376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344341, 32.707840, 36.913265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242851, 33.086346, 36.833057>,  <35.181957, 33.313450, 36.784935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242851, 33.086346, 36.833057>,  <35.344341, 32.707840, 36.913265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242851, 33.086346, 36.833057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609676, 0.317387, 0.726334,
		0.750946, 0.062037, -0.657443,
		-0.253723, 0.946265, -0.200518,
		35.166733, 33.370224, 36.772903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920925, 33.010292, 37.109573>,  <35.344341, 32.707840, 36.913265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920925, 33.010292, 37.109573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650486, 33.304310, 37.089153>,  <35.488224, 33.480721, 37.076900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650486, 33.304310, 37.089153>,  <35.920925, 33.010292, 37.109573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650486, 33.304310, 37.089153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439085, 0.457572, 0.773196,
		0.591691, 0.500340, -0.632109,
		-0.676096, 0.735043, -0.051050,
		35.447659, 33.524822, 37.073837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281322, 33.665092, 37.343410>,  <35.920925, 33.010292, 37.109573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281322, 33.665092, 37.343410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893311, 33.740402, 37.404858>,  <35.660503, 33.785587, 37.441727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893311, 33.740402, 37.404858>,  <36.281322, 33.665092, 37.343410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893311, 33.740402, 37.404858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219186, 0.405092, 0.887614,
		0.104885, 0.894681, -0.434218,
		-0.970029, 0.188272, 0.153614,
		35.602303, 33.796883, 37.450943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175232, 34.299458, 37.786491>,  <36.281322, 33.665092, 37.343410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175232, 34.299458, 37.786491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822159, 34.115669, 37.826008>,  <35.610317, 34.005394, 37.849716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822159, 34.115669, 37.826008>,  <36.175232, 34.299458, 37.786491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822159, 34.115669, 37.826008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014978, 0.182589, 0.983075,
		-0.469735, 0.869221, -0.154285,
		-0.882680, -0.459474, 0.098788,
		35.557354, 33.977825, 37.855644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703331, 34.851772, 38.157898>,  <36.175232, 34.299458, 37.786491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703331, 34.851772, 38.157898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568085, 34.476978, 38.193100>,  <35.486938, 34.252102, 38.214222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568085, 34.476978, 38.193100>,  <35.703331, 34.851772, 38.157898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568085, 34.476978, 38.193100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234349, 0.174391, 0.956383,
		-0.911461, 0.302740, -0.278544,
		-0.338111, -0.936982, 0.088003,
		35.466652, 34.195885, 38.219501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851070, 34.760441, 38.286175>,  <35.703331, 34.851772, 38.157898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851070, 34.760441, 38.286175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042316, 34.443054, 38.436806>,  <35.157063, 34.252621, 38.527184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042316, 34.443054, 38.436806>,  <34.851070, 34.760441, 38.286175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042316, 34.443054, 38.436806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422835, 0.167855, 0.890525,
		-0.769816, -0.585003, -0.255254,
		0.478114, -0.793471, 0.376577,
		35.185749, 34.205013, 38.549778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419628, 34.647430, 38.808720>,  <34.851070, 34.760441, 38.286175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419628, 34.647430, 38.808720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684155, 34.361874, 38.900826>,  <34.842873, 34.190540, 38.956089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684155, 34.361874, 38.900826>,  <34.419628, 34.647430, 38.808720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684155, 34.361874, 38.900826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261955, 0.067853, 0.962692,
		-0.702879, -0.696964, -0.142135,
		0.661318, -0.713888, 0.230266,
		34.882549, 34.147709, 38.969906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062428, 34.172516, 39.183441>,  <34.419628, 34.647430, 38.808720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062428, 34.172516, 39.183441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446011, 34.110538, 39.278427>,  <34.676163, 34.073353, 39.335419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446011, 34.110538, 39.278427>,  <34.062428, 34.172516, 39.183441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446011, 34.110538, 39.278427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235610, 0.030481, 0.971370,
		-0.157748, -0.987453, -0.007277,
		0.958959, -0.154947, 0.237462,
		34.733700, 34.064056, 39.349667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080738, 33.462570, 39.556503>,  <34.062428, 34.172516, 39.183441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080738, 33.462570, 39.556503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392235, 33.700085, 39.637482>,  <34.579132, 33.842594, 39.686069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392235, 33.700085, 39.637482>,  <34.080738, 33.462570, 39.556503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392235, 33.700085, 39.637482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255434, 0.005366, 0.966811,
		0.572990, -0.804607, 0.155851,
		0.778740, 0.593783, 0.202449,
		34.625858, 33.878220, 39.698215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522144, 33.141979, 40.085335>,  <34.080738, 33.462570, 39.556503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522144, 33.141979, 40.085335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584019, 33.536858, 40.100880>,  <34.621143, 33.773785, 40.110207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584019, 33.536858, 40.100880>,  <34.522144, 33.141979, 40.085335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584019, 33.536858, 40.100880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278613, 0.005852, 0.960386,
		0.947864, -0.159389, 0.275952,
		0.154690, 0.987198, 0.038861,
		34.630424, 33.833015, 40.112537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615143, 33.240791, 40.774712>,  <34.522144, 33.141979, 40.085335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615143, 33.240791, 40.774712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565239, 33.623474, 40.669529>,  <34.535297, 33.853085, 40.606419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565239, 33.623474, 40.669529>,  <34.615143, 33.240791, 40.774712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565239, 33.623474, 40.669529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389992, 0.196414, 0.899626,
		0.912327, 0.214789, 0.348604,
		-0.124759, 0.956706, -0.262960,
		34.527813, 33.910484, 40.590641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921707, 33.679298, 41.263611>,  <34.615143, 33.240791, 40.774712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921707, 33.679298, 41.263611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662209, 33.925945, 41.085217>,  <34.506508, 34.073933, 40.978180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662209, 33.925945, 41.085217>,  <34.921707, 33.679298, 41.263611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662209, 33.925945, 41.085217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437137, 0.177761, 0.881653,
		0.622923, 0.766930, 0.154224,
		-0.648751, 0.616619, -0.445985,
		34.467583, 34.110931, 40.951420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809158, 34.164703, 41.744106>,  <34.921707, 33.679298, 41.263611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809158, 34.164703, 41.744106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498562, 34.186043, 41.492962>,  <34.312202, 34.198849, 41.342274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498562, 34.186043, 41.492962>,  <34.809158, 34.164703, 41.744106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498562, 34.186043, 41.492962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626713, 0.038180, 0.778314,
		0.065496, 0.997846, 0.003790,
		-0.776492, 0.053352, -0.627864,
		34.265614, 34.202049, 41.304604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379887, 34.780212, 41.921833>,  <34.809158, 34.164703, 41.744106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379887, 34.780212, 41.921833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168922, 34.487453, 41.749249>,  <34.042343, 34.311798, 41.645699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168922, 34.487453, 41.749249>,  <34.379887, 34.780212, 41.921833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168922, 34.487453, 41.749249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656562, 0.028795, 0.753722,
		-0.539222, 0.680808, -0.495722,
		-0.527415, -0.731895, -0.431466,
		34.010696, 34.267883, 41.619808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714848, 34.906349, 42.077152>,  <34.379887, 34.780212, 41.921833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714848, 34.906349, 42.077152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654415, 34.552265, 41.901157>,  <33.618156, 34.339817, 41.795563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654415, 34.552265, 41.901157>,  <33.714848, 34.906349, 42.077152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654415, 34.552265, 41.901157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787035, -0.161599, 0.595367,
		-0.598123, 0.436229, -0.672274,
		-0.151077, -0.885206, -0.439984,
		33.609093, 34.286705, 41.769161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999523, 34.967270, 41.813095>,  <33.714848, 34.906349, 42.077152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999523, 34.967270, 41.813095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116039, 34.588783, 41.869404>,  <33.185951, 34.361691, 41.903187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116039, 34.588783, 41.869404>,  <32.999523, 34.967270, 41.813095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116039, 34.588783, 41.869404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709877, -0.115164, 0.694847,
		-0.641267, -0.302331, -0.705247,
		0.291293, -0.946221, 0.140767,
		33.203426, 34.304916, 41.911633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384090, 34.578781, 41.727539>,  <32.999523, 34.967270, 41.813095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384090, 34.578781, 41.727539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622917, 34.347382, 41.949837>,  <32.766212, 34.208542, 42.083218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622917, 34.347382, 41.949837>,  <32.384090, 34.578781, 41.727539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622917, 34.347382, 41.949837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722919, -0.087732, 0.685340,
		-0.347712, -0.810951, -0.470590,
		0.597063, -0.578499, 0.555747,
		32.802036, 34.173832, 42.116562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890106, 34.398628, 42.182499>,  <32.384090, 34.578781, 41.727539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890106, 34.398628, 42.182499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218456, 34.218353, 42.322811>,  <32.415466, 34.110188, 42.406998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218456, 34.218353, 42.322811>,  <31.890106, 34.398628, 42.182499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218456, 34.218353, 42.322811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446966, -0.124636, 0.885826,
		-0.355510, -0.883939, -0.303752,
		0.820874, -0.450687, 0.350782,
		32.464718, 34.083149, 42.428047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599936, 33.791203, 42.546562>,  <31.890106, 34.398628, 42.182499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599936, 33.791203, 42.546562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951014, 33.905918, 42.700134>,  <32.161659, 33.974747, 42.792278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951014, 33.905918, 42.700134>,  <31.599936, 33.791203, 42.546562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951014, 33.905918, 42.700134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410253, 0.035597, 0.911277,
		0.247679, -0.957332, 0.148900,
		0.877695, 0.286791, 0.383932,
		32.214321, 33.991955, 42.815315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587881, 33.396954, 43.205624>,  <31.599936, 33.791203, 42.546562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587881, 33.396954, 43.205624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844837, 33.702469, 43.230812>,  <31.999012, 33.885777, 43.245926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844837, 33.702469, 43.230812>,  <31.587881, 33.396954, 43.205624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844837, 33.702469, 43.230812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270428, 0.149033, 0.951135,
		0.717079, -0.628030, 0.302286,
		0.642392, 0.763785, 0.062968,
		32.037556, 33.931606, 43.249702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920248, 33.252708, 43.804317>,  <31.587881, 33.396954, 43.205624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920248, 33.252708, 43.804317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976004, 33.647964, 43.778561>,  <32.009457, 33.885120, 43.763107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976004, 33.647964, 43.778561>,  <31.920248, 33.252708, 43.804317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976004, 33.647964, 43.778561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237136, 0.096441, 0.966678,
		0.961424, -0.119477, 0.247767,
		0.139390, 0.988142, -0.064388,
		32.017822, 33.944408, 43.759243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225704, 33.385723, 44.316601>,  <31.920248, 33.252708, 43.804317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225704, 33.385723, 44.316601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110870, 33.755802, 44.217331>,  <32.041969, 33.977848, 44.157768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110870, 33.755802, 44.217331>,  <32.225704, 33.385723, 44.316601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110870, 33.755802, 44.217331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196334, 0.196752, 0.960595,
		0.937570, 0.324494, 0.125164,
		-0.287081, 0.925198, -0.248177,
		32.024746, 34.033363, 44.142879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683338, 33.834698, 44.711658>,  <32.225704, 33.385723, 44.316601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683338, 33.834698, 44.711658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365417, 34.054943, 44.609592>,  <32.174664, 34.187092, 44.548351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365417, 34.054943, 44.609592>,  <32.683338, 33.834698, 44.711658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365417, 34.054943, 44.609592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114038, 0.277466, 0.953943,
		0.596055, 0.787297, -0.157740,
		-0.794804, 0.550614, -0.255167,
		32.126976, 34.220127, 44.533043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740978, 34.350975, 45.137333>,  <32.683338, 33.834698, 44.711658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740978, 34.350975, 45.137333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364628, 34.376987, 45.004353>,  <32.138817, 34.392593, 44.924564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364628, 34.376987, 45.004353>,  <32.740978, 34.350975, 45.137333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364628, 34.376987, 45.004353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234585, 0.582918, 0.777930,
		0.244380, 0.809924, -0.533199,
		-0.940876, 0.065030, -0.332450,
		32.082363, 34.396496, 44.904617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526127, 35.052570, 45.214169>,  <32.740978, 34.350975, 45.137333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526127, 35.052570, 45.214169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204323, 34.815929, 45.235260>,  <32.011242, 34.673946, 45.247913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204323, 34.815929, 45.235260>,  <32.526127, 35.052570, 45.214169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204323, 34.815929, 45.235260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275916, 0.450868, 0.848875,
		-0.525966, 0.668377, -0.525958,
		-0.804506, -0.591599, 0.052725,
		31.962971, 34.638451, 45.251076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137516, 35.355747, 45.722897>,  <32.526127, 35.052570, 45.214169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137516, 35.355747, 45.722897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954502, 35.000168, 45.714581>,  <31.844694, 34.786819, 45.709591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954502, 35.000168, 45.714581>,  <32.137516, 35.355747, 45.722897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954502, 35.000168, 45.714581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200127, 0.080168, 0.976485,
		-0.866377, 0.450938, -0.214582,
		-0.457537, -0.888948, -0.020789,
		31.817242, 34.733482, 45.708344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591101, 35.464722, 46.197201>,  <32.137516, 35.355747, 45.722897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591101, 35.464722, 46.197201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630577, 35.069557, 46.149368>,  <31.654263, 34.832458, 46.120670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630577, 35.069557, 46.149368>,  <31.591101, 35.464722, 46.197201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630577, 35.069557, 46.149368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280647, -0.142921, 0.949111,
		-0.954723, -0.060109, -0.291358,
		0.098692, -0.987907, -0.119581,
		31.660185, 34.773186, 46.113495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053881, 35.145203, 46.484833>,  <31.591101, 35.464722, 46.197201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053881, 35.145203, 46.484833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304548, 34.833683, 46.473801>,  <31.454948, 34.646770, 46.467182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304548, 34.833683, 46.473801>,  <31.053881, 35.145203, 46.484833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304548, 34.833683, 46.473801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368323, -0.327197, 0.870218,
		-0.686748, -0.535180, -0.491893,
		0.626670, -0.778796, -0.027583,
		31.492550, 34.600044, 46.465527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.690674, 34.542034, 46.608414>,  <31.053881, 35.145203, 46.484833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.690674, 34.542034, 46.608414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.068111, 34.434818, 46.686169>,  <31.294575, 34.370487, 46.732822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.068111, 34.434818, 46.686169>,  <30.690674, 34.542034, 46.608414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.068111, 34.434818, 46.686169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289880, -0.385055, 0.876186,
		-0.160001, -0.883113, -0.441034,
		0.943594, -0.268038, 0.194387,
		31.351189, 34.354408, 46.744484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594927, 33.777145, 46.709572>,  <30.690674, 34.542034, 46.608414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.594927, 33.777145, 46.709572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921099, 33.935120, 46.878853>,  <31.116802, 34.029903, 46.980423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921099, 33.935120, 46.878853>,  <30.594927, 33.777145, 46.709572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921099, 33.935120, 46.878853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089986, -0.635732, 0.766647,
		0.571822, -0.663228, -0.482855,
		0.815428, 0.394936, 0.423206,
		31.165728, 34.053600, 47.005814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956020, 33.284729, 46.981823>,  <30.594927, 33.777145, 46.709572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956020, 33.284729, 46.981823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076660, 33.587570, 47.213631>,  <31.149044, 33.769276, 47.352715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076660, 33.587570, 47.213631>,  <30.956020, 33.284729, 46.981823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076660, 33.587570, 47.213631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195115, -0.545944, 0.814786,
		0.933257, -0.358811, -0.016935,
		0.301599, 0.757100, 0.579515,
		31.167139, 33.814701, 47.387486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278505, 32.940163, 47.637985>,  <30.956020, 33.284729, 46.981823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278505, 32.940163, 47.637985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261633, 33.326855, 47.738903>,  <31.251509, 33.558868, 47.799454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261633, 33.326855, 47.738903>,  <31.278505, 32.940163, 47.637985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261633, 33.326855, 47.738903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220079, -0.255308, 0.941479,
		0.974569, -0.015811, 0.223527,
		-0.042183, 0.966730, 0.252295,
		31.248978, 33.616875, 47.814590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640928, 32.941921, 48.354267>,  <31.278505, 32.940163, 47.637985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640928, 32.941921, 48.354267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426754, 33.277531, 48.315578>,  <31.298250, 33.478897, 48.292366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426754, 33.277531, 48.315578>,  <31.640928, 32.941921, 48.354267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426754, 33.277531, 48.315578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276744, -0.066090, 0.958668,
		0.797948, 0.540074, 0.267580,
		-0.535436, 0.839019, -0.096726,
		31.266123, 33.529236, 48.286560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867933, 33.527386, 48.941376>,  <31.640928, 32.941921, 48.354267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867933, 33.527386, 48.941376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494133, 33.612892, 48.827522>,  <31.269854, 33.664196, 48.759209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494133, 33.612892, 48.827522>,  <31.867933, 33.527386, 48.941376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494133, 33.612892, 48.827522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343105, -0.327930, 0.880193,
		0.094816, 0.920199, 0.379795,
		-0.934499, 0.213766, -0.284632,
		31.213783, 33.677021, 48.742134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620136, 33.914253, 49.445778>,  <31.867933, 33.527386, 48.941376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620136, 33.914253, 49.445778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273741, 33.822540, 49.268017>,  <31.065905, 33.767513, 49.161358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273741, 33.822540, 49.268017>,  <31.620136, 33.914253, 49.445778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273741, 33.822540, 49.268017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411794, -0.177230, 0.893876,
		-0.283712, 0.957089, 0.059061,
		-0.865987, -0.229283, -0.444406,
		31.013945, 33.753754, 49.134693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167505, 34.225735, 49.862961>,  <31.620136, 33.914253, 49.445778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167505, 34.225735, 49.862961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.975513, 33.934422, 49.667320>,  <30.860319, 33.759632, 49.549934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.975513, 33.934422, 49.667320>,  <31.167505, 34.225735, 49.862961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975513, 33.934422, 49.667320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491767, -0.238335, 0.837473,
		-0.726488, 0.642495, -0.243750,
		-0.479978, -0.728283, -0.489106,
		30.831520, 33.715935, 49.520588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349560, 34.373901, 50.037579>,  <31.167505, 34.225735, 49.862961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349560, 34.373901, 50.037579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.396334, 33.991611, 49.929565>,  <30.424398, 33.762238, 49.864758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.396334, 33.991611, 49.929565>,  <30.349560, 34.373901, 50.037579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396334, 33.991611, 49.929565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544518, -0.289085, 0.787357,
		-0.830558, 0.054971, -0.554212,
		0.116933, -0.955724, -0.270035,
		30.431414, 33.704895, 49.848557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795486, 33.940273, 49.762901>,  <30.349560, 34.373901, 50.037579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795486, 33.940273, 49.762901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.059830, 33.714264, 49.960491>,  <30.218435, 33.578659, 50.079044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.059830, 33.714264, 49.960491>,  <29.795486, 33.940273, 49.762901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.059830, 33.714264, 49.960491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672045, -0.152510, 0.724635,
		-0.334100, -0.810856, -0.480510,
		0.660857, -0.565025, 0.493979,
		30.258087, 33.544758, 50.108685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478947, 33.226688, 49.763699>,  <29.795486, 33.940273, 49.762901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478947, 33.226688, 49.763699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747787, 33.291821, 50.052631>,  <29.909092, 33.330898, 50.225990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747787, 33.291821, 50.052631>,  <29.478947, 33.226688, 49.763699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747787, 33.291821, 50.052631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718995, -0.089646, 0.689209,
		0.176980, -0.982573, 0.056824,
		0.672104, 0.162832, 0.722331,
		29.949419, 33.340672, 50.269329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307564, 32.712555, 50.293175>,  <29.478947, 33.226688, 49.763699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307564, 32.712555, 50.293175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.522266, 33.007313, 50.457558>,  <29.651087, 33.184166, 50.556187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.522266, 33.007313, 50.457558>,  <29.307564, 32.712555, 50.293175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.522266, 33.007313, 50.457558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546136, -0.067832, 0.834946,
		0.643141, -0.672598, 0.366035,
		0.536754, 0.736893, 0.410956,
		29.683292, 33.228382, 50.580845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536207, 32.582443, 51.072784>,  <29.307564, 32.712555, 50.293175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536207, 32.582443, 51.072784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435898, 32.961201, 50.992287>,  <29.375711, 33.188457, 50.943989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435898, 32.961201, 50.992287>,  <29.536207, 32.582443, 51.072784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435898, 32.961201, 50.992287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587814, 0.016229, 0.808833,
		0.769147, 0.321130, 0.552529,
		-0.250773, 0.946896, -0.201247,
		29.360666, 33.245270, 50.931911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.589048, 32.842461, 51.783669>,  <29.536207, 32.582443, 51.072784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.589048, 32.842461, 51.783669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.349518, 33.060608, 51.549068>,  <29.205799, 33.191494, 51.408310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.349518, 33.060608, 51.549068>,  <29.589048, 32.842461, 51.783669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349518, 33.060608, 51.549068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649757, 0.097302, 0.753889,
		0.468212, 0.832532, 0.296088,
		-0.598827, 0.545365, -0.586501,
		29.169870, 33.224216, 51.373119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636135, 32.507671, 52.563797>,  <29.589048, 32.842461, 51.783669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636135, 32.507671, 52.563797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713001, 32.116467, 52.596218>,  <29.759121, 31.881744, 52.615669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713001, 32.116467, 52.596218>,  <29.636135, 32.507671, 52.563797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713001, 32.116467, 52.596218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567095, -0.178072, -0.804173,
		0.800922, 0.108568, -0.588844,
		0.192164, -0.978010, 0.081054,
		29.770651, 31.823063, 52.620533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.013308, 32.241356, 51.957386>,  <29.636135, 32.507671, 52.563797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.013308, 32.241356, 51.957386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765768, 32.003300, 52.162457>,  <29.617245, 31.860466, 52.285500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765768, 32.003300, 52.162457>,  <30.013308, 32.241356, 51.957386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765768, 32.003300, 52.162457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692113, 0.104449, -0.714192,
		0.371495, -0.796806, -0.476541,
		-0.618847, -0.595139, 0.512677,
		29.580114, 31.824759, 52.316261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764915, 32.050194, 52.056934>,  <30.013308, 32.241356, 51.957386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764915, 32.050194, 52.056934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733652, 31.659788, 52.138214>,  <30.714893, 31.425545, 52.186981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733652, 31.659788, 52.138214>,  <30.764915, 32.050194, 52.056934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733652, 31.659788, 52.138214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685329, -0.200628, -0.700052,
		0.724027, 0.084544, 0.684570,
		-0.078159, -0.976013, 0.203200,
		30.710205, 31.366983, 52.199173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.461006, 31.720898, 52.241074>,  <30.764915, 32.050194, 52.056934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.461006, 31.720898, 52.241074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206205, 31.476877, 52.052578>,  <31.053326, 31.330465, 51.939480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206205, 31.476877, 52.052578>,  <31.461006, 31.720898, 52.241074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206205, 31.476877, 52.052578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621312, -0.044460, -0.782301,
		0.456292, -0.791113, 0.407353,
		-0.636999, -0.610051, -0.471242,
		31.015106, 31.293861, 51.911205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796698, 31.092274, 52.022850>,  <31.461006, 31.720898, 52.241074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796698, 31.092274, 52.022850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479542, 31.159035, 51.788425>,  <31.289248, 31.199091, 51.647770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479542, 31.159035, 51.788425>,  <31.796698, 31.092274, 52.022850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479542, 31.159035, 51.788425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582768, -0.073352, -0.809321,
		-0.178067, -0.983241, -0.039105,
		-0.792890, 0.166902, -0.586063,
		31.241674, 31.209105, 51.612606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852686, 30.810543, 51.357521>,  <31.796698, 31.092274, 52.022850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852686, 30.810543, 51.357521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527798, 31.008364, 51.233772>,  <31.332865, 31.127056, 51.159523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527798, 31.008364, 51.233772>,  <31.852686, 30.810543, 51.357521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527798, 31.008364, 51.233772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362031, 0.011494, -0.932095,
		-0.457415, -0.869071, -0.188379,
		-0.812222, 0.494554, -0.309373,
		31.284130, 31.156731, 51.140961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643145, 30.420078, 50.841103>,  <31.852686, 30.810543, 51.357521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643145, 30.420078, 50.841103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529369, 30.798452, 50.778748>,  <31.461103, 31.025476, 50.741333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529369, 30.798452, 50.778748>,  <31.643145, 30.420078, 50.841103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529369, 30.798452, 50.778748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413954, -0.025485, -0.909941,
		-0.864717, -0.323355, -0.384325,
		-0.284440, 0.945934, -0.155891,
		31.444038, 31.082233, 50.731979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.204763, 30.409964, 50.233551>,  <31.643145, 30.420078, 50.841103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.204763, 30.409964, 50.233551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331738, 30.787066, 50.274441>,  <31.407923, 31.013327, 50.298973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331738, 30.787066, 50.274441>,  <31.204763, 30.409964, 50.233551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331738, 30.787066, 50.274441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385077, -0.029641, -0.922408,
		-0.866574, 0.332169, -0.372442,
		0.317435, 0.942754, 0.102225,
		31.426968, 31.069891, 50.305107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145403, 30.714464, 49.610878>,  <31.204763, 30.409964, 50.233551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145403, 30.714464, 49.610878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402107, 30.965248, 49.787540>,  <31.556129, 31.115719, 49.893539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402107, 30.965248, 49.787540>,  <31.145403, 30.714464, 49.610878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402107, 30.965248, 49.787540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518776, 0.069233, -0.852102,
		-0.564813, 0.775967, -0.280822,
		0.641761, 0.626962, 0.441657,
		31.594635, 31.153337, 49.920036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140064, 31.360079, 49.218716>,  <31.145403, 30.714464, 49.610878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140064, 31.360079, 49.218716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471827, 31.338196, 49.441097>,  <31.670885, 31.325066, 49.574528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471827, 31.338196, 49.441097>,  <31.140064, 31.360079, 49.218716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471827, 31.338196, 49.441097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536962, 0.352636, -0.766368,
		-0.154125, 0.934160, 0.321854,
		0.829408, -0.054707, 0.555959,
		31.720650, 31.321783, 49.607883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533476, 31.908865, 48.987675>,  <31.140064, 31.360079, 49.218716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533476, 31.908865, 48.987675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796036, 31.660757, 49.159443>,  <31.953571, 31.511892, 49.262505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796036, 31.660757, 49.159443>,  <31.533476, 31.908865, 48.987675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796036, 31.660757, 49.159443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676486, 0.231985, -0.698964,
		0.333926, 0.749298, 0.571879,
		0.656399, -0.620270, 0.429423,
		31.992956, 31.474676, 49.288269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274521, 32.193111, 48.971508>,  <31.533476, 31.908865, 48.987675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274521, 32.193111, 48.971508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328152, 31.799936, 49.021889>,  <32.360329, 31.564032, 49.052116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328152, 31.799936, 49.021889>,  <32.274521, 32.193111, 48.971508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328152, 31.799936, 49.021889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720612, 0.009463, -0.693274,
		0.680251, 0.183713, 0.709583,
		0.134079, -0.982934, 0.125949,
		32.368374, 31.505056, 49.059673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941952, 32.212620, 49.059662>,  <32.274521, 32.193111, 48.971508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941952, 32.212620, 49.059662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871300, 31.834002, 48.951694>,  <32.828907, 31.606831, 48.886913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871300, 31.834002, 48.951694>,  <32.941952, 32.212620, 49.059662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871300, 31.834002, 48.951694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749874, 0.048224, -0.659820,
		0.637566, -0.318950, 0.701271,
		-0.176631, -0.946544, -0.269918,
		32.818310, 31.550039, 48.870720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539410, 31.910059, 49.069370>,  <32.941952, 32.212620, 49.059662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539410, 31.910059, 49.069370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316544, 31.663609, 48.846676>,  <33.182823, 31.515738, 48.713058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316544, 31.663609, 48.846676>,  <33.539410, 31.910059, 49.069370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316544, 31.663609, 48.846676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697775, 0.016104, -0.716136,
		0.450197, -0.787482, 0.420946,
		-0.557165, -0.616128, -0.556735,
		33.149395, 31.478771, 48.679657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919239, 31.399467, 48.911098>,  <33.539410, 31.910059, 49.069370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919239, 31.399467, 48.911098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636627, 31.387260, 48.628288>,  <33.467060, 31.379936, 48.458603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636627, 31.387260, 48.628288>,  <33.919239, 31.399467, 48.911098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636627, 31.387260, 48.628288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707517, -0.052302, -0.704758,
		-0.015467, -0.998165, 0.058548,
		-0.706527, -0.030523, -0.707028,
		33.424667, 31.378105, 48.416180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190796, 31.104630, 48.331230>,  <33.919239, 31.399467, 48.911098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190796, 31.104630, 48.331230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856125, 31.222443, 48.146523>,  <33.655323, 31.293131, 48.035698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856125, 31.222443, 48.146523>,  <34.190796, 31.104630, 48.331230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856125, 31.222443, 48.146523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440455, -0.139289, -0.886904,
		-0.325541, -0.945436, -0.013189,
		-0.836673, 0.294533, -0.461766,
		33.605122, 31.310802, 48.007992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029011, 30.619680, 47.760750>,  <34.190796, 31.104630, 48.331230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029011, 30.619680, 47.760750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876148, 30.971495, 47.647350>,  <33.784431, 31.182583, 47.579311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876148, 30.971495, 47.647350>,  <34.029011, 30.619680, 47.760750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876148, 30.971495, 47.647350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578136, -0.011772, -0.815856,
		-0.720913, -0.475684, -0.503993,
		-0.382157, 0.879537, -0.283496,
		33.761501, 31.235355, 47.562302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862179, 30.462521, 47.074219>,  <34.029011, 30.619680, 47.760750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862179, 30.462521, 47.074219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813698, 30.859066, 47.094269>,  <33.784611, 31.096992, 47.106300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813698, 30.859066, 47.094269>,  <33.862179, 30.462521, 47.074219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813698, 30.859066, 47.094269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366397, 0.091615, -0.925938,
		-0.922532, -0.093855, -0.374335,
		-0.121198, 0.991362, 0.050129,
		33.777340, 31.156475, 47.109306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499508, 30.788563, 46.488075>,  <33.862179, 30.462521, 47.074219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499508, 30.788563, 46.488075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726013, 31.077757, 46.646385>,  <33.861916, 31.251274, 46.741371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726013, 31.077757, 46.646385>,  <33.499508, 30.788563, 46.488075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726013, 31.077757, 46.646385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325654, 0.244860, -0.913232,
		-0.757164, 0.646014, -0.096788,
		0.566261, 0.722986, 0.395777,
		33.895893, 31.294653, 46.765118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327927, 31.472382, 46.211185>,  <33.499508, 30.788563, 46.488075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327927, 31.472382, 46.211185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705738, 31.441603, 46.338905>,  <33.932423, 31.423136, 46.415535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705738, 31.441603, 46.338905>,  <33.327927, 31.472382, 46.211185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705738, 31.441603, 46.338905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328260, 0.253024, -0.910068,
		-0.010761, 0.964395, 0.264247,
		0.944526, -0.076948, 0.319295,
		33.989098, 31.418518, 46.434692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623802, 32.130825, 46.212563>,  <33.327927, 31.472382, 46.211185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623802, 32.130825, 46.212563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914803, 31.858448, 46.178970>,  <34.089405, 31.695023, 46.158817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914803, 31.858448, 46.178970>,  <33.623802, 32.130825, 46.212563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914803, 31.858448, 46.178970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107287, 0.233798, -0.966348,
		0.677662, 0.694014, 0.243145,
		0.727506, -0.680943, -0.083977,
		34.133053, 31.654165, 46.153778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245918, 32.419998, 45.890774>,  <33.623802, 32.130825, 46.212563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245918, 32.419998, 45.890774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327190, 32.028923, 45.869450>,  <34.375954, 31.794277, 45.856655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327190, 32.028923, 45.869450>,  <34.245918, 32.419998, 45.890774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327190, 32.028923, 45.869450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256730, 0.105736, -0.960682,
		0.944884, 0.181508, 0.272485,
		0.203183, -0.977688, -0.053310,
		34.388145, 31.735617, 45.853458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831432, 32.357521, 45.435608>,  <34.245918, 32.419998, 45.890774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831432, 32.357521, 45.435608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653000, 32.000053, 45.416145>,  <34.545940, 31.785572, 45.404469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653000, 32.000053, 45.416145>,  <34.831432, 32.357521, 45.435608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653000, 32.000053, 45.416145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247557, -0.070963, -0.966271,
		0.860076, -0.443076, 0.252890,
		-0.446077, -0.893671, -0.048652,
		34.519176, 31.731953, 45.401550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258610, 31.830276, 44.856968>,  <34.831432, 32.357521, 45.435608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258610, 31.830276, 44.856968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905197, 31.655830, 44.925293>,  <34.693150, 31.551163, 44.966286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905197, 31.655830, 44.925293>,  <35.258610, 31.830276, 44.856968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905197, 31.655830, 44.925293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059151, -0.257873, -0.964366,
		0.464622, -0.862151, 0.202042,
		-0.883531, -0.436115, 0.170811,
		34.640137, 31.524996, 44.976536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328175, 31.103018, 44.718693>,  <35.258610, 31.830276, 44.856968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328175, 31.103018, 44.718693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935730, 31.178673, 44.702469>,  <34.700264, 31.224066, 44.692734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935730, 31.178673, 44.702469>,  <35.328175, 31.103018, 44.718693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935730, 31.178673, 44.702469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030299, -0.357331, -0.933486,
		-0.191048, -0.914626, 0.356313,
		-0.981113, 0.189137, -0.040555,
		34.641396, 31.235415, 44.690304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085846, 30.583401, 44.287704>,  <35.328175, 31.103018, 44.718693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085846, 30.583401, 44.287704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783115, 30.844843, 44.286427>,  <34.601475, 31.001709, 44.285660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783115, 30.844843, 44.286427>,  <35.085846, 30.583401, 44.287704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783115, 30.844843, 44.286427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132895, -0.158663, -0.978348,
		-0.639960, -0.740017, 0.206941,
		-0.756829, 0.653605, -0.003193,
		34.556068, 31.040924, 44.285469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543861, 30.246689, 43.878586>,  <35.085846, 30.583401, 44.287704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543861, 30.246689, 43.878586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433956, 30.631279, 43.875195>,  <34.368011, 30.862032, 43.873158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433956, 30.631279, 43.875195>,  <34.543861, 30.246689, 43.878586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433956, 30.631279, 43.875195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063788, -0.027028, -0.997598,
		-0.959393, -0.273565, 0.068757,
		-0.274766, 0.961474, -0.008480,
		34.351524, 30.919722, 43.872650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846016, 30.310207, 43.571915>,  <34.543861, 30.246689, 43.878586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846016, 30.310207, 43.571915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014675, 30.669735, 43.524029>,  <34.115871, 30.885452, 43.495296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014675, 30.669735, 43.524029>,  <33.846016, 30.310207, 43.571915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014675, 30.669735, 43.524029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060420, -0.103886, -0.992752,
		-0.904743, 0.425829, 0.010503,
		0.421651, 0.898820, -0.119718,
		34.141171, 30.939381, 43.488113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453728, 30.595636, 42.941555>,  <33.846016, 30.310207, 43.571915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453728, 30.595636, 42.941555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790916, 30.807745, 42.977791>,  <33.993229, 30.935009, 42.999535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790916, 30.807745, 42.977791>,  <33.453728, 30.595636, 42.941555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790916, 30.807745, 42.977791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077245, 0.047343, -0.995888,
		-0.532378, 0.846506, -0.001052,
		0.842975, 0.530269, 0.090593,
		34.043808, 30.966825, 43.004967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288319, 31.227196, 42.660351>,  <33.453728, 30.595636, 42.941555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288319, 31.227196, 42.660351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683239, 31.166525, 42.641434>,  <33.920189, 31.130121, 42.630081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683239, 31.166525, 42.641434>,  <33.288319, 31.227196, 42.660351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683239, 31.166525, 42.641434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034590, 0.085345, -0.995751,
		0.155071, 0.984739, 0.079014,
		0.987298, -0.151679, -0.047297,
		33.979427, 31.121021, 42.627243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447495, 31.654739, 42.048840>,  <33.288319, 31.227196, 42.660351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447495, 31.654739, 42.048840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778961, 31.438776, 42.107918>,  <33.977840, 31.309198, 42.143364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778961, 31.438776, 42.107918>,  <33.447495, 31.654739, 42.048840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778961, 31.438776, 42.107918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186739, 0.017913, -0.982246,
		0.527677, 0.841533, 0.115666,
		0.828665, -0.539908, 0.147695,
		34.027561, 31.276804, 42.152225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064632, 32.133312, 41.998356>,  <33.447495, 31.654739, 42.048840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064632, 32.133312, 41.998356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221844, 31.773027, 41.924320>,  <34.316170, 31.556858, 41.879898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221844, 31.773027, 41.924320>,  <34.064632, 32.133312, 41.998356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221844, 31.773027, 41.924320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409829, 0.351771, -0.841604,
		0.823147, 0.254919, 0.507392,
		0.393026, -0.900707, -0.185086,
		34.339752, 31.502815, 41.868793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769009, 32.295677, 41.855568>,  <34.064632, 32.133312, 41.998356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769009, 32.295677, 41.855568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689007, 31.925566, 41.726662>,  <34.641006, 31.703499, 41.649319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689007, 31.925566, 41.726662>,  <34.769009, 32.295677, 41.855568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689007, 31.925566, 41.726662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494099, 0.188780, -0.848663,
		0.846087, -0.328971, 0.419421,
		-0.200007, -0.925278, -0.322269,
		34.629005, 31.647982, 41.629982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454124, 31.933725, 41.571194>,  <34.769009, 32.295677, 41.855568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454124, 31.933725, 41.571194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151787, 31.717192, 41.423866>,  <34.970383, 31.587273, 41.335468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151787, 31.717192, 41.423866>,  <35.454124, 31.933725, 41.571194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151787, 31.717192, 41.423866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443696, -0.009799, -0.896124,
		0.481492, -0.840751, 0.247594,
		-0.755843, -0.541333, -0.368320,
		34.925034, 31.554792, 41.313370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706207, 31.314884, 41.217335>,  <35.454124, 31.933725, 41.571194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706207, 31.314884, 41.217335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345470, 31.402098, 41.068127>,  <35.129028, 31.454426, 40.978600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345470, 31.402098, 41.068127>,  <35.706207, 31.314884, 41.217335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345470, 31.402098, 41.068127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372940, -0.043132, -0.926853,
		-0.218174, -0.974988, -0.042415,
		-0.901841, 0.218033, -0.373022,
		35.074917, 31.467508, 40.956219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625847, 30.802753, 40.797745>,  <35.706207, 31.314884, 41.217335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625847, 30.802753, 40.797745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350536, 31.062126, 40.667629>,  <35.185349, 31.217749, 40.589561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350536, 31.062126, 40.667629>,  <35.625847, 30.802753, 40.797745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350536, 31.062126, 40.667629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334001, -0.114802, -0.935555,
		-0.643986, -0.752569, -0.137561,
		-0.688277, 0.648430, -0.325289,
		35.144054, 31.256655, 40.570042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372505, 30.514957, 40.217461>,  <35.625847, 30.802753, 40.797745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372505, 30.514957, 40.217461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252838, 30.890202, 40.147663>,  <35.181038, 31.115349, 40.105785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252838, 30.890202, 40.147663>,  <35.372505, 30.514957, 40.217461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252838, 30.890202, 40.147663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025390, -0.174976, -0.984245,
		-0.953863, -0.298883, 0.028528,
		-0.299166, 0.938111, -0.174492,
		35.163090, 31.171635, 40.095314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866650, 30.453867, 39.685402>,  <35.372505, 30.514957, 40.217461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866650, 30.453867, 39.685402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962448, 30.842138, 39.677189>,  <35.019928, 31.075102, 39.672260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962448, 30.842138, 39.677189>,  <34.866650, 30.453867, 39.685402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962448, 30.842138, 39.677189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065583, -0.004922, -0.997835,
		-0.968680, 0.240324, 0.062481,
		0.239497, 0.970680, -0.020529,
		35.034298, 31.133343, 39.671032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552204, 30.629261, 39.044922>,  <34.866650, 30.453867, 39.685402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552204, 30.629261, 39.044922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817913, 30.921127, 39.109829>,  <34.977337, 31.096247, 39.148773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817913, 30.921127, 39.109829>,  <34.552204, 30.629261, 39.044922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817913, 30.921127, 39.109829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335572, -0.097129, -0.936994,
		-0.667933, 0.676870, -0.309376,
		0.664272, 0.729666, 0.162263,
		35.017193, 31.140028, 39.158508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480881, 31.193035, 38.556240>,  <34.552204, 30.629261, 39.044922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480881, 31.193035, 38.556240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860981, 31.192200, 38.680828>,  <35.089043, 31.191698, 38.755581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860981, 31.192200, 38.680828>,  <34.480881, 31.193035, 38.556240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860981, 31.192200, 38.680828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311376, -0.019384, -0.950089,
		0.008024, 0.999810, -0.017769,
		0.950253, -0.002090, 0.311473,
		35.146057, 31.191572, 38.774269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776451, 31.753199, 38.193241>,  <34.480881, 31.193035, 38.556240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776451, 31.753199, 38.193241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046616, 31.480919, 38.306705>,  <35.208714, 31.317551, 38.374786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046616, 31.480919, 38.306705>,  <34.776451, 31.753199, 38.193241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046616, 31.480919, 38.306705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364885, -0.025789, -0.930695,
		0.640837, 0.732111, 0.230958,
		0.675416, -0.680697, 0.283663,
		35.249241, 31.276711, 38.391804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313404, 32.002121, 37.910515>,  <34.776451, 31.753199, 38.193241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313404, 32.002121, 37.910515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383617, 31.610382, 37.950661>,  <35.425743, 31.375340, 37.974747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383617, 31.610382, 37.950661>,  <35.313404, 32.002121, 37.910515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383617, 31.610382, 37.950661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570020, 0.017983, -0.821434,
		0.802662, 0.201395, 0.561403,
		0.175529, -0.979345, 0.100365,
		35.436275, 31.316578, 37.980770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048672, 31.923729, 37.832527>,  <35.313404, 32.002121, 37.910515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048672, 31.923729, 37.832527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895370, 31.558836, 37.774639>,  <35.803391, 31.339899, 37.739906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895370, 31.558836, 37.774639>,  <36.048672, 31.923729, 37.832527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895370, 31.558836, 37.774639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624705, -0.140606, -0.768098,
		0.680337, -0.384785, 0.623765,
		-0.383257, -0.912234, -0.144718,
		35.780392, 31.285166, 37.731224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477013, 31.211962, 37.957306>,  <36.048672, 31.923729, 37.832527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477013, 31.211962, 37.957306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224533, 31.193506, 37.647606>,  <36.073048, 31.182434, 37.461784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224533, 31.193506, 37.647606>,  <36.477013, 31.211962, 37.957306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224533, 31.193506, 37.647606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774998, 0.002600, -0.631958,
		0.031171, -0.998932, 0.034118,
		-0.631194, -0.046140, -0.774251,
		36.035175, 31.179665, 37.415329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113541, 30.803917, 37.985649>,  <36.477013, 31.211962, 37.957306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113541, 30.803917, 37.985649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037502, 30.473988, 37.772659>,  <36.991879, 30.276030, 37.644863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037502, 30.473988, 37.772659>,  <37.113541, 30.803917, 37.985649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037502, 30.473988, 37.772659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650634, -0.300322, 0.697483,
		-0.735214, 0.479035, -0.479568,
		-0.190094, -0.824822, -0.532478,
		36.980473, 30.226542, 37.612915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849323, 30.799950, 37.981426>,  <37.113541, 30.803917, 37.985649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849323, 30.799950, 37.981426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196690, 30.629263, 38.082432>,  <38.405109, 30.526852, 38.143036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196690, 30.629263, 38.082432>,  <37.849323, 30.799950, 37.981426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196690, 30.629263, 38.082432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082711, 0.377462, 0.922324,
		-0.488884, -0.821849, 0.292501,
		0.868419, -0.426717, 0.252511,
		38.457214, 30.501247, 38.158184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809673, 30.247486, 38.486744>,  <37.849323, 30.799950, 37.981426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809673, 30.247486, 38.486744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152912, 30.450163, 38.520050>,  <38.358856, 30.571770, 38.540035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152912, 30.450163, 38.520050>,  <37.809673, 30.247486, 38.486744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152912, 30.450163, 38.520050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182083, 0.148625, 0.971986,
		0.480123, -0.849219, 0.219794,
		0.858096, 0.506693, 0.083270,
		38.410339, 30.602171, 38.545033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192131, 29.851524, 38.971394>,  <37.809673, 30.247486, 38.486744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192131, 29.851524, 38.971394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308624, 30.234037, 38.960770>,  <38.378521, 30.463545, 38.954395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308624, 30.234037, 38.960770>,  <38.192131, 29.851524, 38.971394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308624, 30.234037, 38.960770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169097, 0.078779, 0.982446,
		0.941590, -0.281627, 0.184647,
		0.291229, 0.956285, -0.026555,
		38.395992, 30.520924, 38.952805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661930, 29.900778, 39.498459>,  <38.192131, 29.851524, 38.971394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661930, 29.900778, 39.498459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606007, 30.292408, 39.439304>,  <38.572453, 30.527386, 39.403812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606007, 30.292408, 39.439304>,  <38.661930, 29.900778, 39.498459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606007, 30.292408, 39.439304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177336, 0.171694, 0.969058,
		0.974170, 0.109254, -0.197629,
		-0.139805, 0.979073, -0.147885,
		38.564064, 30.586130, 39.394939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169464, 30.156628, 39.976734>,  <38.661930, 29.900778, 39.498459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169464, 30.156628, 39.976734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898529, 30.438314, 39.891609>,  <38.735966, 30.607327, 39.840534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898529, 30.438314, 39.891609>,  <39.169464, 30.156628, 39.976734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898529, 30.438314, 39.891609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008773, 0.281518, 0.959516,
		0.735618, 0.651785, -0.184506,
		-0.677340, 0.704218, -0.212808,
		38.695328, 30.649580, 39.827766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361866, 30.819702, 40.212521>,  <39.169464, 30.156628, 39.976734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361866, 30.819702, 40.212521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962391, 30.799953, 40.207199>,  <38.722706, 30.788105, 40.204006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962391, 30.799953, 40.207199>,  <39.361866, 30.819702, 40.212521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962391, 30.799953, 40.207199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025455, 0.254328, 0.966783,
		-0.044347, 0.965857, -0.255252,
		-0.998692, -0.049372, -0.013308,
		38.662785, 30.785143, 40.203205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234703, 31.420467, 40.562134>,  <39.361866, 30.819702, 40.212521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234703, 31.420467, 40.562134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884125, 31.228119, 40.572037>,  <38.673779, 31.112711, 40.577976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884125, 31.228119, 40.572037>,  <39.234703, 31.420467, 40.562134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884125, 31.228119, 40.572037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080609, 0.197215, 0.977041,
		-0.474711, 0.854325, -0.211610,
		-0.876443, -0.480869, 0.024754,
		38.621193, 31.083858, 40.579464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853996, 31.844961, 40.983162>,  <39.234703, 31.420467, 40.562134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853996, 31.844961, 40.983162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.642559, 31.505428, 40.979794>,  <38.515697, 31.301708, 40.977772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.642559, 31.505428, 40.979794>,  <38.853996, 31.844961, 40.983162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642559, 31.505428, 40.979794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334166, 0.198952, 0.921277,
		-0.780333, 0.489799, -0.388816,
		-0.528596, -0.848832, -0.008425,
		38.483982, 31.250778, 40.977264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247612, 32.020348, 41.254017>,  <38.853996, 31.844961, 40.983162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247612, 32.020348, 41.254017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269440, 31.625195, 41.312149>,  <38.282536, 31.388103, 41.347027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269440, 31.625195, 41.312149>,  <38.247612, 32.020348, 41.254017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269440, 31.625195, 41.312149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301437, 0.122457, 0.945590,
		-0.951923, -0.095403, -0.291101,
		0.054565, -0.987878, 0.145327,
		38.285809, 31.328831, 41.355747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604282, 31.849886, 41.640747>,  <38.247612, 32.020348, 41.254017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604282, 31.849886, 41.640747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.851261, 31.545820, 41.721653>,  <37.999447, 31.363380, 41.770195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.851261, 31.545820, 41.721653>,  <37.604282, 31.849886, 41.640747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851261, 31.545820, 41.721653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397956, -0.080072, 0.913903,
		-0.678522, -0.644777, -0.351953,
		0.617446, -0.760165, 0.202262,
		38.036495, 31.317770, 41.782333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155685, 31.286194, 41.922626>,  <37.604282, 31.849886, 41.640747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155685, 31.286194, 41.922626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529785, 31.206274, 42.039509>,  <37.754246, 31.158321, 42.109638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529785, 31.206274, 42.039509>,  <37.155685, 31.286194, 41.922626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529785, 31.206274, 42.039509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338233, -0.260863, 0.904184,
		-0.104428, -0.944474, -0.311551,
		0.935251, -0.199799, 0.292210,
		37.810360, 31.146334, 42.127171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201469, 30.742783, 42.374161>,  <37.155685, 31.286194, 41.922626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201469, 30.742783, 42.374161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558300, 30.896946, 42.468525>,  <37.772400, 30.989443, 42.525143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558300, 30.896946, 42.468525>,  <37.201469, 30.742783, 42.374161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558300, 30.896946, 42.468525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093545, -0.353249, 0.930841,
		0.442088, -0.852453, -0.279073,
		0.892081, 0.385407, 0.235910,
		37.825924, 31.012568, 42.539299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601803, 30.218279, 42.709568>,  <37.201469, 30.742783, 42.374161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601803, 30.218279, 42.709568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767994, 30.568199, 42.809246>,  <37.867710, 30.778152, 42.869053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767994, 30.568199, 42.809246>,  <37.601803, 30.218279, 42.709568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767994, 30.568199, 42.809246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056674, -0.248531, 0.966965,
		0.907836, -0.415876, -0.053681,
		0.415478, 0.874803, 0.249195,
		37.892639, 30.830641, 42.884003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103210, 30.063095, 43.206562>,  <37.601803, 30.218279, 42.709568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103210, 30.063095, 43.206562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003506, 30.447311, 43.255924>,  <37.943684, 30.677841, 43.285542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003506, 30.447311, 43.255924>,  <38.103210, 30.063095, 43.206562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003506, 30.447311, 43.255924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104561, -0.153378, 0.982620,
		0.962776, 0.232022, 0.138666,
		-0.249258, 0.960542, 0.123408,
		37.928730, 30.735474, 43.292946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493298, 30.231972, 43.786808>,  <38.103210, 30.063095, 43.206562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493298, 30.231972, 43.786808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210411, 30.514256, 43.769745>,  <38.040680, 30.683626, 43.759506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210411, 30.514256, 43.769745>,  <38.493298, 30.231972, 43.786808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210411, 30.514256, 43.769745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184347, -0.125824, 0.974774,
		0.682541, 0.697239, 0.219080,
		-0.707216, 0.705710, -0.042654,
		37.998245, 30.725969, 43.756950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415558, 30.363230, 44.530060>,  <38.493298, 30.231972, 43.786808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415558, 30.363230, 44.530060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101646, 30.550501, 44.367611>,  <37.913300, 30.662863, 44.270142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101646, 30.550501, 44.367611>,  <38.415558, 30.363230, 44.530060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101646, 30.550501, 44.367611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437493, 0.045692, 0.898060,
		0.439007, 0.882453, 0.168966,
		-0.784775, 0.468177, -0.406126,
		37.866215, 30.690954, 44.245773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337234, 31.020094, 44.916245>,  <38.415558, 30.363230, 44.530060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337234, 31.020094, 44.916245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979691, 30.939772, 44.755901>,  <37.765163, 30.891579, 44.659695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979691, 30.939772, 44.755901>,  <38.337234, 31.020094, 44.916245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979691, 30.939772, 44.755901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431645, 0.143687, 0.890526,
		-0.121224, 0.969036, -0.215113,
		-0.893861, -0.200805, -0.400861,
		37.711533, 30.879530, 44.635643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896080, 31.455940, 45.169407>,  <38.337234, 31.020094, 44.916245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896080, 31.455940, 45.169407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615818, 31.212105, 45.021091>,  <37.447662, 31.065804, 44.932102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615818, 31.212105, 45.021091>,  <37.896080, 31.455940, 45.169407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615818, 31.212105, 45.021091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580573, 0.185011, 0.792909,
		-0.414749, 0.770825, -0.483540,
		-0.700655, -0.609589, -0.370788,
		37.405621, 31.029228, 44.909855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250664, 31.770937, 45.188229>,  <37.896080, 31.455940, 45.169407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250664, 31.770937, 45.188229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147385, 31.385380, 45.162163>,  <37.085419, 31.154045, 45.146523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147385, 31.385380, 45.162163>,  <37.250664, 31.770937, 45.188229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147385, 31.385380, 45.162163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635759, 0.118733, 0.762702,
		-0.727425, 0.238355, -0.643459,
		-0.258194, -0.963893, -0.065167,
		37.069927, 31.096212, 45.142612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525543, 31.739477, 45.351982>,  <37.250664, 31.770937, 45.188229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525543, 31.739477, 45.351982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694439, 31.383659, 45.421745>,  <36.795776, 31.170168, 45.463604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694439, 31.383659, 45.421745>,  <36.525543, 31.739477, 45.351982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694439, 31.383659, 45.421745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508559, -0.073196, 0.857910,
		-0.750385, -0.450943, -0.483294,
		0.422243, -0.889546, 0.174406,
		36.821114, 31.116795, 45.474068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968220, 31.303963, 45.458851>,  <36.525543, 31.739477, 45.351982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968220, 31.303963, 45.458851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297543, 31.150618, 45.626274>,  <36.495136, 31.058611, 45.726730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297543, 31.150618, 45.626274>,  <35.968220, 31.303963, 45.458851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297543, 31.150618, 45.626274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476919, -0.067412, 0.876358,
		-0.307749, -0.921133, -0.238335,
		0.823310, -0.383365, 0.418560,
		36.544537, 31.035608, 45.751842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697083, 30.962969, 46.022671>,  <35.968220, 31.303963, 45.458851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697083, 30.962969, 46.022671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088448, 30.971348, 46.104916>,  <36.323265, 30.976376, 46.154263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088448, 30.971348, 46.104916>,  <35.697083, 30.962969, 46.022671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088448, 30.971348, 46.104916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206671, 0.090937, 0.974175,
		0.001704, -0.995636, 0.093301,
		0.978409, 0.020943, 0.205614,
		36.381969, 30.977633, 46.166599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853222, 30.380014, 46.483318>,  <35.697083, 30.962969, 46.022671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853222, 30.380014, 46.483318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129974, 30.660532, 46.552010>,  <36.296024, 30.828842, 46.593224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129974, 30.660532, 46.552010>,  <35.853222, 30.380014, 46.483318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129974, 30.660532, 46.552010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296142, 0.058720, 0.953337,
		0.658484, -0.710452, 0.248309,
		0.691881, 0.701292, 0.171729,
		36.337540, 30.870920, 46.603527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053574, 30.206398, 47.224293>,  <35.853222, 30.380014, 46.483318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053574, 30.206398, 47.224293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191422, 30.575428, 47.154900>,  <36.274128, 30.796846, 47.113262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191422, 30.575428, 47.154900>,  <36.053574, 30.206398, 47.224293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191422, 30.575428, 47.154900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406036, 0.313113, 0.858542,
		0.846389, -0.225427, 0.482503,
		0.344616, 0.922574, -0.173484,
		36.294807, 30.852200, 47.102856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403023, 30.396502, 47.800083>,  <36.053574, 30.206398, 47.224293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403023, 30.396502, 47.800083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359924, 30.743250, 47.605385>,  <36.334064, 30.951300, 47.488564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359924, 30.743250, 47.605385>,  <36.403023, 30.396502, 47.800083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359924, 30.743250, 47.605385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246208, 0.451081, 0.857850,
		0.963209, 0.212275, 0.164827,
		-0.107750, 0.866871, -0.486749,
		36.327599, 31.003311, 47.459358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379921, 30.786983, 48.329548>,  <36.403023, 30.396502, 47.800083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379921, 30.786983, 48.329548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278778, 31.057047, 48.052357>,  <36.218090, 31.219086, 47.886044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278778, 31.057047, 48.052357>,  <36.379921, 30.786983, 48.329548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278778, 31.057047, 48.052357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435864, 0.559961, 0.704604,
		0.863761, 0.480212, 0.152686,
		-0.252861, 0.675160, -0.692980,
		36.202919, 31.259594, 47.844463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657028, 31.416935, 48.492493>,  <36.379921, 30.786983, 48.329548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657028, 31.416935, 48.492493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337090, 31.482042, 48.261406>,  <36.145126, 31.521107, 48.122753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337090, 31.482042, 48.261406>,  <36.657028, 31.416935, 48.492493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337090, 31.482042, 48.261406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451640, 0.470721, 0.757920,
		0.395308, 0.867138, -0.302991,
		-0.799845, 0.162769, -0.577714,
		36.097137, 31.530872, 48.088093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487484, 32.024956, 48.471897>,  <36.657028, 31.416935, 48.492493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487484, 32.024956, 48.471897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126526, 31.904406, 48.348705>,  <35.909950, 31.832075, 48.274792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126526, 31.904406, 48.348705>,  <36.487484, 32.024956, 48.471897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126526, 31.904406, 48.348705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422738, 0.480705, 0.768254,
		-0.083491, 0.823464, -0.561192,
		-0.902398, -0.301380, -0.307975,
		35.855808, 31.813992, 48.256313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909584, 32.625816, 48.484802>,  <36.487484, 32.024956, 48.471897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909584, 32.625816, 48.484802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727249, 32.269855, 48.491608>,  <35.617847, 32.056278, 48.495689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727249, 32.269855, 48.491608>,  <35.909584, 32.625816, 48.484802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727249, 32.269855, 48.491608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622501, 0.332414, 0.708515,
		-0.636163, 0.312378, -0.705491,
		-0.455839, -0.889899, 0.017014,
		35.590496, 32.002884, 48.496712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222225, 32.759228, 48.455227>,  <35.909584, 32.625816, 48.484802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222225, 32.759228, 48.455227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211308, 32.395428, 48.621155>,  <35.204758, 32.177147, 48.720711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211308, 32.395428, 48.621155>,  <35.222225, 32.759228, 48.455227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211308, 32.395428, 48.621155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629990, 0.337841, 0.699268,
		-0.776123, -0.242242, -0.582196,
		-0.027298, -0.909496, 0.414816,
		35.203117, 32.122578, 48.745598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608688, 32.702045, 48.760971>,  <35.222225, 32.759228, 48.455227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608688, 32.702045, 48.760971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796532, 32.391800, 48.929676>,  <34.909237, 32.205654, 49.030899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796532, 32.391800, 48.929676>,  <34.608688, 32.702045, 48.760971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796532, 32.391800, 48.929676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464839, 0.188929, 0.865003,
		-0.750593, -0.602268, -0.271814,
		0.469610, -0.775615, 0.421767,
		34.937416, 32.159115, 49.056206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174225, 32.448936, 49.129169>,  <34.608688, 32.702045, 48.760971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174225, 32.448936, 49.129169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514599, 32.297642, 49.274956>,  <34.718822, 32.206863, 49.362427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514599, 32.297642, 49.274956>,  <34.174225, 32.448936, 49.129169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514599, 32.297642, 49.274956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354544, 0.098371, 0.929850,
		-0.387560, -0.920466, -0.050395,
		0.850938, -0.378240, 0.364470,
		34.769882, 32.184170, 49.384296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950214, 31.855692, 49.655434>,  <34.174225, 32.448936, 49.129169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950214, 31.855692, 49.655434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323051, 31.985670, 49.719460>,  <34.546753, 32.063656, 49.757877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323051, 31.985670, 49.719460>,  <33.950214, 31.855692, 49.655434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323051, 31.985670, 49.719460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244208, 0.237345, 0.940229,
		0.267528, -0.915467, 0.300580,
		0.932090, 0.324941, 0.160068,
		34.602676, 32.083153, 49.767479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199089, 31.601192, 50.275459>,  <33.950214, 31.855692, 49.655434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199089, 31.601192, 50.275459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442635, 31.914680, 50.226349>,  <34.588760, 32.102772, 50.196884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442635, 31.914680, 50.226349>,  <34.199089, 31.601192, 50.275459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442635, 31.914680, 50.226349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160674, 0.273398, 0.948387,
		0.776835, -0.557709, 0.292384,
		0.608861, 0.783718, -0.122775,
		34.625294, 32.149796, 50.189518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665112, 31.603148, 50.958138>,  <34.199089, 31.601192, 50.275459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665112, 31.603148, 50.958138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683685, 31.959446, 50.777290>,  <34.694828, 32.173225, 50.668781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683685, 31.959446, 50.777290>,  <34.665112, 31.603148, 50.958138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683685, 31.959446, 50.777290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022766, 0.451549, 0.891955,
		0.998662, -0.051711, 0.000690,
		0.046436, 0.890746, -0.452122,
		34.697617, 32.226669, 50.641655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158600, 31.893070, 51.312145>,  <34.665112, 31.603148, 50.958138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158600, 31.893070, 51.312145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938297, 32.189079, 51.157726>,  <34.806114, 32.366684, 51.065075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938297, 32.189079, 51.157726>,  <35.158600, 31.893070, 51.312145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938297, 32.189079, 51.157726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014468, 0.470912, 0.882062,
		0.834538, 0.480219, -0.270066,
		-0.550760, 0.740022, -0.386046,
		34.773067, 32.411087, 51.041912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439201, 32.518085, 51.507717>,  <35.158600, 31.893070, 51.312145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439201, 32.518085, 51.507717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062592, 32.616058, 51.415154>,  <34.836628, 32.674843, 51.359615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062592, 32.616058, 51.415154>,  <35.439201, 32.518085, 51.507717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062592, 32.616058, 51.415154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123331, 0.388603, 0.913114,
		0.313576, 0.888254, -0.335670,
		-0.941520, 0.244932, -0.231406,
		34.780136, 32.689537, 51.345734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190609, 33.098572, 51.960205>,  <35.439201, 32.518085, 51.507717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190609, 33.098572, 51.960205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859688, 32.926605, 51.815571>,  <34.661137, 32.823425, 51.728790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859688, 32.926605, 51.815571>,  <35.190609, 33.098572, 51.960205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859688, 32.926605, 51.815571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481673, 0.211637, 0.850412,
		-0.289082, 0.877713, -0.382166,
		-0.827299, -0.429918, -0.361590,
		34.611500, 32.797630, 51.707092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002216, 33.747280, 51.683395>,  <35.190609, 33.098572, 51.960205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002216, 33.747280, 51.683395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205055, 34.076305, 51.786343>,  <35.326759, 34.273720, 51.848110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205055, 34.076305, 51.786343>,  <35.002216, 33.747280, 51.683395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205055, 34.076305, 51.786343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262327, 0.137139, -0.955184,
		-0.820995, 0.551889, -0.146237,
		0.507101, 0.822564, 0.257366,
		35.357185, 34.323074, 51.863552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891682, 34.318314, 51.078766>,  <35.002216, 33.747280, 51.683395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891682, 34.318314, 51.078766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227077, 34.413624, 51.274792>,  <35.428314, 34.470810, 51.392406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227077, 34.413624, 51.274792>,  <34.891682, 34.318314, 51.078766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227077, 34.413624, 51.274792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444304, 0.221721, -0.868006,
		-0.315482, 0.945550, 0.080043,
		0.838490, 0.238277, 0.490061,
		35.478622, 34.485107, 51.421810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137856, 34.897346, 50.715359>,  <34.891682, 34.318314, 51.078766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137856, 34.897346, 50.715359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455311, 34.751804, 50.910393>,  <35.645786, 34.664478, 51.027412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455311, 34.751804, 50.910393>,  <35.137856, 34.897346, 50.715359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455311, 34.751804, 50.910393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587071, 0.247734, -0.770698,
		0.159634, 0.897906, 0.410222,
		0.793640, -0.363859, 0.487588,
		35.693401, 34.642647, 51.056667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720921, 35.320343, 50.571587>,  <35.137856, 34.897346, 50.715359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720921, 35.320343, 50.571587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863426, 34.962051, 50.677971>,  <35.948929, 34.747074, 50.741802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863426, 34.962051, 50.677971>,  <35.720921, 35.320343, 50.571587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863426, 34.962051, 50.677971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559335, -0.023567, -0.828607,
		0.748479, 0.443967, 0.492619,
		0.356264, -0.895733, 0.265965,
		35.970306, 34.693333, 50.757759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461937, 35.467861, 50.480202>,  <35.720921, 35.320343, 50.571587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461937, 35.467861, 50.480202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424271, 35.069706, 50.487446>,  <36.401669, 34.830811, 50.491791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424271, 35.069706, 50.487446>,  <36.461937, 35.467861, 50.480202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424271, 35.069706, 50.487446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652706, -0.075463, -0.753844,
		0.751737, -0.059168, 0.656804,
		-0.094168, -0.995392, 0.018109,
		36.396019, 34.771088, 50.492878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120258, 35.211124, 50.304184>,  <36.461937, 35.467861, 50.480202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120258, 35.211124, 50.304184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877419, 34.898228, 50.248291>,  <36.731712, 34.710491, 50.214756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877419, 34.898228, 50.248291>,  <37.120258, 35.211124, 50.304184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877419, 34.898228, 50.248291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602150, -0.338140, -0.723240,
		0.518498, -0.523222, 0.676312,
		-0.607104, -0.782240, -0.139733,
		36.695286, 34.663555, 50.206371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606728, 34.684704, 50.271763>,  <37.120258, 35.211124, 50.304184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606728, 34.684704, 50.271763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260220, 34.591614, 50.094936>,  <37.052315, 34.535759, 49.988842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260220, 34.591614, 50.094936>,  <37.606728, 34.684704, 50.271763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260220, 34.591614, 50.094936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496857, -0.309020, -0.810950,
		0.052122, -0.922142, 0.383325,
		-0.866266, -0.232726, -0.442066,
		37.000340, 34.521797, 49.962318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732224, 34.065685, 50.009159>,  <37.606728, 34.684704, 50.271763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732224, 34.065685, 50.009159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409523, 34.170444, 49.797287>,  <37.215900, 34.233299, 49.670166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409523, 34.170444, 49.797287>,  <37.732224, 34.065685, 50.009159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409523, 34.170444, 49.797287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458955, -0.286865, -0.840874,
		-0.372167, -0.921477, 0.111231,
		-0.806754, 0.261895, -0.529678,
		37.167496, 34.249012, 49.638382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731655, 33.662598, 49.574074>,  <37.732224, 34.065685, 50.009159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731655, 33.662598, 49.574074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486393, 33.930016, 49.405743>,  <37.339237, 34.090466, 49.304745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486393, 33.930016, 49.405743>,  <37.731655, 33.662598, 49.574074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486393, 33.930016, 49.405743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357927, -0.239782, -0.902437,
		-0.704224, -0.703957, -0.092266,
		-0.613153, 0.668543, -0.420826,
		37.302448, 34.130577, 49.279495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577934, 33.416672, 49.000843>,  <37.731655, 33.662598, 49.574074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577934, 33.416672, 49.000843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464211, 33.793888, 48.931744>,  <37.395977, 34.020218, 48.890282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464211, 33.793888, 48.931744>,  <37.577934, 33.416672, 49.000843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464211, 33.793888, 48.931744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503730, -0.006377, -0.863838,
		-0.815735, -0.332617, -0.473225,
		-0.284310, 0.943040, -0.172751,
		37.378918, 34.076801, 48.879917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283436, 33.425644, 48.353733>,  <37.577934, 33.416672, 49.000843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283436, 33.425644, 48.353733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395897, 33.804657, 48.414566>,  <37.463375, 34.032066, 48.451065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395897, 33.804657, 48.414566>,  <37.283436, 33.425644, 48.353733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395897, 33.804657, 48.414566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340592, 0.049637, -0.938900,
		-0.897189, 0.315777, -0.308767,
		0.281157, 0.947534, 0.152085,
		37.480244, 34.088917, 48.460190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066784, 33.799000, 47.766304>,  <37.283436, 33.425644, 48.353733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066784, 33.799000, 47.766304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384480, 33.993053, 47.912636>,  <37.575096, 34.109486, 48.000435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384480, 33.993053, 47.912636>,  <37.066784, 33.799000, 47.766304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384480, 33.993053, 47.912636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403974, 0.028122, -0.914338,
		-0.453862, 0.873989, -0.173644,
		0.794239, 0.485131, 0.365832,
		37.622749, 34.138592, 48.022385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172916, 34.483486, 47.352421>,  <37.066784, 33.799000, 47.766304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172916, 34.483486, 47.352421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488281, 34.276684, 47.485756>,  <37.677498, 34.152603, 47.565758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488281, 34.276684, 47.485756>,  <37.172916, 34.483486, 47.352421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488281, 34.276684, 47.485756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363451, -0.045688, -0.930492,
		0.496301, 0.854761, 0.151886,
		0.788409, -0.517008, 0.333338,
		37.724804, 34.121582, 47.585758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838665, 34.882534, 47.125816>,  <37.172916, 34.483486, 47.352421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838665, 34.882534, 47.125816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903660, 34.498650, 47.217510>,  <37.942657, 34.268318, 47.272526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903660, 34.498650, 47.217510>,  <37.838665, 34.882534, 47.125816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903660, 34.498650, 47.217510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495888, -0.121427, -0.859855,
		0.853050, 0.253386, 0.456181,
		0.162483, -0.959714, 0.229234,
		37.952404, 34.210735, 47.286282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579876, 34.770702, 46.915684>,  <37.838665, 34.882534, 47.125816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579876, 34.770702, 46.915684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396118, 34.415813, 46.932613>,  <38.285862, 34.202881, 46.942772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396118, 34.415813, 46.932613>,  <38.579876, 34.770702, 46.915684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396118, 34.415813, 46.932613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651682, -0.369045, -0.662659,
		0.603544, -0.276844, 0.747725,
		-0.459397, -0.887222, 0.042321,
		38.258301, 34.149647, 46.945309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088799, 34.317444, 46.870426>,  <38.579876, 34.770702, 46.915684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088799, 34.317444, 46.870426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761929, 34.111916, 46.765953>,  <38.565807, 33.988598, 46.703270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761929, 34.111916, 46.765953>,  <39.088799, 34.317444, 46.870426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761929, 34.111916, 46.765953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523874, -0.473120, -0.708317,
		0.240378, -0.715644, 0.655799,
		-0.817174, -0.513820, -0.261180,
		38.516777, 33.957771, 46.687599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394760, 33.586567, 46.965565>,  <39.088799, 34.317444, 46.870426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394760, 33.586567, 46.965565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077419, 33.600246, 46.722443>,  <38.887016, 33.608456, 46.576569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077419, 33.600246, 46.722443>,  <39.394760, 33.586567, 46.965565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077419, 33.600246, 46.722443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546119, -0.401156, -0.735411,
		-0.268975, -0.915371, 0.299580,
		-0.793352, 0.034201, -0.607802,
		38.839413, 33.610508, 46.540100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292057, 32.955257, 46.689445>,  <39.394760, 33.586567, 46.965565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292057, 32.955257, 46.689445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068546, 33.177845, 46.443485>,  <38.934441, 33.311398, 46.295910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068546, 33.177845, 46.443485>,  <39.292057, 32.955257, 46.689445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068546, 33.177845, 46.443485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408553, -0.460532, -0.788032,
		-0.721701, -0.691555, 0.029986,
		-0.558777, 0.556473, -0.614903,
		38.900913, 33.344788, 46.259014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033482, 32.501652, 46.159870>,  <39.292057, 32.955257, 46.689445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033482, 32.501652, 46.159870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992439, 32.867878, 46.004326>,  <38.967815, 33.087612, 45.910999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992439, 32.867878, 46.004326>,  <39.033482, 32.501652, 46.159870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992439, 32.867878, 46.004326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243582, -0.355900, -0.902221,
		-0.964438, -0.187290, -0.186499,
		-0.102602, 0.915564, -0.388864,
		38.961658, 33.142548, 45.887669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696835, 32.356495, 45.524952>,  <39.033482, 32.501652, 46.159870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696835, 32.356495, 45.524952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843746, 32.728153, 45.508022>,  <38.931892, 32.951149, 45.497864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843746, 32.728153, 45.508022>,  <38.696835, 32.356495, 45.524952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843746, 32.728153, 45.508022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270966, -0.150417, -0.950764,
		-0.889766, 0.337727, -0.307012,
		0.367279, 0.929147, -0.042323,
		38.953930, 33.006897, 45.495327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505936, 32.629608, 44.859421>,  <38.696835, 32.356495, 45.524952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505936, 32.629608, 44.859421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829372, 32.843952, 44.956608>,  <39.023434, 32.972561, 45.014919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829372, 32.843952, 44.956608>,  <38.505936, 32.629608, 44.859421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829372, 32.843952, 44.956608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404444, -0.206296, -0.890992,
		-0.427326, 0.818714, -0.383535,
		0.808590, 0.535863, 0.242969,
		39.071949, 33.004711, 45.029499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636875, 33.057381, 44.269627>,  <38.505936, 32.629608, 44.859421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636875, 33.057381, 44.269627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977951, 33.045254, 44.478241>,  <39.182598, 33.037975, 44.603409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977951, 33.045254, 44.478241>,  <38.636875, 33.057381, 44.269627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977951, 33.045254, 44.478241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515036, -0.118420, -0.848949,
		0.087500, 0.992501, -0.085360,
		0.852691, -0.030319, 0.521535,
		39.233757, 33.036160, 44.634701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086723, 33.498482, 44.025734>,  <38.636875, 33.057381, 44.269627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086723, 33.498482, 44.025734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339680, 33.259132, 44.222519>,  <39.491455, 33.115520, 44.340588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339680, 33.259132, 44.222519>,  <39.086723, 33.498482, 44.025734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339680, 33.259132, 44.222519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466515, -0.212809, -0.858531,
		0.618419, 0.772436, 0.144572,
		0.632394, -0.598377, 0.491958,
		39.529396, 33.079620, 44.370106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788727, 33.497135, 43.700893>,  <39.086723, 33.498482, 44.025734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788727, 33.497135, 43.700893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789837, 33.162647, 43.920250>,  <39.790504, 32.961956, 44.051865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789837, 33.162647, 43.920250>,  <39.788727, 33.497135, 43.700893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789837, 33.162647, 43.920250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652999, -0.413813, -0.634311,
		0.757353, 0.359861, 0.544900,
		0.002777, -0.836217, 0.548392,
		39.790668, 32.911781, 44.084766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430191, 33.298553, 43.801411>,  <39.788727, 33.497135, 43.700893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430191, 33.298553, 43.801411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.229431, 32.954315, 43.835991>,  <40.108974, 32.747772, 43.856739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.229431, 32.954315, 43.835991>,  <40.430191, 33.298553, 43.801411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229431, 32.954315, 43.835991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643210, -0.438203, -0.627901,
		0.578250, -0.259538, 0.773477,
		-0.501904, -0.860592, 0.086453,
		40.078861, 32.696136, 43.861927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920925, 32.850666, 43.762817>,  <40.430191, 33.298553, 43.801411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.920925, 32.850666, 43.762817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.584339, 32.648777, 43.685677>,  <40.382385, 32.527645, 43.639393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.584339, 32.648777, 43.685677>,  <40.920925, 32.850666, 43.762817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584339, 32.648777, 43.685677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444461, -0.443653, -0.778220,
		0.307226, -0.740560, 0.597648,
		-0.841466, -0.504721, -0.192848,
		40.331898, 32.497360, 43.627823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109909, 32.153954, 43.765240>,  <40.920925, 32.850666, 43.762817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109909, 32.153954, 43.765240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786133, 32.227203, 43.542072>,  <40.591869, 32.271152, 43.408173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786133, 32.227203, 43.542072>,  <41.109909, 32.153954, 43.765240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786133, 32.227203, 43.542072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397522, -0.528406, -0.750175,
		-0.432186, -0.829006, 0.354915,
		-0.809439, 0.183129, -0.557918,
		40.543301, 32.282143, 43.374699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063267, 31.500731, 43.399323>,  <41.109909, 32.153954, 43.765240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063267, 31.500731, 43.399323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834812, 31.762581, 43.201221>,  <40.697739, 31.919691, 43.082363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834812, 31.762581, 43.201221>,  <41.063267, 31.500731, 43.399323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834812, 31.762581, 43.201221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271054, -0.419091, -0.866541,
		-0.774814, -0.629150, 0.061918,
		-0.571133, 0.654624, -0.495250,
		40.663471, 31.958967, 43.052647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710697, 31.132410, 42.852493>,  <41.063267, 31.500731, 43.399323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710697, 31.132410, 42.852493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700203, 31.517494, 42.744789>,  <40.693905, 31.748545, 42.680168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700203, 31.517494, 42.744789>,  <40.710697, 31.132410, 42.852493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700203, 31.517494, 42.744789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227257, -0.256555, -0.939433,
		-0.973481, -0.085842, -0.212050,
		-0.026240, 0.962710, -0.269260,
		40.692329, 31.806307, 42.664013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437519, 31.040323, 42.205166>,  <40.710697, 31.132410, 42.852493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437519, 31.040323, 42.205166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566616, 31.417767, 42.234669>,  <40.644073, 31.644234, 42.252373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566616, 31.417767, 42.234669>,  <40.437519, 31.040323, 42.205166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566616, 31.417767, 42.234669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365294, -0.052289, -0.929423,
		-0.873156, 0.326904, -0.361570,
		0.322738, 0.943610, 0.073760,
		40.663437, 31.700850, 42.256798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183777, 31.417549, 41.628422>,  <40.437519, 31.040323, 42.205166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183777, 31.417549, 41.628422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507179, 31.621811, 41.745419>,  <40.701221, 31.744368, 41.815617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507179, 31.621811, 41.745419>,  <40.183777, 31.417549, 41.628422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507179, 31.621811, 41.745419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329225, 0.019479, -0.944051,
		-0.487781, 0.859565, -0.152371,
		0.808505, 0.510655, 0.292492,
		40.749729, 31.775007, 41.833164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117733, 32.104912, 41.221306>,  <40.183777, 31.417549, 41.628422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117733, 32.104912, 41.221306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504177, 32.068558, 41.317944>,  <40.736046, 32.046745, 41.375927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504177, 32.068558, 41.317944>,  <40.117733, 32.104912, 41.221306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504177, 32.068558, 41.317944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258052, 0.318473, -0.912132,
		0.005957, 0.943565, 0.331133,
		0.966113, -0.090884, 0.241591,
		40.794010, 32.041294, 41.390419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456638, 32.797096, 41.019199>,  <40.117733, 32.104912, 41.221306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456638, 32.797096, 41.019199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743923, 32.520039, 41.045795>,  <40.916294, 32.353806, 41.061752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743923, 32.520039, 41.045795>,  <40.456638, 32.797096, 41.019199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743923, 32.520039, 41.045795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499276, 0.446422, -0.742584,
		0.484662, 0.566528, 0.666445,
		0.718211, -0.692642, 0.066490,
		40.959385, 32.312244, 41.065742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897408, 33.159973, 40.742588>,  <40.456638, 32.797096, 41.019199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.897408, 33.159973, 40.742588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079647, 32.803944, 40.736950>,  <41.188992, 32.590324, 40.733566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079647, 32.803944, 40.736950>,  <40.897408, 33.159973, 40.742588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079647, 32.803944, 40.736950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579807, 0.308726, -0.753997,
		0.675466, 0.335345, 0.656726,
		0.455598, -0.890074, -0.014099,
		41.216328, 32.536922, 40.732719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650467, 33.299084, 40.654892>,  <40.897408, 33.159973, 40.742588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650467, 33.299084, 40.654892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574543, 32.929241, 40.522785>,  <41.528988, 32.707336, 40.443520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574543, 32.929241, 40.522785>,  <41.650467, 33.299084, 40.654892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574543, 32.929241, 40.522785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555072, 0.176408, -0.812881,
		0.809856, -0.337618, 0.479737,
		-0.189814, -0.924605, -0.330268,
		41.517597, 32.651859, 40.423706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203308, 33.151577, 40.276222>,  <41.650467, 33.299084, 40.654892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203308, 33.151577, 40.276222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.952084, 32.884762, 40.115921>,  <41.801350, 32.724674, 40.019741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.952084, 32.884762, 40.115921>,  <42.203308, 33.151577, 40.276222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.952084, 32.884762, 40.115921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445681, 0.113819, -0.887926,
		0.637893, -0.736278, 0.225801,
		-0.628061, -0.667038, -0.400750,
		41.763664, 32.684650, 39.995697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.597637, 32.609364, 39.950493>,  <42.203308, 33.151577, 40.276222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.597637, 32.609364, 39.950493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233459, 32.628799, 39.786186>,  <42.014954, 32.640461, 39.687603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233459, 32.628799, 39.786186>,  <42.597637, 32.609364, 39.950493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233459, 32.628799, 39.786186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413418, 0.074718, -0.907471,
		-0.013406, -0.996020, -0.088116,
		-0.910443, 0.048594, -0.410771,
		41.960327, 32.643379, 39.662956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.707943, 32.374416, 39.192348>,  <42.597637, 32.609364, 39.950493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.707943, 32.374416, 39.192348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333752, 32.510376, 39.153683>,  <42.109238, 32.591953, 39.130486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333752, 32.510376, 39.153683>,  <42.707943, 32.374416, 39.192348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333752, 32.510376, 39.153683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182019, 0.229017, -0.956253,
		-0.302896, -0.912150, -0.276110,
		-0.935480, 0.339902, -0.096660,
		42.053108, 32.612347, 39.124683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537613, 32.262722, 38.566048>,  <42.707943, 32.374416, 39.192348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537613, 32.262722, 38.566048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.265167, 32.545685, 38.641586>,  <42.101700, 32.715462, 38.686909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.265167, 32.545685, 38.641586>,  <42.537613, 32.262722, 38.566048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.265167, 32.545685, 38.641586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183844, 0.414897, -0.891101,
		-0.708725, -0.572219, -0.412643,
		-0.681110, 0.707408, 0.188849,
		42.060833, 32.757908, 38.698242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072765, 32.424480, 37.932152>,  <42.537613, 32.262722, 38.566048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072765, 32.424480, 37.932152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092892, 32.736813, 38.181240>,  <42.104965, 32.924210, 38.330692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092892, 32.736813, 38.181240>,  <42.072765, 32.424480, 37.932152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.092892, 32.736813, 38.181240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323118, 0.577247, -0.749921,
		-0.945020, 0.238941, -0.223257,
		0.050313, 0.780829, 0.622716,
		42.107986, 32.971062, 38.368053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.710514, 32.969868, 37.505760>,  <42.072765, 32.424480, 37.932152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.710514, 32.969868, 37.505760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.951000, 33.079163, 37.806129>,  <42.095291, 33.144741, 37.986351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.951000, 33.079163, 37.806129>,  <41.710514, 32.969868, 37.505760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.951000, 33.079163, 37.806129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537728, 0.556779, -0.633124,
		-0.591091, 0.784434, 0.187815,
		0.601215, 0.273241, 0.750919,
		42.131367, 33.161137, 38.031406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812569, 33.725533, 37.638382>,  <41.710514, 32.969868, 37.505760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812569, 33.725533, 37.638382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.144569, 33.551079, 37.777454>,  <42.343769, 33.446407, 37.860897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.144569, 33.551079, 37.777454>,  <41.812569, 33.725533, 37.638382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.144569, 33.551079, 37.777454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537489, 0.458884, -0.707482,
		0.149014, 0.774085, 0.615294,
		0.830000, -0.436139, 0.347682,
		42.393570, 33.420238, 37.881760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.321522, 34.237633, 37.634293>,  <41.812569, 33.725533, 37.638382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.321522, 34.237633, 37.634293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463390, 33.866707, 37.586460>,  <42.548512, 33.644154, 37.557762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463390, 33.866707, 37.586460>,  <42.321522, 34.237633, 37.634293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.463390, 33.866707, 37.586460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223249, 0.208188, -0.952270,
		0.907946, 0.311049, 0.280860,
		0.354674, -0.927311, -0.119582,
		42.569794, 33.588512, 37.550587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286770, 34.313461, 38.365459>,  <42.321522, 34.237633, 37.634293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.286770, 34.313461, 38.365459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516888, 34.288742, 38.691704>,  <42.654961, 34.273911, 38.887451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516888, 34.288742, 38.691704>,  <42.286770, 34.313461, 38.365459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516888, 34.288742, 38.691704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759372, -0.330191, -0.560649,
		0.303952, 0.941889, -0.143032,
		0.575297, -0.061796, 0.815607,
		42.689476, 34.270203, 38.936386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.922276, 34.522141, 38.113396>,  <42.286770, 34.313461, 38.365459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.922276, 34.522141, 38.113396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997692, 34.331944, 38.457108>,  <43.042942, 34.217827, 38.663334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997692, 34.331944, 38.457108>,  <42.922276, 34.522141, 38.113396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.997692, 34.331944, 38.457108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798560, -0.435057, -0.415965,
		0.571623, 0.764613, 0.297680,
		0.188545, -0.475491, 0.859279,
		43.054256, 34.189297, 38.714890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.358101, 34.686901, 37.584015>,  <42.922276, 34.522141, 38.113396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.358101, 34.686901, 37.584015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.674648, 34.889370, 37.721146>,  <43.864574, 35.010853, 37.803425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.674648, 34.889370, 37.721146>,  <43.358101, 34.686901, 37.584015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.674648, 34.889370, 37.721146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308310, 0.814684, -0.491157,
		-0.527906, 0.282987, 0.800770,
		0.791366, 0.506171, 0.342829,
		43.912060, 35.041222, 37.823994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.153614, 35.317154, 37.876354>,  <43.358101, 34.686901, 37.584015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.153614, 35.317154, 37.876354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536709, 35.356850, 37.768360>,  <43.766567, 35.380669, 37.703564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536709, 35.356850, 37.768360>,  <43.153614, 35.317154, 37.876354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.536709, 35.356850, 37.768360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212274, 0.877254, -0.430541,
		0.194120, 0.469656, 0.861244,
		0.957735, 0.099244, -0.269988,
		43.824028, 35.386623, 37.687363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.513660, 35.938080, 38.159569>,  <43.153614, 35.317154, 37.876354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.513660, 35.938080, 38.159569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.652481, 35.831463, 37.799900>,  <43.735771, 35.767490, 37.584099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.652481, 35.831463, 37.799900>,  <43.513660, 35.938080, 38.159569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.652481, 35.831463, 37.799900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269602, 0.889939, -0.367864,
		0.898261, 0.370085, 0.236990,
		0.347047, -0.266545, -0.899173,
		43.756596, 35.751499, 37.530148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.938293, 36.455193, 38.058903>,  <43.513660, 35.938080, 38.159569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.938293, 36.455193, 38.058903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.855133, 36.298782, 37.700268>,  <43.805237, 36.204937, 37.485085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.855133, 36.298782, 37.700268>,  <43.938293, 36.455193, 38.058903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.855133, 36.298782, 37.700268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053532, 0.919793, -0.388736,
		0.976684, -0.032822, -0.212157,
		-0.207900, -0.391029, -0.896590,
		43.792763, 36.181473, 37.431290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.281601, 36.948730, 37.685276>,  <43.938293, 36.455193, 38.058903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.281601, 36.948730, 37.685276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.037003, 36.774883, 37.420799>,  <43.890244, 36.670574, 37.262112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.037003, 36.774883, 37.420799>,  <44.281601, 36.948730, 37.685276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.037003, 36.774883, 37.420799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199705, 0.893357, -0.402531,
		0.765629, -0.114103, -0.633082,
		-0.611498, -0.434619, -0.661193,
		43.853554, 36.644497, 37.222443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.429184, 37.236908, 36.967403>,  <44.281601, 36.948730, 37.685276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.429184, 37.236908, 36.967403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.064610, 37.075756, 36.933998>,  <43.845867, 36.979065, 36.913956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.064610, 37.075756, 36.933998>,  <44.429184, 37.236908, 36.967403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.064610, 37.075756, 36.933998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340502, 0.852523, -0.396564,
		0.230968, -0.333004, -0.914200,
		-0.911434, -0.402880, -0.083517,
		43.791180, 36.954891, 36.908943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.260338, 37.273449, 36.235165>,  <44.429184, 37.236908, 36.967403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.260338, 37.273449, 36.235165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.905155, 37.239048, 36.415894>,  <43.692047, 37.218407, 36.524330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.905155, 37.239048, 36.415894>,  <44.260338, 37.273449, 36.235165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.905155, 37.239048, 36.415894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371194, 0.714047, -0.593593,
		-0.271572, -0.694796, -0.665964,
		-0.887955, -0.085998, 0.451819,
		43.638767, 37.213249, 36.551437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.730804, 37.409283, 35.728951>,  <44.260338, 37.273449, 36.235165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.730804, 37.409283, 35.728951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.531315, 37.473824, 36.069595>,  <43.411621, 37.512547, 36.273983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.531315, 37.473824, 36.069595>,  <43.730804, 37.409283, 35.728951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.531315, 37.473824, 36.069595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509116, 0.740637, -0.438472,
		-0.701482, -0.652245, -0.287228,
		-0.498723, 0.161348, 0.851612,
		43.381699, 37.522228, 36.325077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.149937, 37.559978, 35.375427>,  <43.730804, 37.409283, 35.728951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.149937, 37.559978, 35.375427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.137928, 37.706394, 35.747475>,  <43.130722, 37.794243, 35.970703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.137928, 37.706394, 35.747475>,  <43.149937, 37.559978, 35.375427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.137928, 37.706394, 35.747475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588184, 0.745899, -0.312530,
		-0.808170, -0.556462, 0.192903,
		-0.030024, 0.366040, 0.930115,
		43.128922, 37.816208, 36.026508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.483002, 37.573994, 35.519535>,  <43.149937, 37.559978, 35.375427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.483002, 37.573994, 35.519535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639809, 37.803875, 35.806877>,  <42.733894, 37.941803, 35.979282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639809, 37.803875, 35.806877>,  <42.483002, 37.573994, 35.519535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.639809, 37.803875, 35.806877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843772, 0.535756, 0.031842,
		-0.366565, -0.618613, 0.694945,
		0.392019, 0.574703, 0.718357,
		42.757416, 37.976288, 36.022385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093311, 37.642208, 36.091034>,  <42.483002, 37.573994, 35.519535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093311, 37.642208, 36.091034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333275, 37.962231, 36.092690>,  <42.477253, 38.154243, 36.093685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333275, 37.962231, 36.092690>,  <42.093311, 37.642208, 36.091034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333275, 37.962231, 36.092690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800030, 0.599816, 0.013096,
		0.007994, -0.011169, 0.999906,
		0.599906, 0.800060, 0.004141,
		42.513248, 38.202248, 36.093933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758801, 38.155815, 36.466068>,  <42.093311, 37.642208, 36.091034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.758801, 38.155815, 36.466068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.021420, 38.394459, 36.281464>,  <42.178993, 38.537647, 36.170700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.021420, 38.394459, 36.281464>,  <41.758801, 38.155815, 36.466068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.021420, 38.394459, 36.281464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599640, 0.784017, 0.160470,
		0.457572, 0.171384, 0.872500,
		0.656552, 0.596612, -0.461512,
		42.218384, 38.573441, 36.143009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823597, 38.817791, 36.869942>,  <41.758801, 38.155815, 36.466068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823597, 38.817791, 36.869942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927769, 38.900784, 36.492767>,  <41.990273, 38.950581, 36.266464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927769, 38.900784, 36.492767>,  <41.823597, 38.817791, 36.869942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.927769, 38.900784, 36.492767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745079, 0.664306, -0.059614,
		0.614029, 0.718087, 0.327597,
		0.260433, 0.207482, -0.942935,
		42.005898, 38.963028, 36.209888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003735, 39.572495, 36.824184>,  <41.823597, 38.817791, 36.869942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.003735, 39.572495, 36.824184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915714, 39.462009, 36.449959>,  <41.862904, 39.395718, 36.225422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915714, 39.462009, 36.449959>,  <42.003735, 39.572495, 36.824184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915714, 39.462009, 36.449959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564556, 0.818196, -0.108770,
		0.795520, 0.504245, -0.335982,
		-0.220053, -0.276209, -0.935567,
		41.849697, 39.379147, 36.169289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976364, 40.156960, 36.347458>,  <42.003735, 39.572495, 36.824184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976364, 40.156960, 36.347458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771935, 39.866077, 36.164162>,  <41.649277, 39.691547, 36.054184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771935, 39.866077, 36.164162>,  <41.976364, 40.156960, 36.347458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771935, 39.866077, 36.164162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618148, 0.681390, -0.391920,
		0.597245, 0.082961, -0.797757,
		-0.511069, -0.727204, -0.458240,
		41.618614, 39.647915, 36.026691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080265, 40.258118, 35.670170>,  <41.976364, 40.156960, 36.347458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080265, 40.258118, 35.670170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738010, 40.051155, 35.675503>,  <41.532658, 39.926975, 35.678703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738010, 40.051155, 35.675503>,  <42.080265, 40.258118, 35.670170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738010, 40.051155, 35.675503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451922, 0.734290, -0.506543,
		0.252302, -0.439439, -0.862112,
		-0.855635, -0.517409, 0.013329,
		41.481319, 39.895931, 35.679501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793865, 40.521450, 35.100933>,  <42.080265, 40.258118, 35.670170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793865, 40.521450, 35.100933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480602, 40.327038, 35.256077>,  <41.292645, 40.210388, 35.349163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480602, 40.327038, 35.256077>,  <41.793865, 40.521450, 35.100933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480602, 40.327038, 35.256077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618702, 0.546620, -0.564283,
		0.062248, -0.681892, -0.728799,
		-0.783156, -0.486035, 0.387862,
		41.245655, 40.181229, 35.372437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311779, 40.376144, 34.489380>,  <41.793865, 40.521450, 35.100933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311779, 40.376144, 34.489380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074345, 40.351513, 34.810345>,  <40.931885, 40.336735, 35.002922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074345, 40.351513, 34.810345>,  <41.311779, 40.376144, 34.489380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074345, 40.351513, 34.810345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697877, 0.535930, -0.475128,
		-0.400776, -0.842013, -0.361098,
		-0.593587, -0.061582, 0.802410,
		40.896267, 40.333038, 35.051067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662209, 40.109558, 34.271496>,  <41.311779, 40.376144, 34.489380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662209, 40.109558, 34.271496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540207, 40.260017, 34.621464>,  <40.467007, 40.350292, 34.831444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540207, 40.260017, 34.621464>,  <40.662209, 40.109558, 34.271496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540207, 40.260017, 34.621464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784210, 0.422068, -0.454833,
		-0.540360, -0.824848, 0.166246,
		-0.305001, 0.376146, 0.874922,
		40.448708, 40.372860, 34.883942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935375, 39.939117, 34.309433>,  <40.662209, 40.109558, 34.271496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935375, 39.939117, 34.309433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977341, 40.256573, 34.549141>,  <40.002522, 40.447044, 34.692966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977341, 40.256573, 34.549141>,  <39.935375, 39.939117, 34.309433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977341, 40.256573, 34.549141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643188, 0.513752, -0.567775,
		-0.758486, -0.325877, 0.564360,
		0.104916, 0.793639, 0.599274,
		40.008816, 40.494663, 34.728924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241859, 40.221302, 34.455666>,  <39.935375, 39.939117, 34.309433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241859, 40.221302, 34.455666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481812, 40.534195, 34.522900>,  <39.625782, 40.721931, 34.563240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481812, 40.534195, 34.522900>,  <39.241859, 40.221302, 34.455666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481812, 40.534195, 34.522900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610074, 0.583121, -0.536451,
		-0.517642, 0.219265, 0.827024,
		0.599880, 0.782235, 0.168081,
		39.661777, 40.768867, 34.573322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806412, 40.698395, 34.640701>,  <39.241859, 40.221302, 34.455666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806412, 40.698395, 34.640701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132488, 40.901882, 34.529938>,  <39.328133, 41.023975, 34.463478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132488, 40.901882, 34.529938>,  <38.806412, 40.698395, 34.640701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132488, 40.901882, 34.529938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570357, 0.621844, -0.536659,
		-0.100815, 0.595414, 0.797069,
		0.815187, 0.508717, -0.276907,
		39.377045, 41.054497, 34.446865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663883, 41.447620, 34.657280>,  <38.806412, 40.698395, 34.640701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663883, 41.447620, 34.657280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958767, 41.393852, 34.392418>,  <39.135696, 41.361591, 34.233501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958767, 41.393852, 34.392418>,  <38.663883, 41.447620, 34.657280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958767, 41.393852, 34.392418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497219, 0.555628, -0.666371,
		0.457487, 0.820493, 0.342779,
		0.737210, -0.134420, -0.662157,
		39.179932, 41.353527, 34.193771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125175, 42.031788, 34.482853>,  <38.663883, 41.447620, 34.657280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125175, 42.031788, 34.482853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101997, 41.807240, 34.152637>,  <39.088089, 41.672512, 33.954510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101997, 41.807240, 34.152637>,  <39.125175, 42.031788, 34.482853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101997, 41.807240, 34.152637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371535, 0.779651, -0.504090,
		0.926609, 0.277505, -0.253746,
		-0.057945, -0.561370, -0.825534,
		39.084614, 41.638828, 33.904976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451420, 42.312061, 33.913265>,  <39.125175, 42.031788, 34.482853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451420, 42.312061, 33.913265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169506, 42.078426, 33.752209>,  <39.000359, 41.938244, 33.655575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169506, 42.078426, 33.752209>,  <39.451420, 42.312061, 33.913265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169506, 42.078426, 33.752209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315153, 0.766262, -0.559929,
		0.635577, -0.267737, -0.724127,
		-0.704785, -0.584088, -0.402640,
		38.958073, 41.903198, 33.631416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404030, 42.143543, 33.139194>,  <39.451420, 42.312061, 33.913265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404030, 42.143543, 33.139194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028500, 42.152435, 33.276661>,  <38.803181, 42.157772, 33.359142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028500, 42.152435, 33.276661>,  <39.404030, 42.143543, 33.139194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028500, 42.152435, 33.276661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198620, 0.780266, -0.593073,
		-0.281336, -0.625053, -0.728120,
		-0.938829, 0.022233, 0.343665,
		38.746849, 42.159103, 33.379761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865490, 42.640713, 32.626793>,  <39.404030, 42.143543, 33.139194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865490, 42.640713, 32.626793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889160, 42.364674, 32.338276>,  <39.903362, 42.199051, 32.165165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889160, 42.364674, 32.338276>,  <39.865490, 42.640713, 32.626793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889160, 42.364674, 32.338276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889424, 0.364514, -0.275780,
		0.453236, -0.625210, 0.635365,
		0.059179, -0.690102, -0.721288,
		39.906914, 42.157642, 32.121891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005283, 43.189186, 32.354450>,  <39.865490, 42.640713, 32.626793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005283, 43.189186, 32.354450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196476, 43.284248, 32.016205>,  <40.311192, 43.341286, 31.813259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196476, 43.284248, 32.016205>,  <40.005283, 43.189186, 32.354450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196476, 43.284248, 32.016205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871878, -0.245213, 0.423910,
		-0.106608, -0.939888, -0.324416,
		0.477979, 0.237659, -0.845609,
		40.339870, 43.355545, 31.762522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495949, 42.650547, 32.281540>,  <40.005283, 43.189186, 32.354450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495949, 42.650547, 32.281540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615868, 42.995129, 32.117577>,  <40.687820, 43.201878, 32.019199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615868, 42.995129, 32.117577>,  <40.495949, 42.650547, 32.281540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615868, 42.995129, 32.117577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845004, -0.040341, 0.533237,
		0.442822, -0.506234, -0.740024,
		0.299796, 0.861452, -0.409906,
		40.705807, 43.253563, 31.994604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265358, 42.500622, 31.480400>,  <40.495949, 42.650547, 32.281540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265358, 42.500622, 31.480400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447029, 42.464989, 31.125822>,  <40.556034, 42.443607, 30.913074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447029, 42.464989, 31.125822>,  <40.265358, 42.500622, 31.480400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447029, 42.464989, 31.125822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698409, -0.582139, 0.416340,
		-0.553122, -0.808195, -0.202183,
		0.454182, -0.089080, -0.886444,
		40.583282, 42.438263, 30.859888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382828, 41.824696, 31.268709>,  <40.265358, 42.500622, 31.480400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382828, 41.824696, 31.268709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664906, 42.037582, 31.081329>,  <40.834152, 42.165314, 30.968901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664906, 42.037582, 31.081329>,  <40.382828, 41.824696, 31.268709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664906, 42.037582, 31.081329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696462, -0.643745, 0.317069,
		-0.132814, -0.549854, -0.824634,
		0.705196, 0.532215, -0.468451,
		40.876465, 42.197247, 30.940794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671043, 41.320347, 30.686920>,  <40.382828, 41.824696, 31.268709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671043, 41.320347, 30.686920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866444, 41.598881, 30.897247>,  <40.983685, 41.766003, 31.023443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866444, 41.598881, 30.897247>,  <40.671043, 41.320347, 30.686920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866444, 41.598881, 30.897247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613432, -0.702624, 0.360584,
		0.620539, 0.146407, -0.770387,
		0.488500, 0.696337, 0.525816,
		41.012993, 41.807781, 31.054993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433598, 41.579838, 30.456554>,  <40.671043, 41.320347, 30.686920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433598, 41.579838, 30.456554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336910, 41.565994, 30.844446>,  <41.278896, 41.557690, 31.077181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336910, 41.565994, 30.844446>,  <41.433598, 41.579838, 30.456554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336910, 41.565994, 30.844446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709379, -0.688185, 0.152260,
		0.662084, 0.724709, 0.190898,
		-0.241717, -0.034610, 0.969729,
		41.264397, 41.555611, 31.135365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.119278, 41.507725, 30.956858>,  <41.433598, 41.579838, 30.456554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.119278, 41.507725, 30.956858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830605, 41.384026, 31.204578>,  <41.657402, 41.309807, 31.353210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830605, 41.384026, 31.204578>,  <42.119278, 41.507725, 30.956858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.830605, 41.384026, 31.204578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565650, -0.779164, 0.270079,
		0.399017, 0.545221, 0.737238,
		-0.721682, -0.309252, 0.619304,
		41.614101, 41.291248, 31.390369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.440243, 41.584515, 31.697491>,  <42.119278, 41.507725, 30.956858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.440243, 41.584515, 31.697491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.127037, 41.336472, 31.716892>,  <41.939114, 41.187645, 31.728533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.127037, 41.336472, 31.716892>,  <42.440243, 41.584515, 31.697491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.127037, 41.336472, 31.716892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511793, -0.597994, 0.616823,
		-0.353492, 0.507806, 0.785606,
		-0.783014, -0.620110, 0.048506,
		41.892132, 41.150440, 31.731443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.424736, 41.418777, 32.417126>,  <42.440243, 41.584515, 31.697491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.424736, 41.418777, 32.417126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.240700, 41.137161, 32.200737>,  <42.130280, 40.968193, 32.070904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.240700, 41.137161, 32.200737>,  <42.424736, 41.418777, 32.417126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.240700, 41.137161, 32.200737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581097, -0.699443, 0.416059,
		-0.671301, -0.122934, 0.730919,
		-0.460088, -0.704036, -0.540973,
		42.102673, 40.925949, 32.038445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310055, 40.956009, 32.909782>,  <42.424736, 41.418777, 32.417126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310055, 40.956009, 32.909782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.262905, 40.736881, 32.578480>,  <42.234615, 40.605404, 32.379700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.262905, 40.736881, 32.578480>,  <42.310055, 40.956009, 32.909782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262905, 40.736881, 32.578480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469566, -0.765677, 0.439599,
		-0.874993, -0.337102, 0.347490,
		-0.117875, -0.547815, -0.828254,
		42.227543, 40.572536, 32.330002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004154, 40.314198, 33.075020>,  <42.310055, 40.956009, 32.909782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004154, 40.314198, 33.075020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.193657, 40.237518, 32.731205>,  <42.307358, 40.191509, 32.524918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.193657, 40.237518, 32.731205>,  <42.004154, 40.314198, 33.075020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193657, 40.237518, 32.731205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532802, -0.714736, 0.453072,
		-0.701197, -0.672609, -0.236473,
		0.473756, -0.191700, -0.859538,
		42.335785, 40.180008, 32.473343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924255, 39.611408, 32.817883>,  <42.004154, 40.314198, 33.075020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.924255, 39.611408, 32.817883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267529, 39.745670, 32.662518>,  <42.473492, 39.826225, 32.569298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267529, 39.745670, 32.662518>,  <41.924255, 39.611408, 32.817883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267529, 39.745670, 32.662518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507875, -0.665338, 0.547164,
		-0.074769, -0.666831, -0.741449,
		0.858180, 0.335653, -0.388413,
		42.524982, 39.846367, 32.545994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310989, 38.970417, 32.756916>,  <41.924255, 39.611408, 32.817883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310989, 38.970417, 32.756916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.597446, 39.232372, 32.660362>,  <42.769321, 39.389545, 32.602428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.597446, 39.232372, 32.660362>,  <42.310989, 38.970417, 32.756916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.597446, 39.232372, 32.660362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686072, -0.596950, 0.415879,
		0.128259, -0.463434, -0.876800,
		0.716138, 0.654889, -0.241385,
		42.812286, 39.428841, 32.587948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.765617, 38.568485, 32.502506>,  <42.310989, 38.970417, 32.756916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.765617, 38.568485, 32.502506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980011, 38.898827, 32.572578>,  <43.108646, 39.097031, 32.614620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980011, 38.898827, 32.572578>,  <42.765617, 38.568485, 32.502506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.980011, 38.898827, 32.572578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628760, -0.528964, 0.569964,
		0.563370, -0.195345, -0.802779,
		0.535981, 0.825856, 0.175177,
		43.140804, 39.146584, 32.625130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.526249, 38.382149, 32.299454>,  <42.765617, 38.568485, 32.502506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.526249, 38.382149, 32.299454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.499817, 38.679688, 32.565483>,  <43.483959, 38.858212, 32.725101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.499817, 38.679688, 32.565483>,  <43.526249, 38.382149, 32.299454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.499817, 38.679688, 32.565483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806346, -0.352800, 0.474698,
		0.587741, 0.567648, -0.576486,
		-0.066077, 0.743847, 0.665076,
		43.479992, 38.902843, 32.765007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.194870, 38.558956, 32.326950>,  <43.526249, 38.382149, 32.299454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.194870, 38.558956, 32.326950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.007797, 38.700592, 32.650898>,  <43.895554, 38.785572, 32.845268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.007797, 38.700592, 32.650898>,  <44.194870, 38.558956, 32.326950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007797, 38.700592, 32.650898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714787, -0.387483, 0.582183,
		0.519956, 0.851164, -0.071878,
		-0.467682, 0.354087, 0.809874,
		43.867493, 38.806820, 32.893860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.701469, 38.842976, 32.697094>,  <44.194870, 38.558956, 32.326950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.701469, 38.842976, 32.697094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.411610, 38.756428, 32.958801>,  <44.237694, 38.704498, 33.115826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.411610, 38.756428, 32.958801>,  <44.701469, 38.842976, 32.697094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.411610, 38.756428, 32.958801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665115, -0.468011, 0.581883,
		0.180305, 0.856826, 0.483052,
		-0.724646, -0.216369, 0.654272,
		44.194214, 38.691517, 33.155083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.089027, 38.903900, 33.234814>,  <44.701469, 38.842976, 32.697094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.089027, 38.903900, 33.234814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.758518, 38.694607, 33.318230>,  <44.560211, 38.569031, 33.368279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.758518, 38.694607, 33.318230>,  <45.089027, 38.903900, 33.234814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.758518, 38.694607, 33.318230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532250, -0.604138, 0.593067,
		-0.184325, 0.601034, 0.777677,
		-0.826278, -0.523236, 0.208542,
		44.510635, 38.537636, 33.380791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.025978, 38.870953, 33.914551>,  <45.089027, 38.903900, 33.234814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.025978, 38.870953, 33.914551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.800179, 38.561024, 33.800716>,  <44.664700, 38.375065, 33.732414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.800179, 38.561024, 33.800716>,  <45.025978, 38.870953, 33.914551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.800179, 38.561024, 33.800716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442030, -0.574932, 0.688523,
		-0.697101, 0.262875, 0.667043,
		-0.564500, -0.774823, -0.284587,
		44.630829, 38.328575, 33.715340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.554520, 38.613365, 34.535164>,  <45.025978, 38.870953, 33.914551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.554520, 38.613365, 34.535164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.552822, 38.302395, 34.283581>,  <44.551804, 38.115810, 34.132633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.552822, 38.302395, 34.283581>,  <44.554520, 38.613365, 34.535164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.552822, 38.302395, 34.283581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317561, -0.597453, 0.736346,
		-0.948228, -0.196606, 0.249417,
		-0.004245, -0.777429, -0.628956,
		44.551548, 38.069164, 34.094894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.383526, 38.069252, 34.941063>,  <44.554520, 38.613365, 34.535164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.383526, 38.069252, 34.941063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.529263, 37.866798, 34.628376>,  <44.616703, 37.745327, 34.440765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.529263, 37.866798, 34.628376>,  <44.383526, 38.069252, 34.941063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.529263, 37.866798, 34.628376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052690, -0.826867, 0.559924,
		-0.929775, -0.245191, -0.274591,
		0.364338, -0.506135, -0.781719,
		44.638565, 37.714958, 34.393860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.018677, 37.432369, 34.889492>,  <44.383526, 38.069252, 34.941063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.018677, 37.432369, 34.889492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.381538, 37.392467, 34.725975>,  <44.599255, 37.368526, 34.627865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.381538, 37.392467, 34.725975>,  <44.018677, 37.432369, 34.889492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.381538, 37.392467, 34.725975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155690, -0.822985, 0.546312,
		-0.390929, -0.559236, -0.731047,
		0.907158, -0.099752, -0.408796,
		44.653687, 37.362541, 34.603336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.120399, 36.810345, 34.913673>,  <44.018677, 37.432369, 34.889492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.120399, 36.810345, 34.913673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497150, 36.912121, 34.825916>,  <44.723202, 36.973186, 34.773262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497150, 36.912121, 34.825916>,  <44.120399, 36.810345, 34.913673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.497150, 36.912121, 34.825916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335945, -0.719648, 0.607657,
		-0.003272, -0.646040, -0.763297,
		0.941876, 0.254438, -0.219389,
		44.779713, 36.988453, 34.760101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.393623, 36.206036, 34.687893>,  <44.120399, 36.810345, 34.913673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.393623, 36.206036, 34.687893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.693420, 36.449127, 34.792912>,  <44.873299, 36.594982, 34.855923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.693420, 36.449127, 34.792912>,  <44.393623, 36.206036, 34.687893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.693420, 36.449127, 34.792912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470807, -0.768116, 0.433980,
		0.465407, -0.201656, -0.861819,
		0.749491, 0.607727, 0.262546,
		44.918266, 36.631447, 34.871674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.929672, 35.850727, 34.629116>,  <44.393623, 36.206036, 34.687893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.929672, 35.850727, 34.629116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.026340, 36.129421, 34.899273>,  <45.084343, 36.296638, 35.061367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.026340, 36.129421, 34.899273>,  <44.929672, 35.850727, 34.629116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.026340, 36.129421, 34.899273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441342, -0.698786, 0.562952,
		0.864183, 0.162028, -0.476378,
		0.241672, 0.696739, 0.675388,
		45.098843, 36.338444, 35.101891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.545727, 35.601437, 34.757683>,  <44.929672, 35.850727, 34.629116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.545727, 35.601437, 34.757683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.423187, 35.833893, 35.059258>,  <45.349663, 35.973366, 35.240204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.423187, 35.833893, 35.059258>,  <45.545727, 35.601437, 34.757683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.423187, 35.833893, 35.059258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067543, -0.776754, 0.626172,
		0.949521, 0.242748, 0.198703,
		-0.306345, 0.581143, 0.753940,
		45.331284, 36.008236, 35.285439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.972698, 35.829979, 34.312298>,  <45.545727, 35.601437, 34.757683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.972698, 35.829979, 34.312298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.968712, 36.119141, 34.588650>,  <45.966320, 36.292637, 34.754459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.968712, 36.119141, 34.588650>,  <45.972698, 35.829979, 34.312298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.968712, 36.119141, 34.588650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003888, 0.690879, -0.722960,
		-0.999943, -0.009888, -0.004072,
		-0.009962, 0.722903, 0.690878,
		45.965725, 36.336010, 34.795914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.890076, 35.018871, 34.390308>,  <45.972698, 35.829979, 34.312298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.890076, 35.018871, 34.390308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.980373, 35.212620, 34.728401>,  <46.034550, 35.328869, 34.931259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.980373, 35.212620, 34.728401>,  <45.890076, 35.018871, 34.390308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.980373, 35.212620, 34.728401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221416, -0.870434, 0.439682,
		0.948691, 0.087894, -0.303742,
		0.225742, 0.484375, 0.845234,
		46.048096, 35.357933, 34.981972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.500023, 34.756660, 34.586353>,  <45.890076, 35.018871, 34.390308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.500023, 34.756660, 34.586353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.336945, 34.926853, 34.909523>,  <46.239098, 35.028969, 35.103424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.336945, 34.926853, 34.909523>,  <46.500023, 34.756660, 34.586353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.336945, 34.926853, 34.909523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263169, -0.792506, 0.550161,
		0.874373, 0.436919, 0.211125,
		-0.407694, 0.425484, 0.807929,
		46.214638, 35.054497, 35.151901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.039753, 34.850170, 35.025032>,  <46.500023, 34.756660, 34.586353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.039753, 34.850170, 35.025032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.664051, 34.776707, 35.141006>,  <46.438629, 34.732628, 35.210590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.664051, 34.776707, 35.141006>,  <47.039753, 34.850170, 35.025032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.664051, 34.776707, 35.141006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262300, -0.928931, 0.261316,
		0.221341, 0.321494, 0.920679,
		-0.939259, -0.183654, 0.289938,
		46.382275, 34.721611, 35.227989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.800446, 35.102169, 34.753185>,  <47.039753, 34.850170, 35.025032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.800446, 35.102169, 34.753185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.629139, 35.066128, 35.112846>,  <47.526356, 35.044502, 35.328644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.629139, 35.066128, 35.112846>,  <47.800446, 35.102169, 34.753185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.629139, 35.066128, 35.112846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171516, -0.985034, -0.017014,
		0.887227, 0.146932, 0.437309,
		-0.428264, -0.090101, 0.899150,
		47.500660, 35.039097, 35.382591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.406738, 36.799057, 44.341869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.035904, 36.736801, 44.205467>,  <34.813404, 36.699448, 44.123627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.035904, 36.736801, 44.205467>,  <35.406738, 36.799057, 44.341869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035904, 36.736801, 44.205467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373000, -0.292864, -0.880399,
		0.037160, -0.943401, 0.329565,
		-0.927087, -0.155644, -0.341006,
		34.757778, 36.690109, 44.103165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425644, 36.153633, 44.096355>,  <35.406738, 36.799057, 44.341869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425644, 36.153633, 44.096355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.125149, 36.334198, 43.903744>,  <34.944851, 36.442535, 43.788177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.125149, 36.334198, 43.903744>,  <35.425644, 36.153633, 44.096355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125149, 36.334198, 43.903744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401641, -0.266275, -0.876232,
		-0.523759, -0.851660, 0.018732,
		-0.751239, 0.451411, -0.481526,
		34.899776, 36.469620, 43.759285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064545, 35.744934, 43.600639>,  <35.425644, 36.153633, 44.096355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064545, 35.744934, 43.600639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.986351, 36.108311, 43.452850>,  <34.939434, 36.326336, 43.364178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.986351, 36.108311, 43.452850>,  <35.064545, 35.744934, 43.600639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986351, 36.108311, 43.452850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497961, -0.232624, -0.835417,
		-0.844880, -0.347292, -0.406898,
		-0.195479, 0.908446, -0.369477,
		34.927708, 36.380844, 43.342007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784515, 35.533413, 43.047531>,  <35.064545, 35.744934, 43.600639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784515, 35.533413, 43.047531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.868603, 35.920532, 42.992149>,  <34.919056, 36.152805, 42.958920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.868603, 35.920532, 42.992149>,  <34.784515, 35.533413, 43.047531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868603, 35.920532, 42.992149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383186, -0.211849, -0.899049,
		-0.899432, 0.135943, -0.415382,
		0.210217, 0.967802, -0.138452,
		34.931667, 36.210873, 42.950615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590687, 35.528446, 42.440174>,  <34.784515, 35.533413, 43.047531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590687, 35.528446, 42.440174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.794044, 35.870293, 42.482452>,  <34.916058, 36.075401, 42.507820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.794044, 35.870293, 42.482452>,  <34.590687, 35.528446, 42.440174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794044, 35.870293, 42.482452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346212, -0.090473, -0.933784,
		-0.788462, 0.511321, -0.341873,
		0.508394, 0.854614, 0.105691,
		34.946564, 36.126678, 42.514160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343536, 36.006340, 41.884125>,  <34.590687, 35.528446, 42.440174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343536, 36.006340, 41.884125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.710526, 36.089638, 42.019695>,  <34.930717, 36.139618, 42.101040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.710526, 36.089638, 42.019695>,  <34.343536, 36.006340, 41.884125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710526, 36.089638, 42.019695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367418, -0.117070, -0.922658,
		-0.152462, 0.971045, -0.183923,
		0.917474, 0.208247, 0.338931,
		34.985767, 36.152111, 42.121376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669220, 36.248940, 41.323948>,  <34.343536, 36.006340, 41.884125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669220, 36.248940, 41.323948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.987465, 36.221043, 41.564655>,  <35.178413, 36.204304, 41.709080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.987465, 36.221043, 41.564655>,  <34.669220, 36.248940, 41.323948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987465, 36.221043, 41.564655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602930, -0.005430, -0.797776,
		0.058909, 0.997550, 0.037732,
		0.795616, -0.069746, 0.601773,
		35.226151, 36.200119, 41.745186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230900, 36.696838, 41.086269>,  <34.669220, 36.248940, 41.323948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230900, 36.696838, 41.086269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.403862, 36.399700, 41.290703>,  <35.507641, 36.221416, 41.413364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.403862, 36.399700, 41.290703>,  <35.230900, 36.696838, 41.086269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403862, 36.399700, 41.290703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593000, -0.192705, -0.781803,
		0.679245, 0.641131, 0.357178,
		0.432408, -0.742843, 0.511085,
		35.533585, 36.176846, 41.444027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872074, 36.800926, 40.934822>,  <35.230900, 36.696838, 41.086269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872074, 36.800926, 40.934822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.866978, 36.422684, 41.064846>,  <35.863922, 36.195736, 41.142860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.866978, 36.422684, 41.064846>,  <35.872074, 36.800926, 40.934822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866978, 36.422684, 41.064846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722225, -0.233527, -0.651042,
		0.691541, 0.226473, 0.685917,
		-0.012737, -0.945608, 0.325058,
		35.863155, 36.139000, 41.162365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621376, 36.587265, 41.122875>,  <35.872074, 36.800926, 40.934822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621376, 36.587265, 41.122875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.411972, 36.253498, 41.053959>,  <36.286327, 36.053238, 41.012611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.411972, 36.253498, 41.053959>,  <36.621376, 36.587265, 41.122875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411972, 36.253498, 41.053959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720186, -0.325321, -0.612780,
		0.455264, -0.444879, 0.771245,
		-0.523514, -0.834416, -0.172289,
		36.254917, 36.003174, 41.002274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056145, 36.024857, 41.358475>,  <36.621376, 36.587265, 41.122875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056145, 36.024857, 41.358475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.792248, 35.901642, 41.084293>,  <36.633911, 35.827713, 40.919785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.792248, 35.901642, 41.084293>,  <37.056145, 36.024857, 41.358475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792248, 35.901642, 41.084293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751442, -0.280986, -0.596977,
		-0.008712, -0.908933, 0.416852,
		-0.659742, -0.308039, -0.685458,
		36.594326, 35.809231, 40.878654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220753, 35.360641, 41.329899>,  <37.056145, 36.024857, 41.358475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220753, 35.360641, 41.329899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.073769, 35.474564, 40.975754>,  <36.985577, 35.542915, 40.763268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.073769, 35.474564, 40.975754>,  <37.220753, 35.360641, 41.329899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073769, 35.474564, 40.975754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820203, -0.349550, -0.452861,
		-0.438453, -0.892582, -0.105150,
		-0.367461, 0.284803, -0.885359,
		36.963531, 35.560005, 40.710148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418613, 34.845055, 40.899265>,  <37.220753, 35.360641, 41.329899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418613, 34.845055, 40.899265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.307835, 35.126652, 40.637672>,  <37.241367, 35.295612, 40.480717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.307835, 35.126652, 40.637672>,  <37.418613, 34.845055, 40.899265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307835, 35.126652, 40.637672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773457, -0.240505, -0.586448,
		-0.570142, -0.668242, -0.477902,
		-0.276951, 0.703995, -0.653979,
		37.224751, 35.337849, 40.441479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666893, 34.505402, 40.334789>,  <37.418613, 34.845055, 40.899265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666893, 34.505402, 40.334789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.570671, 34.879528, 40.231014>,  <37.512939, 35.104004, 40.168747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.570671, 34.879528, 40.231014>,  <37.666893, 34.505402, 40.334789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570671, 34.879528, 40.231014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583147, -0.074410, -0.808951,
		-0.775933, -0.345890, -0.527530,
		-0.240555, 0.935320, -0.259442,
		37.498505, 35.160126, 40.153183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327652, 34.417648, 39.719040>,  <37.666893, 34.505402, 40.334789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327652, 34.417648, 39.719040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.502380, 34.777451, 39.722519>,  <37.607220, 34.993332, 39.724606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.502380, 34.777451, 39.722519>,  <37.327652, 34.417648, 39.719040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502380, 34.777451, 39.722519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534874, -0.251955, -0.806491,
		-0.723252, 0.356946, -0.591182,
		0.436825, 0.899504, 0.008694,
		37.633427, 35.047302, 39.725128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554722, 34.482521, 39.023502>,  <37.327652, 34.417648, 39.719040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554722, 34.482521, 39.023502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.741360, 34.788860, 39.200489>,  <37.853344, 34.972664, 39.306679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.741360, 34.788860, 39.200489>,  <37.554722, 34.482521, 39.023502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741360, 34.788860, 39.200489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659426, 0.032175, -0.751080,
		-0.589447, 0.642221, -0.490005,
		0.466594, 0.765844, 0.442463,
		37.881336, 35.018612, 39.333229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599148, 35.017227, 38.535660>,  <37.554722, 34.482521, 39.023502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599148, 35.017227, 38.535660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.892776, 35.070629, 38.801987>,  <38.068954, 35.102669, 38.961781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.892776, 35.070629, 38.801987>,  <37.599148, 35.017227, 38.535660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892776, 35.070629, 38.801987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668673, 0.028790, -0.742999,
		-0.118361, 0.990630, -0.068136,
		0.734075, 0.133503, 0.665816,
		38.112999, 35.110680, 39.001732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070911, 35.655884, 38.324619>,  <37.599148, 35.017227, 38.535660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070911, 35.655884, 38.324619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.266895, 35.402588, 38.564270>,  <38.384483, 35.250610, 38.708061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.266895, 35.402588, 38.564270>,  <38.070911, 35.655884, 38.324619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266895, 35.402588, 38.564270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774069, -0.000072, -0.633102,
		0.400948, 0.773956, 0.490135,
		0.489957, -0.633240, 0.599124,
		38.413883, 35.212616, 38.744007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699879, 35.923004, 38.202831>,  <38.070911, 35.655884, 38.324619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699879, 35.923004, 38.202831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.733841, 35.563690, 38.375282>,  <38.754219, 35.348103, 38.478752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.733841, 35.563690, 38.375282>,  <38.699879, 35.923004, 38.202831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733841, 35.563690, 38.375282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746666, -0.229140, -0.624487,
		0.659757, 0.374933, 0.651265,
		0.084910, -0.898287, 0.431127,
		38.759315, 35.294205, 38.504620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327881, 35.899944, 38.367485>,  <38.699879, 35.923004, 38.202831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327881, 35.899944, 38.367485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.212189, 35.518250, 38.337090>,  <39.142773, 35.289230, 38.318851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.212189, 35.518250, 38.337090>,  <39.327881, 35.899944, 38.367485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212189, 35.518250, 38.337090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840256, -0.215050, -0.497718,
		0.458601, -0.207803, 0.864004,
		-0.289231, -0.954239, -0.075986,
		39.125420, 35.231979, 38.314293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900135, 35.391949, 38.635235>,  <39.327881, 35.899944, 38.367485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900135, 35.391949, 38.635235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.689037, 35.156796, 38.389996>,  <39.562378, 35.015705, 38.242851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.689037, 35.156796, 38.389996>,  <39.900135, 35.391949, 38.635235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689037, 35.156796, 38.389996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844891, -0.289003, -0.450151,
		0.087448, -0.755562, 0.649214,
		-0.527742, -0.587880, -0.613095,
		39.530716, 34.980431, 38.206066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331593, 34.851776, 38.704475>,  <39.900135, 35.391949, 38.635235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331593, 34.851776, 38.704475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.086697, 34.786129, 38.395092>,  <39.939758, 34.746742, 38.209461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.086697, 34.786129, 38.395092>,  <40.331593, 34.851776, 38.704475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086697, 34.786129, 38.395092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787811, -0.209798, -0.579084,
		-0.067231, -0.963873, 0.257740,
		-0.612237, -0.164117, -0.773454,
		39.903027, 34.736893, 38.163055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041065, 35.167091, 38.520370>,  <40.331593, 34.851776, 38.704475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041065, 35.167091, 38.520370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.375565, 35.294739, 38.698746>,  <41.576263, 35.371326, 38.805771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.375565, 35.294739, 38.698746>,  <41.041065, 35.167091, 38.520370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375565, 35.294739, 38.698746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534782, 0.294767, 0.791910,
		0.121261, -0.900710, 0.417153,
		0.836244, 0.319114, 0.445939,
		41.626438, 35.390472, 38.832527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876926, 35.136002, 39.240318>,  <41.041065, 35.167091, 38.520370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876926, 35.136002, 39.240318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.180878, 35.393059, 39.201134>,  <41.363247, 35.547295, 39.177624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.180878, 35.393059, 39.201134>,  <40.876926, 35.136002, 39.240318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180878, 35.393059, 39.201134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406335, 0.587172, 0.700086,
		0.507426, -0.492174, 0.707307,
		0.759875, 0.642646, -0.097959,
		41.408840, 35.585854, 39.171745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115555, 35.273697, 39.999046>,  <40.876926, 35.136002, 39.240318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115555, 35.273697, 39.999046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.246113, 35.570312, 39.764584>,  <41.324448, 35.748283, 39.623905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.246113, 35.570312, 39.764584>,  <41.115555, 35.273697, 39.999046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.246113, 35.570312, 39.764584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127466, 0.648985, 0.750048,
		0.936600, -0.170095, 0.306346,
		0.326393, 0.741544, -0.586158,
		41.344032, 35.792774, 39.588737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655769, 35.570747, 40.423962>,  <41.115555, 35.273697, 39.999046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655769, 35.570747, 40.423962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.531391, 35.819187, 40.136200>,  <41.456764, 35.968250, 39.963543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.531391, 35.819187, 40.136200>,  <41.655769, 35.570747, 40.423962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.531391, 35.819187, 40.136200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164360, 0.710381, 0.684357,
		0.936107, 0.331042, -0.118808,
		-0.310950, 0.621104, -0.719403,
		41.438107, 36.005520, 39.920380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.946503, 36.255749, 40.653233>,  <41.655769, 35.570747, 40.423962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.946503, 36.255749, 40.653233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.645512, 36.319935, 40.397724>,  <41.464916, 36.358444, 40.244419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.645512, 36.319935, 40.397724>,  <41.946503, 36.255749, 40.653233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.645512, 36.319935, 40.397724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319234, 0.759465, 0.566836,
		0.576082, 0.630449, -0.520254,
		-0.752476, 0.160462, -0.638774,
		41.419769, 36.368073, 40.206093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.709263, 36.979321, 40.818314>,  <41.946503, 36.255749, 40.653233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.709263, 36.979321, 40.818314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.404541, 36.811584, 40.620804>,  <41.221706, 36.710945, 40.502300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.404541, 36.811584, 40.620804>,  <41.709263, 36.979321, 40.818314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404541, 36.811584, 40.620804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647319, 0.463205, 0.605325,
		-0.025120, 0.780767, -0.624318,
		-0.761805, -0.419338, -0.493770,
		41.175999, 36.685783, 40.472672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231384, 37.548504, 40.823452>,  <41.709263, 36.979321, 40.818314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231384, 37.548504, 40.823452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.001774, 37.229404, 40.749596>,  <40.864010, 37.037945, 40.705280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.001774, 37.229404, 40.749596>,  <41.231384, 37.548504, 40.823452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001774, 37.229404, 40.749596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714184, 0.377462, 0.589461,
		-0.400547, 0.470233, -0.786412,
		-0.574024, -0.797749, -0.184641,
		40.829567, 36.990078, 40.694202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534134, 37.734173, 40.723206>,  <41.231384, 37.548504, 40.823452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534134, 37.734173, 40.723206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.487610, 37.349148, 40.821144>,  <40.459694, 37.118134, 40.879906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.487610, 37.349148, 40.821144>,  <40.534134, 37.734173, 40.723206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487610, 37.349148, 40.821144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643718, 0.260789, 0.719456,
		-0.756373, -0.073929, -0.649950,
		-0.116311, -0.962561, 0.244843,
		40.452717, 37.060379, 40.894596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785622, 37.518177, 40.690063>,  <40.534134, 37.734173, 40.723206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785622, 37.518177, 40.690063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.966488, 37.260567, 40.936893>,  <40.075008, 37.106003, 41.084991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.966488, 37.260567, 40.936893>,  <39.785622, 37.518177, 40.690063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966488, 37.260567, 40.936893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822135, -0.032648, 0.568356,
		-0.345889, -0.764309, -0.544236,
		0.452168, -0.644023, 0.617072,
		40.102139, 37.067360, 41.122017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326687, 37.053131, 40.803165>,  <39.785622, 37.518177, 40.690063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326687, 37.053131, 40.803165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.585155, 36.986042, 41.100979>,  <39.740234, 36.945789, 41.279667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.585155, 36.986042, 41.100979>,  <39.326687, 37.053131, 40.803165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585155, 36.986042, 41.100979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750146, 0.040040, 0.660059,
		-0.140522, -0.985020, -0.099948,
		0.646169, -0.167728, 0.744535,
		39.779007, 36.935726, 41.324341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942520, 36.576351, 41.250408>,  <39.326687, 37.053131, 40.803165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942520, 36.576351, 41.250408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.224827, 36.730625, 41.488110>,  <39.394211, 36.823189, 41.630730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.224827, 36.730625, 41.488110>,  <38.942520, 36.576351, 41.250408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224827, 36.730625, 41.488110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619322, -0.071393, 0.781884,
		0.343989, -0.919863, 0.188478,
		0.705770, 0.385688, 0.594250,
		39.436558, 36.846333, 41.666386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745991, 36.306961, 41.781769>,  <38.942520, 36.576351, 41.250408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745991, 36.306961, 41.781769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.010849, 36.582851, 41.898968>,  <39.169762, 36.748386, 41.969288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.010849, 36.582851, 41.898968>,  <38.745991, 36.306961, 41.781769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010849, 36.582851, 41.898968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445904, 0.048401, 0.893771,
		0.602275, -0.722452, 0.339599,
		0.662144, 0.689725, 0.292994,
		39.209492, 36.789768, 41.986866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994068, 36.051567, 42.519539>,  <38.745991, 36.306961, 41.781769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994068, 36.051567, 42.519539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.033924, 36.444443, 42.455818>,  <39.057838, 36.680168, 42.417583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.033924, 36.444443, 42.455818>,  <38.994068, 36.051567, 42.519539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033924, 36.444443, 42.455818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740905, 0.180108, 0.647009,
		0.664176, 0.053560, 0.745655,
		0.099645, 0.982187, -0.159307,
		39.063816, 36.739098, 42.408028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888794, 36.341904, 43.179676>,  <38.994068, 36.051567, 42.519539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888794, 36.341904, 43.179676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.850441, 36.649139, 42.926430>,  <38.827427, 36.833481, 42.774483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.850441, 36.649139, 42.926430>,  <38.888794, 36.341904, 43.179676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850441, 36.649139, 42.926430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613959, 0.455009, 0.644997,
		0.783493, 0.450554, 0.427949,
		-0.095886, 0.768094, -0.633118,
		38.821674, 36.879566, 42.736496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026703, 36.865562, 43.543621>,  <38.888794, 36.341904, 43.179676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026703, 36.865562, 43.543621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.782772, 36.982784, 43.249077>,  <38.636414, 37.053116, 43.072350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.782772, 36.982784, 43.249077>,  <39.026703, 36.865562, 43.543621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782772, 36.982784, 43.249077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619935, 0.402462, 0.673576,
		0.493752, 0.867262, -0.063758,
		-0.609827, 0.293054, -0.736363,
		38.599823, 37.070702, 43.028168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975769, 37.603752, 43.693546>,  <39.026703, 36.865562, 43.543621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975769, 37.603752, 43.693546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.669594, 37.477039, 43.469494>,  <38.485889, 37.401012, 43.335060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.669594, 37.477039, 43.469494>,  <38.975769, 37.603752, 43.693546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669594, 37.477039, 43.469494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638831, 0.269304, 0.720673,
		-0.077452, 0.909463, -0.408507,
		-0.765438, -0.316785, -0.560135,
		38.439960, 37.382004, 43.301453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497189, 38.170971, 43.716652>,  <38.975769, 37.603752, 43.693546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497189, 38.170971, 43.716652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.262363, 37.872303, 43.591530>,  <38.121468, 37.693104, 43.516457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.262363, 37.872303, 43.591530>,  <38.497189, 38.170971, 43.716652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262363, 37.872303, 43.591530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728742, 0.319145, 0.605873,
		-0.352556, 0.583638, -0.731485,
		-0.587060, -0.746668, -0.312805,
		38.086246, 37.648304, 43.497688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859055, 38.388451, 43.517887>,  <38.497189, 38.170971, 43.716652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859055, 38.388451, 43.517887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.767529, 38.011292, 43.614697>,  <37.712612, 37.784996, 43.672783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.767529, 38.011292, 43.614697>,  <37.859055, 38.388451, 43.517887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767529, 38.011292, 43.614697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553329, 0.330532, 0.764575,
		-0.800918, 0.041028, -0.597367,
		-0.228818, -0.942902, 0.242027,
		37.698883, 37.728420, 43.687305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.028801, 38.354965, 43.823818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.145565, 37.976543, 43.880062>,  <37.215622, 37.749489, 43.913807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.145565, 37.976543, 43.880062>,  <37.028801, 38.354965, 43.823818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145565, 37.976543, 43.880062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691404, -0.107145, 0.714479,
		-0.660871, -0.305779, -0.685382,
		0.291909, -0.946054, 0.140608,
		37.233139, 37.692726, 43.922245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342999, 37.870186, 43.749943>,  <37.028801, 38.354965, 43.823818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342999, 37.870186, 43.749943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.640152, 37.723854, 43.974190>,  <36.818443, 37.636055, 44.108738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.640152, 37.723854, 43.974190>,  <36.342999, 37.870186, 43.749943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640152, 37.723854, 43.974190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628269, -0.091930, 0.772546,
		-0.231081, -0.926131, -0.298132,
		0.742886, -0.365828, 0.560616,
		36.863018, 37.614105, 44.142376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156715, 37.203133, 43.948181>,  <36.342999, 37.870186, 43.749943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156715, 37.203133, 43.948181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.442039, 37.303894, 44.209785>,  <36.613235, 37.364349, 44.366749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.442039, 37.303894, 44.209785>,  <36.156715, 37.203133, 43.948181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442039, 37.303894, 44.209785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608060, -0.241585, 0.756240,
		0.348500, -0.937113, -0.019152,
		0.713309, 0.251904, 0.654014,
		36.656033, 37.379467, 44.405991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313202, 36.559856, 44.440544>,  <36.156715, 37.203133, 43.948181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313202, 36.559856, 44.440544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.436756, 36.890888, 44.628036>,  <36.510887, 37.089508, 44.740532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.436756, 36.890888, 44.628036>,  <36.313202, 36.559856, 44.440544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436756, 36.890888, 44.628036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510438, -0.271597, 0.815897,
		0.802523, -0.491275, 0.338534,
		0.308885, 0.827577, 0.468728,
		36.529423, 37.139160, 44.768654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583691, 36.345051, 45.058884>,  <36.313202, 36.559856, 44.440544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583691, 36.345051, 45.058884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.511009, 36.732956, 45.124046>,  <36.467400, 36.965698, 45.163143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.511009, 36.732956, 45.124046>,  <36.583691, 36.345051, 45.058884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511009, 36.732956, 45.124046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603168, -0.240758, 0.760410,
		0.776641, 0.039909, 0.628678,
		-0.181707, 0.969764, 0.162910,
		36.456497, 37.023884, 45.172920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884899, 36.465317, 45.670742>,  <36.583691, 36.345051, 45.058884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884899, 36.465317, 45.670742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.625534, 36.768356, 45.640800>,  <36.469917, 36.950180, 45.622833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.625534, 36.768356, 45.640800>,  <36.884899, 36.465317, 45.670742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625534, 36.768356, 45.640800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301156, -0.164951, 0.939200,
		0.699193, 0.631529, 0.335112,
		-0.648409, 0.757603, -0.074856,
		36.431011, 36.995636, 45.618343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911572, 36.666374, 46.331390>,  <36.884899, 36.465317, 45.670742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911572, 36.666374, 46.331390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.579140, 36.825047, 46.175465>,  <36.379681, 36.920250, 46.081909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.579140, 36.825047, 46.175465>,  <36.911572, 36.666374, 46.331390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579140, 36.825047, 46.175465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456509, -0.086225, 0.885531,
		0.317658, 0.913900, 0.252746,
		-0.831079, 0.396677, -0.389813,
		36.329815, 36.944050, 46.058521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718235, 37.140263, 46.839054>,  <36.911572, 36.666374, 46.331390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718235, 37.140263, 46.839054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.381363, 37.067192, 46.636135>,  <36.179237, 37.023350, 46.514381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.381363, 37.067192, 46.636135>,  <36.718235, 37.140263, 46.839054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381363, 37.067192, 46.636135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528109, 0.089700, 0.844426,
		-0.108751, 0.979073, -0.172017,
		-0.842184, -0.182676, -0.507302,
		36.128708, 37.012390, 46.483944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327072, 37.676285, 47.067493>,  <36.718235, 37.140263, 46.839054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327072, 37.676285, 47.067493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.077614, 37.417229, 46.892391>,  <35.927940, 37.261795, 46.787331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.077614, 37.417229, 46.892391>,  <36.327072, 37.676285, 47.067493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077614, 37.417229, 46.892391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632667, 0.089264, 0.769262,
		-0.459127, 0.756702, -0.465408,
		-0.623646, -0.647637, -0.437757,
		35.890518, 37.222939, 46.761063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598873, 37.971344, 47.090797>,  <36.327072, 37.676285, 47.067493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598873, 37.971344, 47.090797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.579964, 37.574776, 47.042057>,  <35.568619, 37.336834, 47.012814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.579964, 37.574776, 47.042057>,  <35.598873, 37.971344, 47.090797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579964, 37.574776, 47.042057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675487, -0.058139, 0.735077,
		-0.735855, 0.117060, -0.666943,
		-0.047273, -0.991422, -0.121855,
		35.565781, 37.277348, 47.005501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920551, 37.837608, 47.337143>,  <35.598873, 37.971344, 47.090797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920551, 37.837608, 47.337143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.136791, 37.502472, 47.367558>,  <35.266537, 37.301392, 47.385807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.136791, 37.502472, 47.367558>,  <34.920551, 37.837608, 47.337143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136791, 37.502472, 47.367558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527469, -0.267146, 0.806480,
		-0.655385, -0.476091, -0.586352,
		0.540599, -0.837837, 0.076040,
		35.298969, 37.251122, 47.390369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506676, 37.375317, 47.702209>,  <34.920551, 37.837608, 47.337143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506676, 37.375317, 47.702209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.863316, 37.200352, 47.749050>,  <35.077301, 37.095371, 47.777153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.863316, 37.200352, 47.749050>,  <34.506676, 37.375317, 47.702209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863316, 37.200352, 47.749050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254571, -0.270332, 0.928501,
		-0.374484, -0.857664, -0.352382,
		0.891603, -0.437415, 0.117101,
		35.130798, 37.069126, 47.784180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316193, 36.801517, 48.117046>,  <34.506676, 37.375317, 47.702209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316193, 36.801517, 48.117046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.709911, 36.849041, 48.169266>,  <34.946144, 36.877556, 48.200596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.709911, 36.849041, 48.169266>,  <34.316193, 36.801517, 48.117046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709911, 36.849041, 48.169266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098298, -0.245342, 0.964440,
		0.146612, -0.962129, -0.229811,
		0.984298, 0.118809, 0.130545,
		35.005199, 36.884682, 48.208427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432774, 36.310406, 48.683750>,  <34.316193, 36.801517, 48.117046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432774, 36.310406, 48.683750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.733658, 36.573883, 48.690758>,  <34.914188, 36.731972, 48.694962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.733658, 36.573883, 48.690758>,  <34.432774, 36.310406, 48.683750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733658, 36.573883, 48.690758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076652, -0.113877, 0.990533,
		0.654455, -0.743742, -0.136150,
		0.752206, 0.658695, 0.017518,
		34.959320, 36.771492, 48.696014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885719, 36.021942, 49.147633>,  <34.432774, 36.310406, 48.683750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885719, 36.021942, 49.147633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.993706, 36.406780, 49.132153>,  <35.058498, 36.637684, 49.122864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.993706, 36.406780, 49.132153>,  <34.885719, 36.021942, 49.147633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993706, 36.406780, 49.132153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240312, -0.028402, 0.970280,
		0.932400, -0.271239, -0.238870,
		0.269962, 0.962093, -0.038700,
		35.074696, 36.695408, 49.120544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484310, 36.070141, 49.544670>,  <34.885719, 36.021942, 49.147633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484310, 36.070141, 49.544670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.292809, 36.420425, 49.519619>,  <35.177910, 36.630596, 49.504589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.292809, 36.420425, 49.519619>,  <35.484310, 36.070141, 49.544670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292809, 36.420425, 49.519619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006456, 0.074846, 0.997174,
		0.877928, 0.476992, -0.041486,
		-0.478750, 0.875715, -0.062630,
		35.149185, 36.683140, 49.500832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618572, 36.299999, 50.225750>,  <35.484310, 36.070141, 49.544670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618572, 36.299999, 50.225750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.363594, 36.581837, 50.101036>,  <35.210609, 36.750938, 50.026207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.363594, 36.581837, 50.101036>,  <35.618572, 36.299999, 50.225750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363594, 36.581837, 50.101036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168872, 0.267051, 0.948771,
		0.751764, 0.657438, -0.051243,
		-0.637443, 0.704598, -0.311782,
		35.172359, 36.793217, 50.007500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661919, 36.961914, 50.661880>,  <35.618572, 36.299999, 50.225750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661919, 36.961914, 50.661880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.294250, 36.937927, 50.506168>,  <35.073650, 36.923534, 50.412743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.294250, 36.937927, 50.506168>,  <35.661919, 36.961914, 50.661880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294250, 36.937927, 50.506168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389210, 0.289876, 0.874350,
		0.060413, 0.955184, -0.289782,
		-0.919166, -0.059964, -0.389279,
		35.018501, 36.919937, 50.389385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294556, 37.490467, 50.959538>,  <35.661919, 36.961914, 50.661880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294556, 37.490467, 50.959538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.983875, 37.273937, 50.830727>,  <34.797466, 37.144020, 50.753441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.983875, 37.273937, 50.830727>,  <35.294556, 37.490467, 50.959538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983875, 37.273937, 50.830727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516862, 0.255554, 0.817035,
		-0.359982, 0.801039, -0.478278,
		-0.776703, -0.541321, -0.322031,
		34.750866, 37.111542, 50.734116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831444, 37.806774, 51.167629>,  <35.294556, 37.490467, 50.959538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831444, 37.806774, 51.167629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.638985, 37.466755, 51.081924>,  <34.523510, 37.262741, 51.030502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.638985, 37.466755, 51.081924>,  <34.831444, 37.806774, 51.167629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638985, 37.466755, 51.081924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626061, 0.162117, 0.762736,
		-0.613629, 0.501130, -0.610186,
		-0.481152, -0.850051, -0.214258,
		34.494640, 37.211739, 51.017647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106815, 38.015839, 51.153427>,  <34.831444, 37.806774, 51.167629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106815, 38.015839, 51.153427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.152580, 37.623550, 51.216793>,  <34.180038, 37.388176, 51.254814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.152580, 37.623550, 51.216793>,  <34.106815, 38.015839, 51.153427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152580, 37.623550, 51.216793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779858, 0.010123, 0.625875,
		-0.615412, -0.195149, -0.763665,
		0.114409, -0.980721, 0.158418,
		34.186901, 37.329334, 51.264320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464287, 37.740643, 51.103924>,  <34.106815, 38.015839, 51.153427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464287, 37.740643, 51.103924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.678967, 37.466316, 51.300541>,  <33.807774, 37.301720, 51.418510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.678967, 37.466316, 51.300541>,  <33.464287, 37.740643, 51.103924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678967, 37.466316, 51.300541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723360, -0.074062, 0.686487,
		-0.434399, -0.723998, -0.535840,
		0.536701, -0.685815, 0.491539,
		33.839977, 37.260571, 51.448002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049561, 37.221535, 51.441330>,  <33.464287, 37.740643, 51.103924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049561, 37.221535, 51.441330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.400692, 37.185028, 51.629406>,  <33.611370, 37.163124, 51.742252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.400692, 37.185028, 51.629406>,  <33.049561, 37.221535, 51.441330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400692, 37.185028, 51.629406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478948, -0.158191, 0.863472,
		-0.004426, -0.983182, -0.182577,
		0.877832, -0.091267, 0.470193,
		33.664043, 37.157646, 51.770462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147449, 36.562645, 51.742405>,  <33.049561, 37.221535, 51.441330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147449, 36.562645, 51.742405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.352631, 36.831326, 51.956211>,  <33.475739, 36.992535, 52.084496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.352631, 36.831326, 51.956211>,  <33.147449, 36.562645, 51.742405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352631, 36.831326, 51.956211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611928, -0.150564, 0.776450,
		0.602018, -0.725364, 0.333799,
		0.512951, 0.671698, 0.534512,
		33.506516, 37.032833, 52.116566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065845, 35.771111, 51.787563>,  <33.147449, 36.562645, 51.742405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065845, 35.771111, 51.787563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.680206, 35.851368, 51.717987>,  <32.448822, 35.899521, 51.676243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.680206, 35.851368, 51.717987>,  <33.065845, 35.771111, 51.787563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680206, 35.851368, 51.717987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113695, -0.280049, -0.953229,
		-0.239962, -0.938785, 0.247185,
		-0.964102, 0.200635, -0.173936,
		32.390976, 35.911560, 51.665806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949089, 35.282459, 51.426105>,  <33.065845, 35.771111, 51.787563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949089, 35.282459, 51.426105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.654346, 35.535618, 51.331047>,  <32.477501, 35.687515, 51.274010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.654346, 35.535618, 51.331047>,  <32.949089, 35.282459, 51.426105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654346, 35.535618, 51.331047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031077, -0.319446, -0.947095,
		-0.675332, -0.705261, 0.215718,
		-0.736859, 0.632899, -0.237649,
		32.433289, 35.725487, 51.259754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607586, 34.933529, 50.909615>,  <32.949089, 35.282459, 51.426105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607586, 34.933529, 50.909615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.464741, 35.306015, 50.880455>,  <32.379032, 35.529507, 50.862961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.464741, 35.306015, 50.880455>,  <32.607586, 34.933529, 50.909615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464741, 35.306015, 50.880455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058956, -0.100360, -0.993203,
		-0.932199, -0.350387, 0.090741,
		-0.357112, 0.931212, -0.072898,
		32.357609, 35.585381, 50.858585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925798, 34.825802, 50.507786>,  <32.607586, 34.933529, 50.909615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925798, 34.825802, 50.507786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.065632, 35.196072, 50.449940>,  <32.149532, 35.418236, 50.415234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.065632, 35.196072, 50.449940>,  <31.925798, 34.825802, 50.507786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065632, 35.196072, 50.449940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170561, -0.088893, -0.981329,
		-0.921249, 0.367723, 0.126808,
		0.349585, 0.925677, -0.144612,
		32.170509, 35.473774, 50.406555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530197, 35.084579, 49.918396>,  <31.925798, 34.825802, 50.507786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530197, 35.084579, 49.918396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.861221, 35.309113, 49.915707>,  <32.059837, 35.443832, 49.914093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.861221, 35.309113, 49.915707>,  <31.530197, 35.084579, 49.918396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861221, 35.309113, 49.915707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042702, 0.050999, -0.997785,
		-0.559751, 0.826014, 0.066175,
		0.827560, 0.561337, -0.006726,
		32.109489, 35.477512, 49.913689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451519, 35.575439, 49.393406>,  <31.530197, 35.084579, 49.918396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451519, 35.575439, 49.393406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.839539, 35.655548, 49.448395>,  <32.072350, 35.703613, 49.481388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.839539, 35.655548, 49.448395>,  <31.451519, 35.575439, 49.393406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839539, 35.655548, 49.448395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119454, 0.099478, -0.987844,
		-0.211511, 0.974677, 0.072575,
		0.970049, 0.200270, 0.137469,
		32.130554, 35.715630, 49.489635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644281, 36.206944, 49.001442>,  <31.451519, 35.575439, 49.393406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644281, 36.206944, 49.001442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.008392, 36.049423, 49.052544>,  <32.226860, 35.954910, 49.083202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.008392, 36.049423, 49.052544>,  <31.644281, 36.206944, 49.001442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008392, 36.049423, 49.052544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241108, 0.253417, -0.936828,
		0.336546, 0.883574, 0.325627,
		0.910277, -0.393797, 0.127750,
		32.281475, 35.931286, 49.090870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147358, 36.733826, 48.743389>,  <31.644281, 36.206944, 49.001442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147358, 36.733826, 48.743389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.328079, 36.377010, 48.738503>,  <32.436512, 36.162922, 48.735569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.328079, 36.377010, 48.738503>,  <32.147358, 36.733826, 48.743389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328079, 36.377010, 48.738503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336184, 0.182926, -0.923861,
		0.826351, 0.413294, 0.382534,
		0.451802, -0.892035, -0.012218,
		32.463619, 36.109402, 48.734837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939358, 36.884880, 48.547264>,  <32.147358, 36.733826, 48.743389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939358, 36.884880, 48.547264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.841644, 36.501923, 48.485664>,  <32.783016, 36.272148, 48.448704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.841644, 36.501923, 48.485664>,  <32.939358, 36.884880, 48.547264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841644, 36.501923, 48.485664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537789, -0.001614, -0.843078,
		0.806912, -0.288769, 0.515272,
		-0.244286, -0.957397, -0.153995,
		32.768360, 36.214703, 48.439465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580097, 36.595360, 48.349453>,  <32.939358, 36.884880, 48.547264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580097, 36.595360, 48.349453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.294437, 36.347439, 48.219326>,  <33.123043, 36.198685, 48.141251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.294437, 36.347439, 48.219326>,  <33.580097, 36.595360, 48.349453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294437, 36.347439, 48.219326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385991, 0.039017, -0.921677,
		0.583953, -0.783785, 0.211375,
		-0.714149, -0.619805, -0.325318,
		33.080193, 36.161499, 48.121731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888111, 36.036987, 47.940548>,  <33.580097, 36.595360, 48.349453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888111, 36.036987, 47.940548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.516254, 36.039932, 47.793190>,  <33.293140, 36.041698, 47.704777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.516254, 36.039932, 47.793190>,  <33.888111, 36.036987, 47.940548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516254, 36.039932, 47.793190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367441, 0.092992, -0.925386,
		0.027443, -0.995640, -0.089155,
		-0.929642, 0.007364, -0.368391,
		33.237362, 36.042141, 47.682674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853592, 35.545620, 47.455990>,  <33.888111, 36.036987, 47.940548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853592, 35.545620, 47.455990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.541168, 35.769421, 47.345062>,  <33.353714, 35.903702, 47.278507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.541168, 35.769421, 47.345062>,  <33.853592, 35.545620, 47.455990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541168, 35.769421, 47.345062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412012, 0.128020, -0.902140,
		-0.469251, -0.818879, -0.330514,
		-0.781057, 0.559506, -0.277315,
		33.306850, 35.937271, 47.261868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749958, 35.362740, 46.745129>,  <33.853592, 35.545620, 47.455990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749958, 35.362740, 46.745129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.513752, 35.684574, 46.770214>,  <33.372028, 35.877674, 46.785267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.513752, 35.684574, 46.770214>,  <33.749958, 35.362740, 46.745129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513752, 35.684574, 46.770214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123677, 0.167020, -0.978166,
		-0.797494, -0.569865, -0.198136,
		-0.590515, 0.804586, 0.062718,
		33.336597, 35.925949, 46.789028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473789, 35.370636, 46.182915>,  <33.749958, 35.362740, 46.745129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473789, 35.370636, 46.182915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.384754, 35.748169, 46.280602>,  <33.331333, 35.974689, 46.339214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.384754, 35.748169, 46.280602>,  <33.473789, 35.370636, 46.182915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384754, 35.748169, 46.280602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094055, 0.270123, -0.958221,
		-0.970366, -0.190316, -0.148897,
		-0.222585, 0.943829, 0.244218,
		33.317978, 36.031319, 46.353867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014664, 35.646210, 45.651665>,  <33.473789, 35.370636, 46.182915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014664, 35.646210, 45.651665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.184971, 35.956055, 45.838722>,  <33.287155, 36.141964, 45.950958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.184971, 35.956055, 45.838722>,  <33.014664, 35.646210, 45.651665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184971, 35.956055, 45.838722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394238, 0.306382, -0.866433,
		-0.814430, 0.553264, -0.174935,
		0.425770, 0.774615, 0.467644,
		33.312702, 36.188438, 45.979015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944160, 36.199463, 45.187630>,  <33.014664, 35.646210, 45.651665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944160, 36.199463, 45.187630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.239616, 36.314167, 45.431652>,  <33.416889, 36.382988, 45.578068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.239616, 36.314167, 45.431652>,  <32.944160, 36.199463, 45.187630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239616, 36.314167, 45.431652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539611, 0.290871, -0.790072,
		-0.404011, 0.912777, 0.060111,
		0.738644, 0.286761, 0.610060,
		33.461208, 36.400196, 45.614670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079548, 36.907089, 45.071751>,  <32.944160, 36.199463, 45.187630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079548, 36.907089, 45.071751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.418083, 36.757206, 45.223171>,  <33.621204, 36.667274, 45.314022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.418083, 36.757206, 45.223171>,  <33.079548, 36.907089, 45.071751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418083, 36.757206, 45.223171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506749, 0.347548, -0.788933,
		0.164058, 0.859536, 0.484028,
		0.846339, -0.374712, 0.378551,
		33.671986, 36.644791, 45.336735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616337, 37.447514, 45.010838>,  <33.079548, 36.907089, 45.071751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616337, 37.447514, 45.010838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.810898, 37.099701, 45.045067>,  <33.927635, 36.891014, 45.065605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.810898, 37.099701, 45.045067>,  <33.616337, 37.447514, 45.010838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810898, 37.099701, 45.045067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386195, 0.126104, -0.913756,
		0.783751, 0.477502, 0.397147,
		0.486402, -0.869534, 0.085575,
		33.956818, 36.838840, 45.070740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194298, 37.615875, 44.656788>,  <33.616337, 37.447514, 45.010838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194298, 37.615875, 44.656788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.211468, 37.217564, 44.689243>,  <34.221771, 36.978577, 44.708717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.211468, 37.217564, 44.689243>,  <34.194298, 37.615875, 44.656788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211468, 37.217564, 44.689243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405229, -0.056881, -0.912444,
		0.913207, 0.072050, 0.401076,
		0.042928, -0.995778, 0.081141,
		34.224346, 36.918831, 44.713585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946056, 37.361515, 44.609840>,  <34.194298, 37.615875, 44.656788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946056, 37.361515, 44.609840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.705238, 37.060509, 44.503059>,  <34.560745, 36.879906, 44.438992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.705238, 37.060509, 44.503059>,  <34.946056, 37.361515, 44.609840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705238, 37.060509, 44.503059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476477, -0.070315, -0.876371,
		0.640708, -0.654815, 0.400888,
		-0.602049, -0.752511, -0.266953,
		34.524624, 36.834755, 44.422974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.334187, 41.088600, 33.482857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.031799, 41.232929, 33.701332>,  <39.850368, 41.319527, 33.832417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.031799, 41.232929, 33.701332>,  <40.334187, 41.088600, 33.482857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031799, 41.232929, 33.701332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495582, -0.229675, 0.837645,
		0.427686, 0.903913, -0.005190,
		-0.755966, 0.360820, 0.546191,
		39.805008, 41.341175, 33.865189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544239, 41.557892, 34.053532>,  <40.334187, 41.088600, 33.482857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544239, 41.557892, 34.053532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.187290, 41.420849, 34.171032>,  <39.973122, 41.338623, 34.241531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.187290, 41.420849, 34.171032>,  <40.544239, 41.557892, 34.053532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187290, 41.420849, 34.171032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428394, -0.438347, 0.790146,
		-0.141940, 0.830948, 0.537938,
		-0.892374, -0.342603, 0.293754,
		39.919579, 41.318069, 34.259159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560928, 41.660194, 34.785862>,  <40.544239, 41.557892, 34.053532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560928, 41.660194, 34.785862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.277832, 41.389046, 34.706272>,  <40.107975, 41.226357, 34.658516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.277832, 41.389046, 34.706272>,  <40.560928, 41.660194, 34.785862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277832, 41.389046, 34.706272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350846, -0.581710, 0.733840,
		-0.613199, 0.449556, 0.649528,
		-0.707739, -0.677874, -0.198979,
		40.065510, 41.185684, 34.646580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190762, 41.549713, 35.441277>,  <40.560928, 41.660194, 34.785862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190762, 41.549713, 35.441277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.168278, 41.216267, 35.221481>,  <40.154789, 41.016201, 35.089603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.168278, 41.216267, 35.221481>,  <40.190762, 41.549713, 35.441277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168278, 41.216267, 35.221481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458490, -0.510444, 0.727485,
		-0.886920, -0.211042, 0.410894,
		-0.056209, -0.833612, -0.549484,
		40.151417, 40.966183, 35.056637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192043, 40.965454, 35.960384>,  <40.190762, 41.549713, 35.441277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192043, 40.965454, 35.960384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.296276, 40.791748, 35.615475>,  <40.358814, 40.687527, 35.408527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.296276, 40.791748, 35.615475>,  <40.192043, 40.965454, 35.960384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296276, 40.791748, 35.615475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432072, -0.746242, 0.506396,
		-0.863373, -0.504520, -0.006822,
		0.260578, -0.434261, -0.862274,
		40.374451, 40.661469, 35.356792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263718, 40.291817, 36.207127>,  <40.192043, 40.965454, 35.960384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263718, 40.291817, 36.207127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.419422, 40.287426, 35.838703>,  <40.512844, 40.284790, 35.617649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.419422, 40.287426, 35.838703>,  <40.263718, 40.291817, 36.207127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419422, 40.287426, 35.838703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569878, -0.782721, 0.250173,
		-0.723683, -0.622275, -0.298423,
		0.389259, -0.010981, -0.921063,
		40.536201, 40.284130, 35.562386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193840, 39.630966, 36.030926>,  <40.263718, 40.291817, 36.207127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193840, 39.630966, 36.030926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.493130, 39.769054, 35.804302>,  <40.672703, 39.851906, 35.668327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.493130, 39.769054, 35.804302>,  <40.193840, 39.630966, 36.030926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493130, 39.769054, 35.804302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613793, -0.684337, 0.393625,
		-0.251829, -0.642268, -0.723930,
		0.748224, 0.345217, -0.566556,
		40.717598, 39.872620, 35.634335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453362, 39.062408, 35.704464>,  <40.193840, 39.630966, 36.030926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453362, 39.062408, 35.704464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.738422, 39.340630, 35.740971>,  <40.909458, 39.507565, 35.762875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.738422, 39.340630, 35.740971>,  <40.453362, 39.062408, 35.704464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738422, 39.340630, 35.740971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661021, -0.709367, 0.244644,
		0.234904, -0.114017, -0.965308,
		0.712651, 0.695557, 0.091266,
		40.952217, 39.549297, 35.768349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935474, 38.790989, 35.376316>,  <40.453362, 39.062408, 35.704464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935474, 38.790989, 35.376316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.145187, 39.062744, 35.581669>,  <41.271015, 39.225800, 35.704880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.145187, 39.062744, 35.581669>,  <40.935474, 38.790989, 35.376316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145187, 39.062744, 35.581669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748483, -0.655162, 0.102645,
		0.406082, 0.330441, -0.852001,
		0.524281, 0.679391, 0.513379,
		41.302471, 39.266560, 35.735683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.606667, 38.890907, 35.018131>,  <40.935474, 38.790989, 35.376316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.606667, 38.890907, 35.018131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.664902, 39.055397, 35.378063>,  <41.699844, 39.154091, 35.594025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.664902, 39.055397, 35.378063>,  <41.606667, 38.890907, 35.018131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664902, 39.055397, 35.378063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810768, -0.570820, 0.129689,
		0.566974, 0.710674, -0.416513,
		0.145588, 0.411226, 0.899832,
		41.708576, 39.178764, 35.648014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398521, 39.190002, 35.009129>,  <41.606667, 38.890907, 35.018131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398521, 39.190002, 35.009129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.295368, 39.131226, 35.391102>,  <42.233475, 39.095959, 35.620285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.295368, 39.131226, 35.391102>,  <42.398521, 39.190002, 35.009129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295368, 39.131226, 35.391102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819634, -0.556584, 0.135701,
		0.511562, 0.817693, 0.263973,
		-0.257885, -0.146942, 0.954936,
		42.218002, 39.087143, 35.677582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.022514, 39.250862, 35.410999>,  <42.398521, 39.190002, 35.009129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.022514, 39.250862, 35.410999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.768715, 39.046238, 35.642765>,  <42.616436, 38.923466, 35.781822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.768715, 39.046238, 35.642765>,  <43.022514, 39.250862, 35.410999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768715, 39.046238, 35.642765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740121, -0.618185, 0.264703,
		0.222773, 0.596790, 0.770853,
		-0.634502, -0.511556, 0.579412,
		42.578365, 38.892773, 35.816589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.329632, 39.218662, 36.138653>,  <43.022514, 39.250862, 35.410999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.329632, 39.218662, 36.138653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.080826, 38.906219, 36.116879>,  <42.931541, 38.718754, 36.103813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.080826, 38.906219, 36.116879>,  <43.329632, 39.218662, 36.138653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.080826, 38.906219, 36.116879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700250, -0.586037, 0.407690,
		-0.350353, 0.215470, 0.911496,
		-0.622015, -0.781110, -0.054437,
		42.894222, 38.671886, 36.100548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.382198, 38.834194, 36.731758>,  <43.329632, 39.218662, 36.138653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.382198, 38.834194, 36.731758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.171196, 38.557159, 36.534958>,  <43.044594, 38.390938, 36.416878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.171196, 38.557159, 36.534958>,  <43.382198, 38.834194, 36.731758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.171196, 38.557159, 36.534958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425865, -0.716682, 0.552273,
		-0.735102, 0.081804, 0.673003,
		-0.527508, -0.692586, -0.491997,
		43.012943, 38.349384, 36.387360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.164726, 38.325611, 37.247677>,  <43.382198, 38.834194, 36.731758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.164726, 38.325611, 37.247677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.119392, 38.159912, 36.886444>,  <43.092190, 38.060493, 36.669704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.119392, 38.159912, 36.886444>,  <43.164726, 38.325611, 37.247677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119392, 38.159912, 36.886444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320020, -0.875717, 0.361535,
		-0.940607, -0.248027, 0.231820,
		-0.113339, -0.414249, -0.903079,
		43.085392, 38.035637, 36.615520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.716541, 37.869644, 37.404190>,  <43.164726, 38.325611, 37.247677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.716541, 37.869644, 37.404190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.935131, 37.772621, 37.083557>,  <43.066284, 37.714405, 36.891178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.935131, 37.772621, 37.083557>,  <42.716541, 37.869644, 37.404190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.935131, 37.772621, 37.083557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179897, -0.900796, 0.395226,
		-0.817927, -0.360182, -0.448625,
		0.546473, -0.242560, -0.801581,
		43.099072, 37.699852, 36.843082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509785, 37.185360, 37.254971>,  <42.716541, 37.869644, 37.404190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.509785, 37.185360, 37.254971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.852314, 37.205391, 37.049366>,  <43.057831, 37.217411, 36.926003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.852314, 37.205391, 37.049366>,  <42.509785, 37.185360, 37.254971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.852314, 37.205391, 37.049366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272732, -0.889033, 0.367746,
		-0.438552, -0.455095, -0.774958,
		0.856323, 0.050080, -0.514007,
		43.109211, 37.220413, 36.895164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.590321, 36.660587, 36.749485>,  <42.509785, 37.185360, 37.254971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.590321, 36.660587, 36.749485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.974895, 36.743557, 36.821720>,  <43.205639, 36.793339, 36.865063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.974895, 36.743557, 36.821720>,  <42.590321, 36.660587, 36.749485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.974895, 36.743557, 36.821720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151822, -0.947809, 0.280373,
		0.229321, -0.242143, -0.942750,
		0.961437, 0.207426, 0.180590,
		43.263329, 36.805786, 36.875896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.916237, 36.152531, 36.515659>,  <42.590321, 36.660587, 36.749485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.916237, 36.152531, 36.515659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.220200, 36.294964, 36.733189>,  <43.402576, 36.380424, 36.863705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.220200, 36.294964, 36.733189>,  <42.916237, 36.152531, 36.515659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.220200, 36.294964, 36.733189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285040, -0.934425, 0.213546,
		0.584199, -0.007266, -0.811578,
		0.759911, 0.356085, 0.543819,
		43.448174, 36.401791, 36.896336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.462914, 35.766346, 36.286369>,  <42.916237, 36.152531, 36.515659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.462914, 35.766346, 36.286369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.547215, 35.897259, 36.654819>,  <43.597794, 35.975807, 36.875889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.547215, 35.897259, 36.654819>,  <43.462914, 35.766346, 36.286369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.547215, 35.897259, 36.654819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403578, -0.887365, 0.222951,
		0.890342, 0.324759, -0.319098,
		0.210751, 0.327283, 0.921124,
		43.610439, 35.995445, 36.931156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.168682, 35.623837, 36.331940>,  <43.462914, 35.766346, 36.286369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.168682, 35.623837, 36.331940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.009956, 35.644306, 36.698528>,  <43.914719, 35.656590, 36.918480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.009956, 35.644306, 36.698528>,  <44.168682, 35.623837, 36.331940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.009956, 35.644306, 36.698528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469713, -0.846490, 0.250647,
		0.788610, 0.529939, 0.311863,
		-0.396817, 0.051177, 0.916470,
		43.890911, 35.659660, 36.973469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.528599, 36.225658, 36.317081>,  <44.168682, 35.623837, 36.331940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.528599, 36.225658, 36.317081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.885994, 36.150391, 36.153976>,  <45.100430, 36.105232, 36.056114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.885994, 36.150391, 36.153976>,  <44.528599, 36.225658, 36.317081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.885994, 36.150391, 36.153976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036021, 0.875032, -0.482723,
		0.447640, 0.445996, 0.775053,
		0.893488, -0.188167, -0.407764,
		45.154041, 36.093941, 36.031647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.055080, 36.742455, 36.377609>,  <44.528599, 36.225658, 36.317081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.055080, 36.742455, 36.377609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.137341, 36.543304, 36.040604>,  <45.186699, 36.423813, 35.838402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.137341, 36.543304, 36.040604>,  <45.055080, 36.742455, 36.377609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.137341, 36.543304, 36.040604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129053, 0.839597, -0.527658,
		0.970078, 0.217243, 0.108414,
		0.205654, -0.497879, -0.842510,
		45.199036, 36.393940, 35.787849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.467285, 37.183762, 36.024292>,  <45.055080, 36.742455, 36.377609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.467285, 37.183762, 36.024292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.365494, 36.938469, 35.725178>,  <45.304420, 36.791294, 35.545708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.365494, 36.938469, 35.725178>,  <45.467285, 37.183762, 36.024292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.365494, 36.938469, 35.725178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058425, 0.781581, -0.621062,
		0.965312, -0.114357, -0.234723,
		-0.254477, -0.613233, -0.747788,
		45.289150, 36.754498, 35.500843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.819538, 37.386894, 35.346153>,  <45.467285, 37.183762, 36.024292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.819538, 37.386894, 35.346153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.519073, 37.154469, 35.220852>,  <45.338795, 37.015015, 35.145672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.519073, 37.154469, 35.220852>,  <45.819538, 37.386894, 35.346153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.519073, 37.154469, 35.220852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140371, 0.604285, -0.784306,
		0.645029, -0.545163, -0.535477,
		-0.751155, -0.581064, -0.313256,
		45.293728, 36.980148, 35.126877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.013546, 37.134136, 34.592049>,  <45.819538, 37.386894, 35.346153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.013546, 37.134136, 34.592049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.616425, 37.118046, 34.637154>,  <45.378151, 37.108391, 34.664215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.616425, 37.118046, 34.637154>,  <46.013546, 37.134136, 34.592049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.616425, 37.118046, 34.637154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117520, 0.507076, -0.853852,
		-0.022835, -0.860962, -0.508156,
		-0.992808, -0.040221, 0.112759,
		45.318581, 37.105980, 34.670982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.742882, 37.201885, 33.958012>,  <46.013546, 37.134136, 34.592049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.742882, 37.201885, 33.958012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.404751, 37.248119, 34.166649>,  <45.201874, 37.275860, 34.291832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.404751, 37.248119, 34.166649>,  <45.742882, 37.201885, 33.958012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.404751, 37.248119, 34.166649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378210, 0.560086, -0.737062,
		-0.377329, -0.820332, -0.429742,
		-0.845328, 0.115582, 0.521595,
		45.151154, 37.282795, 34.323128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.174881, 37.021992, 33.461422>,  <45.742882, 37.201885, 33.958012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.174881, 37.021992, 33.461422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.010975, 37.255184, 33.742058>,  <44.912632, 37.395100, 33.910439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.010975, 37.255184, 33.742058>,  <45.174881, 37.021992, 33.461422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.010975, 37.255184, 33.742058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566423, 0.440265, -0.696657,
		-0.715022, -0.682862, 0.149808,
		-0.409766, 0.582980, 0.701588,
		44.888046, 37.430077, 33.952534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.572086, 37.214287, 33.055618>,  <45.174881, 37.021992, 33.461422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.572086, 37.214287, 33.055618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.553650, 37.439770, 33.385494>,  <44.542587, 37.575058, 33.583420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.553650, 37.439770, 33.385494>,  <44.572086, 37.214287, 33.055618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.553650, 37.439770, 33.385494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552437, 0.673449, -0.491202,
		-0.832279, -0.478231, 0.280369,
		-0.046094, 0.563703, 0.824690,
		44.539822, 37.608879, 33.632900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.841312, 37.397850, 33.217308>,  <44.572086, 37.214287, 33.055618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.841312, 37.397850, 33.217308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.078323, 37.672764, 33.385384>,  <44.220531, 37.837711, 33.486229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.078323, 37.672764, 33.385384>,  <43.841312, 37.397850, 33.217308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.078323, 37.672764, 33.385384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626568, 0.721043, -0.295821,
		-0.506286, -0.087994, 0.857865,
		0.592526, 0.687281, 0.420188,
		44.256081, 37.878948, 33.511440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.480293, 37.864880, 33.821407>,  <43.841312, 37.397850, 33.217308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.480293, 37.864880, 33.821407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.784542, 38.087509, 33.687733>,  <43.967091, 38.221088, 33.607529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.784542, 38.087509, 33.687733>,  <43.480293, 37.864880, 33.821407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.784542, 38.087509, 33.687733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611362, 0.787265, -0.080311,
		0.218393, 0.265394, 0.939080,
		0.760619, 0.556578, -0.334185,
		44.012730, 38.254482, 33.587479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.316875, 38.545536, 34.071590>,  <43.480293, 37.864880, 33.821407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.316875, 38.545536, 34.071590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.592270, 38.606140, 33.787891>,  <43.757507, 38.642502, 33.617672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.592270, 38.606140, 33.787891>,  <43.316875, 38.545536, 34.071590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.592270, 38.606140, 33.787891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513222, 0.792755, -0.328849,
		0.512431, 0.590409, 0.623564,
		0.688489, 0.151514, -0.709244,
		43.798817, 38.651596, 33.575119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.286739, 39.228825, 33.974194>,  <43.316875, 38.545536, 34.071590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.286739, 39.228825, 33.974194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.492088, 39.117889, 33.649345>,  <43.615299, 39.051327, 33.454437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.492088, 39.117889, 33.649345>,  <43.286739, 39.228825, 33.974194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.492088, 39.117889, 33.649345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402736, 0.757794, -0.513372,
		0.757794, 0.590620, 0.277337,
		0.513372, -0.277337, -0.812116,
		43.646099, 39.034687, 33.405712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.578594, 39.819519, 33.665905>,  <43.286739, 39.228825, 33.974194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.578594, 39.819519, 33.665905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.547562, 39.546986, 33.374763>,  <43.528942, 39.383465, 33.200077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.547562, 39.546986, 33.374763>,  <43.578594, 39.819519, 33.665905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.547562, 39.546986, 33.374763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486669, 0.663047, -0.568790,
		0.870134, 0.310094, -0.383024,
		-0.077585, -0.681330, -0.727853,
		43.524284, 39.342587, 33.156406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.601234, 40.178097, 33.117237>,  <43.578594, 39.819519, 33.665905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.601234, 40.178097, 33.117237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.486294, 39.838684, 32.939507>,  <43.417328, 39.635036, 32.832867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.486294, 39.838684, 32.939507>,  <43.601234, 40.178097, 33.117237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.486294, 39.838684, 32.939507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476174, 0.529061, -0.702391,
		0.831076, 0.009744, -0.556074,
		-0.287353, -0.848528, -0.444330,
		43.400089, 39.584126, 32.806206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.804756, 40.234272, 32.385456>,  <43.601234, 40.178097, 33.117237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.804756, 40.234272, 32.385456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.504345, 39.973099, 32.424721>,  <43.324097, 39.816395, 32.448280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.504345, 39.973099, 32.424721>,  <43.804756, 40.234272, 32.385456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.504345, 39.973099, 32.424721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553772, 0.541933, -0.632175,
		0.359572, -0.529139, -0.768583,
		-0.751029, -0.652932, 0.098158,
		43.279037, 39.777218, 32.454166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.526936, 40.015007, 31.730532>,  <43.804756, 40.234272, 32.385456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.526936, 40.015007, 31.730532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.220547, 39.980198, 31.985313>,  <43.036713, 39.959312, 32.138184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.220547, 39.980198, 31.985313>,  <43.526936, 40.015007, 31.730532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.220547, 39.980198, 31.985313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604275, 0.435595, -0.667165,
		-0.219399, -0.895927, -0.386237,
		-0.765974, -0.087018, 0.636955,
		42.990753, 39.954094, 32.176399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.872803, 40.053474, 31.320637>,  <43.526936, 40.015007, 31.730532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.872803, 40.053474, 31.320637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.697975, 40.082737, 31.679216>,  <42.593079, 40.100296, 31.894363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.697975, 40.082737, 31.679216>,  <42.872803, 40.053474, 31.320637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.697975, 40.082737, 31.679216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726351, 0.559108, -0.399765,
		-0.530459, -0.825861, -0.191227,
		-0.437066, 0.073161, 0.896448,
		42.566856, 40.104687, 31.948151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226738, 39.973717, 31.158379>,  <42.872803, 40.053474, 31.320637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226738, 39.973717, 31.158379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.198971, 40.147560, 31.517553>,  <42.182308, 40.251865, 31.733059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.198971, 40.147560, 31.517553>,  <42.226738, 39.973717, 31.158379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.198971, 40.147560, 31.517553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720160, 0.601039, -0.346586,
		-0.690326, -0.670720, 0.271265,
		-0.069422, 0.434612, 0.897938,
		42.178143, 40.277943, 31.786934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515926, 40.018291, 31.326107>,  <42.226738, 39.973717, 31.158379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515926, 40.018291, 31.326107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.684914, 40.288517, 31.567812>,  <41.786308, 40.450653, 31.712835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.684914, 40.288517, 31.567812>,  <41.515926, 40.018291, 31.326107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684914, 40.288517, 31.567812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706863, 0.662868, -0.246880,
		-0.567329, -0.322831, 0.757574,
		0.422471, 0.675563, 0.604262,
		41.811653, 40.491184, 31.749090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939045, 40.276897, 31.863861>,  <41.515926, 40.018291, 31.326107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939045, 40.276897, 31.863861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.221718, 40.554974, 31.811247>,  <41.391323, 40.721821, 31.779678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.221718, 40.554974, 31.811247>,  <40.939045, 40.276897, 31.863861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221718, 40.554974, 31.811247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695473, 0.648367, -0.309739,
		-0.130044, 0.310368, 0.941679,
		0.706687, 0.695192, -0.131537,
		41.433723, 40.763531, 31.771786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647259, 40.901581, 32.145641>,  <40.939045, 40.276897, 31.863861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647259, 40.901581, 32.145641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.956890, 41.014217, 31.918837>,  <41.142670, 41.081799, 31.782753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.956890, 41.014217, 31.918837>,  <40.647259, 40.901581, 32.145641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956890, 41.014217, 31.918837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499012, 0.822555, -0.272746,
		0.389594, 0.494073, 0.777244,
		0.774082, 0.281594, -0.567011,
		41.189114, 41.098694, 31.748734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.961914, 37.776424, 42.436329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720169, 37.485653, 42.305897>,  <39.575123, 37.311192, 42.227638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720169, 37.485653, 42.305897>,  <39.961914, 37.776424, 42.436329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720169, 37.485653, 42.305897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710444, -0.306482, -0.633512,
		0.360582, -0.614528, 0.701667,
		-0.604359, -0.726928, -0.326076,
		39.538860, 37.267574, 42.208073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276752, 37.196083, 42.528137>,  <39.961914, 37.776424, 42.436329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276752, 37.196083, 42.528137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024162, 37.129971, 42.225109>,  <39.872608, 37.090305, 42.043293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024162, 37.129971, 42.225109>,  <40.276752, 37.196083, 42.528137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024162, 37.129971, 42.225109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743266, -0.407350, -0.530681,
		-0.220888, -0.898193, 0.380077,
		-0.631478, -0.165277, -0.757574,
		39.834721, 37.080387, 41.997837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509190, 36.597874, 42.302471>,  <40.276752, 37.196083, 42.528137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509190, 36.597874, 42.302471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285419, 36.728561, 41.997765>,  <40.151157, 36.806976, 41.814941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285419, 36.728561, 41.997765>,  <40.509190, 36.597874, 42.302471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285419, 36.728561, 41.997765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655983, -0.387276, -0.647845,
		-0.506680, -0.862131, 0.002329,
		-0.559429, 0.326723, -0.761768,
		40.117592, 36.826576, 41.769234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746922, 36.221062, 41.800743>,  <40.509190, 36.597874, 42.302471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746922, 36.221062, 41.800743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515251, 36.476139, 41.597607>,  <40.376251, 36.629185, 41.475723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515251, 36.476139, 41.597607>,  <40.746922, 36.221062, 41.800743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515251, 36.476139, 41.597607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497147, -0.217415, -0.839986,
		-0.646067, -0.738969, -0.191107,
		-0.579174, 0.637695, -0.507841,
		40.341499, 36.667446, 41.445255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482887, 35.827583, 41.215523>,  <40.746922, 36.221062, 41.800743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482887, 35.827583, 41.215523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461590, 36.217594, 41.129284>,  <40.448811, 36.451603, 41.077541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461590, 36.217594, 41.129284>,  <40.482887, 35.827583, 41.215523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461590, 36.217594, 41.129284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543559, -0.152813, -0.825344,
		-0.837681, -0.161137, -0.521849,
		-0.053248, 0.975030, -0.215596,
		40.445614, 36.510101, 41.064606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139565, 35.937607, 40.461487>,  <40.482887, 35.827583, 41.215523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139565, 35.937607, 40.461487> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371105, 36.249813, 40.555908>,  <40.510029, 36.437138, 40.612560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371105, 36.249813, 40.555908>,  <40.139565, 35.937607, 40.461487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371105, 36.249813, 40.555908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439127, -0.054450, -0.896774,
		-0.687097, 0.622755, -0.374266,
		0.578849, 0.780520, 0.236056,
		40.544762, 36.483971, 40.626724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060196, 36.311447, 39.916790>,  <40.139565, 35.937607, 40.461487>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060196, 36.311447, 39.916790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408688, 36.421154, 40.079632>,  <40.617783, 36.486977, 40.177338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408688, 36.421154, 40.079632>,  <40.060196, 36.311447, 39.916790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408688, 36.421154, 40.079632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488961, -0.411750, -0.769011,
		-0.043290, 0.869045, -0.492836,
		0.871231, 0.274268, 0.407105,
		40.670055, 36.503433, 40.201763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443321, 36.643723, 39.327847>,  <40.060196, 36.311447, 39.916790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443321, 36.643723, 39.327847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743183, 36.595676, 39.588181>,  <40.923100, 36.566849, 39.744381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743183, 36.595676, 39.588181>,  <40.443321, 36.643723, 39.327847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743183, 36.595676, 39.588181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565728, -0.394044, -0.724349,
		0.343463, 0.911209, -0.227445,
		0.749656, -0.120115, 0.650836,
		40.968079, 36.559643, 39.783432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111252, 36.882446, 39.007294>,  <40.443321, 36.643723, 39.327847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111252, 36.882446, 39.007294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196259, 36.621643, 39.298420>,  <41.247265, 36.465160, 39.473095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196259, 36.621643, 39.298420>,  <41.111252, 36.882446, 39.007294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196259, 36.621643, 39.298420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502726, -0.565742, -0.653607,
		0.837915, 0.504799, 0.207550,
		0.212521, -0.652008, 0.727819,
		41.260014, 36.426041, 39.516766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813557, 36.783558, 39.010029>,  <41.111252, 36.882446, 39.007294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813557, 36.783558, 39.010029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.649925, 36.457088, 39.173256>,  <41.551746, 36.261208, 39.271191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.649925, 36.457088, 39.173256>,  <41.813557, 36.783558, 39.010029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.649925, 36.457088, 39.173256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561990, -0.577667, -0.592003,
		0.718901, -0.012849, 0.694993,
		-0.409082, -0.816171, 0.408065,
		41.527203, 36.212238, 39.295677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.430313, 36.339008, 39.112186>,  <41.813557, 36.783558, 39.010029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.430313, 36.339008, 39.112186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.106453, 36.105186, 39.133198>,  <41.912136, 35.964893, 39.145805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.106453, 36.105186, 39.133198>,  <42.430313, 36.339008, 39.112186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.106453, 36.105186, 39.133198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506984, -0.741674, -0.439188,
		0.295692, -0.328957, 0.896858,
		-0.809650, -0.584557, 0.052531,
		41.863556, 35.929821, 39.148956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683182, 35.732403, 39.467350>,  <42.430313, 36.339008, 39.112186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683182, 35.732403, 39.467350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.352875, 35.651413, 39.256783>,  <42.154690, 35.602818, 39.130444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.352875, 35.651413, 39.256783>,  <42.683182, 35.732403, 39.467350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352875, 35.651413, 39.256783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498447, -0.698749, -0.513129,
		-0.263938, -0.686115, 0.677925,
		-0.825765, -0.202475, -0.526419,
		42.105145, 35.590672, 39.098858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.480293, 35.015659, 39.447216>,  <42.683182, 35.732403, 39.467350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.480293, 35.015659, 39.447216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.331295, 35.167637, 39.108540>,  <42.241894, 35.258823, 38.905334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.331295, 35.167637, 39.108540>,  <42.480293, 35.015659, 39.447216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.331295, 35.167637, 39.108540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494057, -0.691126, -0.527497,
		-0.785591, -0.614805, 0.069728,
		-0.372499, 0.379947, -0.846691,
		42.219543, 35.281620, 38.854534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.107471, 34.503689, 39.192211>,  <42.480293, 35.015659, 39.447216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.107471, 34.503689, 39.192211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.198273, 34.748669, 38.889324>,  <42.252754, 34.895657, 38.707592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.198273, 34.748669, 38.889324>,  <42.107471, 34.503689, 39.192211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.198273, 34.748669, 38.889324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370513, -0.773359, -0.514428,
		-0.900661, -0.163784, -0.402473,
		0.227001, 0.612447, -0.757218,
		42.266373, 34.932404, 38.662159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630096, 34.031727, 38.900063>,  <42.107471, 34.503689, 39.192211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630096, 34.031727, 38.900063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725708, 33.697346, 38.702457>,  <41.783077, 33.496716, 38.583893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725708, 33.697346, 38.702457>,  <41.630096, 34.031727, 38.900063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725708, 33.697346, 38.702457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376399, -0.548751, 0.746456,
		-0.895090, 0.007518, -0.445821,
		0.239033, -0.835952, -0.494011,
		41.797417, 33.446560, 38.554253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017277, 33.585693, 38.895061>,  <41.630096, 34.031727, 38.900063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017277, 33.585693, 38.895061> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346306, 33.359360, 38.872414>,  <41.543724, 33.223560, 38.858826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346306, 33.359360, 38.872414>,  <41.017277, 33.585693, 38.895061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346306, 33.359360, 38.872414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376237, -0.616183, 0.691928,
		-0.426409, -0.547856, -0.719743,
		0.822570, -0.565838, -0.056622,
		41.593079, 33.189610, 38.855427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863342, 32.852459, 38.749043>,  <41.017277, 33.585693, 38.895061>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863342, 32.852459, 38.749043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219032, 32.858574, 38.931927>,  <41.432446, 32.862244, 39.041656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219032, 32.858574, 38.931927>,  <40.863342, 32.852459, 38.749043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219032, 32.858574, 38.931927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304524, -0.726048, 0.616538,
		0.341382, -0.687474, -0.640966,
		0.889226, 0.015286, 0.457212,
		41.485802, 32.863159, 39.069092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760204, 32.372410, 39.292957>,  <40.863342, 32.852459, 38.749043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760204, 32.372410, 39.292957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140461, 32.461704, 39.379154>,  <41.368614, 32.515282, 39.430870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140461, 32.461704, 39.379154>,  <40.760204, 32.372410, 39.292957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140461, 32.461704, 39.379154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019300, -0.650616, 0.759162,
		0.309677, -0.725853, -0.614196,
		0.950646, 0.223241, 0.215490,
		41.425655, 32.528675, 39.443802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018520, 31.774611, 39.562176>,  <40.760204, 32.372410, 39.292957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018520, 31.774611, 39.562176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255981, 32.059380, 39.712238>,  <41.398457, 32.230240, 39.802277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255981, 32.059380, 39.712238>,  <41.018520, 31.774611, 39.562176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255981, 32.059380, 39.712238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099858, -0.397422, 0.912187,
		0.798502, -0.578983, -0.164839,
		0.593651, 0.711923, 0.375158,
		41.434078, 32.272957, 39.824787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423615, 31.420015, 40.000053>,  <41.018520, 31.774611, 39.562176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423615, 31.420015, 40.000053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.458965, 31.793098, 40.139908>,  <41.480175, 32.016949, 40.223820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.458965, 31.793098, 40.139908>,  <41.423615, 31.420015, 40.000053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.458965, 31.793098, 40.139908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036307, -0.347756, 0.936882,
		0.995425, -0.095492, 0.003131,
		0.088376, 0.932710, 0.349632,
		41.485477, 32.072910, 40.244797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887585, 31.424101, 40.603542>,  <41.423615, 31.420015, 40.000053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.887585, 31.424101, 40.603542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.671883, 31.759014, 40.639687>,  <41.542461, 31.959963, 40.661373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.671883, 31.759014, 40.639687>,  <41.887585, 31.424101, 40.603542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.671883, 31.759014, 40.639687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168560, -0.212442, 0.962526,
		0.825104, 0.503811, 0.255691,
		-0.539251, 0.837283, 0.090364,
		41.510109, 32.010201, 40.666798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039791, 31.634125, 41.282955>,  <41.887585, 31.424101, 40.603542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039791, 31.634125, 41.282955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700802, 31.829697, 41.200264>,  <41.497406, 31.947039, 41.150650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700802, 31.829697, 41.200264>,  <42.039791, 31.634125, 41.282955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700802, 31.829697, 41.200264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350787, -0.223529, 0.909386,
		0.398416, 0.843198, 0.360945,
		-0.847475, 0.488929, -0.206725,
		41.446560, 31.976376, 41.138245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.025978, 32.046368, 41.868492>,  <42.039791, 31.634125, 41.282955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.025978, 32.046368, 41.868492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.660213, 32.045635, 41.706577>,  <41.440754, 32.045197, 41.609428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.660213, 32.045635, 41.706577>,  <42.025978, 32.046368, 41.868492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.660213, 32.045635, 41.706577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400866, -0.134913, 0.906149,
		-0.056271, 0.990856, 0.122631,
		-0.914407, -0.001831, -0.404792,
		41.385891, 32.045086, 41.585140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678596, 32.590626, 42.218498>,  <42.025978, 32.046368, 41.868492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.678596, 32.590626, 42.218498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402180, 32.324528, 42.105427>,  <41.236328, 32.164867, 42.037586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402180, 32.324528, 42.105427>,  <41.678596, 32.590626, 42.218498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.402180, 32.324528, 42.105427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465419, 0.110306, 0.878190,
		-0.553032, 0.738430, -0.385844,
		-0.691043, -0.665246, -0.282677,
		41.194866, 32.124954, 42.020622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046772, 32.892097, 42.364170>,  <41.678596, 32.590626, 42.218498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046772, 32.892097, 42.364170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973671, 32.499115, 42.349274>,  <40.929810, 32.263325, 42.340336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973671, 32.499115, 42.349274>,  <41.046772, 32.892097, 42.364170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973671, 32.499115, 42.349274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590423, 0.079382, 0.803181,
		-0.786132, 0.168767, -0.594571,
		-0.182749, -0.982454, -0.037239,
		40.918846, 32.204380, 42.338100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292393, 32.954441, 42.297329>,  <41.046772, 32.892097, 42.364170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292393, 32.954441, 42.297329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429722, 32.596447, 42.411266>,  <40.512119, 32.381649, 42.479630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429722, 32.596447, 42.411266>,  <40.292393, 32.954441, 42.297329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429722, 32.596447, 42.411266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548475, 0.055147, 0.834346,
		-0.762435, -0.442676, -0.471944,
		0.343319, -0.894984, 0.284843,
		40.532719, 32.327953, 42.496719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743790, 32.716599, 42.493443>,  <40.292393, 32.954441, 42.297329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743790, 32.716599, 42.493443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018803, 32.479481, 42.661201>,  <40.183811, 32.337208, 42.761856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018803, 32.479481, 42.661201>,  <39.743790, 32.716599, 42.493443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018803, 32.479481, 42.661201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552789, -0.052754, 0.831650,
		-0.470875, -0.803622, -0.363962,
		0.687532, -0.592797, 0.419393,
		40.225063, 32.301643, 42.787018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357925, 32.181042, 42.822144>,  <39.743790, 32.716599, 42.493443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357925, 32.181042, 42.822144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720428, 32.212303, 42.988319>,  <39.937931, 32.231060, 43.088024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720428, 32.212303, 42.988319>,  <39.357925, 32.181042, 42.822144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720428, 32.212303, 42.988319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420642, 0.069265, 0.904579,
		0.041912, -0.994533, 0.095643,
		0.906258, 0.078144, 0.415440,
		39.992306, 32.235748, 43.112949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976799, 31.525148, 42.681370>,  <39.357925, 32.181042, 42.822144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976799, 31.525148, 42.681370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620518, 31.345860, 42.651073>,  <38.406746, 31.238287, 42.632896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620518, 31.345860, 42.651073>,  <38.976799, 31.525148, 42.681370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620518, 31.345860, 42.651073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169454, -0.172776, -0.970275,
		0.421811, -0.877067, 0.229846,
		-0.890708, -0.448222, -0.075744,
		38.353306, 31.211393, 42.628349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061184, 30.901987, 42.375938>,  <38.976799, 31.525148, 42.681370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061184, 30.901987, 42.375938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675106, 30.977301, 42.303341>,  <38.443459, 31.022488, 42.259781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675106, 30.977301, 42.303341>,  <39.061184, 30.901987, 42.375938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675106, 30.977301, 42.303341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146474, -0.185716, -0.971625,
		-0.216653, -0.964395, 0.151673,
		-0.965198, 0.188289, -0.181495,
		38.385548, 31.033785, 42.248894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867805, 30.369167, 41.971745>,  <39.061184, 30.901987, 42.375938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867805, 30.369167, 41.971745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604858, 30.664295, 41.910439>,  <38.447090, 30.841372, 41.873653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604858, 30.664295, 41.910439>,  <38.867805, 30.369167, 41.971745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604858, 30.664295, 41.910439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151923, -0.069449, -0.985949,
		-0.738095, -0.671417, -0.066438,
		-0.657369, 0.737818, -0.153264,
		38.407646, 30.885641, 41.864460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391663, 30.074772, 41.583340>,  <38.867805, 30.369167, 41.971745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391663, 30.074772, 41.583340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379890, 30.468790, 41.515438>,  <38.372826, 30.705202, 41.474697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379890, 30.468790, 41.515438>,  <38.391663, 30.074772, 41.583340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379890, 30.468790, 41.515438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025149, -0.169041, -0.985288,
		-0.999250, -0.033267, -0.019798,
		-0.029431, 0.985048, -0.169751,
		38.371059, 30.764305, 41.464512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915066, 30.058361, 41.032833>,  <38.391663, 30.074772, 41.583340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915066, 30.058361, 41.032833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072464, 30.425421, 41.010620>,  <38.166904, 30.645657, 40.997292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072464, 30.425421, 41.010620>,  <37.915066, 30.058361, 41.032833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072464, 30.425421, 41.010620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019270, -0.068624, -0.997457,
		-0.919124, 0.391425, -0.044686,
		0.393496, 0.917648, -0.055531,
		38.190514, 30.700714, 40.993961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448448, 30.476894, 40.758614>,  <37.915066, 30.058361, 41.032833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448448, 30.476894, 40.758614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800709, 30.656702, 40.698765>,  <38.012066, 30.764585, 40.662857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800709, 30.656702, 40.698765>,  <37.448448, 30.476894, 40.758614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800709, 30.656702, 40.698765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103596, -0.125462, -0.986675,
		-0.462300, 0.884417, -0.063920,
		0.880651, 0.449518, -0.149623,
		38.064903, 30.791557, 40.653877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369118, 30.869106, 40.067856>,  <37.448448, 30.476894, 40.758614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369118, 30.869106, 40.067856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765812, 30.836357, 40.107357>,  <38.003830, 30.816708, 40.131058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765812, 30.836357, 40.107357>,  <37.369118, 30.869106, 40.067856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765812, 30.836357, 40.107357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095557, -0.042134, -0.994532,
		0.085587, 0.995752, -0.033962,
		0.991738, -0.081874, 0.098758,
		38.063332, 30.811794, 40.136986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677120, 31.355997, 39.460724>,  <37.369118, 30.869106, 40.067856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677120, 31.355997, 39.460724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996517, 31.156212, 39.595150>,  <38.188156, 31.036341, 39.675808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996517, 31.156212, 39.595150>,  <37.677120, 31.355997, 39.460724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996517, 31.156212, 39.595150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421740, 0.065752, -0.904330,
		0.429583, 0.863836, 0.263147,
		0.798495, -0.499464, 0.336068,
		38.236065, 31.006372, 39.695969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296749, 31.820610, 39.346893>,  <37.677120, 31.355997, 39.460724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296749, 31.820610, 39.346893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384048, 31.430374, 39.356609>,  <38.436428, 31.196232, 39.362438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384048, 31.430374, 39.356609>,  <38.296749, 31.820610, 39.346893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384048, 31.430374, 39.356609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404769, 0.067845, -0.911899,
		0.887991, 0.208856, 0.409696,
		0.218252, -0.975590, 0.024292,
		38.449524, 31.137697, 39.363895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958015, 31.659925, 39.030369>,  <38.296749, 31.820610, 39.346893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958015, 31.659925, 39.030369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788631, 31.297850, 39.015854>,  <38.687000, 31.080605, 39.007145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788631, 31.297850, 39.015854>,  <38.958015, 31.659925, 39.030369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788631, 31.297850, 39.015854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315395, -0.109761, -0.942592,
		0.849242, -0.410589, 0.331972,
		-0.423455, -0.905190, -0.036284,
		38.661594, 31.026293, 39.004967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506855, 31.271629, 38.628017>,  <38.958015, 31.659925, 39.030369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506855, 31.271629, 38.628017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169453, 31.056795, 38.625313>,  <38.967010, 30.927895, 38.623692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169453, 31.056795, 38.625313>,  <39.506855, 31.271629, 38.628017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169453, 31.056795, 38.625313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275079, -0.421134, -0.864279,
		0.461343, -0.730881, 0.502968,
		-0.843501, -0.537085, -0.006763,
		38.916401, 30.895670, 38.623283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544792, 30.487251, 38.619995>,  <39.506855, 31.271629, 38.628017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544792, 30.487251, 38.619995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215149, 30.604443, 38.426083>,  <39.017365, 30.674757, 38.309734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215149, 30.604443, 38.426083>,  <39.544792, 30.487251, 38.619995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215149, 30.604443, 38.426083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268934, -0.550851, -0.790087,
		-0.498522, -0.781489, 0.375167,
		-0.824106, 0.292981, -0.484780,
		38.967918, 30.692337, 38.280647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.574059, 30.424992, 46.148197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.221401, 30.578732, 46.038662>,  <37.009808, 30.670975, 45.972942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.221401, 30.578732, 46.038662>,  <37.574059, 30.424992, 46.148197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221401, 30.578732, 46.038662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162422, -0.297680, -0.940747,
		-0.443090, -0.873878, 0.200020,
		-0.881641, 0.384348, -0.273836,
		36.956909, 30.694036, 45.956512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208057, 29.916838, 45.720852>,  <37.574059, 30.424992, 46.148197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208057, 29.916838, 45.720852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.076359, 30.283964, 45.632114>,  <36.997341, 30.504240, 45.578873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.076359, 30.283964, 45.632114>,  <37.208057, 29.916838, 45.720852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076359, 30.283964, 45.632114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221382, -0.153361, -0.963053,
		-0.917926, -0.366191, -0.152695,
		-0.329244, 0.917815, -0.221842,
		36.977585, 30.559309, 45.565563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737068, 29.850863, 45.139355>,  <37.208057, 29.916838, 45.720852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737068, 29.850863, 45.139355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.851463, 30.234123, 45.134350>,  <36.920101, 30.464079, 45.131348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.851463, 30.234123, 45.134350>,  <36.737068, 29.850863, 45.139355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851463, 30.234123, 45.134350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304737, -0.103320, -0.946816,
		-0.908484, 0.266971, -0.321532,
		0.285993, 0.958150, -0.012509,
		36.937260, 30.521568, 45.130596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561417, 30.071001, 44.485798>,  <36.737068, 29.850863, 45.139355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561417, 30.071001, 44.485798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.796032, 30.369915, 44.610722>,  <36.936802, 30.549263, 44.685677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.796032, 30.369915, 44.610722>,  <36.561417, 30.071001, 44.485798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796032, 30.369915, 44.610722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296591, 0.160643, -0.941397,
		-0.753663, 0.644793, -0.127415,
		0.586538, 0.747285, 0.312311,
		36.971992, 30.594101, 44.704414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596668, 30.723536, 43.989452>,  <36.561417, 30.071001, 44.485798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596668, 30.723536, 43.989452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.937675, 30.760225, 44.195290>,  <37.142281, 30.782240, 44.318790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.937675, 30.760225, 44.195290>,  <36.596668, 30.723536, 43.989452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937675, 30.760225, 44.195290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420926, 0.463207, -0.779911,
		-0.309898, 0.881491, 0.356282,
		0.852517, 0.091725, 0.514589,
		37.193432, 30.787743, 44.349667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802639, 31.404787, 43.962620>,  <36.596668, 30.723536, 43.989452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802639, 31.404787, 43.962620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.137413, 31.193977, 44.021652>,  <37.338280, 31.067492, 44.057072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.137413, 31.193977, 44.021652>,  <36.802639, 31.404787, 43.962620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137413, 31.193977, 44.021652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371594, 0.349218, -0.860212,
		0.401814, 0.774785, 0.488112,
		0.836937, -0.527024, 0.147585,
		37.388493, 31.035870, 44.065929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340149, 31.853973, 43.762074>,  <36.802639, 31.404787, 43.962620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340149, 31.853973, 43.762074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.532829, 31.503441, 43.760914>,  <37.648438, 31.293121, 43.760216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.532829, 31.503441, 43.760914>,  <37.340149, 31.853973, 43.762074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532829, 31.503441, 43.760914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410739, 0.228696, -0.882605,
		0.774119, 0.423958, 0.470106,
		0.481699, -0.876332, -0.002901,
		37.677338, 31.240541, 43.760044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821175, 32.023933, 43.409332>,  <37.340149, 31.853973, 43.762074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821175, 32.023933, 43.409332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.855595, 31.627075, 43.373016>,  <37.876247, 31.388960, 43.351227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.855595, 31.627075, 43.373016>,  <37.821175, 32.023933, 43.409332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855595, 31.627075, 43.373016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358258, 0.115848, -0.926407,
		0.929648, 0.047192, 0.365413,
		0.086051, -0.992145, -0.090791,
		37.881409, 31.329432, 43.345779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579720, 31.974970, 43.154163>,  <37.821175, 32.023933, 43.409332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579720, 31.974970, 43.154163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.370441, 31.641224, 43.084770>,  <38.244873, 31.440977, 43.043133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.370441, 31.641224, 43.084770>,  <38.579720, 31.974970, 43.154163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370441, 31.641224, 43.084770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256393, 0.040023, -0.965744,
		0.812727, -0.549756, 0.192985,
		-0.523200, -0.834366, -0.173482,
		38.213482, 31.390915, 43.032726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276562, 31.763470, 43.447403>,  <38.579720, 31.974970, 43.154163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276562, 31.763470, 43.447403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.593605, 32.004036, 43.487537>,  <39.783833, 32.148376, 43.511616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.593605, 32.004036, 43.487537>,  <39.276562, 31.763470, 43.447403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593605, 32.004036, 43.487537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233038, 0.146747, 0.961332,
		0.563435, -0.785345, 0.256466,
		0.792612, 0.601414, 0.100333,
		39.831390, 32.184460, 43.517635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528019, 31.566502, 44.126625>,  <39.276562, 31.763470, 43.447403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528019, 31.566502, 44.126625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.680164, 31.927187, 44.044422>,  <39.771450, 32.143597, 43.995098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.680164, 31.927187, 44.044422>,  <39.528019, 31.566502, 44.126625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680164, 31.927187, 44.044422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145528, 0.277801, 0.949552,
		0.913315, -0.331268, 0.236890,
		0.380365, 0.901714, -0.205511,
		39.794273, 32.197701, 43.982769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756592, 31.805714, 44.714317>,  <39.528019, 31.566502, 44.126625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756592, 31.805714, 44.714317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.765663, 32.152584, 44.515324>,  <39.771107, 32.360706, 44.395927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.765663, 32.152584, 44.515324>,  <39.756592, 31.805714, 44.714317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765663, 32.152584, 44.515324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107588, 0.496843, 0.861146,
		0.993937, 0.033993, 0.104565,
		0.022679, 0.867174, -0.497488,
		39.772469, 32.412735, 44.366077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067116, 32.249901, 45.189587>,  <39.756592, 31.805714, 44.714317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067116, 32.249901, 45.189587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.922035, 32.514904, 44.927433>,  <39.834988, 32.673908, 44.770142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.922035, 32.514904, 44.927433>,  <40.067116, 32.249901, 45.189587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922035, 32.514904, 44.927433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294126, 0.585939, 0.755093,
		0.884271, 0.466640, -0.017660,
		-0.362704, 0.662513, -0.655380,
		39.813225, 32.713657, 44.730820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209755, 32.894917, 45.514000>,  <40.067116, 32.249901, 45.189587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209755, 32.894917, 45.514000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.941444, 32.956184, 45.223732>,  <39.780457, 32.992947, 45.049572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.941444, 32.956184, 45.223732>,  <40.209755, 32.894917, 45.514000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941444, 32.956184, 45.223732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483574, 0.651527, 0.584524,
		0.562324, 0.743001, -0.362961,
		-0.670781, 0.153173, -0.725666,
		39.740211, 33.002136, 45.006031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145203, 33.633526, 45.398621>,  <40.209755, 32.894917, 45.514000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145203, 33.633526, 45.398621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.812771, 33.444027, 45.282093>,  <39.613312, 33.330326, 45.212177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.812771, 33.444027, 45.282093>,  <40.145203, 33.633526, 45.398621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812771, 33.444027, 45.282093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543177, 0.578967, 0.608076,
		-0.119413, 0.663597, -0.738499,
		-0.831083, -0.473748, -0.291315,
		39.563446, 33.301903, 45.194698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592552, 34.174797, 45.316162>,  <40.145203, 33.633526, 45.398621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592552, 34.174797, 45.316162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.429314, 33.817654, 45.392334>,  <39.331371, 33.603367, 45.438038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.429314, 33.817654, 45.392334>,  <39.592552, 34.174797, 45.316162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429314, 33.817654, 45.392334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505343, 0.394645, 0.767388,
		-0.760320, 0.216934, -0.612252,
		-0.408094, -0.892858, 0.190431,
		39.306885, 33.549797, 45.449463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946507, 34.353642, 45.384995>,  <39.592552, 34.174797, 45.316162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946507, 34.353642, 45.384995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.947876, 33.976940, 45.519508>,  <38.948696, 33.750919, 45.600216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.947876, 33.976940, 45.519508>,  <38.946507, 34.353642, 45.384995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947876, 33.976940, 45.519508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748580, 0.220559, 0.625286,
		-0.663036, -0.253879, -0.704222,
		0.003424, -0.941754, 0.336287,
		38.948902, 33.694412, 45.620396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266083, 34.223942, 45.479122>,  <38.946507, 34.353642, 45.384995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266083, 34.223942, 45.479122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.461220, 33.950996, 45.696888>,  <38.578300, 33.787228, 45.827549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.461220, 33.950996, 45.696888>,  <38.266083, 34.223942, 45.479122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461220, 33.950996, 45.696888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602745, 0.187817, 0.775515,
		-0.631437, -0.706469, -0.319669,
		0.487838, -0.682368, 0.544415,
		38.607571, 33.746284, 45.860214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722496, 33.799488, 45.743782>,  <38.266083, 34.223942, 45.479122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722496, 33.799488, 45.743782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.035950, 33.761723, 45.989388>,  <38.224022, 33.739063, 46.136749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.035950, 33.761723, 45.989388>,  <37.722496, 33.799488, 45.743782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035950, 33.761723, 45.989388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608224, 0.084563, 0.789248,
		-0.126440, -0.991935, 0.008840,
		0.783630, -0.094416, 0.614011,
		38.271038, 33.733398, 46.173592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544559, 33.246208, 46.285828>,  <37.722496, 33.799488, 45.743782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544559, 33.246208, 46.285828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.856853, 33.452618, 46.426781>,  <38.044231, 33.576462, 46.511353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.856853, 33.452618, 46.426781>,  <37.544559, 33.246208, 46.285828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856853, 33.452618, 46.426781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445233, 0.063721, 0.893145,
		0.438427, -0.854203, 0.279499,
		0.780737, 0.516021, 0.352382,
		38.091076, 33.607422, 46.532494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830490, 32.919861, 46.739933>,  <37.544559, 33.246208, 46.285828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830490, 32.919861, 46.739933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.899826, 33.304649, 46.824375>,  <37.941429, 33.535522, 46.875042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.899826, 33.304649, 46.824375>,  <37.830490, 32.919861, 46.739933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899826, 33.304649, 46.824375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471992, -0.106988, 0.875087,
		0.864394, -0.251330, 0.435496,
		0.173343, 0.961971, 0.211105,
		37.951828, 33.593239, 46.887707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944843, 32.890965, 47.421543>,  <37.830490, 32.919861, 46.739933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944843, 32.890965, 47.421543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.873798, 33.278515, 47.352570>,  <37.831169, 33.511044, 47.311184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.873798, 33.278515, 47.352570>,  <37.944843, 32.890965, 47.421543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873798, 33.278515, 47.352570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310534, 0.111089, 0.944048,
		0.933820, 0.221226, 0.281138,
		-0.177616, 0.968875, -0.172435,
		37.820515, 33.569176, 47.300838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158375, 33.093678, 47.430347>,  <37.944843, 32.890965, 47.421543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158375, 33.093678, 47.430347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.324917, 32.732677, 47.386253>,  <37.424843, 32.516079, 47.359795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.324917, 32.732677, 47.386253>,  <37.158375, 33.093678, 47.430347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324917, 32.732677, 47.386253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553042, 0.347623, -0.757168,
		0.721663, 0.254281, 0.643851,
		0.416351, -0.902496, -0.110239,
		37.449821, 32.461929, 47.353180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.056423, 34.841526, 44.111153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.374245, 34.654106, 44.265633>,  <31.564938, 34.541656, 44.358318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.374245, 34.654106, 44.265633>,  <31.056423, 34.841526, 44.111153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374245, 34.654106, 44.265633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378760, -0.114663, -0.918365,
		0.474579, 0.875966, 0.086361,
		0.794554, -0.468547, 0.386197,
		31.612610, 34.513542, 44.381493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599939, 35.262062, 43.802174>,  <31.056423, 34.841526, 44.111153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599939, 35.262062, 43.802174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.711594, 34.894978, 43.915234>,  <31.778587, 34.674728, 43.983070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.711594, 34.894978, 43.915234>,  <31.599939, 35.262062, 43.802174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711594, 34.894978, 43.915234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514359, -0.105661, -0.851041,
		0.810874, 0.382939, 0.442539,
		0.279137, -0.917711, 0.282646,
		31.795334, 34.619663, 44.000027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286522, 35.197544, 43.650230>,  <31.599939, 35.262062, 43.802174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286522, 35.197544, 43.650230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.172066, 34.814758, 43.669609>,  <32.103394, 34.585087, 43.681236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.172066, 34.814758, 43.669609>,  <32.286522, 35.197544, 43.650230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172066, 34.814758, 43.669609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642494, -0.229126, -0.731233,
		0.710863, -0.178110, 0.680405,
		-0.286138, -0.956963, 0.048443,
		32.086224, 34.527668, 43.684143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880772, 34.927376, 43.555721>,  <32.286522, 35.197544, 43.650230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880772, 34.927376, 43.555721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.638912, 34.621029, 43.468224>,  <32.493797, 34.437222, 43.415726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.638912, 34.621029, 43.468224>,  <32.880772, 34.927376, 43.555721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638912, 34.621029, 43.468224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592677, -0.249155, -0.765935,
		0.532104, -0.592764, 0.604563,
		-0.604648, -0.765868, -0.218741,
		32.457520, 34.391270, 43.402599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301357, 34.265400, 43.493275>,  <32.880772, 34.927376, 43.555721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301357, 34.265400, 43.493275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.969128, 34.175278, 43.289558>,  <32.769791, 34.121204, 43.167328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.969128, 34.175278, 43.289558>,  <33.301357, 34.265400, 43.493275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969128, 34.175278, 43.289558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550295, -0.191529, -0.812707,
		0.085566, -0.955276, 0.283066,
		-0.830575, -0.225310, -0.509295,
		32.719955, 34.107685, 43.136768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535915, 33.689396, 43.120785>,  <33.301357, 34.265400, 43.493275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535915, 33.689396, 43.120785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.216972, 33.805542, 42.909161>,  <33.025608, 33.875229, 42.782185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.216972, 33.805542, 42.909161>,  <33.535915, 33.689396, 43.120785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216972, 33.805542, 42.909161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416090, -0.370489, -0.830426,
		-0.437140, -0.882285, 0.174593,
		-0.797357, 0.290366, -0.529065,
		32.977764, 33.892651, 42.750443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555866, 33.269226, 42.611282>,  <33.535915, 33.689396, 43.120785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555866, 33.269226, 42.611282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.322979, 33.555012, 42.456078>,  <33.183247, 33.726482, 42.362957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.322979, 33.555012, 42.456078>,  <33.555866, 33.269226, 42.611282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322979, 33.555012, 42.456078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313461, -0.243081, -0.917962,
		-0.750173, -0.656084, -0.082431,
		-0.582222, 0.714469, -0.388010,
		33.148312, 33.769352, 42.339676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439114, 33.051155, 41.983242>,  <33.555866, 33.269226, 42.611282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439114, 33.051155, 41.983242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.358448, 33.442657, 41.968414>,  <33.310047, 33.677559, 41.959518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.358448, 33.442657, 41.968414>,  <33.439114, 33.051155, 41.983242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358448, 33.442657, 41.968414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430632, 0.054610, -0.900874,
		-0.879709, -0.197636, -0.432496,
		-0.201664, 0.978753, -0.037068,
		33.297947, 33.736282, 41.957294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279285, 33.162743, 41.293079>,  <33.439114, 33.051155, 41.983242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279285, 33.162743, 41.293079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.420292, 33.501507, 41.452316>,  <33.504898, 33.704765, 41.547859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.420292, 33.501507, 41.452316>,  <33.279285, 33.162743, 41.293079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420292, 33.501507, 41.452316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363701, 0.267966, -0.892141,
		-0.862236, 0.459284, -0.213557,
		0.352520, 0.846908, 0.398092,
		33.526047, 33.755581, 41.571743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238373, 33.647938, 40.781006>,  <33.279285, 33.162743, 41.293079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238373, 33.647938, 40.781006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.478172, 33.847015, 41.031734>,  <33.622051, 33.966461, 41.182171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.478172, 33.847015, 41.031734>,  <33.238373, 33.647938, 40.781006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478172, 33.847015, 41.031734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528143, 0.342469, -0.777033,
		-0.601391, 0.796880, -0.057544,
		0.599495, 0.497691, 0.626825,
		33.658020, 33.996323, 41.219780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247715, 34.398865, 40.518475>,  <33.238373, 33.647938, 40.781006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247715, 34.398865, 40.518475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.556469, 34.304249, 40.754524>,  <33.741722, 34.247478, 40.896152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.556469, 34.304249, 40.754524>,  <33.247715, 34.398865, 40.518475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556469, 34.304249, 40.754524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635742, 0.279177, -0.719648,
		0.005477, 0.930650, 0.365870,
		0.771882, -0.236540, 0.590124,
		33.788033, 34.233288, 40.931561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724365, 34.924454, 40.415798>,  <33.247715, 34.398865, 40.518475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724365, 34.924454, 40.415798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.940662, 34.624378, 40.568020>,  <34.070438, 34.444332, 40.659351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.940662, 34.624378, 40.568020>,  <33.724365, 34.924454, 40.415798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940662, 34.624378, 40.568020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734214, 0.200126, -0.648753,
		0.410526, 0.630214, 0.659013,
		0.540739, -0.750186, 0.380555,
		34.102882, 34.399323, 40.682186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255318, 35.058727, 40.020042>,  <33.724365, 34.924454, 40.415798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255318, 35.058727, 40.020042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.366142, 34.723682, 40.208359>,  <34.432636, 34.522655, 40.321350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.366142, 34.723682, 40.208359>,  <34.255318, 35.058727, 40.020042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366142, 34.723682, 40.208359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661660, -0.188969, -0.725601,
		0.696735, 0.512542, 0.501857,
		0.277066, -0.837610, 0.470791,
		34.449261, 34.472401, 40.349594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071789, 35.064934, 40.157280>,  <34.255318, 35.058727, 40.020042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071789, 35.064934, 40.157280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.915970, 34.697258, 40.134144>,  <34.822479, 34.476654, 40.120262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.915970, 34.697258, 40.134144>,  <35.071789, 35.064934, 40.157280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915970, 34.697258, 40.134144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510903, -0.163407, -0.843965,
		0.766310, -0.358317, 0.533271,
		-0.389547, -0.919189, -0.057845,
		34.799107, 34.421501, 40.116791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558392, 34.934830, 40.718174>,  <35.071789, 35.064934, 40.157280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558392, 34.934830, 40.718174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.771767, 35.264732, 40.793247>,  <35.899792, 35.462673, 40.838291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.771767, 35.264732, 40.793247>,  <35.558392, 34.934830, 40.718174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771767, 35.264732, 40.793247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520419, 0.145102, 0.841492,
		0.666790, -0.546559, 0.506620,
		0.533437, 0.824754, 0.187687,
		35.931797, 35.512157, 40.849552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706669, 34.919331, 41.459072>,  <35.558392, 34.934830, 40.718174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706669, 34.919331, 41.459072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.759441, 35.300560, 41.350079>,  <35.791103, 35.529297, 41.284683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.759441, 35.300560, 41.350079>,  <35.706669, 34.919331, 41.459072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759441, 35.300560, 41.350079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390980, 0.302634, 0.869222,
		0.910895, -0.008137, 0.412558,
		0.131927, 0.953072, -0.272487,
		35.799019, 35.586483, 41.268333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096123, 35.187706, 42.031273>,  <35.706669, 34.919331, 41.459072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096123, 35.187706, 42.031273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.913799, 35.494595, 41.850784>,  <35.804405, 35.678730, 41.742489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.913799, 35.494595, 41.850784>,  <36.096123, 35.187706, 42.031273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913799, 35.494595, 41.850784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317060, 0.333741, 0.887744,
		0.831692, 0.547707, 0.091134,
		-0.455809, 0.767224, -0.451226,
		35.777058, 35.724762, 41.715416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148056, 35.683334, 42.476276>,  <36.096123, 35.187706, 42.031273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148056, 35.683334, 42.476276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.870384, 35.856510, 42.246258>,  <35.703781, 35.960415, 42.108246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.870384, 35.856510, 42.246258>,  <36.148056, 35.683334, 42.476276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870384, 35.856510, 42.246258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418344, 0.407449, 0.811772,
		0.585749, 0.804084, -0.101726,
		-0.694180, 0.432938, -0.575046,
		35.662128, 35.986393, 42.073746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175144, 36.450382, 42.624649>,  <36.148056, 35.683334, 42.476276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175144, 36.450382, 42.624649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.819885, 36.339577, 42.477978>,  <35.606731, 36.273094, 42.389973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.819885, 36.339577, 42.477978>,  <36.175144, 36.450382, 42.624649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819885, 36.339577, 42.477978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453321, 0.397099, 0.798005,
		-0.075450, 0.874972, -0.478259,
		-0.888148, -0.277014, -0.366682,
		35.553440, 36.256474, 42.367973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744923, 37.155350, 42.635876>,  <36.175144, 36.450382, 42.624649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744923, 37.155350, 42.635876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.484936, 36.854641, 42.591385>,  <35.328941, 36.674213, 42.564690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.484936, 36.854641, 42.591385>,  <35.744923, 37.155350, 42.635876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484936, 36.854641, 42.591385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502304, 0.315144, 0.805218,
		-0.570290, 0.579238, -0.582454,
		-0.649970, -0.751776, -0.111230,
		35.289944, 36.629108, 42.558018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115948, 37.481071, 42.754353>,  <35.744923, 37.155350, 42.635876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115948, 37.481071, 42.754353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.080276, 37.085854, 42.804657>,  <35.058876, 36.848724, 42.834839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.080276, 37.085854, 42.804657>,  <35.115948, 37.481071, 42.754353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080276, 37.085854, 42.804657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535861, 0.154026, 0.830138,
		-0.839584, 0.006636, -0.543190,
		-0.089174, -0.988045, 0.125761,
		35.053524, 36.789440, 42.842384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370663, 37.431416, 42.891655>,  <35.115948, 37.481071, 42.754353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370663, 37.431416, 42.891655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.563690, 37.111912, 43.035385>,  <34.679508, 36.920212, 43.121624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.563690, 37.111912, 43.035385>,  <34.370663, 37.431416, 42.891655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563690, 37.111912, 43.035385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623733, -0.025391, 0.781225,
		-0.614886, -0.601117, -0.510464,
		0.482569, -0.798758, 0.359323,
		34.708462, 36.872284, 43.143181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832760, 37.091377, 43.321892>,  <34.370663, 37.431416, 42.891655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832760, 37.091377, 43.321892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.158649, 36.883953, 43.425678>,  <34.354183, 36.759499, 43.487949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.158649, 36.883953, 43.425678>,  <33.832760, 37.091377, 43.321892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158649, 36.883953, 43.425678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386586, -0.152247, 0.909600,
		-0.432177, -0.841379, -0.324506,
		0.814724, -0.518558, 0.259468,
		34.403069, 36.728386, 43.503517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523048, 36.548931, 43.696484>,  <33.832760, 37.091377, 43.321892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523048, 36.548931, 43.696484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.903446, 36.584373, 43.814976>,  <34.131687, 36.605640, 43.886070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.903446, 36.584373, 43.814976>,  <33.523048, 36.548931, 43.696484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903446, 36.584373, 43.814976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272620, -0.211734, 0.938535,
		0.145883, -0.973302, -0.177203,
		0.950998, 0.088607, 0.296230,
		34.188747, 36.610954, 43.903843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640808, 35.909863, 44.091484>,  <33.523048, 36.548931, 43.696484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640808, 35.909863, 44.091484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.934753, 36.163891, 44.186695>,  <34.111122, 36.316307, 44.243820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.934753, 36.163891, 44.186695>,  <33.640808, 35.909863, 44.091484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934753, 36.163891, 44.186695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111489, -0.233071, 0.966048,
		0.668987, -0.736452, -0.100472,
		0.734865, 0.635072, 0.238028,
		34.155212, 36.354412, 44.258102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988392, 35.646938, 44.537460>,  <33.640808, 35.909863, 44.091484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988392, 35.646938, 44.537460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.069061, 36.033421, 44.601688>,  <34.117462, 36.265308, 44.640224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.069061, 36.033421, 44.601688>,  <33.988392, 35.646938, 44.537460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069061, 36.033421, 44.601688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130836, -0.135892, 0.982047,
		0.970676, -0.219057, 0.099009,
		0.201670, 0.966203, 0.160567,
		34.129562, 36.323280, 44.649860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393600, 35.619133, 45.098091>,  <33.988392, 35.646938, 44.537460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393600, 35.619133, 45.098091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.267773, 35.998371, 45.079506>,  <34.192276, 36.225914, 45.068356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.267773, 35.998371, 45.079506>,  <34.393600, 35.619133, 45.098091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267773, 35.998371, 45.079506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099310, 0.015812, 0.994931,
		0.944026, 0.317589, 0.089181,
		-0.314569, 0.948097, -0.046467,
		34.173401, 36.282799, 45.065567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753750, 36.063953, 45.627102>,  <34.393600, 35.619133, 45.098091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753750, 36.063953, 45.627102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.423111, 36.273090, 45.543797>,  <34.224728, 36.398575, 45.493813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.423111, 36.273090, 45.543797>,  <34.753750, 36.063953, 45.627102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423111, 36.273090, 45.543797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223736, 0.034265, 0.974047,
		0.516412, 0.851739, 0.088656,
		-0.826596, 0.522845, -0.208259,
		34.175133, 36.429943, 45.481319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028748, 36.784416, 45.857853>,  <34.753750, 36.063953, 45.627102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028748, 36.784416, 45.857853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.377235, 36.855915, 46.040730>,  <35.586327, 36.898815, 46.150455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.377235, 36.855915, 46.040730>,  <35.028748, 36.784416, 45.857853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377235, 36.855915, 46.040730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398486, 0.286378, -0.871319,
		-0.286679, 0.941295, 0.178268,
		0.871220, 0.178751, 0.457191,
		35.638603, 36.909542, 46.177887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195774, 37.529495, 45.685238>,  <35.028748, 36.784416, 45.857853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195774, 37.529495, 45.685238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.533207, 37.336395, 45.779320>,  <35.735668, 37.220535, 45.835770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.533207, 37.336395, 45.779320>,  <35.195774, 37.529495, 45.685238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533207, 37.336395, 45.779320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426217, 0.335466, -0.840120,
		0.326663, 0.808960, 0.488749,
		0.843582, -0.482749, 0.235208,
		35.786282, 37.191570, 45.849880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696724, 38.013634, 45.424252>,  <35.195774, 37.529495, 45.685238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696724, 38.013634, 45.424252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930325, 37.694736, 45.485374>,  <36.070484, 37.503399, 45.522049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930325, 37.694736, 45.485374>,  <35.696724, 38.013634, 45.424252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930325, 37.694736, 45.485374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634163, 0.330569, -0.698972,
		0.506735, 0.505106, 0.698633,
		0.584001, -0.797241, 0.152808,
		36.105526, 37.455563, 45.531216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371883, 38.253128, 45.498470>,  <35.696724, 38.013634, 45.424252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371883, 38.253128, 45.498470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.381836, 37.872063, 45.377266>,  <36.387806, 37.643425, 45.304543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.381836, 37.872063, 45.377266>,  <36.371883, 38.253128, 45.498470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381836, 37.872063, 45.377266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798634, 0.201257, -0.567168,
		0.601302, -0.227886, 0.765835,
		0.024880, -0.952661, -0.303013,
		36.389301, 37.586266, 45.286362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064438, 38.109055, 45.457836>,  <36.371883, 38.253128, 45.498470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064438, 38.109055, 45.457836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.893192, 37.812561, 45.251038>,  <36.790443, 37.634666, 45.126957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.893192, 37.812561, 45.251038>,  <37.064438, 38.109055, 45.457836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893192, 37.812561, 45.251038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756966, 0.018389, -0.653196,
		0.493679, -0.670993, 0.553217,
		-0.428117, -0.741235, -0.516998,
		36.764759, 37.590191, 45.095940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571472, 37.661713, 45.259670>,  <37.064438, 38.109055, 45.457836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571472, 37.661713, 45.259670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.294838, 37.615204, 44.974522>,  <37.128857, 37.587299, 44.803432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.294838, 37.615204, 44.974522>,  <37.571472, 37.661713, 45.259670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294838, 37.615204, 44.974522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721959, -0.081325, -0.687140,
		0.021920, -0.989882, 0.140186,
		-0.691588, -0.116271, -0.712872,
		37.087360, 37.580322, 44.760658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848988, 37.179993, 44.885765>,  <37.571472, 37.661713, 45.259670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848988, 37.179993, 44.885765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.554348, 37.318382, 44.653309>,  <37.377563, 37.401417, 44.513836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.554348, 37.318382, 44.653309>,  <37.848988, 37.179993, 44.885765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554348, 37.318382, 44.653309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533993, -0.229827, -0.813653,
		-0.415064, -0.909661, -0.015456,
		-0.736596, 0.345971, -0.581145,
		37.333370, 37.422173, 44.478966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720016, 36.622288, 44.436996>,  <37.848988, 37.179993, 44.885765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720016, 36.622288, 44.436996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.563770, 36.951103, 44.271267>,  <37.470024, 37.148392, 44.171829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.563770, 36.951103, 44.271267>,  <37.720016, 36.622288, 44.436996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563770, 36.951103, 44.271267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561264, -0.144078, -0.814999,
		-0.729659, -0.550899, -0.405103,
		-0.390616, 0.822041, -0.414328,
		37.446587, 37.197716, 44.146969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410236, 36.503662, 43.769363>,  <37.720016, 36.622288, 44.436996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410236, 36.503662, 43.769363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.519871, 36.888344, 43.769878>,  <37.585651, 37.119152, 43.770187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.519871, 36.888344, 43.769878>,  <37.410236, 36.503662, 43.769363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519871, 36.888344, 43.769878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569576, -0.161253, -0.805966,
		-0.774892, 0.221641, -0.591961,
		0.274091, 0.961703, 0.001288,
		37.602097, 37.176853, 43.770264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353458, 36.696472, 43.070446>,  <37.410236, 36.503662, 43.769363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353458, 36.696472, 43.070446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.580715, 36.997402, 43.203842>,  <37.717072, 37.177959, 43.283878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.580715, 36.997402, 43.203842>,  <37.353458, 36.696472, 43.070446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580715, 36.997402, 43.203842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570688, -0.068232, -0.818327,
		-0.592895, 0.655247, -0.468110,
		0.568146, 0.752327, 0.333487,
		37.751160, 37.223099, 43.303890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437134, 37.100994, 42.460514>,  <37.353458, 36.696472, 43.070446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437134, 37.100994, 42.460514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.729729, 37.190117, 42.718285>,  <37.905285, 37.243591, 42.872948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.729729, 37.190117, 42.718285>,  <37.437134, 37.100994, 42.460514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729729, 37.190117, 42.718285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671034, -0.067516, -0.738346,
		-0.120997, 0.972523, -0.198896,
		0.731487, 0.222804, 0.644426,
		37.949173, 37.256958, 42.911613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805050, 37.536678, 42.139988>,  <37.437134, 37.100994, 42.460514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805050, 37.536678, 42.139988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.059105, 37.390266, 42.412056>,  <38.211536, 37.302422, 42.575294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.059105, 37.390266, 42.412056>,  <37.805050, 37.536678, 42.139988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059105, 37.390266, 42.412056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683248, -0.144463, -0.715754,
		0.360243, 0.919323, 0.158333,
		0.635136, -0.366026, 0.680167,
		38.249645, 37.280460, 42.616108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461739, 37.913513, 42.019260>,  <37.805050, 37.536678, 42.139988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461739, 37.913513, 42.019260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.611713, 37.622467, 42.249043>,  <38.701698, 37.447838, 42.386913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.611713, 37.622467, 42.249043>,  <38.461739, 37.913513, 42.019260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611713, 37.622467, 42.249043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811552, -0.041917, -0.582775,
		0.448115, 0.684705, 0.574780,
		0.374936, -0.727614, 0.574458,
		38.724194, 37.404182, 42.421379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156418, 38.015972, 42.303635>,  <38.461739, 37.913513, 42.019260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156418, 38.015972, 42.303635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.135208, 37.616714, 42.315601>,  <39.122482, 37.377159, 42.322781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.135208, 37.616714, 42.315601>,  <39.156418, 38.015972, 42.303635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135208, 37.616714, 42.315601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829101, -0.060707, -0.555793,
		0.556578, -0.004668, 0.830782,
		-0.053029, -0.998145, 0.029918,
		39.119301, 37.317272, 42.324577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.604885, 37.318615, 43.365719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.221807, 37.240440, 43.450214>,  <25.991961, 37.193535, 43.500912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.221807, 37.240440, 43.450214>,  <26.604885, 37.318615, 43.365719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.221807, 37.240440, 43.450214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105355, -0.444964, -0.889330,
		0.267802, -0.873963, 0.405550,
		-0.957696, -0.195438, 0.211239,
		25.934498, 37.181808, 43.513584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.537066, 36.661098, 43.192444>,  <26.604885, 37.318615, 43.365719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.537066, 36.661098, 43.192444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.157843, 36.788315, 43.194809>,  <25.930309, 36.864647, 43.196228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.157843, 36.788315, 43.194809>,  <26.537066, 36.661098, 43.192444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.157843, 36.788315, 43.194809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155834, -0.448162, -0.880265,
		-0.277311, -0.835464, 0.474445,
		-0.948058, 0.318042, 0.005913,
		25.873425, 36.883728, 43.196583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.066202, 36.127277, 43.013725>,  <26.537066, 36.661098, 43.192444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.066202, 36.127277, 43.013725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.854004, 36.454365, 42.924358>,  <25.726685, 36.650616, 42.870739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.854004, 36.454365, 42.924358>,  <26.066202, 36.127277, 43.013725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.854004, 36.454365, 42.924358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156831, -0.353692, -0.922121,
		-0.833054, -0.454141, 0.315875,
		-0.530495, 0.817715, -0.223421,
		25.694855, 36.699680, 42.857330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.490751, 35.881844, 42.618053>,  <26.066202, 36.127277, 43.013725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.490751, 35.881844, 42.618053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.567587, 36.262470, 42.522038>,  <25.613688, 36.490849, 42.464428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.567587, 36.262470, 42.522038>,  <25.490751, 35.881844, 42.618053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.567587, 36.262470, 42.522038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190466, -0.203795, -0.960307,
		-0.962717, 0.230184, 0.142095,
		0.192089, 0.951569, -0.240039,
		25.625214, 36.547939, 42.450027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.934385, 36.026146, 42.070431>,  <25.490751, 35.881844, 42.618053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.934385, 36.026146, 42.070431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.232553, 36.291748, 42.046936>,  <25.411455, 36.451107, 42.032841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.232553, 36.291748, 42.046936>,  <24.934385, 36.026146, 42.070431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.232553, 36.291748, 42.046936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003061, -0.091517, -0.995799,
		-0.666586, 0.742111, -0.070251,
		0.745422, 0.664001, -0.058732,
		25.456181, 36.490948, 42.029316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.670471, 36.408966, 41.460224>,  <24.934385, 36.026146, 42.070431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.670471, 36.408966, 41.460224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.058937, 36.471020, 41.532635>,  <25.292017, 36.508251, 41.576080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.058937, 36.471020, 41.532635>,  <24.670471, 36.408966, 41.460224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.058937, 36.471020, 41.532635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177662, 0.035406, -0.983454,
		-0.158978, 0.987259, 0.006824,
		0.971165, 0.155135, 0.181027,
		25.350286, 36.517559, 41.586945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.830818, 36.783112, 40.936096>,  <24.670471, 36.408966, 41.460224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.830818, 36.783112, 40.936096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.196499, 36.693520, 41.071194>,  <25.415907, 36.639767, 41.152252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.196499, 36.693520, 41.071194>,  <24.830818, 36.783112, 40.936096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.196499, 36.693520, 41.071194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291378, -0.215947, -0.931915,
		0.281663, 0.950369, -0.132157,
		0.914202, -0.223978, 0.337741,
		25.470760, 36.626328, 41.172516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.311237, 37.230118, 40.570026>,  <24.830818, 36.783112, 40.936096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.311237, 37.230118, 40.570026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.494776, 36.900883, 40.703884>,  <25.604898, 36.703342, 40.784199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.494776, 36.900883, 40.703884>,  <25.311237, 37.230118, 40.570026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.494776, 36.900883, 40.703884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420442, -0.130663, -0.897862,
		0.782744, 0.552680, 0.286106,
		0.458847, -0.823087, 0.334646,
		25.632429, 36.653957, 40.804279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.059298, 37.288712, 40.373863>,  <25.311237, 37.230118, 40.570026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.059298, 37.288712, 40.373863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.984541, 36.898987, 40.424118>,  <25.939688, 36.665150, 40.454269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.984541, 36.898987, 40.424118>,  <26.059298, 37.288712, 40.373863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.984541, 36.898987, 40.424118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348813, -0.185369, -0.918677,
		0.918368, -0.127870, 0.374498,
		-0.186892, -0.974314, 0.125634,
		25.928473, 36.606693, 40.461807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.726999, 37.003593, 40.085682>,  <26.059298, 37.288712, 40.373863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.726999, 37.003593, 40.085682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.457527, 36.709660, 40.117115>,  <26.295843, 36.533298, 40.135975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.457527, 36.709660, 40.117115>,  <26.726999, 37.003593, 40.085682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.457527, 36.709660, 40.117115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301342, -0.370236, -0.878703,
		0.674794, -0.568284, 0.470857,
		-0.673681, -0.734832, 0.078585,
		26.255423, 36.489208, 40.140690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120913, 36.493233, 39.816608>,  <26.726999, 37.003593, 40.085682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120913, 36.493233, 39.816608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.732292, 36.398518, 39.814693>,  <26.499121, 36.341690, 39.813545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.732292, 36.398518, 39.814693>,  <27.120913, 36.493233, 39.816608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.732292, 36.398518, 39.814693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118970, -0.470471, -0.874358,
		0.204784, -0.850053, 0.485257,
		-0.971550, -0.236786, -0.004786,
		26.440826, 36.327480, 39.813259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.951241, 35.721237, 39.890945>,  <27.120913, 36.493233, 39.816608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.951241, 35.721237, 39.890945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.655291, 35.885868, 39.678085>,  <26.477720, 35.984646, 39.550369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.655291, 35.885868, 39.678085>,  <26.951241, 35.721237, 39.890945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.655291, 35.885868, 39.678085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283851, -0.526177, -0.801602,
		-0.609931, -0.744137, 0.272477,
		-0.739873, 0.411579, -0.532156,
		26.433329, 36.009342, 39.518440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.721195, 35.117668, 39.353172>,  <26.951241, 35.721237, 39.890945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.721195, 35.117668, 39.353172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.526901, 35.443645, 39.226727>,  <26.410326, 35.639233, 39.150860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.526901, 35.443645, 39.226727>,  <26.721195, 35.117668, 39.353172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.526901, 35.443645, 39.226727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227107, -0.231560, -0.945940,
		-0.844089, -0.531265, -0.072604,
		-0.485733, 0.814946, -0.316112,
		26.381182, 35.688129, 39.131893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.103138, 34.902763, 38.836559>,  <26.721195, 35.117668, 39.353172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.103138, 34.902763, 38.836559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.185888, 35.289536, 38.776886>,  <26.235538, 35.521599, 38.741081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.185888, 35.289536, 38.776886>,  <26.103138, 34.902763, 38.836559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.185888, 35.289536, 38.776886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050810, -0.162898, -0.985334,
		-0.977047, 0.196262, -0.082829,
		0.206876, 0.966926, -0.149187,
		26.247952, 35.579613, 38.732128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.650486, 35.024921, 38.365665>,  <26.103138, 34.902763, 38.836559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.650486, 35.024921, 38.365665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.944307, 35.295364, 38.342648>,  <26.120600, 35.457630, 38.328838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.944307, 35.295364, 38.342648>,  <25.650486, 35.024921, 38.365665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.944307, 35.295364, 38.342648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159350, -0.254313, -0.953904,
		-0.659574, 0.691524, -0.294544,
		0.734554, 0.676106, -0.057544,
		26.164673, 35.498196, 38.325386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.625940, 35.187370, 37.662117>,  <25.650486, 35.024921, 38.365665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.625940, 35.187370, 37.662117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.952431, 35.368866, 37.805168>,  <26.148325, 35.477764, 37.890999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.952431, 35.368866, 37.805168>,  <25.625940, 35.187370, 37.662117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.952431, 35.368866, 37.805168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415242, -0.030363, -0.909204,
		-0.401686, 0.890615, -0.213196,
		0.816224, 0.453743, 0.357625,
		26.197298, 35.504990, 37.912457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.759974, 35.766895, 37.251366>,  <25.625940, 35.187370, 37.662117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.759974, 35.766895, 37.251366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.099463, 35.645821, 37.424824>,  <26.303156, 35.573177, 37.528900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.099463, 35.645821, 37.424824>,  <25.759974, 35.766895, 37.251366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.099463, 35.645821, 37.424824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378393, -0.225267, -0.897816,
		0.369443, 0.926086, -0.076656,
		0.848723, -0.302686, 0.433648,
		26.354080, 35.555016, 37.554916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.338886, 36.084244, 36.836975>,  <25.759974, 35.766895, 37.251366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.338886, 36.084244, 36.836975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.486012, 35.762672, 37.023914>,  <26.574287, 35.569729, 37.136078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.486012, 35.762672, 37.023914>,  <26.338886, 36.084244, 36.836975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.486012, 35.762672, 37.023914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412355, -0.309452, -0.856856,
		0.833472, 0.507876, 0.217682,
		0.367815, -0.803928, 0.467345,
		26.596355, 35.521496, 37.164120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.022373, 35.922638, 36.594078>,  <26.338886, 36.084244, 36.836975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.022373, 35.922638, 36.594078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.915413, 35.567734, 36.744419>,  <26.851236, 35.354790, 36.834625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.915413, 35.567734, 36.744419>,  <27.022373, 35.922638, 36.594078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.915413, 35.567734, 36.744419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544596, -0.460944, -0.700675,
		0.794929, 0.017328, 0.606455,
		-0.267401, -0.887260, 0.375855,
		26.835194, 35.301556, 36.857174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.566738, 35.624496, 36.556137>,  <27.022373, 35.922638, 36.594078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.566738, 35.624496, 36.556137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.304991, 35.323460, 36.585567>,  <27.147942, 35.142838, 36.603226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.304991, 35.323460, 36.585567>,  <27.566738, 35.624496, 36.556137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.304991, 35.323460, 36.585567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540075, -0.533250, -0.651126,
		0.529265, -0.386338, 0.755395,
		-0.654369, -0.752587, 0.073579,
		27.108681, 35.097683, 36.607639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022617, 35.034729, 36.521194>,  <27.566738, 35.624496, 36.556137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.022617, 35.034729, 36.521194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.648653, 34.923058, 36.433556>,  <27.424274, 34.856052, 36.380970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.648653, 34.923058, 36.433556>,  <28.022617, 35.034729, 36.521194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.648653, 34.923058, 36.433556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347143, -0.591130, -0.728050,
		0.073741, -0.756719, 0.649568,
		-0.934909, -0.279180, -0.219099,
		27.368181, 34.839302, 36.367825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635803, 34.453007, 36.246632>,  <28.022617, 35.034729, 36.521194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635803, 34.453007, 36.246632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.013477, 34.332916, 36.192402>,  <28.240082, 34.260860, 36.159866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.013477, 34.332916, 36.192402>,  <27.635803, 34.453007, 36.246632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.013477, 34.332916, 36.192402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274596, 0.489969, 0.827362,
		-0.181974, -0.818408, 0.545063,
		0.944183, -0.300230, -0.135570,
		28.296732, 34.242847, 36.151730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753405, 34.394970, 36.912491>,  <27.635803, 34.453007, 36.246632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.753405, 34.394970, 36.912491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.108324, 34.395748, 36.728012>,  <28.321276, 34.396214, 36.617325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.108324, 34.395748, 36.728012>,  <27.753405, 34.394970, 36.912491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108324, 34.395748, 36.728012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403030, 0.482886, 0.777424,
		0.224213, -0.875681, 0.427681,
		0.887297, 0.001941, -0.461195,
		28.374514, 34.396332, 36.589653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.138681, 34.199669, 37.455803>,  <27.753405, 34.394970, 36.912491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.138681, 34.199669, 37.455803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.388300, 34.352642, 37.183243>,  <28.538071, 34.444427, 37.019707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.388300, 34.352642, 37.183243>,  <28.138681, 34.199669, 37.455803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388300, 34.352642, 37.183243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457565, 0.528039, 0.715408,
		0.633404, -0.758234, 0.154532,
		0.624046, 0.382434, -0.681404,
		28.575514, 34.467373, 36.978821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795130, 33.950367, 37.628250>,  <28.138681, 34.199669, 37.455803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.795130, 33.950367, 37.628250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.805391, 34.299797, 37.433846>,  <28.811548, 34.509457, 37.317204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.805391, 34.299797, 37.433846>,  <28.795130, 33.950367, 37.628250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.805391, 34.299797, 37.433846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420645, 0.431600, 0.797984,
		0.906862, -0.224906, -0.356395,
		0.025651, 0.873578, -0.486008,
		28.813087, 34.561871, 37.288044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341146, 34.294701, 37.907230>,  <28.795130, 33.950367, 37.628250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341146, 34.294701, 37.907230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.166584, 34.594460, 37.708054>,  <29.061846, 34.774315, 37.588547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.166584, 34.594460, 37.708054>,  <29.341146, 34.294701, 37.907230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166584, 34.594460, 37.708054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416475, 0.658817, 0.626506,
		0.797558, 0.066029, -0.599618,
		-0.436406, 0.749400, -0.497945,
		29.035662, 34.819279, 37.558670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881672, 34.863487, 38.036251>,  <29.341146, 34.294701, 37.907230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881672, 34.863487, 38.036251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.538126, 35.020168, 37.904236>,  <29.331999, 35.114178, 37.825027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.538126, 35.020168, 37.904236>,  <29.881672, 34.863487, 38.036251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.538126, 35.020168, 37.904236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040475, 0.694230, 0.718614,
		0.510603, 0.603833, -0.612103,
		-0.858863, 0.391702, -0.330036,
		29.280466, 35.137680, 37.805225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091558, 35.572617, 37.732014>,  <29.881672, 34.863487, 38.036251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.091558, 35.572617, 37.732014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.708891, 35.523853, 37.837788>,  <29.479290, 35.494595, 37.901253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.708891, 35.523853, 37.837788>,  <30.091558, 35.572617, 37.732014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708891, 35.523853, 37.837788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111210, 0.686343, 0.718725,
		-0.269112, 0.716989, -0.643044,
		-0.956667, -0.121905, 0.264439,
		29.421890, 35.487282, 37.917118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816147, 36.331238, 37.744389>,  <30.091558, 35.572617, 37.732014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.816147, 36.331238, 37.744389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.549856, 36.106155, 37.940414>,  <29.390081, 35.971104, 38.058029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.549856, 36.106155, 37.940414>,  <29.816147, 36.331238, 37.744389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.549856, 36.106155, 37.940414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031733, 0.677511, 0.734828,
		-0.745522, 0.473642, -0.468893,
		-0.665725, -0.562710, 0.490069,
		29.350138, 35.937344, 38.087437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375179, 36.823181, 37.965599>,  <29.816147, 36.331238, 37.744389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.375179, 36.823181, 37.965599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.322235, 36.507519, 38.205502>,  <29.290468, 36.318123, 38.349445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.322235, 36.507519, 38.205502>,  <29.375179, 36.823181, 37.965599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.322235, 36.507519, 38.205502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016074, 0.606713, 0.794759,
		-0.991072, 0.095553, -0.092988,
		-0.132358, -0.789157, 0.599760,
		29.282528, 36.270771, 38.385429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.810375, 37.052818, 38.370693>,  <29.375179, 36.823181, 37.965599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.810375, 37.052818, 38.370693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.969965, 36.745384, 38.570728>,  <29.065720, 36.560925, 38.690750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.969965, 36.745384, 38.570728>,  <28.810375, 37.052818, 38.370693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.969965, 36.745384, 38.570728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050559, 0.526111, 0.848911,
		-0.915567, -0.363979, 0.171047,
		0.398976, -0.768587, 0.500092,
		29.089657, 36.514809, 38.720757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.401356, 36.917549, 38.907581>,  <28.810375, 37.052818, 38.370693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.401356, 36.917549, 38.907581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.758076, 36.766060, 39.006580>,  <28.972109, 36.675167, 39.065979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.758076, 36.766060, 39.006580>,  <28.401356, 36.917549, 38.907581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758076, 36.766060, 39.006580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043277, 0.473130, 0.879929,
		-0.450351, -0.795433, 0.405549,
		0.891802, -0.378726, 0.247499,
		29.025616, 36.652443, 39.080830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.227974, 36.548027, 39.574631>,  <28.401356, 36.917549, 38.907581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.227974, 36.548027, 39.574631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.614363, 36.651352, 39.569366>,  <28.846195, 36.713348, 39.566208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.614363, 36.651352, 39.569366>,  <28.227974, 36.548027, 39.574631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614363, 36.651352, 39.569366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046403, 0.223146, 0.973680,
		0.254453, -0.939936, 0.227539,
		0.965971, 0.258314, -0.013164,
		28.904154, 36.728844, 39.565418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.441015, 36.316635, 40.177372>,  <28.227974, 36.548027, 39.574631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.441015, 36.316635, 40.177372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.706062, 36.587860, 40.050140>,  <28.865091, 36.750595, 39.973801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.706062, 36.587860, 40.050140>,  <28.441015, 36.316635, 40.177372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706062, 36.587860, 40.050140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078230, 0.359707, 0.929780,
		0.744861, -0.640971, 0.185304,
		0.662617, 0.678061, -0.318074,
		28.904848, 36.791279, 39.954720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891529, 36.380093, 40.740425>,  <28.441015, 36.316635, 40.177372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891529, 36.380093, 40.740425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.995121, 36.702820, 40.528023>,  <29.057276, 36.896458, 40.400581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.995121, 36.702820, 40.528023>,  <28.891529, 36.380093, 40.740425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995121, 36.702820, 40.528023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107204, 0.522359, 0.845960,
		0.959914, -0.276015, 0.048787,
		0.258982, 0.806819, -0.531009,
		29.072815, 36.944866, 40.368721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534332, 36.585297, 41.037430>,  <28.891529, 36.380093, 40.740425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534332, 36.585297, 41.037430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.360466, 36.902489, 40.866665>,  <29.256145, 37.092804, 40.764206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.360466, 36.902489, 40.866665>,  <29.534332, 36.585297, 41.037430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360466, 36.902489, 40.866665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261853, 0.564833, 0.782558,
		0.861684, 0.228364, -0.453157,
		-0.434666, 0.792978, -0.426910,
		29.230066, 37.140381, 40.738590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.022488, 37.219357, 41.223316>,  <29.534332, 36.585297, 41.037430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.022488, 37.219357, 41.223316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.655291, 37.344261, 41.125519>,  <29.434973, 37.419205, 41.066841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.655291, 37.344261, 41.125519>,  <30.022488, 37.219357, 41.223316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655291, 37.344261, 41.125519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020988, 0.577369, 0.816213,
		0.396038, 0.754411, -0.523468,
		-0.917994, 0.312265, -0.244494,
		29.379892, 37.437943, 41.052170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029419, 37.981365, 41.125877>,  <30.022488, 37.219357, 41.223316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029419, 37.981365, 41.125877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.645014, 37.883080, 41.176601>,  <29.414371, 37.824108, 41.207035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.645014, 37.883080, 41.176601>,  <30.029419, 37.981365, 41.125877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.645014, 37.883080, 41.176601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082423, 0.692319, 0.716869,
		-0.263938, 0.678467, -0.685579,
		-0.961012, -0.245716, 0.126808,
		29.356710, 37.809364, 41.214645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621740, 38.599552, 41.132256>,  <30.029419, 37.981365, 41.125877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.621740, 38.599552, 41.132256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.363720, 38.354530, 41.314987>,  <29.208908, 38.207516, 41.424625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.363720, 38.354530, 41.314987>,  <29.621740, 38.599552, 41.132256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363720, 38.354530, 41.314987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368379, 0.773052, 0.516417,
		-0.669484, 0.164829, -0.724309,
		-0.645049, -0.612553, 0.456827,
		29.170206, 38.170765, 41.452034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.052385, 39.036789, 41.229717>,  <29.621740, 38.599552, 41.132256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.052385, 39.036789, 41.229717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.962471, 38.731106, 41.471531>,  <28.908522, 38.547699, 41.616619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.962471, 38.731106, 41.471531>,  <29.052385, 39.036789, 41.229717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962471, 38.731106, 41.471531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620678, 0.590561, 0.515748,
		-0.751153, -0.259290, -0.607074,
		-0.224786, -0.764203, 0.604537,
		28.895035, 38.501846, 41.652893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382975, 38.917736, 41.207516>,  <29.052385, 39.036789, 41.229717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382975, 38.917736, 41.207516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.483643, 38.741833, 41.552368>,  <28.544043, 38.636292, 41.759281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.483643, 38.741833, 41.552368>,  <28.382975, 38.917736, 41.207516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.483643, 38.741833, 41.552368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572195, 0.650834, 0.499007,
		-0.780548, -0.618895, -0.087831,
		0.251669, -0.439756, 0.862136,
		28.559143, 38.609905, 41.811008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.689716, 38.823071, 41.546974>,  <28.382975, 38.917736, 41.207516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.689716, 38.823071, 41.546974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.979490, 38.836842, 41.822369>,  <28.153355, 38.845104, 41.987606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.979490, 38.836842, 41.822369>,  <27.689716, 38.823071, 41.546974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.979490, 38.836842, 41.822369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605305, 0.509669, 0.611427,
		-0.329848, -0.859681, 0.390062,
		0.724435, 0.034429, 0.688483,
		28.196821, 38.847172, 42.028915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.605305, 34.823704, 48.678040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.296360, 34.644615, 48.497818>,  <38.110992, 34.537163, 48.389683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.296360, 34.644615, 48.497818>,  <38.605305, 34.823704, 48.678040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296360, 34.644615, 48.497818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599919, 0.281138, 0.749038,
		-0.208688, 0.848829, -0.485735,
		-0.772364, -0.447717, -0.450558,
		38.064651, 34.510300, 48.362652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023251, 35.234135, 48.794258>,  <38.605305, 34.823704, 48.678040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023251, 35.234135, 48.794258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.872826, 34.877888, 48.691978>,  <37.782570, 34.664139, 48.630611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.872826, 34.877888, 48.691978>,  <38.023251, 35.234135, 48.794258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872826, 34.877888, 48.691978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724840, 0.110852, 0.679940,
		-0.577221, 0.441039, -0.687241,
		-0.376062, -0.890616, -0.255697,
		37.760006, 34.610703, 48.615269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271225, 35.325031, 48.653172>,  <38.023251, 35.234135, 48.794258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271225, 35.325031, 48.653172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.290165, 34.930336, 48.715286>,  <37.301529, 34.693520, 48.752556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.290165, 34.930336, 48.715286>,  <37.271225, 35.325031, 48.653172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290165, 34.930336, 48.715286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692732, 0.079558, 0.716793,
		-0.719639, -0.141512, -0.679775,
		0.047353, -0.986734, 0.155283,
		37.304371, 34.634315, 48.761871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576450, 35.082962, 48.697254>,  <37.271225, 35.325031, 48.653172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576450, 35.082962, 48.697254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.776455, 34.785175, 48.874233>,  <36.896458, 34.606503, 48.980419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.776455, 34.785175, 48.874233>,  <36.576450, 35.082962, 48.697254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776455, 34.785175, 48.874233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733172, -0.091977, 0.673795,
		-0.460926, -0.661289, -0.591814,
		0.500006, -0.744471, 0.442444,
		36.926456, 34.561832, 49.006966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120228, 34.624790, 48.985027>,  <36.576450, 35.082962, 48.697254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120228, 34.624790, 48.985027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.434738, 34.477882, 49.183773>,  <36.623444, 34.389736, 49.303020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.434738, 34.477882, 49.183773>,  <36.120228, 34.624790, 48.985027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434738, 34.477882, 49.183773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553238, -0.060407, 0.830830,
		-0.275129, -0.928149, -0.250687,
		0.786277, -0.367275, 0.496868,
		36.670620, 34.367699, 49.332832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814781, 34.166920, 49.423298>,  <36.120228, 34.624790, 48.985027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814781, 34.166920, 49.423298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.176125, 34.262669, 49.565647>,  <36.392929, 34.320118, 49.651058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.176125, 34.262669, 49.565647>,  <35.814781, 34.166920, 49.423298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176125, 34.262669, 49.565647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371613, 0.022598, 0.928113,
		0.214126, -0.970664, 0.109369,
		0.903357, 0.239376, 0.355872,
		36.447132, 34.334480, 49.672409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844360, 33.747185, 50.038761>,  <35.814781, 34.166920, 49.423298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844360, 33.747185, 50.038761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.133682, 34.020443, 50.079044>,  <36.307274, 34.184399, 50.103214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.133682, 34.020443, 50.079044>,  <35.844360, 33.747185, 50.038761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133682, 34.020443, 50.079044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353717, 0.241289, 0.903695,
		0.593055, -0.689269, 0.416166,
		0.723305, 0.683145, 0.100708,
		36.350674, 34.225388, 50.109257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098824, 33.545483, 50.583076>,  <35.844360, 33.747185, 50.038761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098824, 33.545483, 50.583076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.205811, 33.928993, 50.544708>,  <36.270004, 34.159100, 50.521687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.205811, 33.928993, 50.544708>,  <36.098824, 33.545483, 50.583076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205811, 33.928993, 50.544708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228660, 0.159864, 0.960291,
		0.936042, -0.234913, 0.261993,
		0.267468, 0.958780, -0.095924,
		36.286053, 34.216629, 50.515930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528114, 33.640667, 51.152576>,  <36.098824, 33.545483, 50.583076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528114, 33.640667, 51.152576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.360897, 33.985039, 51.036613>,  <36.260567, 34.191662, 50.967037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.360897, 33.985039, 51.036613>,  <36.528114, 33.640667, 51.152576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360897, 33.985039, 51.036613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290049, 0.175930, 0.940702,
		0.860880, 0.477337, 0.176166,
		-0.418039, 0.860929, -0.289905,
		36.235485, 34.243317, 50.949642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708904, 34.105331, 51.711510>,  <36.528114, 33.640667, 51.152576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708904, 34.105331, 51.711510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.407913, 34.274090, 51.509209>,  <36.227318, 34.375347, 51.387829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.407913, 34.274090, 51.509209>,  <36.708904, 34.105331, 51.711510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407913, 34.274090, 51.509209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475060, 0.184189, 0.860460,
		0.456182, 0.887736, 0.061830,
		-0.752473, 0.421899, -0.505752,
		36.182171, 34.400661, 51.357483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616062, 34.753063, 52.024532>,  <36.708904, 34.105331, 51.711510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616062, 34.753063, 52.024532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.273590, 34.677856, 51.832031>,  <36.068108, 34.632732, 51.716530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.273590, 34.677856, 51.832031>,  <36.616062, 34.753063, 52.024532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273590, 34.677856, 51.832031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513111, 0.200150, 0.834660,
		-0.060608, 0.961556, -0.267838,
		-0.856180, -0.188018, -0.481254,
		36.016735, 34.621452, 51.687656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149944, 35.312042, 52.091812>,  <36.616062, 34.753063, 52.024532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149944, 35.312042, 52.091812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.922565, 34.991402, 52.017735>,  <35.786137, 34.799019, 51.973289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.922565, 34.991402, 52.017735>,  <36.149944, 35.312042, 52.091812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922565, 34.991402, 52.017735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703883, 0.357327, 0.613895,
		-0.425925, 0.479324, -0.767357,
		-0.568451, -0.801602, -0.185193,
		35.752029, 34.750919, 51.962177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372833, 35.487701, 51.815216>,  <36.149944, 35.312042, 52.091812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372833, 35.487701, 51.815216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.411045, 35.159889, 52.041222>,  <35.433971, 34.963200, 52.176823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.411045, 35.159889, 52.041222>,  <35.372833, 35.487701, 51.815216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411045, 35.159889, 52.041222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650506, 0.378239, 0.658618,
		-0.753469, -0.430462, -0.496978,
		0.095534, -0.819535, 0.565009,
		35.439705, 34.914028, 52.210724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094727, 35.997826, 52.373051>,  <35.372833, 35.487701, 51.815216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094727, 35.997826, 52.373051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.058613, 35.723640, 52.662045>,  <35.036945, 35.559128, 52.835442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.058613, 35.723640, 52.662045>,  <35.094727, 35.997826, 52.373051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058613, 35.723640, 52.662045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572609, 0.629280, 0.525477,
		-0.814842, -0.366261, -0.449317,
		-0.090284, -0.685463, 0.722488,
		35.031528, 35.518002, 52.878792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666065, 36.438686, 51.998363>,  <35.094727, 35.997826, 52.373051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666065, 36.438686, 51.998363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.390663, 36.681057, 51.838959>,  <34.225422, 36.826481, 51.743317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.390663, 36.681057, 51.838959>,  <34.666065, 36.438686, 51.998363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390663, 36.681057, 51.838959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412696, -0.124503, -0.902320,
		-0.596355, -0.785718, -0.164342,
		-0.688507, 0.605926, -0.398511,
		34.184113, 36.862835, 51.719406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237160, 36.080189, 51.500275>,  <34.666065, 36.438686, 51.998363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237160, 36.080189, 51.500275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.248131, 36.472294, 51.421955>,  <34.254715, 36.707558, 51.374962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.248131, 36.472294, 51.421955>,  <34.237160, 36.080189, 51.500275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248131, 36.472294, 51.421955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220854, -0.196974, -0.955209,
		-0.974921, -0.017043, -0.221898,
		0.027429, 0.980261, -0.195798,
		34.256359, 36.766373, 51.363216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902012, 36.073059, 50.854595>,  <34.237160, 36.080189, 51.500275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902012, 36.073059, 50.854595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.071518, 36.432919, 50.896656>,  <34.173222, 36.648834, 50.921894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.071518, 36.432919, 50.896656>,  <33.902012, 36.073059, 50.854595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071518, 36.432919, 50.896656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375437, -0.068813, -0.924290,
		-0.824299, 0.431161, -0.366921,
		0.423767, 0.899647, 0.105151,
		34.198647, 36.702812, 50.928200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818474, 36.348289, 50.312263>,  <33.902012, 36.073059, 50.854595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818474, 36.348289, 50.312263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.112373, 36.591709, 50.432137>,  <34.288715, 36.737759, 50.504063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.112373, 36.591709, 50.432137>,  <33.818474, 36.348289, 50.312263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112373, 36.591709, 50.432137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251586, 0.165811, -0.953526,
		-0.629955, 0.776002, -0.031272,
		0.734753, 0.608545, 0.299685,
		34.332798, 36.774273, 50.522041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866444, 36.833988, 49.791447>,  <33.818474, 36.348289, 50.312263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866444, 36.833988, 49.791447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.221146, 36.828083, 49.976246>,  <34.433968, 36.824539, 50.087124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.221146, 36.828083, 49.976246>,  <33.866444, 36.833988, 49.791447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221146, 36.828083, 49.976246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462075, 0.054515, -0.885164,
		-0.012121, 0.998404, 0.055162,
		0.886758, -0.014760, 0.461998,
		34.487175, 36.823654, 50.114845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166836, 37.506718, 49.769131>,  <33.866444, 36.833988, 49.791447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166836, 37.506718, 49.769131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.500870, 37.291973, 49.817139>,  <34.701290, 37.163124, 49.845943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.500870, 37.291973, 49.817139>,  <34.166836, 37.506718, 49.769131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500870, 37.291973, 49.817139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190052, 0.076815, -0.978764,
		0.516243, 0.840165, 0.166179,
		0.835089, -0.536863, 0.120020,
		34.751396, 37.130913, 49.853146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713394, 37.958675, 49.457611>,  <34.166836, 37.506718, 49.769131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713394, 37.958675, 49.457611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.860516, 37.588482, 49.493820>,  <34.948788, 37.366364, 49.515545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.860516, 37.588482, 49.493820>,  <34.713394, 37.958675, 49.457611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860516, 37.588482, 49.493820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356872, 0.050587, -0.932783,
		0.858697, 0.375390, 0.348886,
		0.367807, -0.925485, 0.090527,
		34.970856, 37.310837, 49.520977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276089, 37.970627, 49.064060>,  <34.713394, 37.958675, 49.457611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276089, 37.970627, 49.064060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.238937, 37.573151, 49.089199>,  <35.216648, 37.334663, 49.104282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.238937, 37.573151, 49.089199>,  <35.276089, 37.970627, 49.064060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238937, 37.573151, 49.089199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268831, -0.085799, -0.959358,
		0.958699, -0.072211, 0.275104,
		-0.092880, -0.993692, 0.062843,
		35.211075, 37.275043, 49.108051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883720, 37.690285, 48.675774>,  <35.276089, 37.970627, 49.064060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883720, 37.690285, 48.675774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.607304, 37.401318, 48.685310>,  <35.441452, 37.227936, 48.691032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.607304, 37.401318, 48.685310>,  <35.883720, 37.690285, 48.675774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607304, 37.401318, 48.685310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215039, -0.236963, -0.947421,
		0.690085, -0.649583, 0.319100,
		-0.691044, -0.722420, 0.023839,
		35.399990, 37.184593, 48.692463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232105, 37.088428, 48.488049>,  <35.883720, 37.690285, 48.675774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232105, 37.088428, 48.488049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.843967, 37.045185, 48.401566>,  <35.611084, 37.019238, 48.349674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.843967, 37.045185, 48.401566>,  <36.232105, 37.088428, 48.488049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843967, 37.045185, 48.401566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233483, -0.187457, -0.954120,
		0.062623, -0.976305, 0.207141,
		-0.970342, -0.108114, -0.216211,
		35.552864, 37.012753, 48.336700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266289, 36.535202, 48.045879>,  <36.232105, 37.088428, 48.488049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266289, 36.535202, 48.045879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.911922, 36.701622, 47.963844>,  <35.699303, 36.801472, 47.914623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.911922, 36.701622, 47.963844>,  <36.266289, 36.535202, 48.045879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911922, 36.701622, 47.963844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183745, -0.091196, -0.978734,
		-0.425902, -0.904759, 0.004346,
		-0.885915, 0.416047, -0.205086,
		35.646149, 36.826435, 47.902317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010098, 36.138035, 47.440350>,  <36.266289, 36.535202, 48.045879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010098, 36.138035, 47.440350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.750050, 36.440216, 47.407761>,  <35.594021, 36.621525, 47.388206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.750050, 36.440216, 47.407761>,  <36.010098, 36.138035, 47.440350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750050, 36.440216, 47.407761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190316, 0.058093, -0.980002,
		-0.735611, -0.652624, -0.181542,
		-0.650120, 0.755451, -0.081471,
		35.555012, 36.666851, 47.383320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653595, 36.005154, 46.893314>,  <36.010098, 36.138035, 47.440350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653595, 36.005154, 46.893314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.614136, 36.400646, 46.938339>,  <35.590458, 36.637943, 46.965355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.614136, 36.400646, 46.938339>,  <35.653595, 36.005154, 46.893314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614136, 36.400646, 46.938339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162261, 0.127579, -0.978466,
		-0.981804, -0.078264, -0.173019,
		-0.098652, 0.988736, 0.112558,
		35.584541, 36.697266, 46.972107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135571, 36.250118, 46.321259>,  <35.653595, 36.005154, 46.893314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135571, 36.250118, 46.321259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.338299, 36.565891, 46.459778>,  <35.459934, 36.755356, 46.542889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.338299, 36.565891, 46.459778>,  <35.135571, 36.250118, 46.321259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338299, 36.565891, 46.459778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263020, 0.240955, -0.934217,
		-0.820947, 0.564564, -0.085517,
		0.506819, 0.789436, 0.346303,
		35.490345, 36.802723, 46.563667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431343, 36.574089, 46.415241>,  <35.135571, 36.250118, 46.321259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431343, 36.574089, 46.415241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.124928, 36.531849, 46.161617>,  <33.941078, 36.506504, 46.009441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.124928, 36.531849, 46.161617>,  <34.431343, 36.574089, 46.415241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124928, 36.531849, 46.161617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634738, -0.031442, 0.772087,
		-0.101470, 0.993911, -0.042945,
		-0.766036, -0.105603, -0.634064,
		33.895115, 36.500168, 45.971397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986309, 37.139748, 46.541157>,  <34.431343, 36.574089, 46.415241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986309, 37.139748, 46.541157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.783230, 36.838017, 46.374672>,  <33.661385, 36.656979, 46.274780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.783230, 36.838017, 46.374672>,  <33.986309, 37.139748, 46.541157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783230, 36.838017, 46.374672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519978, -0.116903, 0.846142,
		-0.686928, 0.646001, -0.332886,
		-0.507694, -0.754332, -0.416210,
		33.630920, 36.611717, 46.249809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306206, 37.249657, 46.781017>,  <33.986309, 37.139748, 46.541157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306206, 37.249657, 46.781017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.303223, 36.874271, 46.642902>,  <33.301434, 36.649040, 46.560032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.303223, 36.874271, 46.642902>,  <33.306206, 37.249657, 46.781017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303223, 36.874271, 46.642902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516452, -0.292066, 0.804969,
		-0.856284, 0.184328, -0.482495,
		-0.007458, -0.938467, -0.345288,
		33.300987, 36.592731, 46.539314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598145, 37.005875, 46.867073>,  <33.306206, 37.249657, 46.781017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598145, 37.005875, 46.867073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.830475, 36.680653, 46.851215>,  <32.969875, 36.485519, 46.841702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.830475, 36.680653, 46.851215>,  <32.598145, 37.005875, 46.867073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830475, 36.680653, 46.851215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369420, -0.306675, 0.877200,
		-0.725373, -0.494858, -0.478486,
		0.580829, -0.813060, -0.039644,
		33.004723, 36.436733, 46.839321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148468, 36.531818, 46.981098>,  <32.598145, 37.005875, 46.867073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148468, 36.531818, 46.981098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.510464, 36.393478, 47.080204>,  <32.727661, 36.310474, 47.139668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.510464, 36.393478, 47.080204>,  <32.148468, 36.531818, 46.981098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510464, 36.393478, 47.080204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372602, -0.363231, 0.853951,
		-0.205340, -0.865132, -0.457582,
		0.904988, -0.345847, 0.247764,
		32.781960, 36.289722, 47.154533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986794, 35.896156, 47.318764>,  <32.148468, 36.531818, 46.981098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986794, 35.896156, 47.318764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.371246, 35.946266, 47.417175>,  <32.601917, 35.976330, 47.476223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.371246, 35.946266, 47.417175>,  <31.986794, 35.896156, 47.318764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371246, 35.946266, 47.417175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157439, -0.483336, 0.861161,
		0.226792, -0.866425, -0.444829,
		0.961134, 0.125271, 0.246026,
		32.659588, 35.983849, 47.490982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212227, 35.311954, 47.632713>,  <31.986794, 35.896156, 47.318764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212227, 35.311954, 47.632713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.474850, 35.566463, 47.794746>,  <32.632423, 35.719170, 47.891964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.474850, 35.566463, 47.794746>,  <32.212227, 35.311954, 47.632713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474850, 35.566463, 47.794746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195562, -0.375086, 0.906127,
		0.728481, -0.674145, -0.121836,
		0.656560, 0.636269, 0.405080,
		32.671818, 35.757343, 47.916271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298134, 34.498638, 47.565334>,  <32.212227, 35.311954, 47.632713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298134, 34.498638, 47.565334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.956148, 34.372738, 47.400425>,  <31.750957, 34.297199, 47.301479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.956148, 34.372738, 47.400425>,  <32.298134, 34.498638, 47.565334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956148, 34.372738, 47.400425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436244, -0.006365, -0.899806,
		0.280587, -0.949154, 0.142748,
		-0.854963, -0.314747, -0.412277,
		31.699659, 34.278313, 47.276741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574814, 34.096222, 47.032986>,  <32.298134, 34.498638, 47.565334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574814, 34.096222, 47.032986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.190201, 34.167850, 46.949665>,  <31.959433, 34.210827, 46.899673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.190201, 34.167850, 46.949665>,  <32.574814, 34.096222, 47.032986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190201, 34.167850, 46.949665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241462, 0.189479, -0.951732,
		-0.130958, -0.965418, -0.225429,
		-0.961533, 0.179070, -0.208298,
		31.901741, 34.221573, 46.887177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456890, 33.778484, 46.376328>,  <32.574814, 34.096222, 47.032986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456890, 33.778484, 46.376328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.132080, 34.008579, 46.415756>,  <31.937193, 34.146637, 46.439415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.132080, 34.008579, 46.415756>,  <32.456890, 33.778484, 46.376328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132080, 34.008579, 46.415756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005472, 0.161389, -0.986876,
		-0.583594, -0.801909, -0.127904,
		-0.812027, 0.575235, 0.098573,
		31.888472, 34.181149, 46.445328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907900, 33.476208, 46.001205>,  <32.456890, 33.778484, 46.376328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907900, 33.476208, 46.001205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.834717, 33.867851, 46.036674>,  <31.790806, 34.102837, 46.057957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.834717, 33.867851, 46.036674>,  <31.907900, 33.476208, 46.001205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834717, 33.867851, 46.036674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047309, 0.098862, -0.993976,
		-0.981982, -0.177662, -0.064409,
		-0.182959, 0.979113, 0.088676,
		31.779829, 34.161587, 46.063278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208302, 33.598873, 45.758087>,  <31.907900, 33.476208, 46.001205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208302, 33.598873, 45.758087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.425056, 33.932152, 45.714001>,  <31.555109, 34.132118, 45.687550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.425056, 33.932152, 45.714001>,  <31.208302, 33.598873, 45.758087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425056, 33.932152, 45.714001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150039, -0.033132, -0.988125,
		-0.826951, 0.551988, 0.107058,
		0.541886, 0.833194, -0.110219,
		31.587622, 34.182110, 45.680935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792027, 34.028267, 45.259945>,  <31.208302, 33.598873, 45.758087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792027, 34.028267, 45.259945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.161425, 34.181652, 45.264248>,  <31.383064, 34.273682, 45.266830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.161425, 34.181652, 45.264248>,  <30.792027, 34.028267, 45.259945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161425, 34.181652, 45.264248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041943, -0.073057, -0.996445,
		-0.381311, 0.920664, -0.083551,
		0.923495, 0.383460, 0.010758,
		31.438473, 34.296688, 45.267475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796181, 34.460201, 44.679676>,  <30.792027, 34.028267, 45.259945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796181, 34.460201, 44.679676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.186249, 34.405613, 44.749439>,  <31.420290, 34.372860, 44.791298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.186249, 34.405613, 44.749439>,  <30.796181, 34.460201, 44.679676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.186249, 34.405613, 44.749439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170934, -0.036882, -0.984592,
		0.140797, 0.989958, -0.012639,
		0.975171, -0.136467, 0.174410,
		31.478800, 34.364674, 44.801762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.625229, 32.590519, 51.626293> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.962170, 32.805992, 51.632870>,  <34.164333, 32.935276, 51.636814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.962170, 32.805992, 51.632870>,  <33.625229, 32.590519, 51.626293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962170, 32.805992, 51.632870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242959, -0.352340, -0.903785,
		-0.481062, 0.765295, -0.427671,
		0.842348, 0.538683, 0.016437,
		34.214874, 32.967598, 51.637802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616917, 33.202457, 51.091610>,  <33.625229, 32.590519, 51.626293>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616917, 33.202457, 51.091610> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.974316, 33.041622, 51.171597>,  <34.188755, 32.945122, 51.219589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.974316, 33.041622, 51.171597>,  <33.616917, 33.202457, 51.091610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974316, 33.041622, 51.171597> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112372, -0.230944, -0.966456,
		0.434779, 0.885998, -0.161166,
		0.893499, -0.402084, 0.199971,
		34.242367, 32.920998, 51.231586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089466, 33.377407, 50.464317>,  <33.616917, 33.202457, 51.091610>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089466, 33.377407, 50.464317> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.300480, 33.079292, 50.627411>,  <34.427090, 32.900425, 50.725269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.300480, 33.079292, 50.627411>,  <34.089466, 33.377407, 50.464317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300480, 33.079292, 50.627411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282417, -0.298805, -0.911568,
		0.801215, 0.596038, 0.052851,
		0.527536, -0.745288, 0.407738,
		34.458740, 32.855705, 50.749733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834167, 33.460007, 50.245003>,  <34.089466, 33.377407, 50.464317>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834167, 33.460007, 50.245003> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.775784, 33.078766, 50.351048>,  <34.740753, 32.850021, 50.414673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.775784, 33.078766, 50.351048>,  <34.834167, 33.460007, 50.245003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775784, 33.078766, 50.351048> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476753, -0.302577, -0.825320,
		0.866834, 0.005924, 0.498562,
		-0.145964, -0.953107, 0.265108,
		34.731995, 32.792835, 50.430580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430824, 33.139576, 50.002037>,  <34.834167, 33.460007, 50.245003>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430824, 33.139576, 50.002037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.179516, 32.836617, 50.073162>,  <35.028732, 32.654839, 50.115837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.179516, 32.836617, 50.073162>,  <35.430824, 33.139576, 50.002037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179516, 32.836617, 50.073162> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421368, -0.523398, -0.740610,
		0.654008, -0.390378, 0.647981,
		-0.628270, -0.757403, 0.177814,
		34.991035, 32.609394, 50.126507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870846, 32.527203, 50.083496>,  <35.430824, 33.139576, 50.002037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870846, 32.527203, 50.083496> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.500462, 32.420998, 49.976089>,  <35.278233, 32.357273, 49.911648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.500462, 32.420998, 49.976089>,  <35.870846, 32.527203, 50.083496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500462, 32.420998, 49.976089> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377320, -0.678981, -0.629773,
		-0.015101, -0.684460, 0.728894,
		-0.925959, -0.265516, -0.268514,
		35.222675, 32.341343, 49.895535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019363, 31.897087, 49.739670>,  <35.870846, 32.527203, 50.083496>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019363, 31.897087, 49.739670> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.634975, 31.965050, 49.652328>,  <35.404343, 32.005829, 49.599926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.634975, 31.965050, 49.652328>,  <36.019363, 31.897087, 49.739670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634975, 31.965050, 49.652328> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112983, -0.479412, -0.870287,
		-0.252548, -0.860985, 0.441502,
		-0.960966, 0.169907, -0.218351,
		35.346687, 32.016022, 49.586823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629917, 31.236916, 49.648453>,  <36.019363, 31.897087, 49.739670>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629917, 31.236916, 49.648453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.432732, 31.525686, 49.454208>,  <35.314423, 31.698948, 49.337662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.432732, 31.525686, 49.454208>,  <35.629917, 31.236916, 49.648453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432732, 31.525686, 49.454208> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136831, -0.486863, -0.862694,
		-0.859225, -0.491720, 0.141223,
		-0.492961, 0.721925, -0.485607,
		35.284843, 31.742264, 49.308525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186176, 30.930662, 49.195473>,  <35.629917, 31.236916, 49.648453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186176, 30.930662, 49.195473> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.203892, 31.303951, 49.052849>,  <35.214523, 31.527924, 48.967274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.203892, 31.303951, 49.052849>,  <35.186176, 30.930662, 49.195473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203892, 31.303951, 49.052849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112291, -0.359301, -0.926441,
		-0.992688, 0.000995, -0.120706,
		0.044291, 0.933221, -0.356562,
		35.217178, 31.583918, 48.945881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941345, 30.889256, 48.488132>,  <35.186176, 30.930662, 49.195473>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941345, 30.889256, 48.488132> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.170021, 31.217443, 48.489193>,  <35.307224, 31.414356, 48.489830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.170021, 31.217443, 48.489193>,  <34.941345, 30.889256, 48.488132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170021, 31.217443, 48.489193> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305960, -0.210186, -0.928553,
		-0.761292, 0.531651, -0.371191,
		0.571685, 0.820469, 0.002651,
		35.341526, 31.463585, 48.489986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800110, 31.131754, 47.806511>,  <34.941345, 30.889256, 48.488132>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800110, 31.131754, 47.806511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.124718, 31.309814, 47.957920>,  <35.319481, 31.416651, 48.048767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.124718, 31.309814, 47.957920>,  <34.800110, 31.131754, 47.806511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124718, 31.309814, 47.957920> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505073, -0.208628, -0.837482,
		-0.293835, 0.870813, -0.394139,
		0.811519, 0.445150, 0.378522,
		35.368172, 31.443359, 48.071476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059139, 31.669870, 47.406551>,  <34.800110, 31.131754, 47.806511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059139, 31.669870, 47.406551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.369621, 31.536072, 47.620323>,  <35.555912, 31.455793, 47.748585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.369621, 31.536072, 47.620323>,  <35.059139, 31.669870, 47.406551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369621, 31.536072, 47.620323> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472678, -0.252207, -0.844374,
		0.417227, 0.908022, -0.037655,
		0.776207, -0.334496, 0.534430,
		35.602482, 31.435722, 47.780651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643757, 32.292095, 47.156002>,  <35.059139, 31.669870, 47.406551>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643757, 32.292095, 47.156002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.401527, 31.993034, 47.046967>,  <34.256191, 31.813599, 46.981544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.401527, 31.993034, 47.046967>,  <34.643757, 32.292095, 47.156002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401527, 31.993034, 47.046967> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685044, 0.315451, 0.656662,
		-0.404964, 0.584391, -0.703200,
		-0.605573, -0.747648, -0.272587,
		34.219856, 31.768740, 46.965191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895580, 32.461258, 47.329136>,  <34.643757, 32.292095, 47.156002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895580, 32.461258, 47.329136> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.843937, 32.072594, 47.249931>,  <33.812950, 31.839396, 47.202408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.843937, 32.072594, 47.249931>,  <33.895580, 32.461258, 47.329136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843937, 32.072594, 47.249931> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692186, -0.054676, 0.719645,
		-0.710077, 0.229974, -0.665510,
		-0.129112, -0.971660, -0.198009,
		33.805202, 31.781096, 47.190529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193314, 32.371769, 47.214615>,  <33.895580, 32.461258, 47.329136>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193314, 32.371769, 47.214615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.365845, 32.028065, 47.324615>,  <33.469364, 31.821842, 47.390617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.365845, 32.028065, 47.324615>,  <33.193314, 32.371769, 47.214615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365845, 32.028065, 47.324615> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632636, -0.070746, 0.771211,
		-0.643215, -0.506625, -0.574113,
		0.431331, -0.859259, 0.275004,
		33.495243, 31.770287, 47.407116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615749, 31.818226, 47.380676>,  <33.193314, 32.371769, 47.214615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615749, 31.818226, 47.380676> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.934166, 31.669861, 47.571983>,  <33.125217, 31.580841, 47.686768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.934166, 31.669861, 47.571983>,  <32.615749, 31.818226, 47.380676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934166, 31.669861, 47.571983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577690, -0.229927, 0.783203,
		-0.180527, -0.899756, -0.397301,
		0.796043, -0.370907, 0.478272,
		33.172977, 31.558586, 47.715466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479496, 31.179293, 47.557461>,  <32.615749, 31.818226, 47.380676>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479496, 31.179293, 47.557461> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.782764, 31.260021, 47.805477>,  <32.964725, 31.308458, 47.954285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.782764, 31.260021, 47.805477>,  <32.479496, 31.179293, 47.557461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782764, 31.260021, 47.805477> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543355, -0.330143, 0.771862,
		0.360479, -0.922103, -0.140644,
		0.758169, 0.201821, 0.620039,
		33.010216, 31.320568, 47.991489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619568, 30.603283, 47.983109>,  <32.479496, 31.179293, 47.557461>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619568, 30.603283, 47.983109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.744461, 30.935650, 48.167320>,  <32.819397, 31.135069, 48.277847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.744461, 30.935650, 48.167320>,  <32.619568, 30.603283, 47.983109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744461, 30.935650, 48.167320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473537, -0.284127, 0.833687,
		0.823573, -0.478384, 0.304755,
		0.312233, 0.830916, 0.460532,
		32.838131, 31.184925, 48.305481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490177, 30.294630, 48.576180>,  <32.619568, 30.603283, 47.983109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490177, 30.294630, 48.576180> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.590878, 30.672489, 48.660328>,  <32.651299, 30.899204, 48.710819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.590878, 30.672489, 48.660328>,  <32.490177, 30.294630, 48.576180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590878, 30.672489, 48.660328> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502057, -0.058359, 0.862863,
		0.827381, -0.322849, 0.459576,
		0.251754, 0.944650, 0.210374,
		32.666405, 30.955885, 48.723438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638023, 30.267490, 49.259350>,  <32.490177, 30.294630, 48.576180>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638023, 30.267490, 49.259350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.571423, 30.656015, 49.191433>,  <32.531464, 30.889130, 49.150684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.571423, 30.656015, 49.191433>,  <32.638023, 30.267490, 49.259350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571423, 30.656015, 49.191433> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471960, 0.072682, 0.878619,
		0.865754, 0.226426, 0.446319,
		-0.166503, 0.971313, -0.169788,
		32.521473, 30.947409, 49.140495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848217, 30.697876, 49.831612>,  <32.638023, 30.267490, 49.259350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848217, 30.697876, 49.831612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.579144, 30.935623, 49.655327>,  <32.417702, 31.078272, 49.549557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.579144, 30.935623, 49.655327>,  <32.848217, 30.697876, 49.831612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579144, 30.935623, 49.655327> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428197, 0.173046, 0.886962,
		0.603446, 0.785354, 0.138102,
		-0.672681, 0.594368, -0.440711,
		32.377338, 31.113934, 49.523113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759560, 31.262354, 50.351425>,  <32.848217, 30.697876, 49.831612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759560, 31.262354, 50.351425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.445625, 31.263483, 50.103546>,  <32.257263, 31.264160, 49.954819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.445625, 31.263483, 50.103546>,  <32.759560, 31.262354, 50.351425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445625, 31.263483, 50.103546> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604583, 0.216058, 0.766680,
		0.136055, 0.976377, -0.167864,
		-0.784837, 0.002823, -0.619696,
		32.210175, 31.264330, 49.917637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466480, 31.936447, 50.433586>,  <32.759560, 31.262354, 50.351425>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466480, 31.936447, 50.433586> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.193863, 31.697647, 50.264309>,  <32.030293, 31.554367, 50.162743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.193863, 31.697647, 50.264309>,  <32.466480, 31.936447, 50.433586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193863, 31.697647, 50.264309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684192, 0.314728, 0.657896,
		-0.259574, 0.737928, -0.622964,
		-0.681544, -0.597000, -0.423189,
		31.989399, 31.518547, 50.137352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876835, 32.266968, 50.526936>,  <32.466480, 31.936447, 50.433586>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876835, 32.266968, 50.526936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.769197, 31.885756, 50.471329>,  <31.704615, 31.657028, 50.437965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.769197, 31.885756, 50.471329>,  <31.876835, 32.266968, 50.526936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.769197, 31.885756, 50.471329> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465685, 0.002398, 0.884948,
		-0.843047, 0.302872, -0.444456,
		-0.269092, -0.953028, -0.139022,
		31.688471, 31.599848, 50.429623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190388, 32.356087, 50.599514>,  <31.876835, 32.266968, 50.526936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.190388, 32.356087, 50.599514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.282585, 31.971704, 50.660748>,  <31.337904, 31.741076, 50.697487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.282585, 31.971704, 50.660748>,  <31.190388, 32.356087, 50.599514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.282585, 31.971704, 50.660748> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625857, -0.025936, 0.779506,
		-0.745101, -0.275482, -0.607399,
		0.230494, -0.960956, 0.153088,
		31.351734, 31.683418, 50.706673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070591, 32.604183, 49.958698>,  <31.190388, 32.356087, 50.599514>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070591, 32.604183, 49.958698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.748137, 32.840771, 49.965725>,  <30.554665, 32.982723, 49.969940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.748137, 32.840771, 49.965725>,  <31.070591, 32.604183, 49.958698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748137, 32.840771, 49.965725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338125, 0.484791, -0.806629,
		-0.485612, -0.644313, -0.590798,
		-0.806134, 0.591472, 0.017562,
		30.506296, 33.018211, 49.970993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731041, 32.484348, 49.388939>,  <31.070591, 32.604183, 49.958698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731041, 32.484348, 49.388939> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.618048, 32.848625, 49.509502>,  <30.550253, 33.067192, 49.581841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.618048, 32.848625, 49.509502>,  <30.731041, 32.484348, 49.388939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618048, 32.848625, 49.509502> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111480, 0.343246, -0.932606,
		-0.952773, -0.229842, -0.198484,
		-0.282481, 0.910689, 0.301413,
		30.533304, 33.121830, 49.599926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131594, 32.830982, 48.958984>,  <30.731041, 32.484348, 49.388939>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131594, 32.830982, 48.958984> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.374352, 33.092205, 49.140179>,  <30.520006, 33.248940, 49.248894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.374352, 33.092205, 49.140179>,  <30.131594, 32.830982, 48.958984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374352, 33.092205, 49.140179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136878, 0.475551, -0.868974,
		-0.782908, 0.589378, 0.199220,
		0.606893, 0.653058, 0.452985,
		30.556419, 33.288124, 49.276073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878946, 33.414577, 48.647400>,  <30.131594, 32.830982, 48.958984>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878946, 33.414577, 48.647400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.250334, 33.495350, 48.772087>,  <30.473167, 33.543812, 48.846901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.250334, 33.495350, 48.772087>,  <29.878946, 33.414577, 48.647400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250334, 33.495350, 48.772087> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175898, 0.500132, -0.847897,
		-0.327114, 0.842077, 0.428839,
		0.928470, 0.201927, 0.311719,
		30.528875, 33.555927, 48.865604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016933, 34.039841, 48.330727>,  <29.878946, 33.414577, 48.647400>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016933, 34.039841, 48.330727> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.371176, 33.888268, 48.438141>,  <30.583721, 33.797321, 48.502590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.371176, 33.888268, 48.438141>,  <30.016933, 34.039841, 48.330727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371176, 33.888268, 48.438141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420741, 0.409718, -0.809388,
		0.196681, 0.829782, 0.522282,
		0.885604, -0.378937, 0.268539,
		30.636856, 33.774586, 48.518703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458553, 34.561291, 48.206474>,  <30.016933, 34.039841, 48.330727>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458553, 34.561291, 48.206474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.700787, 34.245090, 48.243084>,  <30.846127, 34.055370, 48.265049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.700787, 34.245090, 48.243084>,  <30.458553, 34.561291, 48.206474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700787, 34.245090, 48.243084> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573181, 0.353509, -0.739253,
		0.552027, 0.500137, 0.667180,
		0.605582, -0.790503, 0.091522,
		30.882462, 34.007938, 48.270542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139912, 34.834900, 48.255257>,  <30.458553, 34.561291, 48.206474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139912, 34.834900, 48.255257> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.177799, 34.457756, 48.127483>,  <31.200531, 34.231468, 48.050819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.177799, 34.457756, 48.127483>,  <31.139912, 34.834900, 48.255257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177799, 34.457756, 48.127483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585609, 0.312258, -0.748035,
		0.805040, -0.116212, 0.581726,
		0.094718, -0.942862, -0.319435,
		31.206215, 34.174896, 48.031654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864655, 34.785263, 48.106792>,  <31.139912, 34.834900, 48.255257>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864655, 34.785263, 48.106792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.655842, 34.521847, 47.889977>,  <31.530554, 34.363796, 47.759888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.655842, 34.521847, 47.889977>,  <31.864655, 34.785263, 48.106792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655842, 34.521847, 47.889977> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483396, 0.295148, -0.824145,
		0.702718, -0.692247, 0.164262,
		-0.522031, -0.658545, -0.542036,
		31.499233, 34.324284, 47.727367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653336, 34.919201, 48.121090>,  <31.864655, 34.785263, 48.106792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653336, 34.919201, 48.121090> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.668720, 35.302731, 48.233643>,  <32.677952, 35.532848, 48.301174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.668720, 35.302731, 48.233643>,  <32.653336, 34.919201, 48.121090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668720, 35.302731, 48.233643> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033004, -0.280213, 0.959370,
		0.998715, -0.046189, 0.020866,
		0.038466, 0.958826, 0.281378,
		32.680260, 35.590378, 48.318054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004581, 34.936279, 48.764790>,  <32.653336, 34.919201, 48.121090>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004581, 34.936279, 48.764790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.832897, 35.297020, 48.745060>,  <32.729885, 35.513466, 48.733223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.832897, 35.297020, 48.745060>,  <33.004581, 34.936279, 48.764790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832897, 35.297020, 48.745060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158772, -0.021576, 0.987079,
		0.889139, 0.431499, 0.152450,
		-0.429213, 0.901855, -0.049326,
		32.704132, 35.567577, 48.730263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354515, 35.251755, 49.214931>,  <33.004581, 34.936279, 48.764790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354515, 35.251755, 49.214931> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.034531, 35.490437, 49.189610>,  <32.842541, 35.633644, 49.174416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.034531, 35.490437, 49.189610>,  <33.354515, 35.251755, 49.214931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034531, 35.490437, 49.189610> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203968, -0.171192, 0.963893,
		0.564320, 0.783990, 0.258655,
		-0.799962, 0.596702, -0.063301,
		32.794540, 35.669449, 49.170620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385914, 35.636173, 49.791840>,  <33.354515, 35.251755, 49.214931>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385914, 35.636173, 49.791840> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.002365, 35.667503, 49.682709>,  <32.772236, 35.686302, 49.617229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.002365, 35.667503, 49.682709>,  <33.385914, 35.636173, 49.791840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002365, 35.667503, 49.682709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276697, -0.043484, 0.959973,
		0.063328, 0.995979, 0.063368,
		-0.958868, 0.078326, -0.272830,
		32.714706, 35.691002, 49.600861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116970, 36.257870, 50.066948>,  <33.385914, 35.636173, 49.791840>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116970, 36.257870, 50.066948> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.793758, 36.028496, 50.012882>,  <32.599831, 35.890873, 49.980442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.793758, 36.028496, 50.012882>,  <33.116970, 36.257870, 50.066948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793758, 36.028496, 50.012882> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323324, 0.239838, 0.915390,
		-0.492496, 0.783362, -0.379200,
		-0.808028, -0.573430, -0.135161,
		32.551350, 35.856468, 49.972336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559250, 36.685547, 50.220856>,  <33.116970, 36.257870, 50.066948>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559250, 36.685547, 50.220856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.464260, 36.302761, 50.287579>,  <32.407265, 36.073090, 50.327614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.464260, 36.302761, 50.287579>,  <32.559250, 36.685547, 50.220856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464260, 36.302761, 50.287579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226560, 0.221550, 0.948465,
		-0.944603, 0.187447, -0.269423,
		-0.237478, -0.956964, 0.166809,
		32.393017, 36.015671, 50.337620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.908056, 36.761959, 50.627186>,  <32.559250, 36.685547, 50.220856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.908056, 36.761959, 50.627186> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.032059, 36.389843, 50.705627>,  <32.106461, 36.166573, 50.752693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.032059, 36.389843, 50.705627>,  <31.908056, 36.761959, 50.627186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032059, 36.389843, 50.705627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292144, 0.103075, 0.950804,
		-0.904737, -0.352044, -0.239825,
		0.310005, -0.930291, 0.196103,
		32.125061, 36.110756, 50.764458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375502, 36.493637, 51.085594>,  <31.908056, 36.761959, 50.627186>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375502, 36.493637, 51.085594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.716589, 36.286854, 51.115593>,  <31.921242, 36.162785, 51.133591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.716589, 36.286854, 51.115593>,  <31.375502, 36.493637, 51.085594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716589, 36.286854, 51.115593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120901, -0.055642, 0.991104,
		-0.508186, -0.854200, -0.109948,
		0.852719, -0.516958, 0.074997,
		31.972404, 36.131767, 51.138092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110142, 36.203262, 51.568371>,  <31.375502, 36.493637, 51.085594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110142, 36.203262, 51.568371> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.500196, 36.115818, 51.582897>,  <31.734230, 36.063351, 51.591614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.500196, 36.115818, 51.582897>,  <31.110142, 36.203262, 51.568371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500196, 36.115818, 51.582897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044381, -0.032096, 0.998499,
		-0.217115, -0.975285, -0.041000,
		0.975136, -0.218609, 0.036316,
		31.792738, 36.050236, 51.593792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<39.087593, 34.643814, 37.147026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342316, 34.621960, 37.454659>,  <39.495152, 34.608849, 37.639236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342316, 34.621960, 37.454659>,  <39.087593, 34.643814, 37.147026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342316, 34.621960, 37.454659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769422, 0.019167, 0.638453,
		-0.049624, -0.998322, -0.029833,
		0.636810, -0.054637, 0.769082,
		39.533360, 34.605568, 37.685383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935326, 34.027020, 37.596687>,  <39.087593, 34.643814, 37.147026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935326, 34.027020, 37.596687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110317, 34.325787, 37.796982>,  <39.215313, 34.505047, 37.917160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110317, 34.325787, 37.796982>,  <38.935326, 34.027020, 37.596687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110317, 34.325787, 37.796982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748140, -0.006626, 0.663508,
		0.498901, -0.664888, 0.555897,
		0.437475, 0.746913, 0.500735,
		39.241558, 34.549862, 37.947201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538609, 33.985031, 38.237900>,  <38.935326, 34.027020, 37.596687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538609, 33.985031, 38.237900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739990, 34.323997, 38.305344>,  <38.860821, 34.527378, 38.345810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739990, 34.323997, 38.305344>,  <38.538609, 33.985031, 38.237900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739990, 34.323997, 38.305344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624674, 0.222175, 0.748613,
		0.596924, -0.482214, 0.641211,
		0.503452, 0.847413, 0.168605,
		38.891026, 34.578220, 38.355927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901608, 34.104332, 38.951565>,  <38.538609, 33.985031, 38.237900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901608, 34.104332, 38.951565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856419, 34.479359, 38.819984>,  <38.829304, 34.704376, 38.741035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856419, 34.479359, 38.819984>,  <38.901608, 34.104332, 38.951565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856419, 34.479359, 38.819984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428955, 0.252605, 0.867288,
		0.896233, 0.239087, 0.373635,
		-0.112975, 0.937565, -0.328950,
		38.822525, 34.760628, 38.721298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060822, 34.481136, 39.558876>,  <38.901608, 34.104332, 38.951565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060822, 34.481136, 39.558876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866364, 34.724701, 39.308151>,  <38.749687, 34.870838, 39.157719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866364, 34.724701, 39.308151>,  <39.060822, 34.481136, 39.558876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866364, 34.724701, 39.308151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494107, 0.400079, 0.771878,
		0.720776, 0.684958, 0.106368,
		-0.486148, 0.608908, -0.626810,
		38.720520, 34.907372, 39.120110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044743, 35.171745, 39.929672>,  <39.060822, 34.481136, 39.558876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044743, 35.171745, 39.929672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762985, 35.152966, 39.646370>,  <38.593929, 35.141697, 39.476391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762985, 35.152966, 39.646370>,  <39.044743, 35.171745, 39.929672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762985, 35.152966, 39.646370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679685, 0.332204, 0.653964,
		0.204579, 0.942038, -0.265916,
		-0.704397, -0.046952, -0.708251,
		38.551666, 35.138882, 39.433895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663105, 35.717159, 40.080902>,  <39.044743, 35.171745, 39.929672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663105, 35.717159, 40.080902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424007, 35.508053, 39.837784>,  <38.280548, 35.382591, 39.691914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424007, 35.508053, 39.837784>,  <38.663105, 35.717159, 40.080902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424007, 35.508053, 39.837784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780162, 0.204806, 0.591103,
		-0.184525, 0.827511, -0.530261,
		-0.597744, -0.522763, -0.607800,
		38.244682, 35.351223, 39.655445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240948, 36.163624, 39.811661>,  <38.663105, 35.717159, 40.080902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240948, 36.163624, 39.811661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023273, 35.830093, 39.774570>,  <37.892670, 35.629974, 39.752316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023273, 35.830093, 39.774570>,  <38.240948, 36.163624, 39.811661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023273, 35.830093, 39.774570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812121, 0.495811, 0.307620,
		-0.210526, 0.242708, -0.946980,
		-0.544185, -0.833825, -0.092727,
		37.860020, 35.579945, 39.746754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543861, 36.385059, 39.775944>,  <38.240948, 36.163624, 39.811661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543861, 36.385059, 39.775944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508461, 36.011887, 39.915543>,  <37.487221, 35.787983, 39.999302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508461, 36.011887, 39.915543>,  <37.543861, 36.385059, 39.775944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508461, 36.011887, 39.915543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740136, 0.296077, 0.603769,
		-0.666607, -0.204874, -0.716702,
		-0.088503, -0.932934, 0.349002,
		37.481911, 35.732006, 40.020245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832737, 36.199364, 39.586243>,  <37.543861, 36.385059, 39.775944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832737, 36.199364, 39.586243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963371, 35.942028, 39.863213>,  <37.041752, 35.787624, 40.029396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963371, 35.942028, 39.863213>,  <36.832737, 36.199364, 39.586243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963371, 35.942028, 39.863213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872351, 0.076804, 0.482810,
		-0.363793, -0.761716, -0.536138,
		0.326586, -0.643342, 0.692424,
		37.061348, 35.749023, 40.070938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300537, 35.730400, 39.587112>,  <36.832737, 36.199364, 39.586243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300537, 35.730400, 39.587112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499626, 35.726986, 39.934032>,  <36.619080, 35.724937, 40.142185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499626, 35.726986, 39.934032>,  <36.300537, 35.730400, 39.587112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499626, 35.726986, 39.934032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867103, 0.018361, 0.497790,
		-0.020178, -0.999795, 0.001730,
		0.497720, -0.008544, 0.867296,
		36.648941, 35.724426, 40.194221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858913, 35.321278, 39.921059>,  <36.300537, 35.730400, 39.587112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858913, 35.321278, 39.921059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070198, 35.481327, 40.220631>,  <36.196968, 35.577354, 40.400375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070198, 35.481327, 40.220631>,  <35.858913, 35.321278, 39.921059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070198, 35.481327, 40.220631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841826, 0.131453, 0.523497,
		0.111008, -0.906989, 0.406261,
		0.528210, 0.400114, 0.748934,
		36.228661, 35.601364, 40.445309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696846, 34.558548, 39.979568>,  <35.858913, 35.321278, 39.921059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696846, 34.558548, 39.979568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362904, 34.354816, 39.896049>,  <35.162537, 34.232578, 39.845940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362904, 34.354816, 39.896049>,  <35.696846, 34.558548, 39.979568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362904, 34.354816, 39.896049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352440, -0.203211, -0.913505,
		0.422840, -0.836238, 0.349159,
		-0.834860, -0.509324, -0.208798,
		35.112446, 34.202019, 39.833408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993732, 33.929863, 39.615631>,  <35.696846, 34.558548, 39.979568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993732, 33.929863, 39.615631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600124, 33.972485, 39.558575>,  <35.363960, 33.998058, 39.524342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600124, 33.972485, 39.558575>,  <35.993732, 33.929863, 39.615631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600124, 33.972485, 39.558575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106140, -0.292194, -0.950451,
		-0.142950, -0.950405, 0.276216,
		-0.984022, 0.106550, -0.142645,
		35.304916, 34.004448, 39.515781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901127, 33.444508, 39.181698>,  <35.993732, 33.929863, 39.615631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901127, 33.444508, 39.181698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569912, 33.662033, 39.127117>,  <35.371181, 33.792549, 39.094368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569912, 33.662033, 39.127117>,  <35.901127, 33.444508, 39.181698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569912, 33.662033, 39.127117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039441, -0.299268, -0.953354,
		-0.559282, -0.784032, 0.269255,
		-0.828038, 0.543813, -0.136452,
		35.321499, 33.825176, 39.086182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375381, 33.019810, 38.805065>,  <35.901127, 33.444508, 39.181698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375381, 33.019810, 38.805065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354851, 33.414909, 38.746120>,  <35.342533, 33.651970, 38.710754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354851, 33.414909, 38.746120>,  <35.375381, 33.019810, 38.805065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354851, 33.414909, 38.746120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207234, -0.154882, -0.965953,
		-0.976944, -0.019041, 0.212645,
		-0.051327, 0.987750, -0.147365,
		35.339451, 33.711235, 38.701912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841133, 33.094917, 38.390797>,  <35.375381, 33.019810, 38.805065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841133, 33.094917, 38.390797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021000, 33.450668, 38.357800>,  <35.128922, 33.664120, 38.338001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021000, 33.450668, 38.357800>,  <34.841133, 33.094917, 38.390797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021000, 33.450668, 38.357800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226930, 0.024428, -0.973605,
		-0.863889, 0.456517, 0.212811,
		0.449666, 0.889379, -0.082495,
		35.155899, 33.717484, 38.333050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471428, 33.287476, 37.882931>,  <34.841133, 33.094917, 38.390797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471428, 33.287476, 37.882931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794853, 33.522839, 37.883656>,  <34.988907, 33.664055, 37.884090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794853, 33.522839, 37.883656>,  <34.471428, 33.287476, 37.882931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794853, 33.522839, 37.883656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158398, 0.220624, -0.962411,
		-0.566687, 0.777884, 0.271591,
		0.808564, 0.588406, 0.001810,
		35.037422, 33.699360, 37.884197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265869, 33.975380, 37.579205>,  <34.471428, 33.287476, 37.882931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265869, 33.975380, 37.579205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.658684, 33.911377, 37.539204>,  <34.894375, 33.872974, 37.515205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.658684, 33.911377, 37.539204>,  <34.265869, 33.975380, 37.579205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658684, 33.911377, 37.539204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092454, 0.053937, -0.994255,
		0.164479, 0.985642, 0.038175,
		0.982038, -0.160004, -0.099998,
		34.953297, 33.863377, 37.509205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545406, 34.471561, 37.058578>,  <34.265869, 33.975380, 37.579205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545406, 34.471561, 37.058578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831982, 34.192902, 37.043621>,  <35.003925, 34.025707, 37.034649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831982, 34.192902, 37.043621>,  <34.545406, 34.471561, 37.058578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831982, 34.192902, 37.043621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147110, -0.098464, -0.984207,
		0.681965, 0.710624, -0.173027,
		0.716438, -0.696648, -0.037391,
		35.046913, 33.983906, 37.032402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814247, 34.564774, 36.418243>,  <34.545406, 34.471561, 37.058578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814247, 34.564774, 36.418243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924751, 34.201443, 36.543858>,  <34.991055, 33.983444, 36.619225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924751, 34.201443, 36.543858>,  <34.814247, 34.564774, 36.418243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924751, 34.201443, 36.543858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259152, -0.385049, -0.885764,
		0.925485, 0.163317, -0.341769,
		0.276258, -0.908331, 0.314033,
		35.007629, 33.928944, 36.638069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307312, 34.352211, 35.986153>,  <34.814247, 34.564774, 36.418243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307312, 34.352211, 35.986153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165504, 34.011417, 36.140263>,  <35.080421, 33.806942, 36.232727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165504, 34.011417, 36.140263>,  <35.307312, 34.352211, 35.986153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165504, 34.011417, 36.140263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087610, -0.379956, -0.920846,
		0.930937, -0.360209, 0.060058,
		-0.354516, -0.851988, 0.385273,
		35.059151, 33.755821, 36.255844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593475, 33.791653, 35.598225>,  <35.307312, 34.352211, 35.986153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593475, 33.791653, 35.598225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.285816, 33.624256, 35.791424>,  <35.101223, 33.523819, 35.907345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.285816, 33.624256, 35.791424>,  <35.593475, 33.791653, 35.598225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285816, 33.624256, 35.791424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203275, -0.556321, -0.805721,
		0.605886, -0.717896, 0.342822,
		-0.769143, -0.418488, 0.482997,
		35.055073, 33.498711, 35.936321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666569, 33.012463, 35.449760>,  <35.593475, 33.791653, 35.598225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666569, 33.012463, 35.449760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291985, 33.093765, 35.564117>,  <35.067234, 33.142548, 35.632732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291985, 33.093765, 35.564117>,  <35.666569, 33.012463, 35.449760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291985, 33.093765, 35.564117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344325, -0.688271, -0.638532,
		0.066981, -0.696397, 0.714524,
		-0.936458, 0.203259, 0.285888,
		35.011047, 33.154743, 35.649883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384857, 32.379311, 35.491535>,  <35.666569, 33.012463, 35.449760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384857, 32.379311, 35.491535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046425, 32.591938, 35.475639>,  <34.843365, 32.719513, 35.466103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046425, 32.591938, 35.475639>,  <35.384857, 32.379311, 35.491535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046425, 32.591938, 35.475639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476250, -0.787314, -0.391566,
		-0.239429, -0.312373, 0.919292,
		-0.846085, 0.531564, -0.039738,
		34.792599, 32.751408, 35.463718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716579, 32.099072, 35.849957>,  <35.384857, 32.379311, 35.491535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716579, 32.099072, 35.849957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598057, 32.315197, 35.534931>,  <34.526943, 32.444874, 35.345917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598057, 32.315197, 35.534931>,  <34.716579, 32.099072, 35.849957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598057, 32.315197, 35.534931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818214, -0.568963, -0.082502,
		-0.492672, 0.619950, 0.610685,
		-0.296310, 0.540317, -0.787565,
		34.509163, 32.477291, 35.298660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512131, 31.473768, 36.196579>,  <34.716579, 32.099072, 35.849957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512131, 31.473768, 36.196579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590641, 31.225834, 36.500492>,  <34.637749, 31.077072, 36.682842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590641, 31.225834, 36.500492>,  <34.512131, 31.473768, 36.196579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590641, 31.225834, 36.500492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515289, -0.724443, -0.457886,
		0.834237, -0.301635, -0.461589,
		0.196280, -0.619838, 0.759787,
		34.649525, 31.039883, 36.728428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951408, 30.894075, 36.020653>,  <34.512131, 31.473768, 36.196579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951408, 30.894075, 36.020653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686039, 30.800306, 36.304882>,  <34.526817, 30.744045, 36.475422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686039, 30.800306, 36.304882>,  <34.951408, 30.894075, 36.020653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686039, 30.800306, 36.304882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358663, -0.733817, -0.576952,
		0.656683, -0.637619, 0.402751,
		-0.663421, -0.234423, 0.710576,
		34.487011, 30.729979, 36.518055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550838, 31.066380, 36.485161>,  <34.951408, 30.894075, 36.020653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550838, 31.066380, 36.485161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822567, 30.887230, 36.717686>,  <35.985603, 30.779741, 36.857201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822567, 30.887230, 36.717686>,  <35.550838, 31.066380, 36.485161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822567, 30.887230, 36.717686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586729, 0.144293, 0.796824,
		-0.440755, -0.882377, -0.164758,
		0.679326, -0.447872, 0.581315,
		36.026363, 30.752869, 36.892078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268993, 30.501307, 36.936081>,  <35.550838, 31.066380, 36.485161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268993, 30.501307, 36.936081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582260, 30.661472, 37.126373>,  <35.770218, 30.757572, 37.240551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582260, 30.661472, 37.126373>,  <35.268993, 30.501307, 36.936081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582260, 30.661472, 37.126373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527009, 0.021368, 0.849591,
		0.330022, -0.916086, 0.227756,
		0.783165, 0.400413, 0.475733,
		35.817211, 30.781595, 37.269093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530144, 30.027439, 37.598633>,  <35.268993, 30.501307, 36.936081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530144, 30.027439, 37.598633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622955, 30.409208, 37.673721>,  <35.678642, 30.638269, 37.718773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622955, 30.409208, 37.673721>,  <35.530144, 30.027439, 37.598633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622955, 30.409208, 37.673721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370875, -0.091601, 0.924154,
		0.899230, -0.284049, 0.332718,
		0.232027, 0.954424, 0.187717,
		35.692562, 30.695536, 37.730038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946495, 30.150768, 38.189175>,  <35.530144, 30.027439, 37.598633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946495, 30.150768, 38.189175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775490, 30.508089, 38.133690>,  <35.672886, 30.722483, 38.100399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775490, 30.508089, 38.133690>,  <35.946495, 30.150768, 38.189175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775490, 30.508089, 38.133690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093658, 0.108844, 0.989637,
		0.899144, 0.436075, 0.037133,
		-0.427514, 0.893304, -0.138708,
		35.647236, 30.776081, 38.092079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302074, 30.666073, 38.718082>,  <35.946495, 30.150768, 38.189175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302074, 30.666073, 38.718082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946041, 30.820385, 38.620979>,  <35.732422, 30.912971, 38.562717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946041, 30.820385, 38.620979>,  <36.302074, 30.666073, 38.718082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946041, 30.820385, 38.620979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188133, 0.174171, 0.966577,
		0.415168, 0.906001, -0.082448,
		-0.890080, 0.385780, -0.242758,
		35.679016, 30.936119, 38.548153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365921, 31.259792, 39.181175>,  <36.302074, 30.666073, 38.718082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365921, 31.259792, 39.181175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984657, 31.251534, 39.060471>,  <35.755898, 31.246578, 38.988049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984657, 31.251534, 39.060471>,  <36.365921, 31.259792, 39.181175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984657, 31.251534, 39.060471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286857, 0.378047, 0.880224,
		0.095906, 0.925556, -0.366262,
		-0.953161, -0.020646, -0.301759,
		35.698708, 31.245340, 38.969944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038013, 31.898054, 39.423687>,  <36.365921, 31.259792, 39.181175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038013, 31.898054, 39.423687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730453, 31.650299, 39.360256>,  <35.545918, 31.501646, 39.322197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730453, 31.650299, 39.360256>,  <36.038013, 31.898054, 39.423687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730453, 31.650299, 39.360256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352798, 0.204169, 0.913153,
		-0.533219, 0.758072, -0.375505,
		-0.768902, -0.619388, -0.158580,
		35.499783, 31.464483, 39.312683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370777, 32.328777, 39.575840>,  <36.038013, 31.898054, 39.423687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370777, 32.328777, 39.575840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268440, 31.944647, 39.620232>,  <35.207039, 31.714169, 39.646866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268440, 31.944647, 39.620232>,  <35.370777, 32.328777, 39.575840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268440, 31.944647, 39.620232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338663, 0.196560, 0.920147,
		-0.905458, 0.197823, -0.375515,
		-0.255838, -0.960328, 0.110982,
		35.191689, 31.656548, 39.653526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803249, 32.410782, 40.009155>,  <35.370777, 32.328777, 39.575840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803249, 32.410782, 40.009155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883610, 32.019451, 40.029202>,  <34.931828, 31.784653, 40.041229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883610, 32.019451, 40.029202>,  <34.803249, 32.410782, 40.009155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883610, 32.019451, 40.029202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420893, -0.040009, 0.906228,
		-0.884583, -0.203156, -0.419810,
		0.200902, -0.978329, 0.050115,
		34.943882, 31.725952, 40.044235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195721, 32.128746, 40.303684>,  <34.803249, 32.410782, 40.009155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195721, 32.128746, 40.303684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492874, 31.870411, 40.374130>,  <34.671165, 31.715408, 40.416397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492874, 31.870411, 40.374130>,  <34.195721, 32.128746, 40.303684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492874, 31.870411, 40.374130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357861, -0.160805, 0.919825,
		-0.565741, -0.746345, -0.350580,
		0.742881, -0.645842, 0.176113,
		34.715740, 31.676659, 40.426964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881458, 31.470903, 40.465019>,  <34.195721, 32.128746, 40.303684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881458, 31.470903, 40.465019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251740, 31.490316, 40.615070>,  <34.473907, 31.501965, 40.705101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251740, 31.490316, 40.615070>,  <33.881458, 31.470903, 40.465019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251740, 31.490316, 40.615070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343245, -0.308934, 0.886985,
		0.158939, -0.949845, -0.269321,
		0.925700, 0.048533, 0.375131,
		34.529449, 31.504877, 40.727612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979946, 30.835405, 40.794411>,  <33.881458, 31.470903, 40.465019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979946, 30.835405, 40.794411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260574, 31.073385, 40.951302>,  <34.428951, 31.216173, 41.045437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260574, 31.073385, 40.951302>,  <33.979946, 30.835405, 40.794411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260574, 31.073385, 40.951302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157573, -0.407267, 0.899613,
		0.694963, -0.692944, -0.191977,
		0.701567, 0.594948, 0.392225,
		34.471046, 31.251869, 41.068970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277981, 30.393818, 41.286667>,  <33.979946, 30.835405, 40.794411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277981, 30.393818, 41.286667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342949, 30.779831, 41.368965>,  <34.381931, 31.011438, 41.418343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342949, 30.779831, 41.368965>,  <34.277981, 30.393818, 41.286667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342949, 30.779831, 41.368965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119709, -0.187703, 0.974904,
		0.979433, -0.182977, 0.085035,
		0.162423, 0.965032, 0.205747,
		34.391674, 31.069340, 41.430691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536671, 30.247904, 41.890991>,  <34.277981, 30.393818, 41.286667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536671, 30.247904, 41.890991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526455, 30.647623, 41.880005>,  <34.520325, 30.887455, 41.873413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526455, 30.647623, 41.880005>,  <34.536671, 30.247904, 41.890991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526455, 30.647623, 41.880005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059443, 0.025905, 0.997896,
		0.997905, 0.027114, 0.058739,
		-0.025535, 0.999297, -0.027463,
		34.518795, 30.947412, 41.871765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021252, 30.541206, 42.397488>,  <34.536671, 30.247904, 41.890991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021252, 30.541206, 42.397488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740009, 30.812071, 42.310684>,  <34.571262, 30.974588, 42.258602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740009, 30.812071, 42.310684>,  <35.021252, 30.541206, 42.397488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740009, 30.812071, 42.310684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014880, 0.291105, 0.956575,
		0.710928, 0.675804, -0.194602,
		-0.703108, 0.677160, -0.217011,
		34.529076, 31.015219, 42.245583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293068, 31.097998, 42.639793>,  <35.021252, 30.541206, 42.397488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293068, 31.097998, 42.639793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893509, 31.116125, 42.644650>,  <34.653774, 31.127003, 42.647564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893509, 31.116125, 42.644650>,  <35.293068, 31.097998, 42.639793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893509, 31.116125, 42.644650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022399, 0.233287, 0.972150,
		0.041227, 0.971351, -0.234045,
		-0.998899, 0.045321, 0.012139,
		34.593838, 31.129721, 42.648293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057442, 31.708479, 42.881275>,  <35.293068, 31.097998, 42.639793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057442, 31.708479, 42.881275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748718, 31.463173, 42.948467>,  <34.563484, 31.315990, 42.988781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748718, 31.463173, 42.948467>,  <35.057442, 31.708479, 42.881275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748718, 31.463173, 42.948467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042607, 0.213702, 0.975969,
		-0.634424, 0.760420, -0.138808,
		-0.771811, -0.613264, 0.167977,
		34.517174, 31.279194, 42.998859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670322, 32.098934, 43.377548>,  <35.057442, 31.708479, 42.881275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670322, 32.098934, 43.377548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492588, 31.742292, 43.412422>,  <34.385948, 31.528307, 43.433346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492588, 31.742292, 43.412422>,  <34.670322, 32.098934, 43.377548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492588, 31.742292, 43.412422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153632, 0.171714, 0.973094,
		-0.882589, 0.418986, -0.213278,
		-0.444336, -0.891608, 0.087183,
		34.359287, 31.474810, 43.438576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071987, 32.185402, 43.782707>,  <34.670322, 32.098934, 43.377548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071987, 32.185402, 43.782707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141514, 31.794092, 43.827908>,  <34.183231, 31.559307, 43.855026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141514, 31.794092, 43.827908>,  <34.071987, 32.185402, 43.782707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141514, 31.794092, 43.827908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203354, 0.076615, 0.976103,
		-0.963553, -0.192643, -0.185619,
		0.173818, -0.978273, 0.112997,
		34.193661, 31.500610, 43.861805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575729, 31.912731, 44.104843>,  <34.071987, 32.185402, 43.782707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575729, 31.912731, 44.104843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879288, 31.663254, 44.179760>,  <34.061424, 31.513567, 44.224709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879288, 31.663254, 44.179760>,  <33.575729, 31.912731, 44.104843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879288, 31.663254, 44.179760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180605, 0.074744, 0.980712,
		-0.625661, -0.778088, -0.055919,
		0.758900, -0.623692, 0.187290,
		34.106956, 31.476147, 44.235947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345600, 31.494783, 44.541248>,  <33.575729, 31.912731, 44.104843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345600, 31.494783, 44.541248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739403, 31.440321, 44.585438>,  <33.975685, 31.407642, 44.611954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739403, 31.440321, 44.585438>,  <33.345600, 31.494783, 44.541248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739403, 31.440321, 44.585438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105323, 0.044503, 0.993442,
		-0.140182, -0.989687, 0.029473,
		0.984508, -0.136158, 0.110476,
		34.034756, 31.399473, 44.618580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448402, 31.095755, 45.148804>,  <33.345600, 31.494783, 44.541248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448402, 31.095755, 45.148804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828842, 31.198780, 45.080605>,  <34.057106, 31.260595, 45.039684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828842, 31.198780, 45.080605>,  <33.448402, 31.095755, 45.148804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828842, 31.198780, 45.080605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222773, -0.189622, 0.956251,
		0.213967, -0.947472, -0.237728,
		0.951099, 0.257566, -0.170499,
		34.114174, 31.276051, 45.029453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922649, 30.594326, 45.331451>,  <33.448402, 31.095755, 45.148804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922649, 30.594326, 45.331451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123653, 30.939301, 45.355740>,  <34.244255, 31.146286, 45.370312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123653, 30.939301, 45.355740>,  <33.922649, 30.594326, 45.331451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123653, 30.939301, 45.355740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027836, -0.086333, 0.995878,
		0.864123, -0.498749, -0.067390,
		0.502511, 0.862436, 0.060719,
		34.274406, 31.198030, 45.373955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558922, 30.459335, 45.705154>,  <33.922649, 30.594326, 45.331451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558922, 30.459335, 45.705154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488895, 30.850687, 45.749210>,  <34.446880, 31.085497, 45.775646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488895, 30.850687, 45.749210>,  <34.558922, 30.459335, 45.705154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488895, 30.850687, 45.749210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010091, -0.113649, 0.993470,
		0.984506, 0.172807, 0.029768,
		-0.175062, 0.978377, 0.110144,
		34.436378, 31.144199, 45.782253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012543, 30.622398, 46.225803>,  <34.558922, 30.459335, 45.705154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012543, 30.622398, 46.225803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756176, 30.929228, 46.214283>,  <34.602356, 31.113325, 46.207371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756176, 30.929228, 46.214283>,  <35.012543, 30.622398, 46.225803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756176, 30.929228, 46.214283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051352, -0.005411, 0.998666,
		0.765893, 0.641538, 0.042859,
		-0.640914, 0.767072, -0.028800,
		34.563900, 31.159349, 46.205643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278671, 31.195482, 46.650692>,  <35.012543, 30.622398, 46.225803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278671, 31.195482, 46.650692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884449, 31.233404, 46.594563>,  <34.647915, 31.256157, 46.560886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884449, 31.233404, 46.594563>,  <35.278671, 31.195482, 46.650692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884449, 31.233404, 46.594563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147008, -0.067655, 0.986819,
		0.084061, 0.993194, 0.080614,
		-0.985557, 0.094804, -0.140321,
		34.588783, 31.261845, 46.552467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535858, 31.898050, 46.928352>,  <35.278671, 31.195482, 46.650692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535858, 31.898050, 46.928352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771378, 31.742996, 47.212059>,  <35.912689, 31.649963, 47.382282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771378, 31.742996, 47.212059>,  <35.535858, 31.898050, 46.928352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771378, 31.742996, 47.212059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709166, -0.173282, -0.683415,
		0.387819, 0.905380, 0.172870,
		0.588795, -0.387635, 0.709267,
		35.948017, 31.626705, 47.424839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134453, 32.206448, 46.929810>,  <35.535858, 31.898050, 46.928352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134453, 32.206448, 46.929810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190022, 31.839342, 47.078621>,  <36.223362, 31.619078, 47.167908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190022, 31.839342, 47.078621>,  <36.134453, 32.206448, 46.929810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190022, 31.839342, 47.078621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601202, -0.220360, -0.768113,
		0.786929, 0.330373, 0.521150,
		0.138923, -0.917766, 0.372029,
		36.231697, 31.564013, 47.190231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769718, 32.057987, 46.796375>,  <36.134453, 32.206448, 46.929810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769718, 32.057987, 46.796375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656929, 31.689192, 46.902523>,  <36.589256, 31.467913, 46.966213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656929, 31.689192, 46.902523>,  <36.769718, 32.057987, 46.796375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656929, 31.689192, 46.902523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576024, -0.383882, -0.721686,
		0.767262, -0.050632, 0.639333,
		-0.281969, -0.921993, 0.265373,
		36.572338, 31.412594, 46.982136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343670, 31.586838, 46.797947>,  <36.769718, 32.057987, 46.796375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343670, 31.586838, 46.797947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006680, 31.383234, 46.727352>,  <36.804485, 31.261072, 46.684994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006680, 31.383234, 46.727352>,  <37.343670, 31.586838, 46.797947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006680, 31.383234, 46.727352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394127, -0.358981, -0.846048,
		0.367292, -0.782330, 0.503046,
		-0.842473, -0.509010, -0.176487,
		36.753937, 31.230532, 46.674408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659958, 30.976852, 46.588352>,  <37.343670, 31.586838, 46.797947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659958, 30.976852, 46.588352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282921, 30.958469, 46.456051>,  <37.056698, 30.947439, 46.376671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282921, 30.958469, 46.456051>,  <37.659958, 30.976852, 46.588352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282921, 30.958469, 46.456051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328008, -0.313185, -0.891249,
		-0.062628, -0.948579, 0.310282,
		-0.942597, -0.045958, -0.330756,
		37.000141, 30.944683, 46.356823>
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
