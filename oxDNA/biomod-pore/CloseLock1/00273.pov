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
	<24.058622, 35.214592, 35.057529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.346313, 35.054104, 34.830643>,  <24.518929, 34.957809, 34.694511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.346313, 35.054104, 34.830643>,  <24.058622, 35.214592, 35.057529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.346313, 35.054104, 34.830643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686849, 0.533560, 0.493511,
		0.104634, -0.744536, 0.659331,
		0.719229, -0.401223, -0.567212,
		24.562082, 34.933739, 34.660480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.604298, 35.045265, 35.516163>,  <24.058622, 35.214592, 35.057529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.604298, 35.045265, 35.516163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.768953, 35.053360, 35.151714>,  <24.867746, 35.058216, 34.933044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.768953, 35.053360, 35.151714>,  <24.604298, 35.045265, 35.516163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.768953, 35.053360, 35.151714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811763, 0.446283, 0.376660,
		0.414240, -0.894663, 0.167283,
		0.411639, 0.020233, -0.911122,
		24.892445, 35.059429, 34.878376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.203747, 34.595047, 35.374786>,  <24.604298, 35.045265, 35.516163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.203747, 34.595047, 35.374786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.261738, 34.913231, 35.139423>,  <25.296532, 35.104141, 34.998203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.261738, 34.913231, 35.139423>,  <25.203747, 34.595047, 35.374786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.261738, 34.913231, 35.139423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885548, 0.160952, 0.435775,
		0.441346, -0.584244, -0.681082,
		0.144977, 0.795458, -0.588411,
		25.305231, 35.151867, 34.962898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.058676, 34.474216, 35.399044>,  <25.203747, 34.595047, 35.374786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.058676, 34.474216, 35.399044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.410042, 34.655231, 35.460487>,  <26.620861, 34.763840, 35.497353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.410042, 34.655231, 35.460487>,  <26.058676, 34.474216, 35.399044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.410042, 34.655231, 35.460487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178751, -0.609228, 0.772586,
		0.443208, -0.651193, -0.616047,
		0.878416, 0.452535, 0.153613,
		26.673567, 34.790993, 35.506573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.675026, 33.970970, 35.443840>,  <26.058676, 34.474216, 35.399044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.675026, 33.970970, 35.443840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702423, 34.305668, 35.661156>,  <26.718861, 34.506485, 35.791546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702423, 34.305668, 35.661156>,  <26.675026, 33.970970, 35.443840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.702423, 34.305668, 35.661156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213762, -0.544232, 0.811244,
		0.974482, 0.060572, -0.216139,
		0.068491, 0.836745, 0.543292,
		26.722971, 34.556690, 35.824142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.312536, 34.383770, 35.635757>,  <26.675026, 33.970970, 35.443840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.312536, 34.383770, 35.635757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.695192, 34.283150, 35.577026>,  <27.924786, 34.222778, 35.541786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.695192, 34.283150, 35.577026>,  <27.312536, 34.383770, 35.635757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.695192, 34.283150, 35.577026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152102, -0.001530, -0.988364,
		0.248397, 0.967843, -0.039725,
		0.956642, -0.251548, -0.146831,
		27.982185, 34.207684, 35.532978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679569, 34.835869, 35.146374>,  <27.312536, 34.383770, 35.635757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.679569, 34.835869, 35.146374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.904943, 34.505455, 35.152176>,  <28.040167, 34.307205, 35.155659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.904943, 34.505455, 35.152176>,  <27.679569, 34.835869, 35.146374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.904943, 34.505455, 35.152176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041110, 0.010497, -0.999100,
		0.825138, 0.563522, 0.039873,
		0.563433, -0.826034, 0.014505,
		28.073973, 34.257645, 35.156528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.061628, 34.887253, 34.547707>,  <27.679569, 34.835869, 35.146374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.061628, 34.887253, 34.547707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.132158, 34.508144, 34.654018>,  <28.174477, 34.280678, 34.717808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.132158, 34.508144, 34.654018>,  <28.061628, 34.887253, 34.547707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.132158, 34.508144, 34.654018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096368, -0.252096, -0.962892,
		0.979603, 0.195395, 0.046884,
		0.176325, -0.947770, 0.265783,
		28.185057, 34.223812, 34.733753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485928, 34.708439, 34.068035>,  <28.061628, 34.887253, 34.547707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485928, 34.708439, 34.068035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.358137, 34.358150, 34.212837>,  <28.281464, 34.147976, 34.299717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.358137, 34.358150, 34.212837>,  <28.485928, 34.708439, 34.068035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.358137, 34.358150, 34.212837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188304, -0.433078, -0.881467,
		0.928696, -0.213440, 0.303260,
		-0.319476, -0.875721, 0.362006,
		28.262295, 34.095436, 34.321438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.046385, 34.234104, 33.859653>,  <28.485928, 34.708439, 34.068035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.046385, 34.234104, 33.859653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720125, 34.014767, 33.933456>,  <28.524370, 33.883163, 33.977737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720125, 34.014767, 33.933456>,  <29.046385, 34.234104, 33.859653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.720125, 34.014767, 33.933456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135735, -0.491386, -0.860300,
		0.562402, -0.676656, 0.475227,
		-0.815647, -0.548339, 0.184510,
		28.475431, 33.850266, 33.988808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.213045, 33.540154, 33.557865>,  <29.046385, 34.234104, 33.859653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.213045, 33.540154, 33.557865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814358, 33.540268, 33.590240>,  <28.575146, 33.540337, 33.609665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814358, 33.540268, 33.590240>,  <29.213045, 33.540154, 33.557865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814358, 33.540268, 33.590240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072044, -0.458959, -0.885531,
		0.036895, -0.888457, 0.457474,
		-0.996719, 0.000287, 0.080942,
		28.515343, 33.540356, 33.614521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978153, 32.978401, 33.302917>,  <29.213045, 33.540154, 33.557865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978153, 32.978401, 33.302917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.671326, 33.233761, 33.277451>,  <28.487230, 33.386978, 33.262173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.671326, 33.233761, 33.277451>,  <28.978153, 32.978401, 33.302917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.671326, 33.233761, 33.277451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032891, -0.138232, -0.989854,
		-0.640723, -0.757191, 0.127031,
		-0.767068, 0.638400, -0.063663,
		28.441206, 33.425282, 33.258350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596317, 32.660168, 32.954712>,  <28.978153, 32.978401, 33.302917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.596317, 32.660168, 32.954712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.453756, 33.030743, 32.906219>,  <28.368219, 33.253086, 32.877125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.453756, 33.030743, 32.906219>,  <28.596317, 32.660168, 32.954712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.453756, 33.030743, 32.906219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056876, -0.108002, -0.992522,
		-0.932600, -0.360632, -0.014200,
		-0.356401, 0.926434, -0.121234,
		28.346836, 33.308674, 32.869850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.111530, 32.609653, 32.351528>,  <28.596317, 32.660168, 32.954712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.111530, 32.609653, 32.351528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.226641, 32.988979, 32.405018>,  <28.295706, 33.216576, 32.437111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.226641, 32.988979, 32.405018>,  <28.111530, 32.609653, 32.351528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.226641, 32.988979, 32.405018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283384, 0.049062, -0.957751,
		-0.914811, 0.313513, -0.254619,
		0.287775, 0.948316, 0.133727,
		28.312973, 33.273476, 32.445137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.748644, 33.042774, 31.814856>,  <28.111530, 32.609653, 32.351528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.748644, 33.042774, 31.814856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081873, 33.241909, 31.911310>,  <28.281811, 33.361389, 31.969183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081873, 33.241909, 31.911310>,  <27.748644, 33.042774, 31.814856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.081873, 33.241909, 31.911310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319947, -0.078051, -0.944215,
		-0.451244, 0.863752, -0.224304,
		0.833074, 0.497837, 0.241135,
		28.331795, 33.391258, 31.983650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.839952, 33.527058, 31.366732>,  <27.748644, 33.042774, 31.814856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.839952, 33.527058, 31.366732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.212679, 33.504185, 31.510092>,  <28.436316, 33.490463, 31.596107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.212679, 33.504185, 31.510092>,  <27.839952, 33.527058, 31.366732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.212679, 33.504185, 31.510092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351842, -0.099923, -0.930711,
		0.089029, 0.993351, -0.072991,
		0.931816, -0.057179, 0.358398,
		28.492224, 33.487030, 31.617611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171511, 33.793674, 30.815844>,  <27.839952, 33.527058, 31.366732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171511, 33.793674, 30.815844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.455614, 33.610264, 31.029493>,  <28.626076, 33.500217, 31.157682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.455614, 33.610264, 31.029493>,  <28.171511, 33.793674, 30.815844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.455614, 33.610264, 31.029493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499061, -0.207133, -0.841448,
		0.496460, 0.864205, 0.081714,
		0.710257, -0.458526, 0.534124,
		28.668692, 33.472706, 31.189730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866940, 34.086201, 30.649723>,  <28.171511, 33.793674, 30.815844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866940, 34.086201, 30.649723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.975483, 33.735260, 30.808020>,  <29.040609, 33.524696, 30.902998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.975483, 33.735260, 30.808020>,  <28.866940, 34.086201, 30.649723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975483, 33.735260, 30.808020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422200, -0.260993, -0.868118,
		0.864934, 0.402656, 0.299596,
		0.271360, -0.877355, 0.395743,
		29.056890, 33.472054, 30.926743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543663, 34.020332, 30.388281>,  <28.866940, 34.086201, 30.649723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543663, 34.020332, 30.388281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452826, 33.648773, 30.505293>,  <29.398323, 33.425838, 30.575500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452826, 33.648773, 30.505293>,  <29.543663, 34.020332, 30.388281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452826, 33.648773, 30.505293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567470, -0.370331, -0.735413,
		0.791457, -0.001007, 0.611224,
		-0.227096, -0.928899, 0.292530,
		29.384697, 33.370102, 30.593052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200008, 33.582767, 30.180088>,  <29.543663, 34.020332, 30.388281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.200008, 33.582767, 30.180088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.886972, 33.335304, 30.207853>,  <29.699150, 33.186825, 30.224512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.886972, 33.335304, 30.207853>,  <30.200008, 33.582767, 30.180088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.886972, 33.335304, 30.207853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452864, -0.642248, -0.618411,
		0.427163, -0.452528, 0.782784,
		-0.782589, -0.618657, 0.069411,
		29.652195, 33.149708, 30.228676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516941, 32.975891, 30.329678>,  <30.200008, 33.582767, 30.180088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516941, 32.975891, 30.329678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159826, 32.853775, 30.197176>,  <29.945557, 32.780506, 30.117676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159826, 32.853775, 30.197176>,  <30.516941, 32.975891, 30.329678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159826, 32.853775, 30.197176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450475, -0.606693, -0.654978,
		-0.001012, -0.733977, 0.679173,
		-0.892789, -0.305288, -0.331252,
		29.891989, 32.762188, 30.097801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568356, 32.329273, 30.385239>,  <30.516941, 32.975891, 30.329678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568356, 32.329273, 30.385239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.279177, 32.366364, 30.111376>,  <30.105669, 32.388618, 29.947058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.279177, 32.366364, 30.111376>,  <30.568356, 32.329273, 30.385239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.279177, 32.366364, 30.111376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564013, -0.493144, -0.662343,
		-0.399048, -0.864992, 0.304220,
		-0.722946, 0.092723, -0.684655,
		30.062294, 32.394180, 29.905979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530804, 31.660393, 30.069771>,  <30.568356, 32.329273, 30.385239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530804, 31.660393, 30.069771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342409, 31.901630, 29.812262>,  <30.229372, 32.046371, 29.657755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342409, 31.901630, 29.812262>,  <30.530804, 31.660393, 30.069771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342409, 31.901630, 29.812262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602276, -0.313380, -0.734205,
		-0.644542, -0.733532, -0.215632,
		-0.470988, 0.603096, -0.643775,
		30.201113, 32.082558, 29.619129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438099, 31.230949, 29.509504>,  <30.530804, 31.660393, 30.069771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438099, 31.230949, 29.509504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440619, 31.609346, 29.379852>,  <30.442131, 31.836384, 29.302061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440619, 31.609346, 29.379852>,  <30.438099, 31.230949, 29.509504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440619, 31.609346, 29.379852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612252, -0.259930, -0.746715,
		-0.790638, -0.193744, -0.580823,
		0.006301, 0.945991, -0.324130,
		30.442509, 31.893145, 29.282614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.415953, 31.202206, 28.761833>,  <30.438099, 31.230949, 29.509504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.415953, 31.202206, 28.761833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.567696, 31.567070, 28.823864>,  <30.658741, 31.785988, 28.861082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.567696, 31.567070, 28.823864>,  <30.415953, 31.202206, 28.761833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567696, 31.567070, 28.823864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637251, -0.136064, -0.758550,
		-0.670819, 0.386586, -0.632893,
		0.379359, 0.912161, 0.155078,
		30.681503, 31.840719, 28.870388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564129, 31.495546, 28.159252>,  <30.415953, 31.202206, 28.761833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564129, 31.495546, 28.159252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.830923, 31.672344, 28.399176>,  <30.990999, 31.778423, 28.543129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.830923, 31.672344, 28.399176>,  <30.564129, 31.495546, 28.159252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.830923, 31.672344, 28.399176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707774, -0.124351, -0.695408,
		-0.232780, 0.888357, -0.395773,
		0.666985, 0.441995, 0.599809,
		31.031019, 31.804943, 28.579119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946388, 32.105759, 27.817316>,  <30.564129, 31.495546, 28.159252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946388, 32.105759, 27.817316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.159025, 31.925882, 28.104422>,  <31.286608, 31.817957, 28.276686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.159025, 31.925882, 28.104422>,  <30.946388, 32.105759, 27.817316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.159025, 31.925882, 28.104422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716463, -0.213249, -0.664233,
		0.451762, 0.867354, 0.208826,
		0.531593, -0.449691, 0.717765,
		31.318502, 31.790976, 28.319752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476507, 32.400131, 27.718523>,  <30.946388, 32.105759, 27.817316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476507, 32.400131, 27.718523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533358, 32.055027, 27.912615>,  <31.567467, 31.847965, 28.029070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533358, 32.055027, 27.912615>,  <31.476507, 32.400131, 27.718523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533358, 32.055027, 27.912615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836948, -0.156992, -0.524282,
		0.528506, 0.480625, 0.699772,
		0.142124, -0.862759, 0.485229,
		31.575994, 31.796200, 28.058184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220474, 32.411156, 27.836233>,  <31.476507, 32.400131, 27.718523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220474, 32.411156, 27.836233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096657, 32.031578, 27.811905>,  <32.022366, 31.803833, 27.797308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096657, 32.031578, 27.811905>,  <32.220474, 32.411156, 27.836233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096657, 32.031578, 27.811905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840649, -0.243202, -0.483902,
		0.444403, -0.200914, 0.873006,
		-0.309540, -0.948940, -0.060818,
		32.003796, 31.746897, 27.793659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676521, 31.918489, 28.222857>,  <32.220474, 32.411156, 27.836233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676521, 31.918489, 28.222857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491589, 31.751005, 27.910208>,  <32.380630, 31.650515, 27.722618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491589, 31.751005, 27.910208>,  <32.676521, 31.918489, 28.222857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491589, 31.751005, 27.910208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884004, -0.148878, -0.443138,
		0.069180, -0.895834, 0.438971,
		-0.462331, -0.418709, -0.781622,
		32.352890, 31.625393, 27.675722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058853, 31.328915, 28.039555>,  <32.676521, 31.918489, 28.222857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058853, 31.328915, 28.039555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.868084, 31.480793, 27.722473>,  <32.753624, 31.571920, 27.532225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.868084, 31.480793, 27.722473>,  <33.058853, 31.328915, 28.039555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868084, 31.480793, 27.722473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838089, -0.075331, -0.540307,
		-0.264868, -0.922039, -0.282293,
		-0.476919, 0.379696, -0.792704,
		32.725010, 31.594702, 27.484661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070866, 30.887753, 27.443254>,  <33.058853, 31.328915, 28.039555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070866, 30.887753, 27.443254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095707, 31.284437, 27.398268>,  <33.110611, 31.522448, 27.371277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095707, 31.284437, 27.398268>,  <33.070866, 30.887753, 27.443254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095707, 31.284437, 27.398268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913827, -0.101811, -0.393135,
		-0.401327, -0.078357, -0.912577,
		0.062105, 0.991713, -0.112465,
		33.114338, 31.581951, 27.364529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455761, 30.529297, 26.942652>,  <33.070866, 30.887753, 27.443254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455761, 30.529297, 26.942652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738731, 30.612898, 27.212723>,  <33.908512, 30.663057, 27.374765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738731, 30.612898, 27.212723>,  <33.455761, 30.529297, 26.942652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738731, 30.612898, 27.212723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706706, 0.223692, 0.671214,
		-0.010748, -0.951988, 0.305947,
		0.707426, 0.209000, 0.675180,
		33.950958, 30.675598, 27.415277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448074, 30.100864, 27.662880>,  <33.455761, 30.529297, 26.942652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448074, 30.100864, 27.662880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614876, 30.461147, 27.711592>,  <33.714958, 30.677317, 27.740818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614876, 30.461147, 27.711592>,  <33.448074, 30.100864, 27.662880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614876, 30.461147, 27.711592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638745, 0.195094, 0.744274,
		0.646615, -0.388152, 0.656679,
		0.417005, 0.900709, 0.121779,
		33.739979, 30.731359, 27.748125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850658, 30.130346, 28.287712>,  <33.448074, 30.100864, 27.662880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850658, 30.130346, 28.287712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703270, 30.487825, 28.185310>,  <33.614838, 30.702312, 28.123869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703270, 30.487825, 28.185310>,  <33.850658, 30.130346, 28.287712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703270, 30.487825, 28.185310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450817, 0.069058, 0.889941,
		0.813017, 0.443324, 0.377449,
		-0.368467, 0.893697, -0.256003,
		33.592731, 30.755934, 28.108509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278931, 30.677979, 28.649944>,  <33.850658, 30.130346, 28.287712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278931, 30.677979, 28.649944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899857, 30.770485, 28.561943>,  <33.672413, 30.825989, 28.509142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899857, 30.770485, 28.561943>,  <34.278931, 30.677979, 28.649944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899857, 30.770485, 28.561943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162371, 0.244123, 0.956054,
		0.274809, 0.941765, -0.193802,
		-0.947690, 0.231264, -0.220003,
		33.615551, 30.839865, 28.495943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066074, 31.432470, 28.614786>,  <34.278931, 30.677979, 28.649944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066074, 31.432470, 28.614786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764874, 31.189075, 28.714966>,  <33.584152, 31.043037, 28.775074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764874, 31.189075, 28.714966>,  <34.066074, 31.432470, 28.614786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764874, 31.189075, 28.714966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115235, 0.496678, 0.860251,
		-0.647846, 0.618913, -0.444120,
		-0.753005, -0.608488, 0.250450,
		33.538971, 31.006529, 28.790100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678307, 31.860937, 28.928169>,  <34.066074, 31.432470, 28.614786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678307, 31.860937, 28.928169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521999, 31.513102, 29.048914>,  <33.428215, 31.304401, 29.121361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521999, 31.513102, 29.048914>,  <33.678307, 31.860937, 28.928169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521999, 31.513102, 29.048914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213932, 0.404753, 0.889049,
		-0.895285, 0.282832, -0.344196,
		-0.390766, -0.869587, 0.301862,
		33.404770, 31.252226, 29.139473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974525, 32.018681, 29.176765>,  <33.678307, 31.860937, 28.928169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974525, 32.018681, 29.176765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128174, 31.689695, 29.344580>,  <33.220364, 31.492304, 29.445269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128174, 31.689695, 29.344580>,  <32.974525, 32.018681, 29.176765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128174, 31.689695, 29.344580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201821, 0.368609, 0.907412,
		-0.900956, -0.433224, -0.024401,
		0.384118, -0.822462, 0.419534,
		33.243408, 31.442957, 29.470440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514820, 31.565844, 29.394041>,  <32.974525, 32.018681, 29.176765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514820, 31.565844, 29.394041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809341, 31.435358, 29.631170>,  <32.986053, 31.357067, 29.773447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809341, 31.435358, 29.631170>,  <32.514820, 31.565844, 29.394041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809341, 31.435358, 29.631170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508254, 0.311731, 0.802808,
		-0.446690, -0.892416, 0.063729,
		0.736305, -0.326216, 0.592821,
		33.030231, 31.337494, 29.809017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236523, 31.272842, 29.977436>,  <32.514820, 31.565844, 29.394041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236523, 31.272842, 29.977436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604435, 31.362471, 30.106308>,  <32.825184, 31.416248, 30.183630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604435, 31.362471, 30.106308>,  <32.236523, 31.272842, 29.977436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604435, 31.362471, 30.106308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358517, 0.145891, 0.922053,
		0.159625, -0.963586, 0.214529,
		0.919775, 0.224095, 0.322174,
		32.880367, 31.429691, 30.202961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383358, 30.955917, 30.645498>,  <32.236523, 31.272842, 29.977436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383358, 30.955917, 30.645498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654408, 31.250080, 30.645880>,  <32.817039, 31.426577, 30.646109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654408, 31.250080, 30.645880>,  <32.383358, 30.955917, 30.645498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654408, 31.250080, 30.645880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260745, 0.239046, 0.935344,
		0.687629, -0.634064, 0.353737,
		0.677627, 0.735405, 0.000954,
		32.857697, 31.470701, 30.646166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561684, 30.970041, 31.411108>,  <32.383358, 30.955917, 30.645498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561684, 30.970041, 31.411108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734287, 31.288446, 31.241327>,  <32.837849, 31.479490, 31.139458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734287, 31.288446, 31.241327>,  <32.561684, 30.970041, 31.411108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734287, 31.288446, 31.241327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216628, 0.548179, 0.807819,
		0.875713, -0.256632, 0.408983,
		0.431508, 0.796015, -0.424454,
		32.863739, 31.527250, 31.113991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964439, 31.280643, 31.907993>,  <32.561684, 30.970041, 31.411108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964439, 31.280643, 31.907993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925014, 31.581043, 31.646832>,  <32.901360, 31.761284, 31.490135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925014, 31.581043, 31.646832>,  <32.964439, 31.280643, 31.907993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925014, 31.581043, 31.646832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197226, 0.628341, 0.752522,
		0.975391, 0.202940, 0.086186,
		-0.098563, 0.751001, -0.652903,
		32.895447, 31.806343, 31.450960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386757, 31.803282, 32.106808>,  <32.964439, 31.280643, 31.907993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386757, 31.803282, 32.106808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104572, 31.957987, 31.869236>,  <32.935261, 32.050808, 31.726694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104572, 31.957987, 31.869236>,  <33.386757, 31.803282, 32.106808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104572, 31.957987, 31.869236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175307, 0.716729, 0.674957,
		0.686730, 0.580272, -0.437819,
		-0.705457, 0.386761, -0.593925,
		32.892937, 32.074017, 31.691059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537025, 32.520649, 32.093784>,  <33.386757, 31.803282, 32.106808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537025, 32.520649, 32.093784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157036, 32.496819, 31.971148>,  <32.929043, 32.482521, 31.897564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157036, 32.496819, 31.971148>,  <33.537025, 32.520649, 32.093784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157036, 32.496819, 31.971148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266803, 0.665145, 0.697423,
		0.162379, 0.744334, -0.647766,
		-0.949973, -0.059579, -0.306596,
		32.872044, 32.478943, 31.879169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170673, 33.267029, 31.985926>,  <33.537025, 32.520649, 32.093784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170673, 33.267029, 31.985926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883224, 32.996426, 32.050316>,  <32.710754, 32.834064, 32.088951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883224, 32.996426, 32.050316>,  <33.170673, 33.267029, 31.985926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883224, 32.996426, 32.050316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356535, 0.557187, 0.749951,
		-0.597042, 0.481540, -0.641608,
		-0.718627, -0.676508, 0.160978,
		32.667637, 32.793472, 32.098610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542767, 33.558586, 31.975363>,  <33.170673, 33.267029, 31.985926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542767, 33.558586, 31.975363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444664, 33.222179, 32.168251>,  <32.385803, 33.020336, 32.283985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444664, 33.222179, 32.168251>,  <32.542767, 33.558586, 31.975363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444664, 33.222179, 32.168251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624362, 0.517545, 0.585080,
		-0.741635, -0.157588, -0.652030,
		-0.245253, -0.841019, 0.482222,
		32.371090, 32.969875, 32.312916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901178, 33.667053, 32.289795>,  <32.542767, 33.558586, 31.975363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901178, 33.667053, 32.289795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956131, 33.312298, 32.466228>,  <31.989103, 33.099445, 32.572086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956131, 33.312298, 32.466228>,  <31.901178, 33.667053, 32.289795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956131, 33.312298, 32.466228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739224, 0.204597, 0.641629,
		-0.659298, -0.414206, -0.627503,
		0.137382, -0.886890, 0.441082,
		31.997345, 33.046230, 32.598553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303373, 33.237682, 32.274754>,  <31.901178, 33.667053, 32.289795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303373, 33.237682, 32.274754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529070, 33.143131, 32.591171>,  <31.664488, 33.086399, 32.781021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529070, 33.143131, 32.591171>,  <31.303373, 33.237682, 32.274754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529070, 33.143131, 32.591171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725032, 0.316441, 0.611714,
		-0.394917, -0.918689, 0.007166,
		0.564243, -0.236381, 0.791046,
		31.698343, 33.072216, 32.828484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740208, 33.217262, 32.788242>,  <31.303373, 33.237682, 32.274754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740208, 33.217262, 32.788242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055363, 33.167660, 33.029526>,  <31.244455, 33.137897, 33.174294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055363, 33.167660, 33.029526>,  <30.740208, 33.217262, 32.788242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055363, 33.167660, 33.029526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579580, 0.181744, 0.794390,
		-0.208141, -0.975495, 0.071321,
		0.787886, -0.124009, 0.603206,
		31.291729, 33.130459, 33.210487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502560, 32.869167, 33.413429>,  <30.740208, 33.217262, 32.788242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502560, 32.869167, 33.413429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836626, 33.056870, 33.528179>,  <31.037066, 33.169491, 33.597031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836626, 33.056870, 33.528179>,  <30.502560, 32.869167, 33.413429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836626, 33.056870, 33.528179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457990, 0.304541, 0.835164,
		0.304541, -0.828887, 0.469257,
		-0.835164, -0.469257, -0.286877,
		31.087175, 33.197647, 33.614243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635750, 32.783165, 34.140778>,  <30.502560, 32.869167, 33.413429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635750, 32.783165, 34.140778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834185, 33.120121, 34.056606>,  <30.953245, 33.322296, 34.006104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834185, 33.120121, 34.056606>,  <30.635750, 32.783165, 34.140778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834185, 33.120121, 34.056606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277344, 0.383388, 0.880962,
		0.822787, -0.378673, 0.423825,
		0.496086, 0.842390, -0.210425,
		30.983011, 33.372837, 33.993481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983992, 32.891315, 34.827297>,  <30.635750, 32.783165, 34.140778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983992, 32.891315, 34.827297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994015, 33.237309, 34.626823>,  <31.000029, 33.444904, 34.506538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994015, 33.237309, 34.626823>,  <30.983992, 32.891315, 34.827297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.994015, 33.237309, 34.626823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211807, 0.494549, 0.842947,
		0.976990, 0.085031, 0.195602,
		0.025058, 0.864980, -0.501180,
		31.001532, 33.496803, 34.476471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216997, 33.292339, 35.354385>,  <30.983992, 32.891315, 34.827297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216997, 33.292339, 35.354385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090023, 33.537422, 35.064880>,  <31.013838, 33.684471, 34.891178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090023, 33.537422, 35.064880>,  <31.216997, 33.292339, 35.354385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090023, 33.537422, 35.064880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053175, 0.750532, 0.658692,
		0.946787, 0.247579, -0.205665,
		-0.317436, 0.612705, -0.723759,
		30.994793, 33.721233, 34.847752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622820, 33.864662, 35.340733>,  <31.216997, 33.292339, 35.354385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622820, 33.864662, 35.340733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241367, 33.928093, 35.238403>,  <31.012497, 33.966152, 35.177006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241367, 33.928093, 35.238403>,  <31.622820, 33.864662, 35.340733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241367, 33.928093, 35.238403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004203, 0.856885, 0.515490,
		0.300952, 0.490512, -0.817818,
		-0.953630, 0.158575, -0.255819,
		30.955278, 33.975666, 35.161659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482803, 34.626568, 35.336727>,  <31.622820, 33.864662, 35.340733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482803, 34.626568, 35.336727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113018, 34.476833, 35.365673>,  <30.891148, 34.386993, 35.383041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113018, 34.476833, 35.365673>,  <31.482803, 34.626568, 35.336727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113018, 34.476833, 35.365673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288797, 0.811432, 0.508109,
		-0.248925, 0.448829, -0.858247,
		-0.924464, -0.374340, 0.072365,
		30.835678, 34.364532, 35.387383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186298, 34.308681, 35.257847>,  <31.482803, 34.626568, 35.336727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186298, 34.308681, 35.257847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515888, 34.098358, 35.173378>,  <32.713642, 33.972164, 35.122696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515888, 34.098358, 35.173378>,  <32.186298, 34.308681, 35.257847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515888, 34.098358, 35.173378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491252, 0.477164, 0.728688,
		-0.282389, -0.704156, 0.651476,
		0.823971, -0.525812, -0.211172,
		32.763081, 33.940613, 35.110027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340706, 33.955647, 35.869682>,  <32.186298, 34.308681, 35.257847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340706, 33.955647, 35.869682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671848, 34.014072, 35.653046>,  <32.870533, 34.049129, 35.523064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671848, 34.014072, 35.653046>,  <32.340706, 33.955647, 35.869682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671848, 34.014072, 35.653046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425754, 0.465006, 0.776210,
		0.365221, -0.873175, 0.322770,
		0.827857, 0.146068, -0.541588,
		32.920204, 34.057892, 35.490570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784061, 33.594395, 36.182903>,  <32.340706, 33.955647, 35.869682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784061, 33.594395, 36.182903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976650, 33.879784, 35.979279>,  <33.092205, 34.051018, 35.857105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976650, 33.879784, 35.979279>,  <32.784061, 33.594395, 36.182903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976650, 33.879784, 35.979279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289576, 0.418702, 0.860717,
		0.827243, -0.561823, -0.005012,
		0.481472, 0.713473, -0.509059,
		33.121090, 34.093826, 35.826561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496521, 33.569859, 36.108288>,  <32.784061, 33.594395, 36.182903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496521, 33.569859, 36.108288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324722, 33.927197, 36.161140>,  <33.221642, 34.141602, 36.192852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324722, 33.927197, 36.161140>,  <33.496521, 33.569859, 36.108288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324722, 33.927197, 36.161140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412105, 0.063692, 0.908907,
		0.803555, 0.444828, -0.395509,
		-0.429499, 0.893348, 0.132136,
		33.195873, 34.195202, 36.200783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992306, 33.976246, 36.337139>,  <33.496521, 33.569859, 36.108288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992306, 33.976246, 36.337139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620651, 33.970188, 36.484905>,  <33.397659, 33.966553, 36.573566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620651, 33.970188, 36.484905>,  <33.992306, 33.976246, 36.337139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620651, 33.970188, 36.484905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315384, -0.553909, 0.770531,
		0.192951, 0.832439, 0.519437,
		-0.929141, -0.015148, 0.369415,
		33.341908, 33.965645, 36.595730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955982, 34.330925, 36.931072>,  <33.992306, 33.976246, 36.337139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955982, 34.330925, 36.931072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696602, 34.027397, 36.906738>,  <33.540974, 33.845280, 36.892139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696602, 34.027397, 36.906738>,  <33.955982, 34.330925, 36.931072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696602, 34.027397, 36.906738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385334, -0.396102, 0.833439,
		-0.656529, 0.517002, 0.549253,
		-0.648450, -0.758823, -0.060834,
		33.502068, 33.799751, 36.888489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348038, 34.351501, 37.454323>,  <33.955982, 34.330925, 36.931072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348038, 34.351501, 37.454323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443348, 33.974701, 37.359787>,  <33.500534, 33.748619, 37.303066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443348, 33.974701, 37.359787>,  <33.348038, 34.351501, 37.454323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443348, 33.974701, 37.359787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289326, -0.163445, 0.943174,
		-0.927100, -0.293117, 0.233600,
		0.238279, -0.942002, -0.236336,
		33.514832, 33.692101, 37.288887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074974, 33.976871, 37.999210>,  <33.348038, 34.351501, 37.454323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074974, 33.976871, 37.999210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385330, 33.786987, 37.833012>,  <33.571545, 33.673058, 37.733292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385330, 33.786987, 37.833012>,  <33.074974, 33.976871, 37.999210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385330, 33.786987, 37.833012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323859, -0.265489, 0.908092,
		-0.541392, -0.839145, -0.052251,
		0.775893, -0.474712, -0.415498,
		33.618099, 33.644573, 37.708363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167160, 33.392071, 38.326633>,  <33.074974, 33.976871, 37.999210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167160, 33.392071, 38.326633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525093, 33.417374, 38.149876>,  <33.739853, 33.432556, 38.043819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525093, 33.417374, 38.149876>,  <33.167160, 33.392071, 38.326633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525093, 33.417374, 38.149876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446264, -0.102009, 0.889068,
		0.011164, -0.992770, -0.119511,
		0.894832, 0.063259, -0.441899,
		33.793541, 33.436352, 38.017307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542969, 32.936150, 38.784241>,  <33.167160, 33.392071, 38.326633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542969, 32.936150, 38.784241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786057, 33.186874, 38.589191>,  <33.931911, 33.337311, 38.472160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786057, 33.186874, 38.589191>,  <33.542969, 32.936150, 38.784241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786057, 33.186874, 38.589191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543757, 0.119083, 0.830751,
		0.578792, -0.770017, -0.268464,
		0.607723, 0.626812, -0.487627,
		33.968372, 33.374916, 38.442902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136772, 32.717594, 38.909088>,  <33.542969, 32.936150, 38.784241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136772, 32.717594, 38.909088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209461, 33.092926, 38.791431>,  <34.253075, 33.318123, 38.720837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209461, 33.092926, 38.791431>,  <34.136772, 32.717594, 38.909088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209461, 33.092926, 38.791431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565433, 0.145021, 0.811945,
		0.804527, -0.313865, -0.504208,
		0.181721, 0.938327, -0.294143,
		34.263977, 33.374424, 38.703190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812256, 32.695858, 39.011330>,  <34.136772, 32.717594, 38.909088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812256, 32.695858, 39.011330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703278, 33.079601, 38.981937>,  <34.637890, 33.309849, 38.964302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703278, 33.079601, 38.981937>,  <34.812256, 32.695858, 39.011330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703278, 33.079601, 38.981937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567609, 0.221917, 0.792825,
		0.776913, 0.174292, -0.605003,
		-0.272444, 0.959362, -0.073480,
		34.621544, 33.367409, 38.959892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377907, 32.970890, 39.118019>,  <34.812256, 32.695858, 39.011330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377907, 32.970890, 39.118019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088192, 33.230656, 39.210686>,  <34.914364, 33.386517, 39.266285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088192, 33.230656, 39.210686>,  <35.377907, 32.970890, 39.118019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088192, 33.230656, 39.210686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332776, 0.034973, 0.942357,
		0.603881, 0.759627, -0.241441,
		-0.724284, 0.649418, 0.231666,
		34.870907, 33.425480, 39.280186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739414, 33.588009, 39.439896>,  <35.377907, 32.970890, 39.118019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739414, 33.588009, 39.439896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357929, 33.642265, 39.547256>,  <35.129040, 33.674820, 39.611675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357929, 33.642265, 39.547256>,  <35.739414, 33.588009, 39.439896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357929, 33.642265, 39.547256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290977, 0.190748, 0.937522,
		0.075966, 0.972223, -0.221386,
		-0.953709, 0.135638, 0.268404,
		35.071815, 33.682957, 39.627777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755600, 34.106949, 39.855118>,  <35.739414, 33.588009, 39.439896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755600, 34.106949, 39.855118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390724, 33.977402, 39.955532>,  <35.171799, 33.899673, 40.015781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390724, 33.977402, 39.955532>,  <35.755600, 34.106949, 39.855118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390724, 33.977402, 39.955532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225353, 0.115175, 0.967445,
		-0.342233, 0.939067, -0.032078,
		-0.912191, -0.323863, 0.251038,
		35.117065, 33.880241, 40.030842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537365, 34.531620, 40.294121>,  <35.755600, 34.106949, 39.855118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537365, 34.531620, 40.294121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316273, 34.208721, 40.376907>,  <35.183617, 34.014980, 40.426579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316273, 34.208721, 40.376907>,  <35.537365, 34.531620, 40.294121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316273, 34.208721, 40.376907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207086, 0.107510, 0.972398,
		-0.807219, 0.580335, 0.107746,
		-0.552733, -0.807250, 0.206963,
		35.150452, 33.966545, 40.438995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165386, 34.740292, 40.873672>,  <35.537365, 34.531620, 40.294121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165386, 34.740292, 40.873672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161427, 34.340611, 40.858181>,  <35.159050, 34.100803, 40.848888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161427, 34.340611, 40.858181>,  <35.165386, 34.740292, 40.873672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161427, 34.340611, 40.858181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134087, -0.039705, 0.990174,
		-0.990920, 0.004610, 0.134373,
		-0.009900, -0.999201, -0.038727,
		35.158455, 34.040852, 40.846561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772316, 34.469734, 41.367672>,  <35.165386, 34.740292, 40.873672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772316, 34.469734, 41.367672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036541, 34.177864, 41.296982>,  <35.195076, 34.002743, 41.254570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036541, 34.177864, 41.296982>,  <34.772316, 34.469734, 41.367672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036541, 34.177864, 41.296982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292334, 0.033173, 0.955741,
		-0.691519, -0.682988, 0.235222,
		0.660562, -0.729676, -0.176721,
		35.234711, 33.958961, 41.243965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864037, 34.122711, 41.940392>,  <34.772316, 34.469734, 41.367672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864037, 34.122711, 41.940392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164104, 33.940201, 41.748947>,  <35.344143, 33.830696, 41.634083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164104, 33.940201, 41.748947>,  <34.864037, 34.122711, 41.940392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164104, 33.940201, 41.748947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451303, -0.175727, 0.874898,
		-0.483298, -0.872315, 0.074094,
		0.750166, -0.456275, -0.478606,
		35.389153, 33.803318, 41.605366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002220, 33.639648, 42.337132>,  <34.864037, 34.122711, 41.940392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002220, 33.639648, 42.337132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348206, 33.697239, 42.144833>,  <35.555798, 33.731792, 42.029453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348206, 33.697239, 42.144833>,  <35.002220, 33.639648, 42.337132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348206, 33.697239, 42.144833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499837, -0.161631, 0.850904,
		0.044808, -0.976292, -0.211769,
		0.864960, 0.143977, -0.480744,
		35.607693, 33.740433, 42.000610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337673, 33.141804, 42.491859>,  <35.002220, 33.639648, 42.337132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337673, 33.141804, 42.491859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611710, 33.420685, 42.407425>,  <35.776131, 33.588013, 42.356766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611710, 33.420685, 42.407425>,  <35.337673, 33.141804, 42.491859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611710, 33.420685, 42.407425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389003, -0.105154, 0.915216,
		0.615891, -0.709123, -0.343253,
		0.685095, 0.697199, -0.211087,
		35.817238, 33.629845, 42.344097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895988, 32.869865, 42.680248>,  <35.337673, 33.141804, 42.491859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895988, 32.869865, 42.680248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005062, 33.254219, 42.699654>,  <36.070507, 33.484829, 42.711296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005062, 33.254219, 42.699654>,  <35.895988, 32.869865, 42.680248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005062, 33.254219, 42.699654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200857, -0.106164, 0.973851,
		0.940905, -0.255807, -0.221948,
		0.272681, 0.960881, 0.048510,
		36.086868, 33.542484, 42.714207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549438, 32.932705, 43.025608>,  <35.895988, 32.869865, 42.680248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549438, 32.932705, 43.025608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364727, 33.281956, 43.088108>,  <36.253899, 33.491505, 43.125607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364727, 33.281956, 43.088108>,  <36.549438, 32.932705, 43.025608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364727, 33.281956, 43.088108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258085, -0.036271, 0.965441,
		0.848616, 0.486150, -0.208590,
		-0.461783, 0.873122, 0.156248,
		36.226192, 33.543892, 43.134983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994274, 33.544846, 43.217190>,  <36.549438, 32.932705, 43.025608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994274, 33.544846, 43.217190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631123, 33.588367, 43.379135>,  <36.413231, 33.614479, 43.476303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631123, 33.588367, 43.379135>,  <36.994274, 33.544846, 43.217190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631123, 33.588367, 43.379135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414123, 0.082497, 0.906475,
		0.065226, 0.990634, -0.119955,
		-0.907881, 0.108801, 0.404864,
		36.358757, 33.621006, 43.500595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304222, 33.721378, 43.835213>,  <36.994274, 33.544846, 43.217190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304222, 33.721378, 43.835213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909180, 33.773315, 43.870502>,  <36.672153, 33.804478, 43.891678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909180, 33.773315, 43.870502>,  <37.304222, 33.721378, 43.835213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909180, 33.773315, 43.870502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099826, 0.085715, 0.991306,
		0.121151, 0.987823, -0.097614,
		-0.987602, 0.129842, 0.088226,
		36.612900, 33.812267, 43.896969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226189, 34.301510, 44.254646>,  <37.304222, 33.721378, 43.835213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226189, 34.301510, 44.254646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877426, 34.111397, 44.301781>,  <36.668167, 33.997330, 44.330063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877426, 34.111397, 44.301781>,  <37.226189, 34.301510, 44.254646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877426, 34.111397, 44.301781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029731, 0.188826, 0.981560,
		-0.488766, 0.859334, -0.150508,
		-0.871908, -0.475279, 0.117841,
		36.615852, 33.968815, 44.337132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802750, 34.701237, 44.645458>,  <37.226189, 34.301510, 44.254646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802750, 34.701237, 44.645458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633106, 34.341934, 44.691525>,  <36.531322, 34.126350, 44.719162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633106, 34.341934, 44.691525>,  <36.802750, 34.701237, 44.645458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633106, 34.341934, 44.691525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055325, 0.152626, 0.986734,
		-0.903921, 0.412109, -0.114426,
		-0.424107, -0.898260, 0.115162,
		36.505875, 34.072456, 44.726074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219185, 34.726295, 45.012932>,  <36.802750, 34.701237, 44.645458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219185, 34.726295, 45.012932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346531, 34.352680, 45.077694>,  <36.422939, 34.128510, 45.116550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346531, 34.352680, 45.077694>,  <36.219185, 34.726295, 45.012932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346531, 34.352680, 45.077694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095971, 0.138160, 0.985749,
		-0.943097, -0.329368, -0.045655,
		0.318367, -0.934039, 0.161908,
		36.442039, 34.072468, 45.126266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879570, 34.520279, 45.610241>,  <36.219185, 34.726295, 45.012932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879570, 34.520279, 45.610241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170525, 34.246712, 45.587757>,  <36.345097, 34.082573, 45.574268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170525, 34.246712, 45.587757>,  <35.879570, 34.520279, 45.610241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170525, 34.246712, 45.587757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031308, -0.114900, 0.992884,
		-0.685511, -0.720453, -0.104989,
		0.727389, -0.683919, -0.056209,
		36.388741, 34.041534, 45.570896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599380, 33.797771, 45.893147>,  <35.879570, 34.520279, 45.610241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599380, 33.797771, 45.893147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999332, 33.791843, 45.891685>,  <36.239304, 33.788288, 45.890808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999332, 33.791843, 45.891685>,  <35.599380, 33.797771, 45.893147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999332, 33.791843, 45.891685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003430, -0.014874, 0.999884,
		-0.014874, -0.999780, -0.014821,
		-0.999884, 0.014821, 0.003650,
		36.299297, 33.787395, 45.890591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841122, 33.301022, 46.398697>,  <35.599380, 33.797771, 45.893147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841122, 33.301022, 46.398697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189941, 33.488365, 46.341888>,  <36.399231, 33.600773, 46.307804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189941, 33.488365, 46.341888>,  <35.841122, 33.301022, 46.398697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189941, 33.488365, 46.341888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257179, -0.191622, 0.947174,
		0.416406, -0.862506, -0.287556,
		0.872046, 0.468363, -0.142026,
		36.451557, 33.628876, 46.299282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361584, 32.874016, 46.651558>,  <35.841122, 33.301022, 46.398697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361584, 32.874016, 46.651558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497932, 33.249981, 46.659222>,  <36.579742, 33.475559, 46.663818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497932, 33.249981, 46.659222>,  <36.361584, 32.874016, 46.651558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497932, 33.249981, 46.659222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331015, -0.139073, 0.933321,
		0.879905, -0.311805, -0.358532,
		0.340876, 0.939913, 0.019159,
		36.600197, 33.531956, 46.664970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929832, 32.810623, 47.002487>,  <36.361584, 32.874016, 46.651558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929832, 32.810623, 47.002487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880703, 33.207413, 47.014484>,  <36.851227, 33.445488, 47.021683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880703, 33.207413, 47.014484>,  <36.929832, 32.810623, 47.002487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880703, 33.207413, 47.014484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460839, 0.030237, 0.886968,
		0.878944, 0.122762, -0.460855,
		-0.122821, 0.991975, 0.029997,
		36.843857, 33.505005, 47.023483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535885, 33.006039, 47.245399>,  <36.929832, 32.810623, 47.002487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535885, 33.006039, 47.245399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306030, 33.326717, 47.311207>,  <37.168118, 33.519127, 47.350693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306030, 33.326717, 47.311207>,  <37.535885, 33.006039, 47.245399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306030, 33.326717, 47.311207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473476, 0.161693, 0.865838,
		0.667540, 0.575442, -0.472501,
		-0.574640, 0.801699, 0.164522,
		37.133636, 33.567226, 47.360565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890987, 33.573990, 47.464237>,  <37.535885, 33.006039, 47.245399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890987, 33.573990, 47.464237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534039, 33.631493, 47.635349>,  <37.319870, 33.665993, 47.738018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534039, 33.631493, 47.635349>,  <37.890987, 33.573990, 47.464237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534039, 33.631493, 47.635349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445976, 0.425974, 0.787180,
		-0.069064, 0.893242, -0.444240,
		-0.892376, 0.143755, 0.427784,
		37.266327, 33.674618, 47.763683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058086, 34.048988, 47.982155>,  <37.890987, 33.573990, 47.464237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058086, 34.048988, 47.982155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714302, 33.879513, 48.096577>,  <37.508034, 33.777828, 48.165230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714302, 33.879513, 48.096577>,  <38.058086, 34.048988, 47.982155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714302, 33.879513, 48.096577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256747, 0.126120, 0.958214,
		-0.442058, 0.896986, 0.000386,
		-0.859457, -0.423685, 0.286051,
		37.456467, 33.752407, 48.182392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697174, 34.539322, 48.544102>,  <38.058086, 34.048988, 47.982155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697174, 34.539322, 48.544102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561710, 34.164192, 48.574577>,  <37.480434, 33.939114, 48.592861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561710, 34.164192, 48.574577>,  <37.697174, 34.539322, 48.544102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561710, 34.164192, 48.574577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184965, 0.013039, 0.982659,
		-0.922551, 0.346876, 0.169048,
		-0.338657, -0.937820, 0.076189,
		37.460114, 33.882847, 48.597435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234493, 34.535366, 49.148159>,  <37.697174, 34.539322, 48.544102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234493, 34.535366, 49.148159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335632, 34.155365, 49.074890>,  <37.396317, 33.927364, 49.030930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335632, 34.155365, 49.074890>,  <37.234493, 34.535366, 49.148159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335632, 34.155365, 49.074890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223485, -0.126856, 0.966417,
		-0.941340, -0.285296, 0.180236,
		0.252851, -0.950007, -0.183174,
		37.411488, 33.870361, 49.019939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105602, 34.174664, 49.621319>,  <37.234493, 34.535366, 49.148159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105602, 34.174664, 49.621319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367905, 33.914658, 49.467709>,  <37.525284, 33.758656, 49.375542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367905, 33.914658, 49.467709>,  <37.105602, 34.174664, 49.621319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367905, 33.914658, 49.467709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324344, -0.216775, 0.920766,
		-0.681755, -0.728350, 0.068676,
		0.655753, -0.650011, -0.384023,
		37.564632, 33.719654, 49.352501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056305, 33.552212, 50.036621>,  <37.105602, 34.174664, 49.621319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056305, 33.552212, 50.036621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408455, 33.556938, 49.846966>,  <37.619743, 33.559772, 49.733173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408455, 33.556938, 49.846966>,  <37.056305, 33.552212, 50.036621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408455, 33.556938, 49.846966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454437, -0.307196, 0.836133,
		-0.135774, -0.951573, -0.275816,
		0.880371, 0.011816, -0.474139,
		37.672565, 33.560482, 49.704723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341446, 33.008026, 50.284565>,  <37.056305, 33.552212, 50.036621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341446, 33.008026, 50.284565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646561, 33.198509, 50.109573>,  <37.829628, 33.312798, 50.004578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646561, 33.198509, 50.109573>,  <37.341446, 33.008026, 50.284565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646561, 33.198509, 50.109573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586038, -0.223106, 0.778963,
		0.273344, -0.850559, -0.449257,
		0.762786, 0.476206, -0.437475,
		37.875397, 33.341370, 49.978333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818447, 32.579441, 50.219025>,  <37.341446, 33.008026, 50.284565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818447, 32.579441, 50.219025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014107, 32.928112, 50.206913>,  <38.131504, 33.137314, 50.199646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014107, 32.928112, 50.206913>,  <37.818447, 32.579441, 50.219025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014107, 32.928112, 50.206913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515733, -0.261062, 0.816006,
		0.703386, -0.414765, -0.577250,
		0.489149, 0.871674, -0.030281,
		38.160851, 33.189613, 50.197830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514256, 32.361526, 50.429779>,  <37.818447, 32.579441, 50.219025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514256, 32.361526, 50.429779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484665, 32.752800, 50.507423>,  <38.466911, 32.987564, 50.554012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484665, 32.752800, 50.507423>,  <38.514256, 32.361526, 50.429779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484665, 32.752800, 50.507423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355581, -0.155984, 0.921537,
		0.931714, 0.137192, -0.336286,
		-0.073973, 0.978186, 0.194115,
		38.462475, 33.046257, 50.565659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186371, 32.598995, 50.507198>,  <38.514256, 32.361526, 50.429779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186371, 32.598995, 50.507198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928078, 32.837646, 50.697803>,  <38.773102, 32.980839, 50.812164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928078, 32.837646, 50.697803>,  <39.186371, 32.598995, 50.507198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928078, 32.837646, 50.697803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426635, -0.235640, 0.873187,
		0.633254, 0.767142, -0.102382,
		-0.645733, 0.596629, 0.476510,
		38.734356, 33.016636, 50.840755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598106, 32.927197, 50.976929>,  <39.186371, 32.598995, 50.507198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598106, 32.927197, 50.976929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226837, 32.993393, 51.110256>,  <39.004074, 33.033112, 51.190254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226837, 32.993393, 51.110256>,  <39.598106, 32.927197, 50.976929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226837, 32.993393, 51.110256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274818, -0.299115, 0.913786,
		0.250927, 0.939756, 0.232150,
		-0.928176, 0.165494, 0.333318,
		38.948383, 33.043041, 51.210251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652145, 33.251881, 51.602005>,  <39.598106, 32.927197, 50.976929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652145, 33.251881, 51.602005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279816, 33.107914, 51.627388>,  <39.056419, 33.021534, 51.642620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279816, 33.107914, 51.627388>,  <39.652145, 33.251881, 51.602005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279816, 33.107914, 51.627388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229664, -0.440972, 0.867639,
		-0.284297, 0.822192, 0.493128,
		-0.930822, -0.359921, 0.063461,
		39.000568, 32.999939, 51.646427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402603, 33.345680, 52.301472>,  <39.652145, 33.251881, 51.602005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402603, 33.345680, 52.301472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189938, 33.040844, 52.153664>,  <39.062336, 32.857941, 52.064980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189938, 33.040844, 52.153664>,  <39.402603, 33.345680, 52.301472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189938, 33.040844, 52.153664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227592, -0.548801, 0.804375,
		-0.815801, 0.343560, 0.465226,
		-0.531668, -0.762091, -0.369521,
		39.030437, 32.812218, 52.042809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868996, 33.182686, 52.866032>,  <39.402603, 33.345680, 52.301472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868996, 33.182686, 52.866032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945328, 32.869175, 52.629631>,  <38.991127, 32.681068, 52.487789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945328, 32.869175, 52.629631>,  <38.868996, 33.182686, 52.866032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945328, 32.869175, 52.629631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131867, -0.576141, 0.806643,
		-0.972726, -0.231862, -0.006589,
		0.190826, -0.783774, -0.591002,
		39.002575, 32.634041, 52.452332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595654, 32.539070, 53.206482>,  <38.868996, 33.182686, 52.866032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595654, 32.539070, 53.206482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829617, 32.390926, 52.917839>,  <38.969994, 32.302040, 52.744652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829617, 32.390926, 52.917839>,  <38.595654, 32.539070, 53.206482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829617, 32.390926, 52.917839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224501, -0.780987, 0.582802,
		-0.779377, -0.502910, -0.373703,
		0.584954, -0.370326, -0.721587,
		39.005089, 32.279819, 52.701359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012844, 32.574928, 52.679390>,  <38.595654, 32.539070, 53.206482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012844, 32.574928, 52.679390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844559, 32.935349, 52.637215>,  <37.743587, 33.151600, 52.611908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844559, 32.935349, 52.637215>,  <38.012844, 32.574928, 52.679390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844559, 32.935349, 52.637215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543295, 0.157167, -0.824700,
		-0.726520, -0.404246, -0.555656,
		-0.420712, 0.901046, -0.105440,
		37.718346, 33.205662, 52.605583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225941, 31.893875, 53.055283>,  <38.012844, 32.574928, 52.679390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225941, 31.893875, 53.055283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304058, 31.618216, 53.334404>,  <38.350929, 31.452820, 53.501877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304058, 31.618216, 53.334404>,  <38.225941, 31.893875, 53.055283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304058, 31.618216, 53.334404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753481, -0.350017, -0.556556,
		0.627795, 0.634475, 0.450905,
		0.195296, -0.689151, 0.697804,
		38.362648, 31.411470, 53.543747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950085, 31.860664, 53.156326>,  <38.225941, 31.893875, 53.055283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950085, 31.860664, 53.156326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855812, 31.507086, 53.317863>,  <38.799248, 31.294939, 53.414787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855812, 31.507086, 53.317863>,  <38.950085, 31.860664, 53.156326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855812, 31.507086, 53.317863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775630, -0.421462, -0.469859,
		0.585537, 0.202498, 0.784947,
		-0.235680, -0.883948, 0.403845,
		38.785107, 31.241901, 53.439018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543682, 31.639164, 53.377445>,  <38.950085, 31.860664, 53.156326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543682, 31.639164, 53.377445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316257, 31.316729, 53.311764>,  <39.179802, 31.123268, 53.272354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316257, 31.316729, 53.311764>,  <39.543682, 31.639164, 53.377445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316257, 31.316729, 53.311764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762682, -0.441703, -0.472456,
		0.308310, -0.393857, 0.865922,
		-0.568560, -0.806086, -0.164207,
		39.145691, 31.074903, 53.262501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101040, 31.171652, 53.563274>,  <39.543682, 31.639164, 53.377445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101040, 31.171652, 53.563274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783730, 31.015133, 53.376686>,  <39.593342, 30.921221, 53.264732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783730, 31.015133, 53.376686>,  <40.101040, 31.171652, 53.563274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783730, 31.015133, 53.376686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601723, -0.386884, -0.698749,
		0.092947, -0.834989, 0.542359,
		-0.793278, -0.391297, -0.466473,
		39.545746, 30.897743, 53.236744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354584, 30.820518, 53.057484>,  <40.101040, 31.171652, 53.563274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354584, 30.820518, 53.057484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980545, 30.721382, 52.956161>,  <39.756123, 30.661900, 52.895367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980545, 30.721382, 52.956161>,  <40.354584, 30.820518, 53.057484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980545, 30.721382, 52.956161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317943, -0.270997, -0.908556,
		0.156534, -0.930126, 0.332209,
		-0.935099, -0.247843, -0.253307,
		39.700016, 30.647030, 52.880169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428783, 30.294024, 52.567345>,  <40.354584, 30.820518, 53.057484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428783, 30.294024, 52.567345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038578, 30.364052, 52.514088>,  <39.804455, 30.406069, 52.482136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038578, 30.364052, 52.514088>,  <40.428783, 30.294024, 52.567345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038578, 30.364052, 52.514088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117050, -0.099262, -0.988153,
		-0.186215, -0.979539, 0.076339,
		-0.975512, 0.175074, -0.133139,
		39.745926, 30.416573, 52.474148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264118, 29.868919, 52.063232>,  <40.428783, 30.294024, 52.567345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264118, 29.868919, 52.063232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025612, 30.189636, 52.047207>,  <39.882507, 30.382067, 52.037594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025612, 30.189636, 52.047207>,  <40.264118, 29.868919, 52.063232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025612, 30.189636, 52.047207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131027, 0.047965, -0.990218,
		-0.792025, -0.595678, -0.133656,
		-0.596262, 0.801790, -0.040061,
		39.846733, 30.430174, 52.035191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465286, 29.851543, 51.468166>,  <40.264118, 29.868919, 52.063232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465286, 29.851543, 51.468166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070751, 29.916550, 51.478943>,  <39.834030, 29.955553, 51.485409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070751, 29.916550, 51.478943>,  <40.465286, 29.851543, 51.468166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070751, 29.916550, 51.478943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094011, 0.689602, -0.718061,
		-0.135272, -0.705719, -0.695459,
		-0.986338, 0.162514, 0.026938,
		39.774849, 29.965303, 51.487022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206463, 29.827410, 50.823399>,  <40.465286, 29.851543, 51.468166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206463, 29.827410, 50.823399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938595, 30.040531, 51.030342>,  <39.777874, 30.168404, 51.154510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938595, 30.040531, 51.030342>,  <40.206463, 29.827410, 50.823399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938595, 30.040531, 51.030342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007380, 0.691827, -0.722026,
		-0.742622, -0.487337, -0.459364,
		-0.669670, 0.532802, 0.517362,
		39.737694, 30.200373, 51.185551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587074, 29.888998, 50.473209>,  <40.206463, 29.827410, 50.823399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587074, 29.888998, 50.473209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.692348, 30.200220, 50.701370>,  <39.755512, 30.386953, 50.838268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.692348, 30.200220, 50.701370>,  <39.587074, 29.888998, 50.473209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692348, 30.200220, 50.701370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010238, 0.588965, -0.808094,
		-0.964690, 0.218520, 0.147043,
		0.263188, 0.778055, 0.570405,
		39.771305, 30.433636, 50.872494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099113, 30.481339, 50.381474>,  <39.587074, 29.888998, 50.473209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099113, 30.481339, 50.381474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436481, 30.640802, 50.525536>,  <39.638901, 30.736481, 50.611973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436481, 30.640802, 50.525536>,  <39.099113, 30.481339, 50.381474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436481, 30.640802, 50.525536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101397, 0.540196, -0.835408,
		-0.527598, 0.741119, 0.415190,
		0.843421, 0.398660, 0.360154,
		39.689507, 30.760401, 50.633583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000206, 31.228092, 50.354298>,  <39.099113, 30.481339, 50.381474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000206, 31.228092, 50.354298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390442, 31.141907, 50.371262>,  <39.624584, 31.090195, 50.381439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390442, 31.141907, 50.371262>,  <39.000206, 31.228092, 50.354298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390442, 31.141907, 50.371262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162641, 0.579173, -0.798816,
		0.147551, 0.786215, 0.600079,
		0.975590, -0.215463, 0.042413,
		39.683121, 31.077269, 50.383984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249077, 31.900202, 50.311703>,  <39.000206, 31.228092, 50.354298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249077, 31.900202, 50.311703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529613, 31.631529, 50.216232>,  <39.697933, 31.470325, 50.158951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529613, 31.631529, 50.216232>,  <39.249077, 31.900202, 50.311703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529613, 31.631529, 50.216232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140606, 0.458600, -0.877448,
		0.698823, 0.581831, 0.416077,
		0.701339, -0.671684, -0.238671,
		39.740017, 31.430023, 50.144630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829445, 32.243786, 49.967705>,  <39.249077, 31.900202, 50.311703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829445, 32.243786, 49.967705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844612, 31.856804, 49.867630>,  <39.853710, 31.624615, 49.807587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844612, 31.856804, 49.867630>,  <39.829445, 32.243786, 49.967705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844612, 31.856804, 49.867630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025004, 0.251207, -0.967610,
		0.998968, 0.030432, 0.033715,
		0.037916, -0.967455, -0.250186,
		39.855988, 31.566566, 49.792576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115868, 32.314800, 49.309311>,  <39.829445, 32.243786, 49.967705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115868, 32.314800, 49.309311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026413, 31.925175, 49.323112>,  <39.972740, 31.691401, 49.331394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026413, 31.925175, 49.323112>,  <40.115868, 32.314800, 49.309311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026413, 31.925175, 49.323112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006815, -0.033842, -0.999404,
		0.974650, -0.223734, 0.000930,
		-0.223633, -0.974062, 0.034509,
		39.959324, 31.632956, 49.333466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585388, 31.987000, 48.824703>,  <40.115868, 32.314800, 49.309311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585388, 31.987000, 48.824703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309074, 31.699238, 48.853756>,  <40.143288, 31.526581, 48.871185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309074, 31.699238, 48.853756>,  <40.585388, 31.987000, 48.824703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309074, 31.699238, 48.853756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148278, 0.042632, -0.988027,
		0.707694, -0.693283, -0.136121,
		-0.690785, -0.719404, 0.072628,
		40.101837, 31.483418, 48.875546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749527, 31.401962, 48.324608>,  <40.585388, 31.987000, 48.824703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749527, 31.401962, 48.324608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358982, 31.386408, 48.409653>,  <40.124657, 31.377075, 48.460678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358982, 31.386408, 48.409653>,  <40.749527, 31.401962, 48.324608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358982, 31.386408, 48.409653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215566, 0.103682, -0.970969,
		0.015712, -0.993850, -0.109614,
		-0.976363, -0.038885, 0.212611,
		40.066074, 31.374743, 48.473434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500622, 30.877436, 47.892635>,  <40.749527, 31.401962, 48.324608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500622, 30.877436, 47.892635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174671, 31.081852, 48.002048>,  <39.979103, 31.204502, 48.067696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174671, 31.081852, 48.002048>,  <40.500622, 30.877436, 47.892635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174671, 31.081852, 48.002048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321043, -0.005013, -0.947052,
		-0.482610, -0.859543, 0.168151,
		-0.814874, 0.511040, 0.273531,
		39.930210, 31.235165, 48.084106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900623, 30.441502, 47.746342>,  <40.500622, 30.877436, 47.892635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900623, 30.441502, 47.746342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801102, 30.828569, 47.729797>,  <39.741386, 31.060810, 47.719872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801102, 30.828569, 47.729797>,  <39.900623, 30.441502, 47.746342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801102, 30.828569, 47.729797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459718, -0.155574, -0.874332,
		-0.852499, -0.198526, 0.483563,
		-0.248808, 0.967669, -0.041361,
		39.726460, 31.118870, 47.717388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453625, 30.418678, 47.209927>,  <39.900623, 30.441502, 47.746342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453625, 30.418678, 47.209927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.442165, 30.811716, 47.283340>,  <39.435291, 31.047539, 47.327389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.442165, 30.811716, 47.283340>,  <39.453625, 30.418678, 47.209927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442165, 30.811716, 47.283340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478422, 0.147739, -0.865613,
		-0.877663, -0.112606, 0.465863,
		-0.028647, 0.982595, 0.183538,
		39.433571, 31.106495, 47.338402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756985, 30.654055, 46.962143>,  <39.453625, 30.418678, 47.209927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756985, 30.654055, 46.962143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981895, 30.984577, 46.975208>,  <39.116840, 31.182890, 46.983047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981895, 30.984577, 46.975208>,  <38.756985, 30.654055, 46.962143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981895, 30.984577, 46.975208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483042, 0.360238, -0.798060,
		-0.671205, 0.432954, 0.601693,
		0.562276, 0.826305, 0.032659,
		39.150578, 31.232468, 46.985004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359142, 31.238621, 46.989391>,  <38.756985, 30.654055, 46.962143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359142, 31.238621, 46.989391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715061, 31.360226, 46.853256>,  <38.928612, 31.433189, 46.771576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715061, 31.360226, 46.853256>,  <38.359142, 31.238621, 46.989391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715061, 31.360226, 46.853256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435543, 0.343130, -0.832204,
		-0.136220, 0.888729, 0.437727,
		0.889801, 0.304012, -0.340339,
		38.982002, 31.451429, 46.751156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256168, 31.946220, 46.846020>,  <38.359142, 31.238621, 46.989391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256168, 31.946220, 46.846020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550144, 31.814980, 46.608631>,  <38.726532, 31.736235, 46.466198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550144, 31.814980, 46.608631>,  <38.256168, 31.946220, 46.846020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550144, 31.814980, 46.608631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445782, 0.425742, -0.787414,
		0.511018, 0.843264, 0.166635,
		0.734941, -0.328100, -0.593474,
		38.770626, 31.716549, 46.430588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327629, 32.406002, 46.228741>,  <38.256168, 31.946220, 46.846020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327629, 32.406002, 46.228741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515045, 32.076324, 46.101513>,  <38.627495, 31.878517, 46.025177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515045, 32.076324, 46.101513>,  <38.327629, 32.406002, 46.228741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515045, 32.076324, 46.101513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417392, 0.110789, -0.901948,
		0.778621, 0.555359, -0.292104,
		0.468543, -0.824198, -0.318065,
		38.655609, 31.829065, 46.006092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549244, 32.658375, 45.598221>,  <38.327629, 32.406002, 46.228741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549244, 32.658375, 45.598221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593601, 32.260952, 45.588795>,  <38.620216, 32.022499, 45.583138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593601, 32.260952, 45.588795>,  <38.549244, 32.658375, 45.598221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593601, 32.260952, 45.588795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316360, -0.012812, -0.948553,
		0.942136, 0.112639, -0.315742,
		0.110889, -0.993554, -0.023564,
		38.626869, 31.962887, 45.581726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910934, 32.522289, 44.993919>,  <38.549244, 32.658375, 45.598221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910934, 32.522289, 44.993919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704899, 32.186150, 45.061440>,  <38.581276, 31.984465, 45.101952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704899, 32.186150, 45.061440>,  <38.910934, 32.522289, 44.993919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704899, 32.186150, 45.061440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297350, -0.009512, -0.954721,
		0.803906, -0.541959, -0.244979,
		-0.515089, -0.840351, 0.168799,
		38.550373, 31.934044, 45.112080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001347, 32.099991, 44.427017>,  <38.910934, 32.522289, 44.993919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001347, 32.099991, 44.427017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677753, 31.935146, 44.594688>,  <38.483597, 31.836239, 44.695290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677753, 31.935146, 44.594688>,  <39.001347, 32.099991, 44.427017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677753, 31.935146, 44.594688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271969, -0.369777, -0.888425,
		0.521133, -0.832724, 0.187062,
		-0.808983, -0.412112, 0.419177,
		38.435059, 31.811512, 44.720440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906647, 31.425966, 44.161953>,  <39.001347, 32.099991, 44.427017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906647, 31.425966, 44.161953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541454, 31.474705, 44.317703>,  <38.322338, 31.503948, 44.411152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541454, 31.474705, 44.317703>,  <38.906647, 31.425966, 44.161953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541454, 31.474705, 44.317703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405961, -0.366504, -0.837180,
		0.040701, -0.922403, 0.384078,
		-0.912983, 0.121847, 0.389377,
		38.267559, 31.511259, 44.434517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409359, 30.836412, 43.955143>,  <38.906647, 31.425966, 44.161953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409359, 30.836412, 43.955143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174759, 31.149256, 44.039352>,  <38.033997, 31.336962, 44.089878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174759, 31.149256, 44.039352>,  <38.409359, 30.836412, 43.955143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174759, 31.149256, 44.039352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664524, -0.316060, -0.677136,
		-0.463056, -0.537041, 0.705100,
		-0.586504, 0.782108, 0.210524,
		37.998806, 31.383888, 44.102509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791359, 30.553556, 43.999920>,  <38.409359, 30.836412, 43.955143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791359, 30.553556, 43.999920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710125, 30.939774, 43.934826>,  <37.661385, 31.171505, 43.895771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710125, 30.939774, 43.934826>,  <37.791359, 30.553556, 43.999920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710125, 30.939774, 43.934826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574577, -0.252085, -0.778662,
		-0.792856, -0.064628, 0.605973,
		-0.203080, 0.965545, -0.162733,
		37.649200, 31.229437, 43.886005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063610, 30.549662, 43.919827>,  <37.791359, 30.553556, 43.999920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063610, 30.549662, 43.919827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.240891, 30.858318, 43.737339>,  <37.347260, 31.043512, 43.627846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.240891, 30.858318, 43.737339>,  <37.063610, 30.549662, 43.919827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240891, 30.858318, 43.737339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674188, -0.048490, -0.736966,
		-0.590796, 0.634207, 0.498740,
		0.443205, 0.771641, -0.456223,
		37.373852, 31.089811, 43.600471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490173, 30.974983, 43.662586>,  <37.063610, 30.549662, 43.919827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490173, 30.974983, 43.662586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813511, 31.074427, 43.449131>,  <37.007515, 31.134092, 43.321056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813511, 31.074427, 43.449131>,  <36.490173, 30.974983, 43.662586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813511, 31.074427, 43.449131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571831, 0.116099, -0.812115,
		-0.139943, 0.961621, 0.236009,
		0.808347, 0.248607, -0.533638,
		37.056015, 31.149008, 43.289040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182697, 31.404100, 43.084778>,  <36.490173, 30.974983, 43.662586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182697, 31.404100, 43.084778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546162, 31.310532, 42.946434>,  <36.764240, 31.254391, 42.863430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546162, 31.310532, 42.946434>,  <36.182697, 31.404100, 43.084778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546162, 31.310532, 42.946434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355798, -0.000327, -0.934563,
		0.218501, 0.972256, -0.083526,
		0.908661, -0.233921, -0.345856,
		36.818760, 31.240355, 42.842678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274437, 31.852747, 42.441059>,  <36.182697, 31.404100, 43.084778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274437, 31.852747, 42.441059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524513, 31.541079, 42.423046>,  <36.674561, 31.354078, 42.412239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524513, 31.541079, 42.423046>,  <36.274437, 31.852747, 42.441059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524513, 31.541079, 42.423046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293767, -0.181479, -0.938492,
		0.723072, 0.599968, -0.342354,
		0.625195, -0.779169, -0.045028,
		36.712070, 31.307327, 42.409538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791687, 31.921059, 41.836830>,  <36.274437, 31.852747, 42.441059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791687, 31.921059, 41.836830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727997, 31.536013, 41.924480>,  <36.689781, 31.304985, 41.977070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727997, 31.536013, 41.924480>,  <36.791687, 31.921059, 41.836830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727997, 31.536013, 41.924480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223236, -0.181106, -0.957793,
		0.961672, -0.201426, -0.186053,
		-0.159229, -0.962615, 0.219130,
		36.680229, 31.247229, 41.990219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952080, 31.627869, 41.206467>,  <36.791687, 31.921059, 41.836830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952080, 31.627869, 41.206467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797852, 31.327175, 41.420467>,  <36.705315, 31.146759, 41.548866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797852, 31.327175, 41.420467>,  <36.952080, 31.627869, 41.206467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797852, 31.327175, 41.420467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361322, -0.410511, -0.837214,
		0.848988, -0.516114, -0.113337,
		-0.385572, -0.751736, 0.535003,
		36.682178, 31.101654, 41.580967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188805, 31.010658, 40.847534>,  <36.952080, 31.627869, 41.206467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188805, 31.010658, 40.847534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872074, 30.915159, 41.072392>,  <36.682034, 30.857861, 41.207306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872074, 30.915159, 41.072392>,  <37.188805, 31.010658, 40.847534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872074, 30.915159, 41.072392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375135, -0.536212, -0.756142,
		0.481956, -0.809615, 0.335026,
		-0.791829, -0.238747, 0.562145,
		36.634525, 30.843534, 41.241035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999451, 30.372507, 40.606342>,  <37.188805, 31.010658, 40.847534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999451, 30.372507, 40.606342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667198, 30.479292, 40.801804>,  <36.467846, 30.543362, 40.919083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667198, 30.479292, 40.801804>,  <36.999451, 30.372507, 40.606342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667198, 30.479292, 40.801804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556708, -0.416113, -0.718976,
		0.011399, -0.869243, 0.494254,
		-0.830630, 0.266959, 0.488658,
		36.418011, 30.559380, 40.948402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604576, 29.776068, 40.609871>,  <36.999451, 30.372507, 40.606342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604576, 29.776068, 40.609871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370209, 30.094398, 40.670998>,  <36.229588, 30.285397, 40.707676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370209, 30.094398, 40.670998>,  <36.604576, 29.776068, 40.609871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370209, 30.094398, 40.670998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498557, -0.205334, -0.842187,
		-0.638857, -0.569645, 0.517075,
		-0.585921, 0.795828, 0.152821,
		36.194431, 30.333147, 40.716843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005772, 29.580194, 40.257328>,  <36.604576, 29.776068, 40.609871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005772, 29.580194, 40.257328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966137, 29.973564, 40.318062>,  <35.942356, 30.209587, 40.354504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966137, 29.973564, 40.318062>,  <36.005772, 29.580194, 40.257328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966137, 29.973564, 40.318062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399601, 0.100418, -0.911172,
		-0.911318, -0.150961, 0.383028,
		-0.099089, 0.983426, 0.151837,
		35.936409, 30.268593, 40.363613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349480, 29.697847, 40.134224>,  <36.005772, 29.580194, 40.257328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349480, 29.697847, 40.134224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568768, 30.026728, 40.072979>,  <35.700340, 30.224056, 40.036232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568768, 30.026728, 40.072979>,  <35.349480, 29.697847, 40.134224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568768, 30.026728, 40.072979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322914, 0.039208, -0.945616,
		-0.771482, 0.567846, 0.286995,
		0.548217, 0.822200, -0.153117,
		35.733234, 30.273388, 40.027042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786129, 30.142212, 40.015125>,  <35.349480, 29.697847, 40.134224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786129, 30.142212, 40.015125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109753, 30.333004, 39.877769>,  <35.303925, 30.447479, 39.795357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109753, 30.333004, 39.877769>,  <34.786129, 30.142212, 40.015125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109753, 30.333004, 39.877769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474017, 0.184133, -0.861048,
		-0.347473, 0.859410, 0.375070,
		0.809055, 0.476980, -0.343394,
		35.352470, 30.476099, 39.774750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521828, 30.735598, 39.719109>,  <34.786129, 30.142212, 40.015125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521828, 30.735598, 39.719109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881554, 30.692482, 39.549583>,  <35.097389, 30.666613, 39.447868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881554, 30.692482, 39.549583>,  <34.521828, 30.735598, 39.719109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881554, 30.692482, 39.549583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366879, 0.341451, -0.865338,
		0.237987, 0.933698, 0.267525,
		0.899312, -0.107790, -0.423815,
		35.151348, 30.660145, 39.422440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607090, 31.353172, 39.336475>,  <34.521828, 30.735598, 39.719109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607090, 31.353172, 39.336475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837387, 31.080353, 39.156109>,  <34.975563, 30.916660, 39.047890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837387, 31.080353, 39.156109>,  <34.607090, 31.353172, 39.336475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837387, 31.080353, 39.156109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322573, 0.317285, -0.891783,
		0.751312, 0.658891, -0.037337,
		0.575741, -0.682051, -0.450920,
		35.010109, 30.875738, 39.020832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101944, 31.721432, 38.737457>,  <34.607090, 31.353172, 39.336475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101944, 31.721432, 38.737457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081589, 31.331141, 38.652264>,  <35.069378, 31.096966, 38.601147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081589, 31.331141, 38.652264>,  <35.101944, 31.721432, 38.737457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081589, 31.331141, 38.652264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260185, 0.218845, -0.940431,
		0.964217, 0.007561, -0.265006,
		-0.050884, -0.975730, -0.212981,
		35.066322, 31.038422, 38.588367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565098, 31.555462, 38.119976>,  <35.101944, 31.721432, 38.737457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565098, 31.555462, 38.119976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288696, 31.267683, 38.148006>,  <35.122856, 31.095016, 38.164825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288696, 31.267683, 38.148006>,  <35.565098, 31.555462, 38.119976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288696, 31.267683, 38.148006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286510, 0.183597, -0.940321,
		0.663647, -0.669841, -0.332995,
		-0.691003, -0.719448, 0.070073,
		35.081394, 31.051849, 38.169029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764145, 31.097391, 37.456554>,  <35.565098, 31.555462, 38.119976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764145, 31.097391, 37.456554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400246, 30.988213, 37.581688>,  <35.181908, 30.922707, 37.656769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400246, 30.988213, 37.581688>,  <35.764145, 31.097391, 37.456554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400246, 30.988213, 37.581688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347647, 0.088930, -0.933399,
		0.226948, -0.957910, -0.175793,
		-0.909745, -0.272947, 0.312832,
		35.127323, 30.906328, 37.675537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470554, 30.481302, 37.017212>,  <35.764145, 31.097391, 37.456554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470554, 30.481302, 37.017212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166458, 30.686750, 37.176319>,  <34.984001, 30.810020, 37.271786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166458, 30.686750, 37.176319>,  <35.470554, 30.481302, 37.017212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166458, 30.686750, 37.176319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366968, 0.165717, -0.915354,
		-0.536064, -0.841861, 0.062497,
		-0.760244, 0.513622, 0.397771,
		34.938385, 30.840837, 37.295650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115395, 30.493155, 36.705864>,  <35.470554, 30.481302, 37.017212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115395, 30.493155, 36.705864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479980, 30.560114, 36.555550>,  <36.698730, 30.600288, 36.465359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479980, 30.560114, 36.555550>,  <36.115395, 30.493155, 36.705864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479980, 30.560114, 36.555550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315064, 0.303324, 0.899294,
		0.264519, -0.938070, 0.223730,
		0.911463, 0.167391, -0.375787,
		36.753418, 30.610332, 36.442814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620384, 30.133982, 37.049088>,  <36.115395, 30.493155, 36.705864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620384, 30.133982, 37.049088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811806, 30.457747, 36.912949>,  <36.926659, 30.652006, 36.831264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811806, 30.457747, 36.912949>,  <36.620384, 30.133982, 37.049088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811806, 30.457747, 36.912949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324278, 0.197296, 0.925158,
		0.815985, -0.553105, -0.168059,
		0.478552, 0.809413, -0.340350,
		36.955372, 30.700571, 36.810844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350128, 30.021814, 37.178020>,  <36.620384, 30.133982, 37.049088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350128, 30.021814, 37.178020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337547, 30.417603, 37.121506>,  <37.329998, 30.655075, 37.087597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337547, 30.417603, 37.121506>,  <37.350128, 30.021814, 37.178020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337547, 30.417603, 37.121506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703985, 0.122269, 0.699610,
		0.709518, -0.077459, -0.700417,
		-0.031449, 0.989470, -0.141282,
		37.328114, 30.714443, 37.079121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007111, 30.194889, 36.954140>,  <37.350128, 30.021814, 37.178020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007111, 30.194889, 36.954140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854160, 30.526896, 37.116554>,  <37.762390, 30.726099, 37.214001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854160, 30.526896, 37.116554>,  <38.007111, 30.194889, 36.954140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854160, 30.526896, 37.116554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673132, -0.050808, 0.737775,
		0.632994, 0.555421, -0.539283,
		-0.382376, 0.830016, 0.406032,
		37.739449, 30.775900, 37.238365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581642, 30.576956, 37.326946>,  <38.007111, 30.194889, 36.954140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581642, 30.576956, 37.326946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278625, 30.786610, 37.482590>,  <38.096813, 30.912403, 37.575977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278625, 30.786610, 37.482590>,  <38.581642, 30.576956, 37.326946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278625, 30.786610, 37.482590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546538, 0.183296, 0.817128,
		0.356964, 0.831675, -0.425315,
		-0.757544, 0.524136, 0.389113,
		38.051361, 30.943851, 37.599323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925659, 31.289989, 37.573601>,  <38.581642, 30.576956, 37.326946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925659, 31.289989, 37.573601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571682, 31.209196, 37.741444>,  <38.359295, 31.160719, 37.842152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571682, 31.209196, 37.741444>,  <38.925659, 31.289989, 37.573601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571682, 31.209196, 37.741444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393546, 0.157379, 0.905734,
		-0.248982, 0.966661, -0.059781,
		-0.884946, -0.201985, 0.419610,
		38.306198, 31.148602, 37.867325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710808, 31.840351, 38.088558>,  <38.925659, 31.289989, 37.573601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710808, 31.840351, 38.088558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502659, 31.527323, 38.225262>,  <38.377769, 31.339506, 38.307281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502659, 31.527323, 38.225262>,  <38.710808, 31.840351, 38.088558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502659, 31.527323, 38.225262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380376, 0.145895, 0.913252,
		-0.764547, 0.605223, 0.221753,
		-0.520368, -0.782573, 0.341755,
		38.346550, 31.292551, 38.327789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460854, 32.100922, 38.714420>,  <38.710808, 31.840351, 38.088558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460854, 32.100922, 38.714420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372898, 31.711609, 38.740894>,  <38.320126, 31.478022, 38.756779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372898, 31.711609, 38.740894>,  <38.460854, 32.100922, 38.714420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372898, 31.711609, 38.740894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147870, 0.033803, 0.988429,
		-0.964254, 0.227127, 0.136485,
		-0.219885, -0.973278, 0.066180,
		38.306934, 31.419626, 38.760750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027195, 32.053787, 39.232349>,  <38.460854, 32.100922, 38.714420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027195, 32.053787, 39.232349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192993, 31.690699, 39.206299>,  <38.292473, 31.472847, 39.190666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192993, 31.690699, 39.206299>,  <38.027195, 32.053787, 39.232349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192993, 31.690699, 39.206299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263757, 0.051328, 0.963222,
		-0.870991, -0.416431, 0.260693,
		0.414496, -0.907718, -0.065130,
		38.317341, 31.418383, 39.186760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711559, 31.659098, 39.873425>,  <38.027195, 32.053787, 39.232349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711559, 31.659098, 39.873425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017269, 31.446234, 39.727718>,  <38.200695, 31.318516, 39.640297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017269, 31.446234, 39.727718>,  <37.711559, 31.659098, 39.873425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017269, 31.446234, 39.727718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420688, -0.016691, 0.907052,
		-0.488778, -0.846478, 0.211117,
		0.764276, -0.532162, -0.364262,
		38.246552, 31.286585, 39.618439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876019, 31.149389, 40.417992>,  <37.711559, 31.659098, 39.873425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876019, 31.149389, 40.417992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203003, 31.173525, 40.188866>,  <38.399193, 31.188007, 40.051388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203003, 31.173525, 40.188866>,  <37.876019, 31.149389, 40.417992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203003, 31.173525, 40.188866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568808, 0.071950, 0.819317,
		0.090664, -0.995580, 0.024486,
		0.817458, 0.060355, -0.572817,
		38.448242, 31.191628, 40.017021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282078, 30.632662, 40.668995>,  <37.876019, 31.149389, 40.417992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282078, 30.632662, 40.668995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538280, 30.876751, 40.482498>,  <38.692001, 31.023205, 40.370602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538280, 30.876751, 40.482498>,  <38.282078, 30.632662, 40.668995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538280, 30.876751, 40.482498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682669, -0.174361, 0.709621,
		0.351732, -0.772805, -0.528259,
		0.640506, 0.610222, -0.466242,
		38.730431, 31.059818, 40.342625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944290, 30.266359, 40.796772>,  <38.282078, 30.632662, 40.668995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944290, 30.266359, 40.796772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054058, 30.629444, 40.669804>,  <39.119919, 30.847294, 40.593620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054058, 30.629444, 40.669804>,  <38.944290, 30.266359, 40.796772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054058, 30.629444, 40.669804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814875, -0.044247, 0.577945,
		0.510562, -0.417258, -0.751813,
		0.274418, 0.907710, -0.317423,
		39.136383, 30.901756, 40.574577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557240, 30.190052, 40.521183>,  <38.944290, 30.266359, 40.796772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557240, 30.190052, 40.521183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.531818, 30.573933, 40.630676>,  <39.516563, 30.804262, 40.696373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.531818, 30.573933, 40.630676>,  <39.557240, 30.190052, 40.521183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531818, 30.573933, 40.630676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779054, -0.123717, 0.614630,
		0.623728, 0.252318, -0.739797,
		-0.063557, 0.959703, 0.273735,
		39.512753, 30.861843, 40.712795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267288, 30.379917, 40.533936>,  <39.557240, 30.190052, 40.521183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267288, 30.379917, 40.533936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029728, 30.623499, 40.744255>,  <39.887192, 30.769648, 40.870445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029728, 30.623499, 40.744255>,  <40.267288, 30.379917, 40.533936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029728, 30.623499, 40.744255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592188, -0.111522, 0.798046,
		0.544610, 0.785327, -0.294381,
		-0.593897, 0.608953, 0.525797,
		39.851559, 30.806185, 40.901993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665443, 31.049992, 40.781040>,  <40.267288, 30.379917, 40.533936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665443, 31.049992, 40.781040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363346, 31.003941, 41.039143>,  <40.182087, 30.976309, 41.194004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363346, 31.003941, 41.039143>,  <40.665443, 31.049992, 40.781040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363346, 31.003941, 41.039143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646507, 0.031149, 0.762272,
		-0.107859, 0.992862, 0.050907,
		-0.755245, -0.115130, 0.645252,
		40.136772, 30.969402, 41.232719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879532, 31.414358, 41.329674>,  <40.665443, 31.049992, 40.781040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879532, 31.414358, 41.329674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572796, 31.223728, 41.501644>,  <40.388756, 31.109350, 41.604828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572796, 31.223728, 41.501644>,  <40.879532, 31.414358, 41.329674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572796, 31.223728, 41.501644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462199, 0.054752, 0.885085,
		-0.445349, 0.877427, 0.178287,
		-0.766836, -0.476576, 0.429929,
		40.342747, 31.080755, 41.630623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506592, 31.781954, 41.764351>,  <40.879532, 31.414358, 41.329674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506592, 31.781954, 41.764351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446781, 31.414028, 41.909451>,  <40.410896, 31.193274, 41.996510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446781, 31.414028, 41.909451>,  <40.506592, 31.781954, 41.764351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446781, 31.414028, 41.909451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319699, 0.302191, 0.898039,
		-0.935647, 0.250250, 0.248878,
		-0.149526, -0.919813, 0.362749,
		40.401924, 31.138084, 42.018276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294342, 31.933561, 42.422119>,  <40.506592, 31.781954, 41.764351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294342, 31.933561, 42.422119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394691, 31.547104, 42.446217>,  <40.454903, 31.315229, 42.460674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394691, 31.547104, 42.446217>,  <40.294342, 31.933561, 42.422119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394691, 31.547104, 42.446217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181117, 0.107980, 0.977516,
		-0.950925, -0.234322, 0.202075,
		0.250874, -0.966144, 0.060241,
		40.469955, 31.257261, 42.464291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910778, 31.659819, 43.052769>,  <40.294342, 31.933561, 42.422119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910778, 31.659819, 43.052769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191200, 31.385630, 42.974129>,  <40.359455, 31.221117, 42.926945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191200, 31.385630, 42.974129>,  <39.910778, 31.659819, 43.052769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191200, 31.385630, 42.974129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122762, -0.155567, 0.980168,
		-0.702462, -0.711285, -0.024911,
		0.701054, -0.685472, -0.196599,
		40.401516, 31.179989, 42.915150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768456, 31.090576, 43.533829>,  <39.910778, 31.659819, 43.052769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768456, 31.090576, 43.533829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151630, 31.074438, 43.420177>,  <40.381535, 31.064754, 43.351986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151630, 31.074438, 43.420177>,  <39.768456, 31.090576, 43.533829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151630, 31.074438, 43.420177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263192, -0.271119, 0.925864,
		-0.114386, -0.961700, -0.249096,
		0.957939, -0.040346, -0.284123,
		40.439011, 31.062334, 43.334942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986790, 30.489967, 43.834129>,  <39.768456, 31.090576, 43.533829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986790, 30.489967, 43.834129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316326, 30.704338, 43.760303>,  <40.514050, 30.832960, 43.716007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316326, 30.704338, 43.760303>,  <39.986790, 30.489967, 43.834129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316326, 30.704338, 43.760303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317016, -0.165725, 0.933829,
		0.469878, -0.827839, -0.306429,
		0.823842, 0.535928, -0.184567,
		40.563480, 30.865116, 43.704933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631561, 30.110968, 44.056328>,  <39.986790, 30.489967, 43.834129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631561, 30.110968, 44.056328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703815, 30.504152, 44.042706>,  <40.747166, 30.740063, 44.034534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703815, 30.504152, 44.042706>,  <40.631561, 30.110968, 44.056328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703815, 30.504152, 44.042706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448190, -0.051445, 0.892457,
		0.875498, -0.176469, -0.449846,
		0.180633, 0.982961, -0.034052,
		40.758007, 30.799040, 44.032490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927250, 30.148859, 44.697582>,  <40.631561, 30.110968, 44.056328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.927250, 30.148859, 44.697582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.977512, 30.521173, 44.560265>,  <41.007671, 30.744562, 44.477875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.977512, 30.521173, 44.560265>,  <40.927250, 30.148859, 44.697582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.977512, 30.521173, 44.560265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348458, 0.282576, 0.893716,
		0.928863, -0.231925, -0.288832,
		0.125658, 0.930785, -0.343291,
		41.015209, 30.800409, 44.457279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702496, 30.253628, 44.835182>,  <40.927250, 30.148859, 44.697582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.702496, 30.253628, 44.835182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.489960, 30.590557, 44.799034>,  <41.362438, 30.792715, 44.777344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.489960, 30.590557, 44.799034>,  <41.702496, 30.253628, 44.835182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489960, 30.590557, 44.799034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471356, 0.382587, 0.794639,
		0.703919, 0.379626, -0.600319,
		-0.531340, 0.842325, -0.090371,
		41.330559, 30.843254, 44.771923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.189346, 30.682268, 44.942448>,  <41.702496, 30.253628, 44.835182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.189346, 30.682268, 44.942448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.840565, 30.866428, 45.009060>,  <41.631298, 30.976925, 45.049026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.840565, 30.866428, 45.009060>,  <42.189346, 30.682268, 44.942448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.840565, 30.866428, 45.009060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388108, 0.442650, 0.808352,
		0.298454, 0.769474, -0.564655,
		-0.871950, 0.460403, 0.166528,
		41.578979, 31.004549, 45.059017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.325516, 31.373068, 45.057087>,  <42.189346, 30.682268, 44.942448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.325516, 31.373068, 45.057087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965042, 31.321924, 45.222748>,  <41.748760, 31.291237, 45.322144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965042, 31.321924, 45.222748>,  <42.325516, 31.373068, 45.057087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965042, 31.321924, 45.222748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326456, 0.428326, 0.842593,
		-0.285127, 0.894533, -0.344258,
		-0.901182, -0.127861, 0.414153,
		41.694687, 31.283566, 45.346992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262844, 32.009254, 45.437893>,  <42.325516, 31.373068, 45.057087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262844, 32.009254, 45.437893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998940, 31.753260, 45.595440>,  <41.840595, 31.599663, 45.689968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998940, 31.753260, 45.595440>,  <42.262844, 32.009254, 45.437893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998940, 31.753260, 45.595440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465659, 0.063190, 0.882705,
		-0.589807, 0.765784, 0.256325,
		-0.659764, -0.639986, 0.393864,
		41.801010, 31.561264, 45.713600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.022148, 32.365475, 46.041008>,  <42.262844, 32.009254, 45.437893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.022148, 32.365475, 46.041008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974480, 31.975124, 46.114193>,  <41.945881, 31.740915, 46.158104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974480, 31.975124, 46.114193>,  <42.022148, 32.365475, 46.041008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.974480, 31.975124, 46.114193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380037, 0.125409, 0.916430,
		-0.917263, 0.178740, 0.355923,
		-0.119167, -0.975871, 0.182960,
		41.938728, 31.682364, 46.169083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813965, 32.400742, 46.675182>,  <42.022148, 32.365475, 46.041008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813965, 32.400742, 46.675182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.937927, 32.022549, 46.635139>,  <42.012306, 31.795633, 46.611115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.937927, 32.022549, 46.635139>,  <41.813965, 32.400742, 46.675182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.937927, 32.022549, 46.635139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425101, 0.043611, 0.904095,
		-0.850438, -0.322745, 0.415441,
		0.309910, -0.945481, -0.100111,
		42.030899, 31.738905, 46.605106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615898, 32.124233, 47.262230>,  <41.813965, 32.400742, 46.675182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615898, 32.124233, 47.262230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.917591, 31.904774, 47.117943>,  <42.098606, 31.773096, 47.031368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.917591, 31.904774, 47.117943>,  <41.615898, 32.124233, 47.262230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.917591, 31.904774, 47.117943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462240, 0.053487, 0.885140,
		-0.466342, -0.834337, 0.293951,
		0.754228, -0.548654, -0.360721,
		42.143860, 31.740177, 47.009727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640442, 31.461819, 47.666107>,  <41.615898, 32.124233, 47.262230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640442, 31.461819, 47.666107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.005596, 31.520908, 47.513889>,  <42.224689, 31.556362, 47.422558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.005596, 31.520908, 47.513889>,  <41.640442, 31.461819, 47.666107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.005596, 31.520908, 47.513889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345314, 0.217700, 0.912888,
		0.217700, -0.964772, 0.147724,
		-0.912888, -0.147724, 0.380542,
		42.279461, 31.565226, 47.399727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966782, 31.099062, 48.108795>,  <41.640442, 31.461819, 47.666107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966782, 31.099062, 48.108795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236931, 31.333557, 47.929821>,  <42.399021, 31.474255, 47.822437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236931, 31.333557, 47.929821>,  <41.966782, 31.099062, 48.108795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.236931, 31.333557, 47.929821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410785, 0.204832, 0.888425,
		0.612478, -0.783816, -0.102481,
		0.675371, 0.586238, -0.447435,
		42.439541, 31.509428, 47.795589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660069, 30.801720, 48.324387>,  <41.966782, 31.099062, 48.108795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660069, 30.801720, 48.324387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.749920, 31.173798, 48.208263>,  <42.803829, 31.397045, 48.138592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.749920, 31.173798, 48.208263>,  <42.660069, 30.801720, 48.324387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.749920, 31.173798, 48.208263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653012, 0.077430, 0.753379,
		0.723269, -0.358804, -0.590036,
		0.224629, 0.930196, -0.290306,
		42.817310, 31.452856, 48.121170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.436214, 30.907433, 48.373383>,  <42.660069, 30.801720, 48.324387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.436214, 30.907433, 48.373383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.306686, 31.285866, 48.376705>,  <43.228970, 31.512926, 48.378700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.306686, 31.285866, 48.376705>,  <43.436214, 30.907433, 48.373383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.306686, 31.285866, 48.376705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632472, 0.209935, 0.745591,
		0.703647, 0.246692, -0.666352,
		-0.323822, 0.946082, 0.008306,
		43.209541, 31.569691, 48.379196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.076313, 31.349922, 48.522282>,  <43.436214, 30.907433, 48.373383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.076313, 31.349922, 48.522282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754814, 31.583593, 48.567410>,  <43.561916, 31.723797, 48.594486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754814, 31.583593, 48.567410>,  <44.076313, 31.349922, 48.522282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.754814, 31.583593, 48.567410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487082, 0.537159, 0.688630,
		0.341680, 0.608437, -0.716282,
		-0.803745, 0.584179, 0.112822,
		43.513691, 31.758846, 48.601257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.273602, 32.052883, 48.395824>,  <44.076313, 31.349922, 48.522282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.273602, 32.052883, 48.395824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.957607, 32.039108, 48.640690>,  <43.768013, 32.030842, 48.787609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.957607, 32.039108, 48.640690>,  <44.273602, 32.052883, 48.395824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.957607, 32.039108, 48.640690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527045, 0.472018, 0.706698,
		-0.313288, 0.880916, -0.354736,
		-0.789983, -0.034438, 0.612160,
		43.720612, 32.028778, 48.824337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.315025, 32.593063, 48.867661>,  <44.273602, 32.052883, 48.395824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.315025, 32.593063, 48.867661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.026318, 32.868233, 48.898144>,  <43.853092, 33.033333, 48.916435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.026318, 32.868233, 48.898144>,  <44.315025, 32.593063, 48.867661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.026318, 32.868233, 48.898144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315673, 0.425184, -0.848274,
		-0.615949, -0.588204, -0.524045,
		-0.721774, 0.687920, 0.076211,
		43.809784, 33.074608, 48.921009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.322094, 33.234493, 49.218967>,  <44.315025, 32.593063, 48.867661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.322094, 33.234493, 49.218967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.578289, 33.540195, 49.188774>,  <44.732006, 33.723618, 49.170658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.578289, 33.540195, 49.188774>,  <44.322094, 33.234493, 49.218967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.578289, 33.540195, 49.188774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494321, 0.335043, -0.802118,
		-0.587731, 0.551056, 0.592376,
		0.640483, 0.764253, -0.075484,
		44.770435, 33.769470, 49.166130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.018547, 33.782948, 49.221661>,  <44.322094, 33.234493, 49.218967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.018547, 33.782948, 49.221661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.359489, 33.883354, 49.038151>,  <44.564056, 33.943600, 48.928043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.359489, 33.883354, 49.038151>,  <44.018547, 33.782948, 49.221661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.359489, 33.883354, 49.038151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512802, 0.229148, -0.827360,
		-0.102558, 0.940468, 0.324040,
		0.852359, 0.251021, -0.458773,
		44.615196, 33.958660, 48.900520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.801601, 34.278984, 48.741482>,  <44.018547, 33.782948, 49.221661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.801601, 34.278984, 48.741482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.170151, 34.205551, 48.604446>,  <44.391281, 34.161491, 48.522224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.170151, 34.205551, 48.604446>,  <43.801601, 34.278984, 48.741482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.170151, 34.205551, 48.604446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247452, 0.402647, -0.881273,
		0.299731, 0.896756, 0.325560,
		0.921373, -0.183585, -0.342590,
		44.446564, 34.150475, 48.501671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.853489, 34.820732, 48.226589>,  <43.801601, 34.278984, 48.741482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.853489, 34.820732, 48.226589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.147377, 34.562862, 48.142132>,  <44.323711, 34.408142, 48.091457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.147377, 34.562862, 48.142132>,  <43.853489, 34.820732, 48.226589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.147377, 34.562862, 48.142132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096845, 0.208382, -0.973241,
		0.671418, 0.735511, 0.090670,
		0.734724, -0.644670, -0.211142,
		44.367794, 34.369461, 48.078789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.367664, 35.182304, 47.781662>,  <43.853489, 34.820732, 48.226589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.367664, 35.182304, 47.781662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.419697, 34.786907, 47.750793>,  <44.450916, 34.549667, 47.732273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.419697, 34.786907, 47.750793>,  <44.367664, 35.182304, 47.781662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.419697, 34.786907, 47.750793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172165, 0.054136, -0.983580,
		0.976442, 0.141232, -0.163143,
		0.130081, -0.988495, -0.077176,
		44.458721, 34.490360, 47.727642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.694111, 35.135738, 47.157696>,  <44.367664, 35.182304, 47.781662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.694111, 35.135738, 47.157696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.539368, 34.776852, 47.242863>,  <44.446522, 34.561520, 47.293964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.539368, 34.776852, 47.242863>,  <44.694111, 35.135738, 47.157696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.539368, 34.776852, 47.242863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434717, -0.026183, -0.900187,
		0.813242, -0.440804, -0.379908,
		-0.386858, -0.897222, 0.212918,
		44.423309, 34.507687, 47.306740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.808857, 34.752075, 46.543545>,  <44.694111, 35.135738, 47.157696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.808857, 34.752075, 46.543545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.504940, 34.558731, 46.717476>,  <44.322590, 34.442726, 46.821835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.504940, 34.558731, 46.717476>,  <44.808857, 34.752075, 46.543545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.504940, 34.558731, 46.717476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430034, -0.127999, -0.893693,
		0.487635, -0.866012, -0.110609,
		-0.759791, -0.483362, 0.434832,
		44.277004, 34.413723, 46.847927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.621231, 34.266243, 46.108971>,  <44.808857, 34.752075, 46.543545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.621231, 34.266243, 46.108971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.299984, 34.259892, 46.347218>,  <44.107235, 34.256081, 46.490166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.299984, 34.259892, 46.347218>,  <44.621231, 34.266243, 46.108971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.299984, 34.259892, 46.347218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582756, -0.187291, -0.790770,
		0.124108, -0.982176, 0.141164,
		-0.803114, -0.015877, 0.595614,
		44.059052, 34.255127, 46.525902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.283905, 33.659016, 45.891552>,  <44.621231, 34.266243, 46.108971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.283905, 33.659016, 45.891552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.993042, 33.883354, 46.049889>,  <43.818523, 34.017956, 46.144890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.993042, 33.883354, 46.049889>,  <44.283905, 33.659016, 45.891552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.993042, 33.883354, 46.049889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588085, -0.211492, -0.780659,
		-0.354111, -0.800453, 0.483612,
		-0.727161, 0.560845, 0.395843,
		43.774895, 34.051605, 46.168640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.738216, 33.340290, 45.660378>,  <44.283905, 33.659016, 45.891552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.738216, 33.340290, 45.660378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579727, 33.681534, 45.796150>,  <43.484634, 33.886280, 45.877613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579727, 33.681534, 45.796150>,  <43.738216, 33.340290, 45.660378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.579727, 33.681534, 45.796150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613777, 0.028836, -0.788953,
		-0.682850, -0.520936, 0.512193,
		-0.396225, 0.853109, 0.339429,
		43.460861, 33.937466, 45.897980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.997852, 33.261261, 45.753822>,  <43.738216, 33.340290, 45.660378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.997852, 33.261261, 45.753822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.074989, 33.649418, 45.695641>,  <43.121269, 33.882313, 45.660732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.074989, 33.649418, 45.695641>,  <42.997852, 33.261261, 45.753822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.074989, 33.649418, 45.695641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576410, -0.007932, -0.817122,
		-0.794081, 0.241414, 0.557812,
		0.192840, 0.970389, -0.145452,
		43.132843, 33.940536, 45.652004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.392967, 33.549358, 45.706757>,  <42.997852, 33.261261, 45.753822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.392967, 33.549358, 45.706757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.653149, 33.733891, 45.465397>,  <42.809258, 33.844608, 45.320580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.653149, 33.733891, 45.465397>,  <42.392967, 33.549358, 45.706757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.653149, 33.733891, 45.465397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598766, -0.177343, -0.781044,
		-0.467328, 0.869324, 0.160876,
		0.650450, 0.461331, -0.603398,
		42.848282, 33.872292, 45.284378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.962357, 33.995636, 45.252373>,  <42.392967, 33.549358, 45.706757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.962357, 33.995636, 45.252373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304359, 33.872211, 45.085640>,  <42.509563, 33.798157, 44.985600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304359, 33.872211, 45.085640>,  <41.962357, 33.995636, 45.252373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304359, 33.872211, 45.085640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502800, -0.296263, -0.812048,
		0.127073, 0.903892, -0.408451,
		0.855012, -0.308559, -0.416829,
		42.560863, 33.779644, 44.960590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982746, 34.293777, 44.578766>,  <41.962357, 33.995636, 45.252373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982746, 34.293777, 44.578766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243847, 33.991936, 44.551964>,  <42.400505, 33.810829, 44.535881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243847, 33.991936, 44.551964>,  <41.982746, 34.293777, 44.578766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.243847, 33.991936, 44.551964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270637, -0.149660, -0.950977,
		0.707584, 0.638883, -0.301915,
		0.652748, -0.754606, -0.067009,
		42.439671, 33.765553, 44.531860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193005, 34.281200, 43.919365>,  <41.982746, 34.293777, 44.578766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.193005, 34.281200, 43.919365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323757, 33.919632, 44.029697>,  <42.402206, 33.702690, 44.095898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323757, 33.919632, 44.029697>,  <42.193005, 34.281200, 43.919365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.323757, 33.919632, 44.029697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249174, -0.363972, -0.897461,
		0.911627, 0.224629, -0.344207,
		0.326878, -0.903917, 0.275835,
		42.421822, 33.648457, 44.112450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.634361, 34.083107, 43.475674>,  <42.193005, 34.281200, 43.919365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.634361, 34.083107, 43.475674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.514343, 33.731861, 43.624744>,  <42.442333, 33.521114, 43.714188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.514343, 33.731861, 43.624744>,  <42.634361, 34.083107, 43.475674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.514343, 33.731861, 43.624744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304627, -0.282017, -0.909763,
		0.903979, -0.386494, -0.182881,
		-0.300043, -0.878117, 0.372674,
		42.424332, 33.468426, 43.736546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.870014, 33.577629, 43.005112>,  <42.634361, 34.083107, 43.475674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.870014, 33.577629, 43.005112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554935, 33.431263, 43.203358>,  <42.365887, 33.343445, 43.322304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554935, 33.431263, 43.203358>,  <42.870014, 33.577629, 43.005112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.554935, 33.431263, 43.203358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435283, -0.238731, -0.868065,
		0.435956, -0.899508, 0.028772,
		-0.787700, -0.365914, 0.495616,
		42.318626, 33.321487, 43.352043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.807056, 32.901260, 42.765598>,  <42.870014, 33.577629, 43.005112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.807056, 32.901260, 42.765598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.449001, 32.991608, 42.919327>,  <42.234169, 33.045815, 43.011566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.449001, 32.991608, 42.919327>,  <42.807056, 32.901260, 42.765598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.449001, 32.991608, 42.919327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441589, -0.331305, -0.833808,
		-0.061001, -0.916090, 0.396305,
		-0.895141, 0.225867, 0.384326,
		42.180458, 33.059368, 43.034626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.428017, 32.356819, 42.548695>,  <42.807056, 32.901260, 42.765598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.428017, 32.356819, 42.548695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181381, 32.660595, 42.631714>,  <42.033401, 32.842861, 42.681526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181381, 32.660595, 42.631714>,  <42.428017, 32.356819, 42.548695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181381, 32.660595, 42.631714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470311, -0.143896, -0.870690,
		-0.631370, -0.634466, 0.445897,
		-0.616586, 0.759438, 0.207545,
		41.996407, 32.888428, 42.693977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.820557, 32.128559, 42.360413>,  <42.428017, 32.356819, 42.548695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.820557, 32.128559, 42.360413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745342, 32.520271, 42.390472>,  <41.700214, 32.755299, 42.408508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745342, 32.520271, 42.390472>,  <41.820557, 32.128559, 42.360413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745342, 32.520271, 42.390472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612681, -0.057149, -0.788261,
		-0.767636, -0.194265, 0.610734,
		-0.188035, 0.979283, 0.075153,
		41.688931, 32.814056, 42.413017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085403, 32.210270, 42.376987>,  <41.820557, 32.128559, 42.360413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085403, 32.210270, 42.376987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265583, 32.538685, 42.236702>,  <41.373692, 32.735733, 42.152531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265583, 32.538685, 42.236702>,  <41.085403, 32.210270, 42.376987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265583, 32.538685, 42.236702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653312, 0.035384, -0.756261,
		-0.608507, 0.569781, 0.552330,
		0.450447, 0.821034, -0.350714,
		41.400719, 32.784996, 42.131489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493263, 32.547688, 42.084778>,  <41.085403, 32.210270, 42.376987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493263, 32.547688, 42.084778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799183, 32.764065, 41.944794>,  <40.982735, 32.893890, 41.860806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799183, 32.764065, 41.944794>,  <40.493263, 32.547688, 42.084778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799183, 32.764065, 41.944794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492103, 0.139877, -0.859226,
		-0.415839, 0.829347, 0.373176,
		0.764795, 0.540941, -0.349959,
		41.028622, 32.926346, 41.839806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115959, 33.027832, 41.799519>,  <40.493263, 32.547688, 42.084778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115959, 33.027832, 41.799519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484295, 33.023144, 41.643616>,  <40.705296, 33.020332, 41.550076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484295, 33.023144, 41.643616>,  <40.115959, 33.027832, 41.799519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484295, 33.023144, 41.643616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385764, 0.118379, -0.914971,
		0.056863, 0.992899, 0.104487,
		0.920844, -0.011720, -0.389756,
		40.760548, 33.019627, 41.526688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216026, 33.670609, 41.410393>,  <40.115959, 33.027832, 41.799519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216026, 33.670609, 41.410393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484943, 33.410355, 41.269142>,  <40.646294, 33.254204, 41.184391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484943, 33.410355, 41.269142>,  <40.216026, 33.670609, 41.410393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484943, 33.410355, 41.269142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184848, 0.314357, -0.931134,
		0.716833, 0.691272, 0.091072,
		0.672296, -0.650633, -0.353122,
		40.686630, 33.215164, 41.163204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213306, 33.929920, 40.703888>,  <40.216026, 33.670609, 41.410393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213306, 33.929920, 40.703888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411823, 33.582767, 40.695133>,  <40.530933, 33.374477, 40.689880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411823, 33.582767, 40.695133>,  <40.213306, 33.929920, 40.703888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411823, 33.582767, 40.695133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095343, -0.029433, -0.995009,
		0.862905, 0.495901, -0.097353,
		0.496292, -0.867880, -0.021882,
		40.560711, 33.322403, 40.688568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892002, 34.012249, 40.286663>,  <40.213306, 33.929920, 40.703888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892002, 34.012249, 40.286663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761295, 33.634930, 40.263313>,  <40.682869, 33.408539, 40.249302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761295, 33.634930, 40.263313>,  <40.892002, 34.012249, 40.286663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761295, 33.634930, 40.263313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079047, 0.088831, -0.992905,
		0.941792, -0.319838, -0.103592,
		-0.326771, -0.943299, -0.058378,
		40.663265, 33.351940, 40.245800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386703, 33.638100, 39.855869>,  <40.892002, 34.012249, 40.286663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386703, 33.638100, 39.855869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035969, 33.445850, 39.860977>,  <40.825527, 33.330502, 39.864044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035969, 33.445850, 39.860977>,  <41.386703, 33.638100, 39.855869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035969, 33.445850, 39.860977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004227, -0.018856, -0.999813,
		0.480773, -0.876725, 0.014502,
		-0.876835, -0.480622, 0.012772,
		40.772919, 33.301662, 39.864807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518665, 33.119400, 39.333252>,  <41.386703, 33.638100, 39.855869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.518665, 33.119400, 39.333252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125801, 33.164577, 39.393402>,  <40.890083, 33.191685, 39.429493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125801, 33.164577, 39.393402>,  <41.518665, 33.119400, 39.333252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125801, 33.164577, 39.393402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153720, -0.021482, -0.987881,
		-0.108349, -0.993369, 0.038462,
		-0.982156, 0.112949, 0.150373,
		40.831154, 33.198460, 39.438515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242783, 32.674252, 39.008541>,  <41.518665, 33.119400, 39.333252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242783, 32.674252, 39.008541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948200, 32.939156, 39.063732>,  <40.771450, 33.098099, 39.096848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948200, 32.939156, 39.063732>,  <41.242783, 32.674252, 39.008541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948200, 32.939156, 39.063732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195951, -0.013616, -0.980519,
		-0.647482, -0.749149, 0.139798,
		-0.736458, 0.662262, 0.137980,
		40.727264, 33.137833, 39.105125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818012, 32.561050, 38.349960>,  <41.242783, 32.674252, 39.008541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818012, 32.561050, 38.349960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665234, 32.898712, 38.500435>,  <40.573566, 33.101311, 38.590721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665234, 32.898712, 38.500435>,  <40.818012, 32.561050, 38.349960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665234, 32.898712, 38.500435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478326, 0.167725, -0.862017,
		-0.790772, -0.509186, 0.339719,
		-0.381947, 0.844155, 0.376189,
		40.550648, 33.151958, 38.613293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061596, 32.503242, 38.225266>,  <40.818012, 32.561050, 38.349960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061596, 32.503242, 38.225266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162106, 32.888863, 38.259842>,  <40.222412, 33.120235, 38.280586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162106, 32.888863, 38.259842>,  <40.061596, 32.503242, 38.225266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162106, 32.888863, 38.259842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588919, 0.223144, -0.776776,
		-0.768138, 0.144279, 0.623817,
		0.251274, 0.964049, 0.086436,
		40.237488, 33.178078, 38.285774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532913, 32.863377, 37.790985>,  <40.061596, 32.503242, 38.225266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532913, 32.863377, 37.790985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846344, 33.097164, 37.875278>,  <40.034401, 33.237434, 37.925854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846344, 33.097164, 37.875278>,  <39.532913, 32.863377, 37.790985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846344, 33.097164, 37.875278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025377, 0.308790, -0.950792,
		-0.620777, 0.750366, 0.227129,
		0.783577, 0.584465, 0.210732,
		40.081417, 33.272503, 37.938499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416195, 33.594898, 37.400951>,  <39.532913, 32.863377, 37.790985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416195, 33.594898, 37.400951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806282, 33.569454, 37.485722>,  <40.040333, 33.554188, 37.536583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806282, 33.569454, 37.485722>,  <39.416195, 33.594898, 37.400951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806282, 33.569454, 37.485722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219556, 0.396920, -0.891207,
		-0.027424, 0.915647, 0.401048,
		0.975214, -0.063612, 0.211921,
		40.098846, 33.550369, 37.549297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719131, 34.202305, 37.137707>,  <39.416195, 33.594898, 37.400951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719131, 34.202305, 37.137707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033398, 33.959148, 37.183651>,  <40.221958, 33.813255, 37.211216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033398, 33.959148, 37.183651>,  <39.719131, 34.202305, 37.137707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033398, 33.959148, 37.183651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333104, 0.259227, -0.906555,
		0.521312, 0.750513, 0.406158,
		0.785669, -0.607891, 0.114860,
		40.269096, 33.776779, 37.218109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313747, 34.690937, 37.175838>,  <39.719131, 34.202305, 37.137707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313747, 34.690937, 37.175838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391891, 34.322388, 37.041431>,  <40.438778, 34.101257, 36.960785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391891, 34.322388, 37.041431>,  <40.313747, 34.690937, 37.175838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391891, 34.322388, 37.041431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307306, 0.382875, -0.871188,
		0.931342, 0.066932, 0.357941,
		0.195357, -0.921372, -0.336020,
		40.450497, 34.045975, 36.940624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766117, 34.855488, 36.603573>,  <40.313747, 34.690937, 37.175838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766117, 34.855488, 36.603573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.693577, 34.464977, 36.556240>,  <40.650055, 34.230671, 36.527840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.693577, 34.464977, 36.556240>,  <40.766117, 34.855488, 36.603573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693577, 34.464977, 36.556240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386896, 0.039799, -0.921264,
		0.904116, -0.212851, 0.370499,
		-0.181346, -0.976274, -0.118334,
		40.639172, 34.172096, 36.520741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433079, 34.497841, 36.401779>,  <40.766117, 34.855488, 36.603573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433079, 34.497841, 36.401779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124092, 34.271633, 36.286205>,  <40.938702, 34.135910, 36.216862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124092, 34.271633, 36.286205>,  <41.433079, 34.497841, 36.401779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124092, 34.271633, 36.286205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453345, -0.172437, -0.874496,
		0.444722, -0.806506, 0.389578,
		-0.772463, -0.565521, -0.288939,
		40.892353, 34.101978, 36.199524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754375, 33.811073, 36.151329>,  <41.433079, 34.497841, 36.401779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754375, 33.811073, 36.151329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392948, 33.804131, 35.980095>,  <41.176090, 33.799965, 35.877354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392948, 33.804131, 35.980095>,  <41.754375, 33.811073, 36.151329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392948, 33.804131, 35.980095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414365, -0.289391, -0.862875,
		-0.108902, -0.957053, 0.268680,
		-0.903572, -0.017363, -0.428085,
		41.121876, 33.798923, 35.851669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.755692, 33.197617, 35.716621>,  <41.754375, 33.811073, 36.151329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.755692, 33.197617, 35.716621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467190, 33.437134, 35.577343>,  <41.294090, 33.580845, 35.493774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467190, 33.437134, 35.577343>,  <41.755692, 33.197617, 35.716621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467190, 33.437134, 35.577343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330222, -0.144640, -0.932755,
		-0.608893, -0.787733, -0.093413,
		-0.721251, 0.598795, -0.348197,
		41.250813, 33.616772, 35.472885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581272, 33.027294, 35.050961>,  <41.755692, 33.197617, 35.716621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581272, 33.027294, 35.050961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.460083, 33.408199, 35.036015>,  <41.387371, 33.636742, 35.027046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.460083, 33.408199, 35.036015>,  <41.581272, 33.027294, 35.050961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.460083, 33.408199, 35.036015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226234, 0.033784, -0.973487,
		-0.925757, -0.303390, -0.225671,
		-0.302970, 0.952267, -0.037361,
		41.369190, 33.693878, 35.024807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037739, 33.086678, 34.582912>,  <41.581272, 33.027294, 35.050961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.037739, 33.086678, 34.582912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277813, 33.405972, 34.603275>,  <41.421860, 33.597549, 34.615494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277813, 33.405972, 34.603275>,  <41.037739, 33.086678, 34.582912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277813, 33.405972, 34.603275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366306, -0.217734, -0.904661,
		-0.711051, 0.561614, -0.423080,
		0.600189, 0.798237, 0.050903,
		41.457870, 33.645443, 34.618546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962444, 33.486870, 33.952511>,  <41.037739, 33.086678, 34.582912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962444, 33.486870, 33.952511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308170, 33.608177, 34.113003>,  <41.515606, 33.680962, 34.209297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308170, 33.608177, 34.113003>,  <40.962444, 33.486870, 33.952511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308170, 33.608177, 34.113003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466869, -0.187062, -0.864315,
		-0.187062, 0.934364, -0.303267,
		0.864315, 0.303267, 0.401234,
		41.567467, 33.699158, 34.233372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301132, 34.029045, 33.551540>,  <40.962444, 33.486870, 33.952511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301132, 34.029045, 33.551540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.587006, 33.821789, 33.739479>,  <41.758530, 33.697433, 33.852242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.587006, 33.821789, 33.739479>,  <41.301132, 34.029045, 33.551540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.587006, 33.821789, 33.739479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401995, -0.245433, -0.882135,
		0.572388, 0.819324, 0.032884,
		0.714683, -0.518143, 0.469847,
		41.801411, 33.666348, 33.880432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927792, 34.356800, 33.434467>,  <41.301132, 34.029045, 33.551540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927792, 34.356800, 33.434467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.964355, 33.961689, 33.484970>,  <41.986294, 33.724621, 33.515274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.964355, 33.961689, 33.484970>,  <41.927792, 34.356800, 33.434467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.964355, 33.961689, 33.484970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318710, -0.091103, -0.943464,
		0.943434, 0.126481, 0.306487,
		0.091408, -0.987777, 0.126260,
		41.991779, 33.665356, 33.522850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.572823, 33.994354, 33.242779>,  <41.927792, 34.356800, 33.434467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.572823, 33.994354, 33.242779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.300346, 33.701687, 33.232647>,  <42.136860, 33.526085, 33.226566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.300346, 33.701687, 33.232647>,  <42.572823, 33.994354, 33.242779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.300346, 33.701687, 33.232647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355305, -0.300144, -0.885252,
		0.640111, -0.612022, 0.464421,
		-0.681187, -0.731671, -0.025329,
		42.095989, 33.482185, 33.225048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.906162, 33.346455, 33.342991>,  <42.572823, 33.994354, 33.242779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.906162, 33.346455, 33.342991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.589127, 33.379471, 33.101330>,  <42.398907, 33.399281, 32.956333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.589127, 33.379471, 33.101330>,  <42.906162, 33.346455, 33.342991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.589127, 33.379471, 33.101330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568556, -0.258002, -0.781140,
		-0.220341, -0.962613, 0.157565,
		-0.792587, 0.082533, -0.604147,
		42.351353, 33.404232, 32.920086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.444809, 33.786575, 33.262226>,  <42.906162, 33.346455, 33.342991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.444809, 33.786575, 33.262226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779972, 33.938816, 33.105736>,  <43.981071, 34.030159, 33.011841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779972, 33.938816, 33.105736>,  <43.444809, 33.786575, 33.262226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.779972, 33.938816, 33.105736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545423, -0.610972, 0.573783,
		-0.020647, -0.694160, -0.719525,
		0.837906, 0.380599, -0.391226,
		44.031345, 34.052994, 32.988369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.851616, 33.305676, 32.879066>,  <43.444809, 33.786575, 33.262226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.851616, 33.305676, 32.879066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.105202, 33.581272, 33.019573>,  <44.257355, 33.746628, 33.103878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.105202, 33.581272, 33.019573>,  <43.851616, 33.305676, 32.879066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.105202, 33.581272, 33.019573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511419, -0.714207, 0.477868,
		0.580119, -0.123309, -0.805143,
		0.633965, 0.688987, 0.351263,
		44.295391, 33.787968, 33.124950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.440956, 33.007381, 32.990780>,  <43.851616, 33.305676, 32.879066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.440956, 33.007381, 32.990780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.513870, 33.322655, 33.225910>,  <44.557621, 33.511818, 33.366989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.513870, 33.322655, 33.225910>,  <44.440956, 33.007381, 32.990780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.513870, 33.322655, 33.225910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530958, -0.582087, 0.615840,
		0.827559, 0.199848, -0.524601,
		0.182289, 0.788185, 0.587822,
		44.568558, 33.559109, 33.402256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.157726, 32.953571, 33.170502>,  <44.440956, 33.007381, 32.990780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.157726, 32.953571, 33.170502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.000801, 33.208347, 33.435951>,  <44.906647, 33.361214, 33.595222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.000801, 33.208347, 33.435951>,  <45.157726, 32.953571, 33.170502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.000801, 33.208347, 33.435951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443766, -0.500892, 0.743087,
		0.805706, 0.586018, -0.086145,
		-0.392313, 0.636938, 0.663627,
		44.883106, 33.399429, 33.635040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.655087, 32.852470, 33.663391>,  <45.157726, 32.953571, 33.170502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.655087, 32.852470, 33.663391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.376122, 33.061188, 33.859901>,  <45.208744, 33.186417, 33.977806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.376122, 33.061188, 33.859901>,  <45.655087, 32.852470, 33.663391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.376122, 33.061188, 33.859901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333397, -0.370591, 0.866896,
		0.634400, 0.768373, 0.084491,
		-0.697411, 0.521790, 0.491276,
		45.166897, 33.217724, 34.007286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.007717, 33.048355, 34.233898>,  <45.655087, 32.852470, 33.663391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.007717, 33.048355, 34.233898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.613407, 33.023624, 34.296410>,  <45.376820, 33.008785, 34.333916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.613407, 33.023624, 34.296410>,  <46.007717, 33.048355, 34.233898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.613407, 33.023624, 34.296410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166348, -0.491625, 0.854771,
		0.023981, 0.868609, 0.494917,
		-0.985775, -0.061830, 0.156281,
		45.317673, 33.005077, 34.343292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.940392, 33.281113, 34.936638>,  <46.007717, 33.048355, 34.233898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.940392, 33.281113, 34.936638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.587963, 33.106125, 34.864723>,  <45.376507, 33.001133, 34.821575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.587963, 33.106125, 34.864723>,  <45.940392, 33.281113, 34.936638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.587963, 33.106125, 34.864723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010150, -0.397526, 0.917535,
		-0.472868, 0.806591, 0.354691,
		-0.881075, -0.437473, -0.179791,
		45.323639, 32.974884, 34.810787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.432487, 33.492081, 35.467033>,  <45.940392, 33.281113, 34.936638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.432487, 33.492081, 35.467033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.305153, 33.141663, 35.322147>,  <45.228752, 32.931412, 35.235214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.305153, 33.141663, 35.322147>,  <45.432487, 33.492081, 35.467033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.305153, 33.141663, 35.322147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046537, -0.367189, 0.928981,
		-0.946834, 0.312586, 0.076122,
		-0.318338, -0.876049, -0.362214,
		45.209652, 32.878849, 35.213482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.028049, 33.322357, 35.968945>,  <45.432487, 33.492081, 35.467033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.028049, 33.322357, 35.968945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.073452, 32.976425, 35.773319>,  <45.100693, 32.768864, 35.655945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.073452, 32.976425, 35.773319>,  <45.028049, 33.322357, 35.968945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.073452, 32.976425, 35.773319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012101, -0.491001, 0.871075,
		-0.993463, -0.104791, -0.045267,
		0.113507, -0.864833, -0.489059,
		45.107506, 32.716976, 35.626602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.564445, 32.911785, 36.269615>,  <45.028049, 33.322357, 35.968945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.564445, 32.911785, 36.269615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.833935, 32.674389, 36.093491>,  <44.995628, 32.531952, 35.987816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.833935, 32.674389, 36.093491>,  <44.564445, 32.911785, 36.269615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.833935, 32.674389, 36.093491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073192, -0.539315, 0.838917,
		-0.735354, -0.597422, -0.319909,
		0.673720, -0.593486, -0.440314,
		45.036049, 32.496342, 35.961395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.329018, 32.294628, 36.528225>,  <44.564445, 32.911785, 36.269615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.329018, 32.294628, 36.528225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.702686, 32.240688, 36.396084>,  <44.926888, 32.208324, 36.316799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.702686, 32.240688, 36.396084>,  <44.329018, 32.294628, 36.528225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.702686, 32.240688, 36.396084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229735, -0.481082, 0.846039,
		-0.273013, -0.866242, -0.418435,
		0.934177, -0.134850, -0.330348,
		44.982941, 32.200233, 36.296978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.380661, 31.579290, 36.621773>,  <44.329018, 32.294628, 36.528225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.380661, 31.579290, 36.621773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.736965, 31.758074, 36.588837>,  <44.950748, 31.865343, 36.569073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.736965, 31.758074, 36.588837>,  <44.380661, 31.579290, 36.621773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.736965, 31.758074, 36.588837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298862, -0.439562, 0.847034,
		0.342392, -0.779111, -0.525122,
		0.890757, 0.446957, -0.082344,
		45.004192, 31.892160, 36.564133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.850384, 30.948069, 36.653603>,  <44.380661, 31.579290, 36.621773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.850384, 30.948069, 36.653603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.053436, 31.283710, 36.731796>,  <45.175270, 31.485096, 36.778713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.053436, 31.283710, 36.731796>,  <44.850384, 30.948069, 36.653603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.053436, 31.283710, 36.731796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572565, -0.498096, 0.651205,
		0.643799, -0.218645, -0.733291,
		0.507633, 0.839103, 0.195486,
		45.205727, 31.535442, 36.790443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.452770, 30.740467, 36.658089>,  <44.850384, 30.948069, 36.653603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.452770, 30.740467, 36.658089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.491249, 31.090921, 36.847034>,  <45.514336, 31.301195, 36.960403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.491249, 31.090921, 36.847034>,  <45.452770, 30.740467, 36.658089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.491249, 31.090921, 36.847034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578687, -0.435350, 0.689631,
		0.809856, 0.207007, -0.548891,
		0.096201, 0.876138, 0.472364,
		45.520111, 31.353764, 36.988743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.174721, 30.850140, 36.747467>,  <45.452770, 30.740467, 36.658089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.174721, 30.850140, 36.747467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.977257, 31.051760, 37.030941>,  <45.858776, 31.172731, 37.201023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.977257, 31.051760, 37.030941>,  <46.174721, 30.850140, 36.747467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.977257, 31.051760, 37.030941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576874, -0.420007, 0.700579,
		0.650779, 0.754670, -0.083432,
		-0.493664, 0.504052, 0.708680,
		45.829159, 31.202976, 37.243546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.657711, 31.069332, 37.252357>,  <46.174721, 30.850140, 36.747467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.657711, 31.069332, 37.252357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.309696, 31.127584, 37.440754>,  <46.100887, 31.162537, 37.553791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.309696, 31.127584, 37.440754>,  <46.657711, 31.069332, 37.252357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.309696, 31.127584, 37.440754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408358, -0.322343, 0.854013,
		0.276192, 0.935353, 0.220980,
		-0.870035, 0.145633, 0.470988,
		46.048687, 31.171274, 37.582050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.857922, 31.366333, 37.933743>,  <46.657711, 31.069332, 37.252357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.857922, 31.366333, 37.933743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.483265, 31.232874, 37.976433>,  <46.258472, 31.152800, 38.002048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.483265, 31.232874, 37.976433>,  <46.857922, 31.366333, 37.933743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.483265, 31.232874, 37.976433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221013, -0.326478, 0.919003,
		-0.271778, 0.884360, 0.379531,
		-0.936638, -0.333646, 0.106725,
		46.202274, 31.132780, 38.008450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.808384, 31.549456, 38.578403>,  <46.857922, 31.366333, 37.933743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.808384, 31.549456, 38.578403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.548237, 31.253613, 38.509113>,  <46.392151, 31.076107, 38.467541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.548237, 31.253613, 38.509113>,  <46.808384, 31.549456, 38.578403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.548237, 31.253613, 38.509113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082031, -0.295086, 0.951943,
		-0.755181, 0.604899, 0.252584,
		-0.650363, -0.739609, -0.173223,
		46.353127, 31.031731, 38.457146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.358852, 31.543049, 39.134785>,  <46.808384, 31.549456, 38.578403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.358852, 31.543049, 39.134785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.359749, 31.177181, 38.973103>,  <46.360287, 30.957661, 38.876095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.359749, 31.177181, 38.973103>,  <46.358852, 31.543049, 39.134785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.359749, 31.177181, 38.973103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284247, -0.386947, 0.877198,
		-0.958749, -0.116861, 0.259123,
		0.002244, -0.914667, -0.404202,
		46.360420, 30.902781, 38.851841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.185741, 31.091494, 39.679634>,  <46.358852, 31.543049, 39.134785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.185741, 31.091494, 39.679634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.299900, 30.840101, 39.390205>,  <46.368397, 30.689266, 39.216549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.299900, 30.840101, 39.390205>,  <46.185741, 31.091494, 39.679634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.299900, 30.840101, 39.390205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359627, -0.629585, 0.688688,
		-0.888378, -0.456769, 0.046334,
		0.285400, -0.628479, -0.723575,
		46.385521, 30.651558, 39.173134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.953568, 30.476267, 39.937828>,  <46.185741, 31.091494, 39.679634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.953568, 30.476267, 39.937828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.256969, 30.419584, 39.683399>,  <46.439011, 30.385574, 39.530743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.256969, 30.419584, 39.683399>,  <45.953568, 30.476267, 39.937828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.256969, 30.419584, 39.683399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395669, -0.675415, 0.622303,
		-0.517794, -0.723695, -0.456240,
		0.758509, -0.141705, -0.636070,
		46.484524, 30.377073, 39.492577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.989868, 29.743116, 39.835201>,  <45.953568, 30.476267, 39.937828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.989868, 29.743116, 39.835201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.353462, 29.892536, 39.761230>,  <46.571621, 29.982189, 39.716846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.353462, 29.892536, 39.761230>,  <45.989868, 29.743116, 39.835201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.353462, 29.892536, 39.761230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412517, -0.742628, 0.527573,
		0.059741, -0.555845, -0.829136,
		0.908989, 0.373551, -0.184931,
		46.626160, 30.004601, 39.705750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.273232, 29.210884, 40.331470>,  <45.989868, 29.743116, 39.835201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.273232, 29.210884, 40.331470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.376991, 28.889841, 40.546333>,  <46.439247, 28.697216, 40.675251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.376991, 28.889841, 40.546333>,  <46.273232, 29.210884, 40.331470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.376991, 28.889841, 40.546333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296554, -0.595518, -0.746601,
		0.919114, 0.034369, -0.392491,
		0.259395, -0.802606, 0.537157,
		46.454811, 28.649059, 40.707481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.409698, 29.959728, 40.683342>,  <46.273232, 29.210884, 40.331470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.409698, 29.959728, 40.683342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.701050, 30.231524, 40.648098>,  <46.875862, 30.394600, 40.626953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.701050, 30.231524, 40.648098>,  <46.409698, 29.959728, 40.683342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.701050, 30.231524, 40.648098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034128, 0.164408, 0.985802,
		0.684327, -0.715028, 0.142940,
		0.728377, 0.679489, -0.088106,
		46.919563, 30.435369, 40.621666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.805573, 29.930014, 41.096050>,  <46.409698, 29.959728, 40.683342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.805573, 29.930014, 41.096050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.654560, 30.299650, 41.119793>,  <45.563953, 30.521433, 41.134041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.654560, 30.299650, 41.119793>,  <45.805573, 29.930014, 41.096050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.654560, 30.299650, 41.119793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623206, -0.300976, 0.721822,
		0.684896, 0.235517, 0.689528,
		-0.377533, 0.924092, 0.059361,
		45.541302, 30.576878, 41.137600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.779663, 30.140303, 41.800194>,  <45.805573, 29.930014, 41.096050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.779663, 30.140303, 41.800194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.502365, 30.326246, 41.579899>,  <45.335987, 30.437813, 41.447720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.502365, 30.326246, 41.579899>,  <45.779663, 30.140303, 41.800194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.502365, 30.326246, 41.579899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708954, -0.302458, 0.637106,
		0.129590, 0.832120, 0.539243,
		-0.693247, 0.464860, -0.550739,
		45.294392, 30.465704, 41.414677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.225792, 30.295343, 42.357235>,  <45.779663, 30.140303, 41.800194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.225792, 30.295343, 42.357235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.074879, 30.327457, 41.988190>,  <44.984329, 30.346725, 41.766762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.074879, 30.327457, 41.988190>,  <45.225792, 30.295343, 42.357235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.074879, 30.327457, 41.988190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922716, -0.117650, 0.367089,
		-0.079073, 0.989804, 0.118470,
		-0.377284, 0.080287, -0.922611,
		44.961693, 30.351543, 41.711407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.587772, 30.846689, 42.365101>,  <45.225792, 30.295343, 42.357235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.587772, 30.846689, 42.365101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.594608, 30.560287, 42.085945>,  <44.598709, 30.388447, 41.918453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.594608, 30.560287, 42.085945>,  <44.587772, 30.846689, 42.365101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.594608, 30.560287, 42.085945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926776, -0.273282, 0.257687,
		-0.375225, 0.642381, -0.668246,
		0.017086, -0.716005, -0.697886,
		44.599735, 30.345486, 41.876579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.119186, 30.959879, 41.769264>,  <44.587772, 30.846689, 42.365101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.119186, 30.959879, 41.769264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.165974, 30.566561, 41.825039>,  <44.194046, 30.330570, 41.858505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.165974, 30.566561, 41.825039>,  <44.119186, 30.959879, 41.769264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.165974, 30.566561, 41.825039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989756, -0.103845, 0.097981,
		-0.081864, -0.149476, -0.985371,
		0.116971, -0.983297, 0.139444,
		44.201065, 30.271572, 41.866871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.256382, 31.712299, 41.823074>,  <44.119186, 30.959879, 41.769264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.256382, 31.712299, 41.823074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.587742, 31.832199, 42.012348>,  <44.786560, 31.904139, 42.125912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.587742, 31.832199, 42.012348>,  <44.256382, 31.712299, 41.823074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.587742, 31.832199, 42.012348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485082, 0.038493, -0.873621,
		-0.280083, 0.953240, -0.113516,
		0.828402, 0.299751, 0.473181,
		44.836262, 31.922125, 42.154301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.395241, 32.472832, 41.696804>,  <44.256382, 31.712299, 41.823074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.395241, 32.472832, 41.696804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.748722, 32.289986, 41.737038>,  <44.960812, 32.180279, 41.761177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.748722, 32.289986, 41.737038>,  <44.395241, 32.472832, 41.696804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.748722, 32.289986, 41.737038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331571, 0.459726, -0.823840,
		0.330348, 0.761380, 0.557826,
		0.883703, -0.457113, 0.100582,
		45.013832, 32.152851, 41.767212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.981949, 32.979797, 41.641716>,  <44.395241, 32.472832, 41.696804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.981949, 32.979797, 41.641716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.098129, 32.622177, 41.505299>,  <45.167835, 32.407604, 41.423450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.098129, 32.622177, 41.505299>,  <44.981949, 32.979797, 41.641716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.098129, 32.622177, 41.505299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493541, 0.445309, -0.747072,
		0.819791, 0.048667, 0.570590,
		0.290447, -0.894053, -0.341041,
		45.185265, 32.353962, 41.402985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.705177, 32.977886, 41.458027>,  <44.981949, 32.979797, 41.641716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.705177, 32.977886, 41.458027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.519577, 32.710476, 41.225548>,  <45.408218, 32.550030, 41.086060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.519577, 32.710476, 41.225548>,  <45.705177, 32.977886, 41.458027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.519577, 32.710476, 41.225548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257059, 0.526249, -0.810545,
		0.847719, -0.525491, -0.072328,
		-0.463997, -0.668522, -0.581193,
		45.380379, 32.509918, 41.051189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.226112, 32.822662, 40.952000>,  <45.705177, 32.977886, 41.458027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.226112, 32.822662, 40.952000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.857559, 32.725243, 40.830841>,  <45.636429, 32.666790, 40.758144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.857559, 32.725243, 40.830841>,  <46.226112, 32.822662, 40.952000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.857559, 32.725243, 40.830841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200140, 0.370759, -0.906908,
		0.333170, -0.896229, -0.292868,
		-0.921380, -0.243539, -0.302897,
		45.581146, 32.652180, 40.739971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.326443, 32.470554, 40.259151>,  <46.226112, 32.822662, 40.952000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.326443, 32.470554, 40.259151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.947830, 32.598488, 40.242214>,  <45.720665, 32.675247, 40.232052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.947830, 32.598488, 40.242214>,  <46.326443, 32.470554, 40.259151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.947830, 32.598488, 40.242214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180837, 0.417262, -0.890612,
		-0.267179, -0.850646, -0.452788,
		-0.946527, 0.319834, -0.042344,
		45.663872, 32.694439, 40.229511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.064575, 32.372009, 39.579494>,  <46.326443, 32.470554, 40.259151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.064575, 32.372009, 39.579494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.836246, 32.653614, 39.748505>,  <45.699249, 32.822578, 39.849911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.836246, 32.653614, 39.748505>,  <46.064575, 32.372009, 39.579494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.836246, 32.653614, 39.748505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015147, 0.523546, -0.851862,
		-0.820935, -0.479860, -0.309515,
		-0.570820, 0.704012, 0.422529,
		45.665001, 32.864819, 39.875263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.499855, 32.618507, 39.110729>,  <46.064575, 32.372009, 39.579494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.499855, 32.618507, 39.110729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.533676, 32.927940, 39.361938>,  <45.553970, 33.113602, 39.512665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.533676, 32.927940, 39.361938>,  <45.499855, 32.618507, 39.110729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.533676, 32.927940, 39.361938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142172, 0.633201, -0.760817,
		-0.986224, -0.024957, 0.163523,
		0.084555, 0.773585, 0.628026,
		45.559044, 33.160015, 39.550346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.791855, 32.997108, 39.090424>,  <45.499855, 32.618507, 39.110729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.791855, 32.997108, 39.090424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.074188, 33.257893, 39.201241>,  <45.243587, 33.414364, 39.267731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.074188, 33.257893, 39.201241>,  <44.791855, 32.997108, 39.090424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.074188, 33.257893, 39.201241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177243, 0.541188, -0.822010,
		-0.685846, 0.531099, 0.497543,
		0.705833, 0.651959, 0.277038,
		45.285938, 33.453480, 39.284351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.537292, 33.537083, 38.823444>,  <44.791855, 32.997108, 39.090424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.537292, 33.537083, 38.823444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.912815, 33.650944, 38.901016>,  <45.138130, 33.719261, 38.947559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.912815, 33.650944, 38.901016>,  <44.537292, 33.537083, 38.823444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.912815, 33.650944, 38.901016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017019, 0.600680, -0.799308,
		-0.344019, 0.747097, 0.568768,
		0.938809, 0.284657, 0.193931,
		45.194458, 33.736340, 38.959194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.604721, 34.397362, 38.749538>,  <44.537292, 33.537083, 38.823444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.604721, 34.397362, 38.749538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.963924, 34.223476, 38.722424>,  <45.179447, 34.119144, 38.706154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.963924, 34.223476, 38.722424>,  <44.604721, 34.397362, 38.749538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.963924, 34.223476, 38.722424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158723, 0.463801, -0.871605,
		0.410344, 0.771951, 0.485498,
		0.898012, -0.434717, -0.067792,
		45.233330, 34.093060, 38.702087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.017326, 34.911026, 38.531719>,  <44.604721, 34.397362, 38.749538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.017326, 34.911026, 38.531719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.204716, 34.569077, 38.442516>,  <45.317150, 34.363907, 38.388996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.204716, 34.569077, 38.442516>,  <45.017326, 34.911026, 38.531719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.204716, 34.569077, 38.442516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304096, 0.393022, -0.867790,
		0.829494, 0.338719, 0.444083,
		0.468472, -0.854870, -0.223006,
		45.345257, 34.312614, 38.375614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.581020, 35.219872, 38.297554>,  <45.017326, 34.911026, 38.531719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.581020, 35.219872, 38.297554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.625980, 34.840199, 38.179970>,  <45.652958, 34.612392, 38.109421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.625980, 34.840199, 38.179970>,  <45.581020, 35.219872, 38.297554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.625980, 34.840199, 38.179970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145940, 0.308395, -0.939997,
		0.982887, 0.062759, 0.173189,
		0.112404, -0.949186, -0.293958,
		45.659702, 34.555443, 38.091782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.264584, 35.170406, 38.054848>,  <45.581020, 35.219872, 38.297554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.264584, 35.170406, 38.054848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.036030, 34.890133, 37.883942>,  <45.898895, 34.721970, 37.781399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.036030, 34.890133, 37.883942>,  <46.264584, 35.170406, 38.054848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.036030, 34.890133, 37.883942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311733, 0.296294, -0.902792,
		0.759170, -0.649036, 0.049129,
		-0.571387, -0.700687, -0.427263,
		45.864613, 34.679928, 37.755764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.656727, 34.940849, 37.590542>,  <46.264584, 35.170406, 38.054848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.656727, 34.940849, 37.590542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.326950, 34.772903, 37.438751>,  <46.129082, 34.672134, 37.347679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.326950, 34.772903, 37.438751>,  <46.656727, 34.940849, 37.590542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.326950, 34.772903, 37.438751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320465, 0.206315, -0.924519,
		0.466466, -0.883825, -0.035544,
		-0.824446, -0.419866, -0.379474,
		46.079617, 34.646942, 37.324909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.769341, 34.354568, 37.089466>,  <46.656727, 34.940849, 37.590542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.769341, 34.354568, 37.089466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.401207, 34.478397, 36.993839>,  <46.180328, 34.552692, 36.936462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.401207, 34.478397, 36.993839>,  <46.769341, 34.354568, 37.089466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.401207, 34.478397, 36.993839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288093, 0.123092, -0.949658,
		-0.264558, -0.942876, -0.202471,
		-0.920332, 0.309570, -0.239071,
		46.125107, 34.571270, 36.922119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.559612, 34.079235, 36.466934>,  <46.769341, 34.354568, 37.089466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.559612, 34.079235, 36.466934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.323673, 34.398373, 36.516769>,  <46.182110, 34.589855, 36.546669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.323673, 34.398373, 36.516769>,  <46.559612, 34.079235, 36.466934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.323673, 34.398373, 36.516769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016009, 0.165810, -0.986028,
		-0.807354, -0.579614, -0.110576,
		-0.589850, 0.797844, 0.124588,
		46.146717, 34.637726, 36.554146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.152584, 34.045040, 35.908382>,  <46.559612, 34.079235, 36.466934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.152584, 34.045040, 35.908382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.105747, 34.418747, 36.043106>,  <46.077644, 34.642971, 36.123940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.105747, 34.418747, 36.043106>,  <46.152584, 34.045040, 35.908382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.105747, 34.418747, 36.043106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010503, 0.337954, -0.941104,
		-0.993066, -0.113730, -0.029758,
		-0.117089, 0.934266, 0.336806,
		46.070621, 34.699028, 36.144146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.530453, 34.383820, 35.500500>,  <46.152584, 34.045040, 35.908382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.530453, 34.383820, 35.500500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.756927, 34.685432, 35.633686>,  <45.892815, 34.866398, 35.713600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.756927, 34.685432, 35.633686>,  <45.530453, 34.383820, 35.500500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.756927, 34.685432, 35.633686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018354, 0.415386, -0.909460,
		-0.824070, 0.508817, 0.249027,
		0.566191, 0.754030, 0.332968,
		45.926785, 34.911640, 35.733578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.222061, 34.907646, 35.258190>,  <45.530453, 34.383820, 35.500500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.222061, 34.907646, 35.258190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.595284, 35.022285, 35.345161>,  <45.819218, 35.091068, 35.397343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.595284, 35.022285, 35.345161>,  <45.222061, 34.907646, 35.258190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.595284, 35.022285, 35.345161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153786, 0.228609, -0.961295,
		-0.325206, 0.930377, 0.169231,
		0.933055, 0.286594, 0.217424,
		45.875198, 35.108265, 35.410389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.257172, 35.527920, 34.945656>,  <45.222061, 34.907646, 35.258190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.257172, 35.527920, 34.945656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.623314, 35.382824, 35.015560>,  <45.842999, 35.295769, 35.057503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.623314, 35.382824, 35.015560>,  <45.257172, 35.527920, 34.945656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.623314, 35.382824, 35.015560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333849, 0.441113, -0.833045,
		0.225089, 0.820878, 0.524875,
		0.915358, -0.362738, 0.174760,
		45.897923, 35.274002, 35.067989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.734177, 36.141502, 34.996704>,  <45.257172, 35.527920, 34.945656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.734177, 36.141502, 34.996704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.920952, 35.800632, 34.902241>,  <46.033016, 35.596111, 34.845562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.920952, 35.800632, 34.902241>,  <45.734177, 36.141502, 34.996704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.920952, 35.800632, 34.902241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381148, 0.434925, -0.815823,
		0.797933, 0.290927, 0.527887,
		0.466936, -0.852175, -0.236154,
		46.061031, 35.544979, 34.831394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.319790, 36.352577, 34.579708>,  <45.734177, 36.141502, 34.996704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.319790, 36.352577, 34.579708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.298775, 35.957642, 34.519833>,  <46.286167, 35.720680, 34.483910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.298775, 35.957642, 34.519833>,  <46.319790, 36.352577, 34.579708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.298775, 35.957642, 34.519833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345461, 0.122669, -0.930381,
		0.936961, -0.100590, 0.334642,
		-0.052537, -0.987337, -0.149686,
		46.283012, 35.661442, 34.474926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.935299, 36.168995, 34.269337>,  <46.319790, 36.352577, 34.579708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.935299, 36.168995, 34.269337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.647396, 35.912891, 34.161987>,  <46.474655, 35.759232, 34.097576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.647396, 35.912891, 34.161987>,  <46.935299, 36.168995, 34.269337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.647396, 35.912891, 34.161987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333158, 0.020603, -0.942646,
		0.609063, -0.767886, 0.198477,
		-0.719756, -0.640255, -0.268376,
		46.431469, 35.720814, 34.081474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.679878, 36.324539, 34.097435>,  <46.935299, 36.168995, 34.269337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.679878, 36.324539, 34.097435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.640293, 36.314770, 34.495350>,  <47.616543, 36.308907, 34.734100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.640293, 36.314770, 34.495350>,  <47.679878, 36.324539, 34.097435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.640293, 36.314770, 34.495350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099327, -0.994463, -0.034301,
		0.990121, -0.102204, 0.095990,
		-0.098964, -0.024428, 0.994791,
		47.610603, 36.307442, 34.793789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.145245, 35.842308, 34.242687>,  <47.679878, 36.324539, 34.097435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.145245, 35.842308, 34.242687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.855202, 35.891685, 34.513683>,  <47.681175, 35.921310, 34.676281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.855202, 35.891685, 34.513683>,  <48.145245, 35.842308, 34.242687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.855202, 35.891685, 34.513683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240785, -0.967152, -0.081488,
		0.645173, -0.222216, 0.731007,
		-0.725103, 0.123441, 0.677486,
		47.637672, 35.928719, 34.716930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.349045, 35.375072, 34.805870>,  <48.145245, 35.842308, 34.242687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.349045, 35.375072, 34.805870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.963249, 35.465542, 34.751316>,  <47.731770, 35.519821, 34.718582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.963249, 35.465542, 34.751316>,  <48.349045, 35.375072, 34.805870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.963249, 35.465542, 34.751316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203479, -0.965546, -0.162228,
		-0.168378, -0.128716, 0.977283,
		-0.964492, 0.226172, -0.136385,
		47.673901, 35.533394, 34.710400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.004097, 34.864307, 35.249348>,  <48.349045, 35.375072, 34.805870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.004097, 34.864307, 35.249348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.765068, 34.995094, 34.956497>,  <47.621651, 35.073566, 34.780788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.765068, 34.995094, 34.956497>,  <48.004097, 34.864307, 35.249348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.765068, 34.995094, 34.956497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379219, -0.919752, -0.101242,
		-0.706474, 0.217135, 0.673607,
		-0.597568, 0.326969, -0.732123,
		47.585796, 35.093185, 34.736862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.881531, 36.801239, 44.805927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.585869, 36.557365, 44.920418>,  <38.408470, 36.411041, 44.989113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.585869, 36.557365, 44.920418>,  <38.881531, 36.801239, 44.805927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585869, 36.557365, 44.920418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233777, -0.166314, -0.957960,
		0.631659, -0.774999, -0.019598,
		-0.739159, -0.609685, 0.286231,
		38.364120, 36.374458, 45.006287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921696, 36.175476, 44.366611>,  <38.881531, 36.801239, 44.805927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921696, 36.175476, 44.366611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.548576, 36.172020, 44.510727>,  <38.324703, 36.169949, 44.597198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.548576, 36.172020, 44.510727>,  <38.921696, 36.175476, 44.366611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548576, 36.172020, 44.510727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332136, -0.367463, -0.868710,
		0.139898, -0.929998, 0.339900,
		-0.932799, -0.008638, 0.360293,
		38.268738, 36.169430, 44.618816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616325, 35.464996, 44.382248>,  <38.921696, 36.175476, 44.366611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616325, 35.464996, 44.382248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.318012, 35.731300, 44.372627>,  <38.139027, 35.891083, 44.366856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.318012, 35.731300, 44.372627>,  <38.616325, 35.464996, 44.382248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318012, 35.731300, 44.372627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342413, -0.414040, -0.843401,
		-0.571462, -0.620753, 0.536747,
		-0.745778, 0.665760, -0.024054,
		38.094280, 35.931026, 44.365410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109253, 35.100037, 44.037464>,  <38.616325, 35.464996, 44.382248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109253, 35.100037, 44.037464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.003510, 35.485397, 44.019676>,  <37.940063, 35.716614, 44.009003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.003510, 35.485397, 44.019676>,  <38.109253, 35.100037, 44.037464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003510, 35.485397, 44.019676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375769, -0.145357, -0.915243,
		-0.888207, -0.225245, 0.400441,
		-0.264361, 0.963398, -0.044467,
		37.924202, 35.774418, 44.006336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430351, 35.077484, 43.873745>,  <38.109253, 35.100037, 44.037464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430351, 35.077484, 43.873745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.549702, 35.447895, 43.781273>,  <37.621311, 35.670143, 43.725788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.549702, 35.447895, 43.781273>,  <37.430351, 35.077484, 43.873745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549702, 35.447895, 43.781273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320403, -0.130976, -0.938183,
		-0.899062, 0.354004, 0.257622,
		0.298378, 0.926027, -0.231180,
		37.639214, 35.725704, 43.711918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972881, 35.248947, 43.406227>,  <37.430351, 35.077484, 43.873745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972881, 35.248947, 43.406227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.274406, 35.501724, 43.334206>,  <37.455322, 35.653389, 43.290993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.274406, 35.501724, 43.334206>,  <36.972881, 35.248947, 43.406227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274406, 35.501724, 43.334206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138066, -0.115574, -0.983657,
		-0.642420, 0.766353, 0.000128,
		0.753813, 0.631938, -0.180055,
		37.500549, 35.691307, 43.280190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587860, 35.744003, 42.975018>,  <36.972881, 35.248947, 43.406227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587860, 35.744003, 42.975018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.983959, 35.783970, 42.936195>,  <37.221619, 35.807949, 42.912903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.983959, 35.783970, 42.936195>,  <36.587860, 35.744003, 42.975018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983959, 35.783970, 42.936195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069819, -0.246930, -0.966515,
		-0.120534, 0.963869, -0.237547,
		0.990251, 0.099912, -0.097059,
		37.281036, 35.813942, 42.907078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597416, 35.995853, 42.323608>,  <36.587860, 35.744003, 42.975018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597416, 35.995853, 42.323608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.969963, 35.868965, 42.395081>,  <37.193493, 35.792831, 42.437962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.969963, 35.868965, 42.395081>,  <36.597416, 35.995853, 42.323608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969963, 35.868965, 42.395081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015462, -0.455856, -0.889919,
		0.363755, 0.831603, -0.419665,
		0.931366, -0.317223, 0.178678,
		37.249374, 35.773800, 42.448685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079937, 36.254238, 41.761284>,  <36.597416, 35.995853, 42.323608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079937, 36.254238, 41.761284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.240360, 35.931248, 41.934319>,  <37.336613, 35.737453, 42.038139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.240360, 35.931248, 41.934319>,  <37.079937, 36.254238, 41.761284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240360, 35.931248, 41.934319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198890, -0.384211, -0.901568,
		0.894202, 0.447617, 0.006510,
		0.401056, -0.807478, 0.432589,
		37.360676, 35.689003, 42.064095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714420, 36.214180, 41.408321>,  <37.079937, 36.254238, 41.761284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714420, 36.214180, 41.408321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.654617, 35.859863, 41.584057>,  <37.618736, 35.647274, 41.689499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.654617, 35.859863, 41.584057>,  <37.714420, 36.214180, 41.408321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654617, 35.859863, 41.584057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319038, -0.463786, -0.826509,
		0.935875, 0.016599, 0.351940,
		-0.149506, -0.885792, 0.439341,
		37.609764, 35.594124, 41.715858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369930, 35.862110, 41.287548>,  <37.714420, 36.214180, 41.408321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369930, 35.862110, 41.287548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.079063, 35.593399, 41.344048>,  <37.904545, 35.432175, 41.377949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.079063, 35.593399, 41.344048>,  <38.369930, 35.862110, 41.287548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079063, 35.593399, 41.344048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190859, -0.395497, -0.898418,
		0.659399, -0.626338, 0.415805,
		-0.727163, -0.671776, 0.141248,
		37.860916, 35.391865, 41.386421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754150, 35.229038, 41.188229>,  <38.369930, 35.862110, 41.287548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754150, 35.229038, 41.188229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.365585, 35.151787, 41.133018>,  <38.132446, 35.105434, 41.099892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.365585, 35.151787, 41.133018>,  <38.754150, 35.229038, 41.188229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365585, 35.151787, 41.133018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175749, -0.194279, -0.965074,
		0.159567, -0.961747, 0.222668,
		-0.971417, -0.193127, -0.138025,
		38.074162, 35.093849, 41.091610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625862, 34.675758, 40.801773>,  <38.754150, 35.229038, 41.188229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625862, 34.675758, 40.801773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.269398, 34.840599, 40.725883>,  <38.055519, 34.939503, 40.680351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.269398, 34.840599, 40.725883>,  <38.625862, 34.675758, 40.801773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269398, 34.840599, 40.725883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054408, -0.318090, -0.946498,
		-0.450406, -0.853808, 0.261049,
		-0.891165, 0.412105, -0.189724,
		38.002048, 34.964230, 40.668968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382771, 34.189137, 40.376320>,  <38.625862, 34.675758, 40.801773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382771, 34.189137, 40.376320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.154671, 34.509430, 40.302959>,  <38.017811, 34.701607, 40.258942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.154671, 34.509430, 40.302959>,  <38.382771, 34.189137, 40.376320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154671, 34.509430, 40.302959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132899, -0.130396, -0.982515,
		-0.810650, -0.584653, -0.032058,
		-0.570250, 0.800736, -0.183406,
		37.983597, 34.749649, 40.247936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930122, 33.980133, 39.845947>,  <38.382771, 34.189137, 40.376320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930122, 33.980133, 39.845947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.914230, 34.379745, 39.838444>,  <37.904697, 34.619514, 39.833942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.914230, 34.379745, 39.838444>,  <37.930122, 33.980133, 39.845947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914230, 34.379745, 39.838444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141068, -0.012981, -0.989915,
		-0.989203, -0.041972, -0.140416,
		-0.039726, 0.999034, -0.018761,
		37.902313, 34.679455, 39.832817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417171, 34.176613, 39.335468>,  <37.930122, 33.980133, 39.845947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417171, 34.176613, 39.335468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.660877, 34.489071, 39.390034>,  <37.807102, 34.676544, 39.422771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.660877, 34.489071, 39.390034>,  <37.417171, 34.176613, 39.335468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660877, 34.489071, 39.390034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128099, 0.072815, -0.989085,
		-0.782549, 0.620093, -0.055700,
		0.609268, 0.781142, 0.136415,
		37.843658, 34.723415, 39.430958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183872, 34.588852, 38.816833>,  <37.417171, 34.176613, 39.335468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183872, 34.588852, 38.816833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.539242, 34.738781, 38.922817>,  <37.752464, 34.828739, 38.986408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.539242, 34.738781, 38.922817>,  <37.183872, 34.588852, 38.816833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539242, 34.738781, 38.922817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180100, 0.246303, -0.952312,
		-0.422207, 0.893781, 0.151318,
		0.888429, 0.374820, 0.264961,
		37.805771, 34.851227, 39.002304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131645, 35.255177, 38.532948>,  <37.183872, 34.588852, 38.816833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131645, 35.255177, 38.532948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.513470, 35.147934, 38.585014>,  <37.742565, 35.083588, 38.616253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.513470, 35.147934, 38.585014>,  <37.131645, 35.255177, 38.532948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513470, 35.147934, 38.585014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169335, 0.128501, -0.977145,
		0.245249, 0.954782, 0.168061,
		0.954557, -0.268103, 0.130163,
		37.799835, 35.067505, 38.624062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461174, 35.701912, 38.200268>,  <37.131645, 35.255177, 38.532948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461174, 35.701912, 38.200268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.724220, 35.402954, 38.238102>,  <37.882050, 35.223579, 38.260803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.724220, 35.402954, 38.238102>,  <37.461174, 35.701912, 38.200268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724220, 35.402954, 38.238102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259987, 0.107311, -0.959631,
		0.707069, 0.655661, 0.264881,
		0.657617, -0.747391, 0.094587,
		37.921505, 35.178738, 38.266479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890980, 35.827328, 37.763893>,  <37.461174, 35.701912, 38.200268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890980, 35.827328, 37.763893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.012299, 35.451981, 37.830208>,  <38.085091, 35.226772, 37.869995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.012299, 35.451981, 37.830208>,  <37.890980, 35.827328, 37.763893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012299, 35.451981, 37.830208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226486, -0.098005, -0.969071,
		0.925589, 0.331466, 0.182802,
		0.303298, -0.938363, 0.165785,
		38.103287, 35.170471, 37.879944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639370, 35.739330, 37.663624>,  <37.890980, 35.827328, 37.763893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639370, 35.739330, 37.663624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.447697, 35.392323, 37.610260>,  <38.332691, 35.184120, 37.578239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.447697, 35.392323, 37.610260>,  <38.639370, 35.739330, 37.663624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447697, 35.392323, 37.610260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409806, -0.086719, -0.908041,
		0.776170, -0.489793, 0.397068,
		-0.479186, -0.867515, -0.133412,
		38.303940, 35.132069, 37.570236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012642, 35.368019, 37.167633>,  <38.639370, 35.739330, 37.663624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012642, 35.368019, 37.167633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.661732, 35.176170, 37.175240>,  <38.451187, 35.061062, 37.179802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.661732, 35.176170, 37.175240>,  <39.012642, 35.368019, 37.167633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661732, 35.176170, 37.175240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090931, -0.204963, -0.974537,
		0.471303, -0.853204, 0.223420,
		-0.877271, -0.479618, 0.019017,
		38.398552, 35.032284, 37.180946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594757, 35.938080, 37.013695>,  <39.012642, 35.368019, 37.167633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594757, 35.938080, 37.013695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.919598, 36.038990, 36.803230>,  <40.114502, 36.099537, 36.676952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.919598, 36.038990, 36.803230>,  <39.594757, 35.938080, 37.013695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919598, 36.038990, 36.803230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472201, 0.245606, 0.846583,
		0.342801, -0.935967, 0.080333,
		0.812104, 0.252277, -0.526159,
		40.163231, 36.114674, 36.645382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164532, 35.545235, 37.262489>,  <39.594757, 35.938080, 37.013695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164532, 35.545235, 37.262489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.273415, 35.886452, 37.084404>,  <40.338745, 36.091183, 36.977554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.273415, 35.886452, 37.084404>,  <40.164532, 35.545235, 37.262489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273415, 35.886452, 37.084404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726294, 0.121355, 0.676587,
		0.631189, -0.507528, -0.586529,
		0.272209, 0.853047, -0.445212,
		40.355076, 36.142365, 36.950840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765526, 35.603718, 37.427879>,  <40.164532, 35.545235, 37.262489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765526, 35.603718, 37.427879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.712250, 35.991280, 37.344463>,  <40.680283, 36.223816, 37.294415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.712250, 35.991280, 37.344463>,  <40.765526, 35.603718, 37.427879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712250, 35.991280, 37.344463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580257, 0.246817, 0.776133,
		0.803468, -0.017630, -0.595087,
		-0.133195, 0.968902, -0.208540,
		40.672291, 36.281952, 37.281902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434692, 35.816624, 37.585716>,  <40.765526, 35.603718, 37.427879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434692, 35.816624, 37.585716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.180737, 36.125496, 37.595928>,  <41.028362, 36.310818, 37.602055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.180737, 36.125496, 37.595928>,  <41.434692, 35.816624, 37.585716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180737, 36.125496, 37.595928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460673, 0.351821, 0.814864,
		0.620240, 0.529110, -0.579090,
		-0.634888, 0.772182, 0.025533,
		40.990269, 36.357151, 37.603588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.765491, 36.384144, 37.840034>,  <41.434692, 35.816624, 37.585716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.765491, 36.384144, 37.840034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.394165, 36.509937, 37.919353>,  <41.171368, 36.585415, 37.966946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.394165, 36.509937, 37.919353>,  <41.765491, 36.384144, 37.840034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394165, 36.509937, 37.919353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308194, 0.352622, 0.883558,
		0.207943, 0.881337, -0.424269,
		-0.928319, 0.314487, 0.198297,
		41.115669, 36.604282, 37.978844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894547, 37.170811, 38.018288>,  <41.765491, 36.384144, 37.840034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894547, 37.170811, 38.018288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.556824, 37.026875, 38.177116>,  <41.354191, 36.940514, 38.272415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.556824, 37.026875, 38.177116>,  <41.894547, 37.170811, 38.018288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.556824, 37.026875, 38.177116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158332, 0.540393, 0.826381,
		-0.511940, 0.760586, -0.399282,
		-0.844303, -0.359839, 0.397074,
		41.303532, 36.918922, 38.296238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666454, 37.789894, 38.438263>,  <41.894547, 37.170811, 38.018288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666454, 37.789894, 38.438263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.433975, 37.500492, 38.587257>,  <41.294487, 37.326851, 38.676655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.433975, 37.500492, 38.587257>,  <41.666454, 37.789894, 38.438263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433975, 37.500492, 38.587257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343274, 0.197033, 0.918336,
		-0.737813, 0.661602, 0.133845,
		-0.581201, -0.723506, 0.372484,
		41.259617, 37.283440, 38.699001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379478, 38.130466, 38.991364>,  <41.666454, 37.789894, 38.438263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379478, 38.130466, 38.991364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.305668, 37.742970, 39.057693>,  <41.261383, 37.510471, 39.097492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.305668, 37.742970, 39.057693>,  <41.379478, 38.130466, 38.991364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305668, 37.742970, 39.057693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319867, 0.100345, 0.942134,
		-0.929320, 0.226888, 0.291352,
		-0.184523, -0.968738, 0.165827,
		41.250309, 37.452347, 39.107441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866772, 38.119293, 39.436871>,  <41.379478, 38.130466, 38.991364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866772, 38.119293, 39.436871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.044724, 37.762062, 39.463707>,  <41.151493, 37.547726, 39.479809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.044724, 37.762062, 39.463707>,  <40.866772, 38.119293, 39.436871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044724, 37.762062, 39.463707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075980, 0.112284, 0.990767,
		-0.892363, -0.435670, 0.117809,
		0.444876, -0.893075, 0.067096,
		41.178185, 37.494141, 39.483837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449699, 37.664291, 39.951027>,  <40.866772, 38.119293, 39.436871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449699, 37.664291, 39.951027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.820950, 37.515507, 39.945045>,  <41.043701, 37.426235, 39.941456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.820950, 37.515507, 39.945045>,  <40.449699, 37.664291, 39.951027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820950, 37.515507, 39.945045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001630, -0.044238, 0.999020,
		-0.372260, -0.927193, -0.041665,
		0.928127, -0.371963, -0.014957,
		41.099388, 37.403919, 39.940559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473949, 37.087818, 40.455292>,  <40.449699, 37.664291, 39.951027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473949, 37.087818, 40.455292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.863991, 37.155937, 40.398483>,  <41.098015, 37.196808, 40.364399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.863991, 37.155937, 40.398483>,  <40.473949, 37.087818, 40.455292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863991, 37.155937, 40.398483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171664, -0.174335, 0.969607,
		0.140364, -0.969848, -0.199229,
		0.975105, 0.170299, -0.142018,
		41.156521, 37.207027, 40.355877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786999, 36.556767, 40.720001>,  <40.473949, 37.087818, 40.455292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786999, 36.556767, 40.720001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.074089, 36.835297, 40.720192>,  <41.246342, 37.002415, 40.720306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.074089, 36.835297, 40.720192>,  <40.786999, 36.556767, 40.720001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074089, 36.835297, 40.720192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227755, -0.235402, 0.944835,
		0.658030, -0.678020, -0.327546,
		0.717722, 0.696330, 0.000479,
		41.289406, 37.044197, 40.720337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387596, 36.251030, 41.006725>,  <40.786999, 36.556767, 40.720001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.387596, 36.251030, 41.006725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.473991, 36.640293, 41.038494>,  <41.525829, 36.873852, 41.057556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.473991, 36.640293, 41.038494>,  <41.387596, 36.251030, 41.006725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473991, 36.640293, 41.038494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474888, -0.175770, 0.862315,
		0.853131, -0.148530, -0.500106,
		0.215983, 0.973162, 0.079420,
		41.538788, 36.932243, 41.062321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024242, 36.271751, 41.352886>,  <41.387596, 36.251030, 41.006725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024242, 36.271751, 41.352886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.870232, 36.633415, 41.426910>,  <41.777824, 36.850414, 41.471325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.870232, 36.633415, 41.426910>,  <42.024242, 36.271751, 41.352886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870232, 36.633415, 41.426910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197916, -0.114964, 0.973454,
		0.901435, 0.411432, -0.134684,
		-0.385026, 0.904161, 0.185062,
		41.754723, 36.904663, 41.482430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463730, 36.619198, 41.881359>,  <42.024242, 36.271751, 41.352886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463730, 36.619198, 41.881359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.118973, 36.822002, 41.878021>,  <41.912117, 36.943687, 41.876019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.118973, 36.822002, 41.878021>,  <42.463730, 36.619198, 41.881359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118973, 36.822002, 41.878021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026059, 0.060729, 0.997814,
		0.506415, 0.859795, -0.065554,
		-0.861896, 0.507016, -0.008349,
		41.860405, 36.974106, 41.875515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.524345, 37.123474, 42.437843>,  <42.463730, 36.619198, 41.881359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.524345, 37.123474, 42.437843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.133114, 37.089630, 42.361744>,  <41.898373, 37.069324, 42.316086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.133114, 37.089630, 42.361744>,  <42.524345, 37.123474, 42.437843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133114, 37.089630, 42.361744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204968, 0.230511, 0.951238,
		-0.036632, 0.969384, -0.242802,
		-0.978083, -0.084612, -0.190248,
		41.839687, 37.064247, 42.304668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.252285, 37.651146, 42.780121>,  <42.524345, 37.123474, 42.437843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.252285, 37.651146, 42.780121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.963505, 37.378120, 42.734699>,  <41.790237, 37.214306, 42.707447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.963505, 37.378120, 42.734699>,  <42.252285, 37.651146, 42.780121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963505, 37.378120, 42.734699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308122, 0.170195, 0.935999,
		-0.619550, 0.710736, -0.333185,
		-0.721954, -0.682560, -0.113549,
		41.746918, 37.173351, 42.700634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828899, 37.830555, 43.257088>,  <42.252285, 37.651146, 42.780121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828899, 37.830555, 43.257088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.654480, 37.476078, 43.194458>,  <41.549828, 37.263390, 43.156879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.654480, 37.476078, 43.194458>,  <41.828899, 37.830555, 43.257088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654480, 37.476078, 43.194458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210076, -0.068945, 0.975251,
		-0.875060, 0.458150, -0.156105,
		-0.436049, -0.886197, -0.156578,
		41.523666, 37.210220, 43.147484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.103584, 37.851269, 43.585129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.191608, 37.463013, 43.546261>,  <41.244423, 37.230061, 43.522942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.191608, 37.463013, 43.546261>,  <41.103584, 37.851269, 43.585129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191608, 37.463013, 43.546261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288092, -0.159834, 0.944170,
		-0.931976, -0.179776, -0.314804,
		0.220056, -0.970636, -0.097169,
		41.257626, 37.171822, 43.517109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541355, 37.487961, 43.788357>,  <41.103584, 37.851269, 43.585129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541355, 37.487961, 43.788357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.844051, 37.229355, 43.827045>,  <41.025669, 37.074192, 43.850258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.844051, 37.229355, 43.827045>,  <40.541355, 37.487961, 43.788357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844051, 37.229355, 43.827045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329128, -0.248967, 0.910873,
		-0.564815, -0.721131, -0.401191,
		0.756742, -0.646518, 0.096724,
		41.071075, 37.035400, 43.856064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315937, 36.846889, 44.019291>,  <40.541355, 37.487961, 43.788357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315937, 36.846889, 44.019291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.700878, 36.773396, 44.099411>,  <40.931843, 36.729301, 44.147484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.700878, 36.773396, 44.099411>,  <40.315937, 36.846889, 44.019291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700878, 36.773396, 44.099411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256487, -0.370010, 0.892921,
		-0.089946, -0.910679, -0.403205,
		0.962354, -0.183732, 0.200297,
		40.989586, 36.718277, 44.159500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332821, 36.157982, 44.295162>,  <40.315937, 36.846889, 44.019291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332821, 36.157982, 44.295162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.659672, 36.325806, 44.453289>,  <40.855782, 36.426502, 44.548164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.659672, 36.325806, 44.453289>,  <40.332821, 36.157982, 44.295162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659672, 36.325806, 44.453289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200568, -0.435993, 0.877316,
		0.540442, -0.796165, -0.272111,
		0.817126, 0.419562, 0.395314,
		40.904808, 36.451675, 44.571884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557598, 35.589611, 44.784840>,  <40.332821, 36.157982, 44.295162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557598, 35.589611, 44.784840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.768326, 35.913479, 44.888302>,  <40.894760, 36.107800, 44.950378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.768326, 35.913479, 44.888302>,  <40.557598, 35.589611, 44.784840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768326, 35.913479, 44.888302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205224, -0.416468, 0.885685,
		0.824832, -0.413510, -0.385566,
		0.526815, 0.809669, 0.258654,
		40.926369, 36.156380, 44.965897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133095, 35.287746, 44.959625>,  <40.557598, 35.589611, 44.784840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133095, 35.287746, 44.959625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.111416, 35.654404, 45.118034>,  <41.098408, 35.874397, 45.213081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.111416, 35.654404, 45.118034>,  <41.133095, 35.287746, 44.959625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111416, 35.654404, 45.118034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175680, -0.381666, 0.907451,
		0.982955, 0.118751, -0.140352,
		-0.054193, 0.916640, 0.396022,
		41.095158, 35.929398, 45.236839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644539, 35.330292, 45.457737>,  <41.133095, 35.287746, 44.959625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644539, 35.330292, 45.457737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.406754, 35.623341, 45.590332>,  <41.264084, 35.799171, 45.669888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.406754, 35.623341, 45.590332>,  <41.644539, 35.330292, 45.457737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406754, 35.623341, 45.590332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031032, -0.391024, 0.919857,
		0.803526, 0.557105, 0.209714,
		-0.594460, 0.732621, 0.331486,
		41.228416, 35.843128, 45.689777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066509, 35.604836, 46.026482>,  <41.644539, 35.330292, 45.457737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.066509, 35.604836, 46.026482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.709171, 35.762028, 46.113670>,  <41.494770, 35.856342, 46.165981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.709171, 35.762028, 46.113670>,  <42.066509, 35.604836, 46.026482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.709171, 35.762028, 46.113670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196220, -0.095244, 0.975923,
		0.404276, 0.914602, 0.007976,
		-0.893342, 0.392977, 0.217968,
		41.441170, 35.879921, 46.179062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.136330, 36.214115, 46.462013>,  <42.066509, 35.604836, 46.026482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.136330, 36.214115, 46.462013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.753796, 36.123310, 46.535648>,  <41.524277, 36.068825, 46.579830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.753796, 36.123310, 46.535648>,  <42.136330, 36.214115, 46.462013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.753796, 36.123310, 46.535648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210936, -0.100116, 0.972360,
		-0.202311, 0.968732, 0.143630,
		-0.956335, -0.227016, 0.184085,
		41.466896, 36.055206, 46.590874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878029, 36.694435, 46.971611>,  <42.136330, 36.214115, 46.462013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.878029, 36.694435, 46.971611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.646168, 36.369595, 46.998425>,  <41.507050, 36.174690, 47.014511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.646168, 36.369595, 46.998425>,  <41.878029, 36.694435, 46.971611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.646168, 36.369595, 46.998425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162960, -0.034930, 0.986014,
		-0.798403, 0.582469, 0.152588,
		-0.579653, -0.812102, 0.067031,
		41.472271, 36.125965, 47.018536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371983, 36.743816, 47.589283>,  <41.878029, 36.694435, 46.971611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371983, 36.743816, 47.589283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.421631, 36.356567, 47.502258>,  <41.451420, 36.124218, 47.450043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.421631, 36.356567, 47.502258>,  <41.371983, 36.743816, 47.589283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421631, 36.356567, 47.502258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135713, -0.200635, 0.970220,
		-0.982943, -0.149951, 0.106484,
		0.124121, -0.968122, -0.217563,
		41.458866, 36.066132, 47.436989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248295, 36.427498, 48.202724>,  <41.371983, 36.743816, 47.589283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248295, 36.427498, 48.202724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.407825, 36.115337, 48.010094>,  <41.503544, 35.928040, 47.894516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.407825, 36.115337, 48.010094>,  <41.248295, 36.427498, 48.202724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407825, 36.115337, 48.010094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414107, -0.315286, 0.853880,
		-0.818201, -0.539974, 0.197424,
		0.398828, -0.780400, -0.481574,
		41.527473, 35.881218, 47.865623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005245, 35.794193, 48.555580>,  <41.248295, 36.427498, 48.202724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005245, 35.794193, 48.555580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.352314, 35.758076, 48.360031>,  <41.560555, 35.736404, 48.242702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.352314, 35.758076, 48.360031>,  <41.005245, 35.794193, 48.555580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.352314, 35.758076, 48.360031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434110, -0.341615, 0.833575,
		-0.242275, -0.935492, -0.257211,
		0.867670, -0.090297, -0.488872,
		41.612614, 35.730988, 48.213371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249710, 35.115131, 48.875679>,  <41.005245, 35.794193, 48.555580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249710, 35.115131, 48.875679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.562595, 35.270542, 48.680870>,  <41.750324, 35.363789, 48.563984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.562595, 35.270542, 48.680870>,  <41.249710, 35.115131, 48.875679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.562595, 35.270542, 48.680870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621246, -0.427556, 0.656696,
		0.046915, -0.816236, -0.575810,
		0.782210, 0.388529, -0.487024,
		41.797260, 35.387100, 48.534763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.715794, 34.627678, 48.959805>,  <41.249710, 35.115131, 48.875679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.715794, 34.627678, 48.959805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.912277, 34.969334, 48.891510>,  <42.030167, 35.174328, 48.850533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.912277, 34.969334, 48.891510>,  <41.715794, 34.627678, 48.959805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912277, 34.969334, 48.891510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705585, -0.275244, 0.652986,
		0.510749, -0.441224, -0.737873,
		0.491209, 0.854144, -0.170740,
		42.059639, 35.225578, 48.840286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.401176, 34.535923, 48.796612>,  <41.715794, 34.627678, 48.959805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.401176, 34.535923, 48.796612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.427513, 34.917877, 48.912445>,  <42.443314, 35.147049, 48.981945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.427513, 34.917877, 48.912445>,  <42.401176, 34.535923, 48.796612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.427513, 34.917877, 48.912445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790474, -0.227026, 0.568867,
		0.608946, 0.191455, -0.769759,
		0.065843, 0.954884, 0.289587,
		42.447266, 35.204342, 48.999321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.098160, 34.677002, 48.924908>,  <42.401176, 34.535923, 48.796612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.098160, 34.677002, 48.924908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.901207, 34.969872, 49.113155>,  <42.783035, 35.145596, 49.226105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.901207, 34.969872, 49.113155>,  <43.098160, 34.677002, 48.924908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.901207, 34.969872, 49.113155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597829, -0.108480, 0.794250,
		0.632583, 0.672421, -0.384302,
		-0.492381, 0.732176, 0.470615,
		42.753494, 35.189526, 49.254341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.618153, 35.181889, 49.116768>,  <43.098160, 34.677002, 48.924908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.618153, 35.181889, 49.116768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.300636, 35.267712, 49.344406>,  <43.110126, 35.319206, 49.480988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.300636, 35.267712, 49.344406>,  <43.618153, 35.181889, 49.116768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.300636, 35.267712, 49.344406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582882, 0.001235, 0.812555,
		0.173637, 0.976711, -0.126043,
		-0.793787, 0.214558, 0.569093,
		43.062500, 35.332077, 49.515133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.928627, 35.625187, 49.683109>,  <43.618153, 35.181889, 49.116768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.928627, 35.625187, 49.683109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.564030, 35.513744, 49.804142>,  <43.345272, 35.446880, 49.876762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.564030, 35.513744, 49.804142>,  <43.928627, 35.625187, 49.683109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.564030, 35.513744, 49.804142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338384, -0.089735, 0.936720,
		-0.233820, 0.956205, 0.176068,
		-0.911496, -0.278602, 0.302583,
		43.290581, 35.430164, 49.894917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.854309, 35.866325, 50.304089>,  <43.928627, 35.625187, 49.683109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.854309, 35.866325, 50.304089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.578491, 35.576656, 50.308102>,  <43.412998, 35.402855, 50.310509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.578491, 35.576656, 50.308102>,  <43.854309, 35.866325, 50.304089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.578491, 35.576656, 50.308102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218306, -0.194615, 0.956278,
		-0.690555, 0.661590, 0.292287,
		-0.689547, -0.724171, 0.010037,
		43.371628, 35.359406, 50.311111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.514427, 35.963116, 50.963150>,  <43.854309, 35.866325, 50.304089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.514427, 35.963116, 50.963150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.469151, 35.587498, 50.833305>,  <43.441982, 35.362125, 50.755398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.469151, 35.587498, 50.833305>,  <43.514427, 35.963116, 50.963150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.469151, 35.587498, 50.833305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113131, -0.336770, 0.934766,
		-0.987111, 0.069088, 0.144356,
		-0.113196, -0.939049, -0.324613,
		43.435192, 35.305782, 50.735920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.009129, 35.681839, 51.398769>,  <43.514427, 35.963116, 50.963150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.009129, 35.681839, 51.398769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.223152, 35.378601, 51.249638>,  <43.351566, 35.196659, 51.160156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.223152, 35.378601, 51.249638>,  <43.009129, 35.681839, 51.398769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.223152, 35.378601, 51.249638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142447, -0.354043, 0.924317,
		-0.832719, -0.547674, -0.081446,
		0.535059, -0.758094, -0.372833,
		43.383671, 35.151173, 51.137787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.834202, 34.951355, 51.793991>,  <43.009129, 35.681839, 51.398769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.834202, 34.951355, 51.793991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.186447, 34.927402, 51.605980>,  <43.397797, 34.913029, 51.493172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.186447, 34.927402, 51.605980>,  <42.834202, 34.951355, 51.793991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.186447, 34.927402, 51.605980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329146, -0.636267, 0.697730,
		-0.340848, -0.769141, -0.540597,
		0.880617, -0.059885, -0.470030,
		43.450630, 34.909435, 51.464970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397030, 34.340153, 51.707344>,  <42.834202, 34.951355, 51.793991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397030, 34.340153, 51.707344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.259853, 34.703560, 51.802826>,  <42.177547, 34.921604, 51.860115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.259853, 34.703560, 51.802826>,  <42.397030, 34.340153, 51.707344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259853, 34.703560, 51.802826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350409, -0.112047, 0.929870,
		0.871554, 0.402533, -0.279929,
		-0.342939, 0.908522, 0.238706,
		42.156971, 34.976116, 51.874439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657753, 34.393433, 51.573311>,  <42.397030, 34.340153, 51.707344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.657753, 34.393433, 51.573311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.351688, 34.289680, 51.809021>,  <41.168049, 34.227428, 51.950447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.351688, 34.289680, 51.809021>,  <41.657753, 34.393433, 51.573311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351688, 34.289680, 51.809021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643298, 0.345382, -0.683285,
		-0.026293, -0.901904, -0.431135,
		-0.765164, -0.259383, 0.589274,
		41.122139, 34.211864, 51.985802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193012, 34.181416, 51.104126>,  <41.657753, 34.393433, 51.573311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193012, 34.181416, 51.104126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.967510, 34.232521, 51.430527>,  <40.832207, 34.263184, 51.626366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.967510, 34.232521, 51.430527>,  <41.193012, 34.181416, 51.104126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.967510, 34.232521, 51.430527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778793, 0.246789, -0.576695,
		-0.275062, -0.960610, -0.039625,
		-0.563757, 0.127767, 0.815998,
		40.798382, 34.270851, 51.675327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473618, 33.730400, 51.032200>,  <41.193012, 34.181416, 51.104126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473618, 33.730400, 51.032200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.421494, 34.011433, 51.312027>,  <40.390221, 34.180054, 51.479923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.421494, 34.011433, 51.312027>,  <40.473618, 33.730400, 51.032200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421494, 34.011433, 51.312027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654712, 0.468895, -0.592865,
		-0.744562, -0.535270, 0.398890,
		-0.130306, 0.702583, 0.699569,
		40.382401, 34.222206, 51.521896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766544, 33.894920, 51.083969>,  <40.473618, 33.730400, 51.032200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766544, 33.894920, 51.083969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.925488, 34.227253, 51.239826>,  <40.020851, 34.426655, 51.333340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.925488, 34.227253, 51.239826>,  <39.766544, 33.894920, 51.083969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925488, 34.227253, 51.239826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551327, 0.555568, -0.622401,
		-0.733585, 0.032496, 0.678820,
		0.397356, 0.830836, 0.389640,
		40.044693, 34.476505, 51.356720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209770, 34.347450, 51.255512>,  <39.766544, 33.894920, 51.083969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209770, 34.347450, 51.255512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.547791, 34.559471, 51.227436>,  <39.750603, 34.686684, 51.210590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.547791, 34.559471, 51.227436>,  <39.209770, 34.347450, 51.255512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547791, 34.559471, 51.227436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419317, 0.575529, -0.702097,
		-0.331752, 0.622742, 0.708613,
		0.845053, 0.530056, -0.070193,
		39.801308, 34.718487, 51.206379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049969, 35.009624, 51.270294>,  <39.209770, 34.347450, 51.255512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049969, 35.009624, 51.270294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.407909, 35.016087, 51.091869>,  <39.622673, 35.019962, 50.984814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.407909, 35.016087, 51.091869>,  <39.049969, 35.009624, 51.270294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407909, 35.016087, 51.091869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363302, 0.606942, -0.706847,
		0.259314, 0.794582, 0.548995,
		0.894856, 0.016156, -0.446062,
		39.676365, 35.020935, 50.958050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069992, 35.668587, 51.023056>,  <39.049969, 35.009624, 51.270294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069992, 35.668587, 51.023056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.344872, 35.483646, 50.798912>,  <39.509800, 35.372684, 50.664425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.344872, 35.483646, 50.798912>,  <39.069992, 35.668587, 51.023056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344872, 35.483646, 50.798912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251235, 0.572498, -0.780466,
		0.681649, 0.677113, 0.277260,
		0.687194, -0.462346, -0.560357,
		39.551029, 35.344944, 50.630806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476295, 36.230808, 50.608662>,  <39.069992, 35.668587, 51.023056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476295, 36.230808, 50.608662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.522163, 35.880592, 50.420925>,  <39.549683, 35.670464, 50.308285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.522163, 35.880592, 50.420925>,  <39.476295, 36.230808, 50.608662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522163, 35.880592, 50.420925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048516, 0.466954, -0.882949,
		0.992218, 0.124016, 0.011067,
		0.114667, -0.875542, -0.469337,
		39.556564, 35.617931, 50.280125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789185, 36.416256, 49.916580>,  <39.476295, 36.230808, 50.608662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789185, 36.416256, 49.916580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.669575, 36.036686, 49.876343>,  <39.597809, 35.808945, 49.852200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.669575, 36.036686, 49.876343>,  <39.789185, 36.416256, 49.916580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669575, 36.036686, 49.876343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141482, 0.148341, -0.978763,
		0.943699, -0.278442, -0.178614,
		-0.299025, -0.948928, -0.100595,
		39.579868, 35.752007, 49.846165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160469, 36.288189, 49.359165>,  <39.789185, 36.416256, 49.916580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160469, 36.288189, 49.359165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.888973, 35.994755, 49.345551>,  <39.726074, 35.818695, 49.337379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.888973, 35.994755, 49.345551>,  <40.160469, 36.288189, 49.359165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888973, 35.994755, 49.345551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049195, 0.091668, -0.994574,
		0.732728, -0.673383, -0.098308,
		-0.678741, -0.733588, -0.034041,
		39.685352, 35.774677, 49.335339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305599, 35.810272, 48.845409>,  <40.160469, 36.288189, 49.359165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305599, 35.810272, 48.845409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.909550, 35.774441, 48.888546>,  <39.671921, 35.752941, 48.914429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.909550, 35.774441, 48.888546>,  <40.305599, 35.810272, 48.845409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909550, 35.774441, 48.888546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101714, -0.070362, -0.992322,
		0.096482, -0.993491, 0.060555,
		-0.990124, -0.089582, 0.107840,
		39.612511, 35.747566, 48.920898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035297, 35.235931, 48.408985>,  <40.305599, 35.810272, 48.845409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035297, 35.235931, 48.408985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.709579, 35.453602, 48.489784>,  <39.514149, 35.584206, 48.538265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.709579, 35.453602, 48.489784>,  <40.035297, 35.235931, 48.408985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709579, 35.453602, 48.489784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305063, -0.105138, -0.946511,
		-0.493831, -0.832357, 0.251621,
		-0.814290, 0.544177, 0.202001,
		39.465294, 35.616856, 48.550385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497284, 34.922844, 48.027668>,  <40.035297, 35.235931, 48.408985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497284, 34.922844, 48.027668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.374332, 35.299011, 48.085819>,  <39.300564, 35.524712, 48.120708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.374332, 35.299011, 48.085819>,  <39.497284, 34.922844, 48.027668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374332, 35.299011, 48.085819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307761, 0.046321, -0.950336,
		-0.900446, -0.336852, 0.275186,
		-0.307376, 0.940417, 0.145379,
		39.282120, 35.581135, 48.129433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929207, 34.897663, 47.504265>,  <39.497284, 34.922844, 48.027668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929207, 34.897663, 47.504265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.995918, 35.271664, 47.629459>,  <39.035946, 35.496063, 47.704575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.995918, 35.271664, 47.629459>,  <38.929207, 34.897663, 47.504265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995918, 35.271664, 47.629459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292052, 0.350033, -0.890046,
		-0.941749, 0.057031, 0.331446,
		0.166777, 0.935000, 0.312987,
		39.045952, 35.552162, 47.723354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254547, 35.181019, 47.376453>,  <38.929207, 34.897663, 47.504265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254547, 35.181019, 47.376453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.527760, 35.472900, 47.363823>,  <38.691689, 35.648029, 47.356243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.527760, 35.472900, 47.363823>,  <38.254547, 35.181019, 47.376453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527760, 35.472900, 47.363823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293535, 0.234659, -0.926700,
		-0.668806, 0.642237, 0.374474,
		0.683035, 0.729703, -0.031577,
		38.732670, 35.691811, 47.354351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856625, 35.628368, 47.107578>,  <38.254547, 35.181019, 47.376453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856625, 35.628368, 47.107578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.229336, 35.759510, 47.045216>,  <38.452961, 35.838196, 47.007797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.229336, 35.759510, 47.045216>,  <37.856625, 35.628368, 47.107578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229336, 35.759510, 47.045216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290938, 0.417477, -0.860853,
		-0.217146, 0.847481, 0.484380,
		0.931774, 0.327855, -0.155911,
		38.508869, 35.857868, 46.998444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881531, 36.315098, 47.061295>,  <37.856625, 35.628368, 47.107578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881531, 36.315098, 47.061295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.205418, 36.195095, 46.859562>,  <38.399750, 36.123093, 46.738522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.205418, 36.195095, 46.859562>,  <37.881531, 36.315098, 47.061295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205418, 36.195095, 46.859562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355831, 0.432397, -0.828503,
		0.466628, 0.850312, 0.243368,
		0.809717, -0.300005, -0.504336,
		38.448334, 36.105095, 46.708260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847462, 36.796131, 46.463318>,  <37.881531, 36.315098, 47.061295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847462, 36.796131, 46.463318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.129436, 36.530106, 46.364723>,  <38.298622, 36.370491, 46.305569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.129436, 36.530106, 46.364723>,  <37.847462, 36.796131, 46.463318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129436, 36.530106, 46.364723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066793, 0.283726, -0.956576,
		0.706120, 0.690787, 0.155587,
		0.704935, -0.665066, -0.246484,
		38.340916, 36.330585, 46.290779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138618, 37.115929, 46.014877>,  <37.847462, 36.796131, 46.463318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138618, 37.115929, 46.014877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.252365, 36.742519, 45.927540>,  <38.320614, 36.518475, 45.875137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.252365, 36.742519, 45.927540>,  <38.138618, 37.115929, 46.014877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252365, 36.742519, 45.927540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144306, 0.183471, -0.972375,
		0.947792, 0.308022, -0.082539,
		0.284369, -0.933521, -0.218342,
		38.337677, 36.462463, 45.862038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528919, 37.157650, 45.384605>,  <38.138618, 37.115929, 46.014877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528919, 37.157650, 45.384605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.414692, 36.775539, 45.415340>,  <38.346157, 36.546272, 45.433781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.414692, 36.775539, 45.415340>,  <38.528919, 37.157650, 45.384605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414692, 36.775539, 45.415340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169226, -0.028652, -0.985161,
		0.943299, -0.294333, -0.153475,
		-0.285568, -0.955273, 0.076836,
		38.329021, 36.488956, 45.438393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<47.804092, 30.414351, 39.153229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.462265, 30.313665, 39.334930>,  <47.257168, 30.253254, 39.443951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.462265, 30.313665, 39.334930>,  <47.804092, 30.414351, 39.153229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.462265, 30.313665, 39.334930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511497, 0.559308, -0.652338,
		-0.089865, -0.789819, -0.606720,
		-0.854573, -0.251713, 0.454253,
		47.205894, 30.238152, 39.471207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.431160, 30.139729, 38.661972>,  <47.804092, 30.414351, 39.153229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.431160, 30.139729, 38.661972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.142147, 30.233912, 38.921974>,  <46.968739, 30.290421, 39.077976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.142147, 30.233912, 38.921974>,  <47.431160, 30.139729, 38.661972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.142147, 30.233912, 38.921974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501423, 0.468799, -0.727189,
		-0.475942, -0.851345, -0.220660,
		-0.722534, 0.235455, 0.650004,
		46.925388, 30.304548, 39.116974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.825253, 29.884422, 38.225517>,  <47.431160, 30.139729, 38.661972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.825253, 29.884422, 38.225517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.688610, 30.112118, 38.524654>,  <46.606625, 30.248735, 38.704136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.688610, 30.112118, 38.524654>,  <46.825253, 29.884422, 38.225517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.688610, 30.112118, 38.524654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636460, 0.445369, -0.629734,
		-0.691536, -0.691096, 0.210154,
		-0.341611, 0.569239, 0.747844,
		46.586128, 30.282888, 38.749008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.094585, 29.705647, 38.321304>,  <46.825253, 29.884422, 38.225517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.094585, 29.705647, 38.321304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.180656, 30.071035, 38.459446>,  <46.232300, 30.290268, 38.542332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.180656, 30.071035, 38.459446>,  <46.094585, 29.705647, 38.321304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.180656, 30.071035, 38.459446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627723, 0.400281, -0.667637,
		-0.748106, -0.073126, 0.659538,
		0.215179, 0.913470, 0.345355,
		46.245209, 30.345076, 38.563053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.519756, 30.089457, 38.135925>,  <46.094585, 29.705647, 38.321304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.519756, 30.089457, 38.135925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.753632, 30.394003, 38.247974>,  <45.893955, 30.576731, 38.315205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.753632, 30.394003, 38.247974>,  <45.519756, 30.089457, 38.135925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.753632, 30.394003, 38.247974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496083, 0.608752, -0.619131,
		-0.641907, 0.223035, 0.733629,
		0.584686, 0.761365, 0.280118,
		45.929039, 30.622412, 38.332008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.033916, 30.562256, 38.213203>,  <45.519756, 30.089457, 38.135925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.033916, 30.562256, 38.213203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.392776, 30.728645, 38.153748>,  <45.608093, 30.828480, 38.118073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.392776, 30.728645, 38.153748>,  <45.033916, 30.562256, 38.213203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.392776, 30.728645, 38.153748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431481, 0.753135, -0.496600,
		-0.094625, 0.509659, 0.855157,
		0.897145, 0.415975, -0.148643,
		45.661919, 30.853437, 38.109154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.946629, 31.303917, 38.306484>,  <45.033916, 30.562256, 38.213203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.946629, 31.303917, 38.306484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.263676, 31.252346, 38.068111>,  <45.453903, 31.221403, 37.925087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.263676, 31.252346, 38.068111>,  <44.946629, 31.303917, 38.306484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.263676, 31.252346, 38.068111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371168, 0.673388, -0.639362,
		0.483723, 0.727960, 0.485886,
		0.792620, -0.128929, -0.595929,
		45.501461, 31.213667, 37.889332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.231071, 31.923021, 38.212669>,  <44.946629, 31.303917, 38.306484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.231071, 31.923021, 38.212669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.384899, 31.707439, 37.912899>,  <45.477196, 31.578091, 37.733036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.384899, 31.707439, 37.912899>,  <45.231071, 31.923021, 38.212669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.384899, 31.707439, 37.912899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225047, 0.732621, -0.642355,
		0.895244, 0.415685, 0.160453,
		0.384568, -0.538955, -0.749423,
		45.500271, 31.545753, 37.688072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.563358, 32.437943, 37.713238>,  <45.231071, 31.923021, 38.212669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.563358, 32.437943, 37.713238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.562149, 32.114090, 37.478466>,  <45.561424, 31.919779, 37.337601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.562149, 32.114090, 37.478466>,  <45.563358, 32.437943, 37.713238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.562149, 32.114090, 37.478466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153905, 0.580319, -0.799715,
		0.988081, 0.087918, -0.126358,
		-0.003019, -0.809630, -0.586933,
		45.561245, 31.871201, 37.302387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.938908, 32.536938, 37.145561>,  <45.563358, 32.437943, 37.713238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.938908, 32.536938, 37.145561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.690742, 32.241009, 37.041451>,  <45.541843, 32.063450, 36.978985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.690742, 32.241009, 37.041451>,  <45.938908, 32.536938, 37.145561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.690742, 32.241009, 37.041451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054649, 0.371841, -0.926686,
		0.782368, -0.560705, -0.271126,
		-0.620413, -0.739827, -0.260275,
		45.504620, 32.019062, 36.963367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.212818, 32.441307, 36.500202>,  <45.938908, 32.536938, 37.145561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.212818, 32.441307, 36.500202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.851173, 32.271149, 36.516331>,  <45.634186, 32.169052, 36.526009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.851173, 32.271149, 36.516331>,  <46.212818, 32.441307, 36.500202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.851173, 32.271149, 36.516331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240973, 0.429672, -0.870238,
		0.352868, -0.796507, -0.490980,
		-0.904111, -0.425392, 0.040319,
		45.579941, 32.143532, 36.528427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.218765, 32.092758, 35.846428>,  <46.212818, 32.441307, 36.500202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.218765, 32.092758, 35.846428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.840565, 32.095398, 35.976650>,  <45.613644, 32.096981, 36.054783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.840565, 32.095398, 35.976650>,  <46.218765, 32.092758, 35.846428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.840565, 32.095398, 35.976650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301897, 0.356859, -0.884030,
		-0.122013, -0.934135, -0.335417,
		-0.945500, 0.006601, 0.325554,
		45.556915, 32.097378, 36.074318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.885677, 31.759747, 35.387978>,  <46.218765, 32.092758, 35.846428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.885677, 31.759747, 35.387978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.610275, 31.987785, 35.567287>,  <45.445034, 32.124607, 35.674873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.610275, 31.987785, 35.567287>,  <45.885677, 31.759747, 35.387978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.610275, 31.987785, 35.567287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331251, 0.302661, -0.893683,
		-0.645159, -0.763798, -0.019540,
		-0.688507, 0.570095, 0.448273,
		45.403725, 32.158813, 35.701771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.201672, 31.563976, 35.086803>,  <45.885677, 31.759747, 35.387978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.201672, 31.563976, 35.086803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.183441, 31.931267, 35.244171>,  <45.172504, 32.151642, 35.338593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.183441, 31.931267, 35.244171>,  <45.201672, 31.563976, 35.086803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.183441, 31.931267, 35.244171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284735, 0.365555, -0.886169,
		-0.957522, -0.152407, 0.244792,
		-0.045573, 0.918227, 0.393423,
		45.169769, 32.206734, 35.362198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.633961, 31.819382, 34.745762>,  <45.201672, 31.563976, 35.086803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.633961, 31.819382, 34.745762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.805515, 32.144768, 34.902901>,  <44.908447, 32.340000, 34.997185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.805515, 32.144768, 34.902901>,  <44.633961, 31.819382, 34.745762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.805515, 32.144768, 34.902901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321205, 0.543778, -0.775327,
		-0.844326, 0.206339, 0.494507,
		0.428883, 0.813467, 0.392849,
		44.934181, 32.388809, 35.020756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.147865, 32.362587, 34.676517>,  <44.633961, 31.819382, 34.745762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.147865, 32.362587, 34.676517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.506241, 32.538200, 34.703476>,  <44.721268, 32.643566, 34.719650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.506241, 32.538200, 34.703476>,  <44.147865, 32.362587, 34.676517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.506241, 32.538200, 34.703476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230290, 0.588892, -0.774708,
		-0.379811, 0.678571, 0.628717,
		0.895941, 0.439030, 0.067400,
		44.775024, 32.669910, 34.723698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.968933, 32.929356, 34.553791>,  <44.147865, 32.362587, 34.676517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.968933, 32.929356, 34.553791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.365276, 32.963230, 34.511776>,  <44.603081, 32.983555, 34.486568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.365276, 32.963230, 34.511776>,  <43.968933, 32.929356, 34.553791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.365276, 32.963230, 34.511776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133892, 0.713221, -0.688033,
		0.016651, 0.695805, 0.718037,
		0.990856, 0.084683, -0.105039,
		44.662533, 32.988636, 34.480263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.125214, 33.647083, 34.688328>,  <43.968933, 32.929356, 34.553791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.125214, 33.647083, 34.688328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.432701, 33.522236, 34.465023>,  <44.617191, 33.447327, 34.331039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.432701, 33.522236, 34.465023>,  <44.125214, 33.647083, 34.688328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.432701, 33.522236, 34.465023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092191, 0.809660, -0.579613,
		0.632910, 0.497025, 0.593625,
		0.768717, -0.312116, -0.558264,
		44.663315, 33.428600, 34.297543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.504059, 34.254364, 34.527256>,  <44.125214, 33.647083, 34.688328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.504059, 34.254364, 34.527256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.597878, 33.974953, 34.256836>,  <44.654171, 33.807304, 34.094582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.597878, 33.974953, 34.256836>,  <44.504059, 34.254364, 34.527256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.597878, 33.974953, 34.256836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011810, 0.697449, -0.716537,
		0.972033, 0.160079, 0.171835,
		0.234549, -0.698527, -0.676053,
		44.668243, 33.765396, 34.054020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.967674, 34.591942, 34.083336>,  <44.504059, 34.254364, 34.527256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.967674, 34.591942, 34.083336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.806152, 34.285263, 33.883686>,  <44.709240, 34.101257, 33.763897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.806152, 34.285263, 33.883686>,  <44.967674, 34.591942, 34.083336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.806152, 34.285263, 33.883686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111976, 0.582900, -0.804791,
		0.907967, -0.269088, -0.321229,
		-0.403804, -0.766693, -0.499122,
		44.685013, 34.055256, 33.733948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.155460, 34.737247, 33.428997>,  <44.967674, 34.591942, 34.083336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.155460, 34.737247, 33.428997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.885201, 34.454830, 33.344139>,  <44.723045, 34.285381, 33.293224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.885201, 34.454830, 33.344139>,  <45.155460, 34.737247, 33.428997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.885201, 34.454830, 33.344139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354780, 0.563637, -0.745952,
		0.646248, -0.428734, -0.631309,
		-0.675644, -0.706046, -0.212143,
		44.682507, 34.243015, 33.280495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.742638, 35.021473, 33.696518>,  <45.155460, 34.737247, 33.428997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.742638, 35.021473, 33.696518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.081165, 35.153000, 33.864147>,  <46.284283, 35.231915, 33.964725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.081165, 35.153000, 33.864147>,  <45.742638, 35.021473, 33.696518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.081165, 35.153000, 33.864147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331816, -0.290009, 0.897660,
		0.416702, -0.898762, -0.136333,
		0.846320, 0.328819, 0.419071,
		46.335060, 35.251644, 33.989868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.121777, 34.463211, 34.097534>,  <45.742638, 35.021473, 33.696518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.121777, 34.463211, 34.097534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.198826, 34.836662, 34.218353>,  <46.245056, 35.060734, 34.290844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.198826, 34.836662, 34.218353>,  <46.121777, 34.463211, 34.097534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.198826, 34.836662, 34.218353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179725, -0.269039, 0.946212,
		0.964674, -0.236546, 0.115974,
		0.192621, 0.933629, 0.302048,
		46.256611, 35.116753, 34.308968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.753334, 34.435768, 34.607407>,  <46.121777, 34.463211, 34.097534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.753334, 34.435768, 34.607407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.548336, 34.774197, 34.666065>,  <46.425335, 34.977253, 34.701260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.548336, 34.774197, 34.666065>,  <46.753334, 34.435768, 34.607407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.548336, 34.774197, 34.666065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116855, -0.100468, 0.988054,
		0.850700, 0.523513, -0.047378,
		-0.512499, 0.846074, 0.146643,
		46.394585, 35.028019, 34.710056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.099972, 34.781441, 35.265533>,  <46.753334, 34.435768, 34.607407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.099972, 34.781441, 35.265533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.755260, 34.971832, 35.195351>,  <46.548435, 35.086067, 35.153240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.755260, 34.971832, 35.195351>,  <47.099972, 34.781441, 35.265533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.755260, 34.971832, 35.195351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100322, 0.179126, 0.978698,
		0.497266, 0.861023, -0.106616,
		-0.861779, 0.475977, -0.175452,
		46.496727, 35.114624, 35.142715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.084755, 35.456490, 35.592773>,  <47.099972, 34.781441, 35.265533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.084755, 35.456490, 35.592773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.700691, 35.354588, 35.546837>,  <46.470253, 35.293446, 35.519276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.700691, 35.354588, 35.546837>,  <47.084755, 35.456490, 35.592773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.700691, 35.354588, 35.546837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142364, 0.092311, 0.985501,
		-0.240461, 0.962590, -0.124902,
		-0.960162, -0.254756, -0.114841,
		46.412643, 35.278160, 35.512386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.721783, 35.877247, 36.180431>,  <47.084755, 35.456490, 35.592773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.721783, 35.877247, 36.180431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.502323, 35.577114, 36.032925>,  <46.370647, 35.397034, 35.944420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.502323, 35.577114, 36.032925>,  <46.721783, 35.877247, 36.180431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.502323, 35.577114, 36.032925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473661, -0.084497, 0.876644,
		-0.688935, 0.655637, -0.309045,
		-0.548647, -0.750334, -0.368763,
		46.337730, 35.352013, 35.922295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.113914, 35.926418, 36.544109>,  <46.721783, 35.877247, 36.180431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.113914, 35.926418, 36.544109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.125664, 35.546616, 36.419163>,  <46.132713, 35.318733, 36.344196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.125664, 35.546616, 36.419163>,  <46.113914, 35.926418, 36.544109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.125664, 35.546616, 36.419163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434264, -0.293590, 0.851598,
		-0.900306, 0.110635, -0.420961,
		0.029374, -0.949507, -0.312366,
		46.134476, 35.261765, 36.325455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.444363, 35.726017, 36.727177>,  <46.113914, 35.926418, 36.544109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.444363, 35.726017, 36.727177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.676796, 35.404720, 36.674812>,  <45.816257, 35.211941, 36.643394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.676796, 35.404720, 36.674812>,  <45.444363, 35.726017, 36.727177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.676796, 35.404720, 36.674812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466937, -0.460794, 0.754744,
		-0.666567, -0.377444, -0.642826,
		0.581084, -0.803246, -0.130908,
		45.851120, 35.163746, 36.635540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.977650, 35.173946, 36.815578>,  <45.444363, 35.726017, 36.727177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.977650, 35.173946, 36.815578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.348747, 35.037312, 36.875732>,  <45.571404, 34.955330, 36.911823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.348747, 35.037312, 36.875732>,  <44.977650, 35.173946, 36.815578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.348747, 35.037312, 36.875732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323782, -0.536196, 0.779525,
		-0.185642, -0.771888, -0.608051,
		0.927740, -0.341588, 0.150383,
		45.627068, 34.934834, 36.920849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.848175, 34.489895, 37.060833>,  <44.977650, 35.173946, 36.815578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.848175, 34.489895, 37.060833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.236542, 34.550518, 37.134972>,  <45.469563, 34.586891, 37.179455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.236542, 34.550518, 37.134972>,  <44.848175, 34.489895, 37.060833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.236542, 34.550518, 37.134972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009230, -0.749861, 0.661531,
		0.239246, -0.644001, -0.726653,
		0.970915, 0.151562, 0.185346,
		45.527817, 34.595985, 37.190575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.125320, 33.776508, 37.230946>,  <44.848175, 34.489895, 37.060833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.125320, 33.776508, 37.230946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.390724, 34.030254, 37.389606>,  <45.549969, 34.182503, 37.484802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.390724, 34.030254, 37.389606>,  <45.125320, 33.776508, 37.230946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.390724, 34.030254, 37.389606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048341, -0.492708, 0.868851,
		0.746603, -0.595667, -0.296251,
		0.663511, 0.634366, 0.396652,
		45.589779, 34.220566, 37.508602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.715096, 33.392200, 37.567890>,  <45.125320, 33.776508, 37.230946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.715096, 33.392200, 37.567890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.695423, 33.749935, 37.745762>,  <45.683620, 33.964577, 37.852486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.695423, 33.749935, 37.745762>,  <45.715096, 33.392200, 37.567890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.695423, 33.749935, 37.745762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017132, -0.445910, 0.894914,
		0.998643, 0.036395, 0.037253,
		-0.049182, 0.894337, 0.444682,
		45.680668, 34.018238, 37.879166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.147266, 33.283028, 38.105820>,  <45.715096, 33.392200, 37.567890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.147266, 33.283028, 38.105820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.924850, 33.603977, 38.192554>,  <45.791401, 33.796547, 38.244595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.924850, 33.603977, 38.192554>,  <46.147266, 33.283028, 38.105820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.924850, 33.603977, 38.192554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122544, -0.178898, 0.976206,
		0.822074, 0.569379, 0.001148,
		-0.556037, 0.802373, 0.216841,
		45.758038, 33.844688, 38.257607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.527596, 33.659027, 38.559826>,  <46.147266, 33.283028, 38.105820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.527596, 33.659027, 38.559826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.151730, 33.785404, 38.612312>,  <45.926212, 33.861229, 38.643803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.151730, 33.785404, 38.612312>,  <46.527596, 33.659027, 38.559826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.151730, 33.785404, 38.612312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048954, -0.255417, 0.965591,
		0.338587, 0.913751, 0.224539,
		-0.939661, 0.315944, 0.131213,
		45.869831, 33.880188, 38.651676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.412815, 34.094368, 39.213421>,  <46.527596, 33.659027, 38.559826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.412815, 34.094368, 39.213421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.040588, 33.979553, 39.122509>,  <45.817253, 33.910664, 39.067963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.040588, 33.979553, 39.122509>,  <46.412815, 34.094368, 39.213421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.040588, 33.979553, 39.122509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165642, -0.223555, 0.960513,
		-0.326511, 0.931469, 0.160488,
		-0.930566, -0.287035, -0.227284,
		45.761417, 33.893444, 39.054325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.135235, 34.240295, 39.829536>,  <46.412815, 34.094368, 39.213421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.135235, 34.240295, 39.829536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.875362, 34.000351, 39.642738>,  <45.719437, 33.856384, 39.530659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.875362, 34.000351, 39.642738>,  <46.135235, 34.240295, 39.829536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.875362, 34.000351, 39.642738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192579, -0.464391, 0.864439,
		-0.735407, 0.651545, 0.186187,
		-0.649684, -0.599859, -0.466991,
		45.680458, 33.820393, 39.502640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.560001, 34.163502, 40.270359>,  <46.135235, 34.240295, 39.829536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.560001, 34.163502, 40.270359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.569389, 33.841438, 40.033321>,  <45.575024, 33.648201, 39.891098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.569389, 33.841438, 40.033321>,  <45.560001, 34.163502, 40.270359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.569389, 33.841438, 40.033321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185776, -0.585944, 0.788769,
		-0.982312, 0.091577, -0.163332,
		0.023470, -0.805161, -0.592592,
		45.576431, 33.599892, 39.855545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.976837, 33.776756, 40.406742>,  <45.560001, 34.163502, 40.270359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.976837, 33.776756, 40.406742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.174179, 33.488880, 40.211338>,  <45.292583, 33.316154, 40.094097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.174179, 33.488880, 40.211338>,  <44.976837, 33.776756, 40.406742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.174179, 33.488880, 40.211338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435776, -0.690557, 0.577260,
		-0.752795, -0.071912, -0.654315,
		0.493354, -0.719693, -0.488511,
		45.322186, 33.272972, 40.064785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.465687, 33.175770, 40.264744>,  <44.976837, 33.776756, 40.406742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.465687, 33.175770, 40.264744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.823410, 32.997532, 40.248417>,  <45.038044, 32.890591, 40.238621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.823410, 32.997532, 40.248417>,  <44.465687, 33.175770, 40.264744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.823410, 32.997532, 40.248417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276024, -0.621172, 0.733455,
		-0.352178, -0.644665, -0.678511,
		0.894305, -0.445592, -0.040820,
		45.091702, 32.863853, 40.236172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.368584, 32.484585, 40.220371>,  <44.465687, 33.175770, 40.264744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.368584, 32.484585, 40.220371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.741322, 32.513107, 40.362686>,  <44.964966, 32.530220, 40.448074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.741322, 32.513107, 40.362686>,  <44.368584, 32.484585, 40.220371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.741322, 32.513107, 40.362686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230509, -0.640924, 0.732176,
		0.280238, -0.764285, -0.580805,
		0.931843, 0.071303, 0.355786,
		45.020874, 32.534496, 40.469421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.638821, 31.857767, 40.183399>,  <44.368584, 32.484585, 40.220371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.638821, 31.857767, 40.183399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.844627, 32.054619, 40.464279>,  <44.968113, 32.172729, 40.632805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.844627, 32.054619, 40.464279>,  <44.638821, 31.857767, 40.183399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.844627, 32.054619, 40.464279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331537, -0.641048, 0.692200,
		0.790795, -0.588953, -0.166670,
		0.514516, 0.492131, 0.702196,
		44.998981, 32.202259, 40.674938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.257545, 37.896091, 40.649235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952175, 37.639931, 40.682865>,  <41.768955, 37.486233, 40.703041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952175, 37.639931, 40.682865>,  <42.257545, 37.896091, 40.649235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.952175, 37.639931, 40.682865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050757, -0.189242, -0.980618,
		0.643902, -0.744359, 0.176977,
		-0.763423, -0.640404, 0.084071,
		41.723148, 37.447811, 40.708088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.381226, 37.371799, 40.288536>,  <42.257545, 37.896091, 40.649235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.381226, 37.371799, 40.288536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982712, 37.356228, 40.319286>,  <41.743603, 37.346886, 40.337738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982712, 37.356228, 40.319286>,  <42.381226, 37.371799, 40.288536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982712, 37.356228, 40.319286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069656, -0.161435, -0.984422,
		0.050735, -0.986115, 0.158122,
		-0.996280, -0.038931, 0.076879,
		41.683826, 37.344547, 40.342350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249695, 36.814960, 39.895180>,  <42.381226, 37.371799, 40.288536>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249695, 36.814960, 39.895180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909645, 37.025589, 39.894413>,  <41.705612, 37.151966, 39.893951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909645, 37.025589, 39.894413>,  <42.249695, 36.814960, 39.895180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909645, 37.025589, 39.894413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106566, -0.175617, -0.978674,
		-0.515679, -0.831794, 0.205412,
		-0.850129, 0.526571, -0.001921,
		41.654606, 37.183559, 39.893837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960178, 36.462845, 39.439121>,  <42.249695, 36.814960, 39.895180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960178, 36.462845, 39.439121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684769, 36.752163, 39.460209>,  <41.519524, 36.925755, 39.472862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684769, 36.752163, 39.460209>,  <41.960178, 36.462845, 39.439121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684769, 36.752163, 39.460209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301724, -0.219596, -0.927761,
		-0.659468, -0.654692, 0.369433,
		-0.688524, 0.723295, 0.052720,
		41.478210, 36.969151, 39.476025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235062, 36.136024, 39.271782>,  <41.960178, 36.462845, 39.439121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235062, 36.136024, 39.271782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243893, 36.532230, 39.217525>,  <41.249191, 36.769955, 39.184971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243893, 36.532230, 39.217525>,  <41.235062, 36.136024, 39.271782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243893, 36.532230, 39.217525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546864, -0.101618, -0.831032,
		-0.836931, 0.092525, 0.539432,
		0.022075, 0.990512, -0.135646,
		41.250515, 36.829384, 39.176830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543148, 36.344978, 39.231716>,  <41.235062, 36.136024, 39.271782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543148, 36.344978, 39.231716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771099, 36.621826, 39.054531>,  <40.907867, 36.787933, 38.948219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771099, 36.621826, 39.054531>,  <40.543148, 36.344978, 39.231716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771099, 36.621826, 39.054531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488094, -0.148563, -0.860054,
		-0.661065, 0.706332, 0.253155,
		0.569875, 0.692115, -0.442966,
		40.942062, 36.829460, 38.921642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105839, 36.789375, 38.778473>,  <40.543148, 36.344978, 39.231716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105839, 36.789375, 38.778473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470131, 36.806591, 38.614174>,  <40.688705, 36.816921, 38.515594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470131, 36.806591, 38.614174>,  <40.105839, 36.789375, 38.778473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470131, 36.806591, 38.614174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407161, -0.073008, -0.910434,
		-0.069170, 0.996402, -0.048968,
		0.910733, 0.043036, -0.410746,
		40.743351, 36.819504, 38.490952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003918, 36.965420, 38.172272>,  <40.105839, 36.789375, 38.778473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003918, 36.965420, 38.172272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389183, 36.932247, 38.069954>,  <40.620342, 36.912342, 38.008564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389183, 36.932247, 38.069954>,  <40.003918, 36.965420, 38.172272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389183, 36.932247, 38.069954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265333, -0.138650, -0.954135,
		0.043667, 0.986862, -0.155549,
		0.963167, -0.082936, -0.255793,
		40.678135, 36.907368, 37.993217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169521, 37.418350, 37.573635>,  <40.003918, 36.965420, 38.172272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169521, 37.418350, 37.573635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409966, 37.098850, 37.583946>,  <40.554234, 36.907150, 37.590134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409966, 37.098850, 37.583946>,  <40.169521, 37.418350, 37.573635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409966, 37.098850, 37.583946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258853, -0.225118, -0.939317,
		0.756083, 0.557961, -0.342080,
		0.601110, -0.798750, 0.025778,
		40.590298, 36.859226, 37.591679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383846, 37.430664, 36.878590>,  <40.169521, 37.418350, 37.573635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383846, 37.430664, 36.878590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497810, 37.067268, 37.000885>,  <40.566189, 36.849232, 37.074261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497810, 37.067268, 37.000885>,  <40.383846, 37.430664, 36.878590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497810, 37.067268, 37.000885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156063, -0.358664, -0.920328,
		0.945763, 0.214501, -0.243970,
		0.284914, -0.908487, 0.305736,
		40.583286, 36.794724, 37.092606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905197, 37.198296, 36.382206>,  <40.383846, 37.430664, 36.878590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905197, 37.198296, 36.382206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731388, 36.883141, 36.556759>,  <40.627102, 36.694050, 36.661491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731388, 36.883141, 36.556759>,  <40.905197, 37.198296, 36.382206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731388, 36.883141, 36.556759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284213, -0.339810, -0.896522,
		0.854644, -0.513582, -0.076273,
		-0.434519, -0.787885, 0.436383,
		40.601032, 36.646774, 36.687675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158733, 36.651249, 35.974094>,  <40.905197, 37.198296, 36.382206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158733, 36.651249, 35.974094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856365, 36.477478, 36.169994>,  <40.674942, 36.373215, 36.287533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856365, 36.477478, 36.169994>,  <41.158733, 36.651249, 35.974094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856365, 36.477478, 36.169994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276712, -0.465953, -0.840427,
		0.593305, -0.770817, 0.232013,
		-0.755923, -0.434429, 0.489747,
		40.629589, 36.347149, 36.316917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134426, 35.949821, 35.803913>,  <41.158733, 36.651249, 35.974094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.134426, 35.949821, 35.803913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766243, 36.040257, 35.931442>,  <40.545334, 36.094517, 36.007957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766243, 36.040257, 35.931442>,  <41.134426, 35.949821, 35.803913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766243, 36.040257, 35.931442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389836, -0.589758, -0.707257,
		0.028121, -0.775285, 0.630985,
		-0.920455, 0.226092, 0.318819,
		40.490105, 36.108086, 36.027088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748348, 35.258987, 35.914536>,  <41.134426, 35.949821, 35.803913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748348, 35.258987, 35.914536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519138, 35.578018, 35.839165>,  <40.381611, 35.769436, 35.793941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519138, 35.578018, 35.839165>,  <40.748348, 35.258987, 35.914536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519138, 35.578018, 35.839165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487588, -0.516594, -0.703838,
		-0.658710, -0.311440, 0.684913,
		-0.573026, 0.797581, -0.188431,
		40.347229, 35.817291, 35.782635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106377, 35.000298, 35.675575>,  <40.748348, 35.258987, 35.914536>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106377, 35.000298, 35.675575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077770, 35.377243, 35.544838>,  <40.060608, 35.603413, 35.466396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077770, 35.377243, 35.544838>,  <40.106377, 35.000298, 35.675575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077770, 35.377243, 35.544838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612855, -0.300048, -0.731012,
		-0.786952, 0.148030, 0.598994,
		-0.071515, 0.942368, -0.326845,
		40.056316, 35.659954, 35.446785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383045, 34.490494, 35.230972>,  <40.106377, 35.000298, 35.675575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383045, 34.490494, 35.230972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633469, 34.180141, 35.262131>,  <40.783722, 33.993931, 35.280827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633469, 34.180141, 35.262131>,  <40.383045, 34.490494, 35.230972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633469, 34.180141, 35.262131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536846, -0.356413, 0.764700,
		-0.565552, -0.520561, -0.639662,
		0.626057, -0.775877, 0.077891,
		40.821285, 33.947380, 35.285500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020092, 33.809933, 35.218868>,  <40.383045, 34.490494, 35.230972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020092, 33.809933, 35.218868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364422, 33.822807, 35.422020>,  <40.571022, 33.830532, 35.543911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364422, 33.822807, 35.422020>,  <40.020092, 33.809933, 35.218868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364422, 33.822807, 35.422020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433138, -0.477574, 0.764405,
		0.267151, -0.878002, -0.397168,
		0.860826, 0.032183, 0.507880,
		40.622669, 33.832462, 35.574383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970482, 33.280788, 35.740284>,  <40.020092, 33.809933, 35.218868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970482, 33.280788, 35.740284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267185, 33.502769, 35.890926>,  <40.445206, 33.635956, 35.981312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267185, 33.502769, 35.890926>,  <39.970482, 33.280788, 35.740284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267185, 33.502769, 35.890926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314150, -0.208627, 0.926167,
		0.592545, -0.805299, 0.019587,
		0.741754, 0.554949, 0.376605,
		40.489712, 33.669254, 36.003906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467461, 32.918217, 36.187878>,  <39.970482, 33.280788, 35.740284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467461, 32.918217, 36.187878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490734, 33.303425, 36.293106>,  <40.504700, 33.534550, 36.356243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490734, 33.303425, 36.293106>,  <40.467461, 32.918217, 36.187878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490734, 33.303425, 36.293106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214849, -0.245265, 0.945349,
		0.974912, -0.111524, 0.192634,
		0.058183, 0.963020, 0.263073,
		40.508190, 33.592331, 36.372028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950886, 32.831615, 36.745705>,  <40.467461, 32.918217, 36.187878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.950886, 32.831615, 36.745705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742805, 33.170513, 36.788742>,  <40.617958, 33.373852, 36.814564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742805, 33.170513, 36.788742>,  <40.950886, 32.831615, 36.745705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742805, 33.170513, 36.788742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023051, -0.139866, 0.989902,
		0.853734, 0.512465, 0.092287,
		-0.520198, 0.847241, 0.107595,
		40.586746, 33.424686, 36.821022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264244, 32.992821, 37.305351>,  <40.950886, 32.831615, 36.745705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264244, 32.992821, 37.305351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939835, 33.225021, 37.276337>,  <40.745190, 33.364342, 37.258926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939835, 33.225021, 37.276337>,  <41.264244, 32.992821, 37.305351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939835, 33.225021, 37.276337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199439, -0.157793, 0.967122,
		0.549967, 0.798827, 0.243747,
		-0.811025, 0.580498, -0.072536,
		40.696526, 33.399170, 37.254578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292233, 33.346268, 37.875202>,  <41.264244, 32.992821, 37.305351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292233, 33.346268, 37.875202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915268, 33.392551, 37.749687>,  <40.689087, 33.420322, 37.674377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915268, 33.392551, 37.749687>,  <41.292233, 33.346268, 37.875202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915268, 33.392551, 37.749687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303155, 0.100679, 0.947608,
		0.141242, 0.988167, -0.059802,
		-0.942416, 0.115712, -0.313788,
		40.632542, 33.427265, 37.655552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138012, 33.954422, 38.143433>,  <41.292233, 33.346268, 37.875202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138012, 33.954422, 38.143433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803574, 33.740871, 38.092964>,  <40.602909, 33.612740, 38.062683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803574, 33.740871, 38.092964>,  <41.138012, 33.954422, 38.143433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.803574, 33.740871, 38.092964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135619, -0.021698, 0.990524,
		-0.531556, 0.845283, -0.054262,
		-0.836095, -0.533878, -0.126170,
		40.552746, 33.580708, 38.055115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700878, 34.336567, 38.535931>,  <41.138012, 33.954422, 38.143433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700878, 34.336567, 38.535931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535759, 33.978199, 38.470299>,  <40.436687, 33.763176, 38.430920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535759, 33.978199, 38.470299>,  <40.700878, 34.336567, 38.535931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535759, 33.978199, 38.470299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211182, -0.081089, 0.974077,
		-0.886002, 0.436748, -0.155730,
		-0.412798, -0.895922, -0.164079,
		40.411919, 33.709423, 38.421074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239967, 34.337265, 39.007015>,  <40.700878, 34.336567, 38.535931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239967, 34.337265, 39.007015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311722, 33.957096, 38.905422>,  <40.354774, 33.728992, 38.844467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311722, 33.957096, 38.905422>,  <40.239967, 34.337265, 39.007015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311722, 33.957096, 38.905422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080500, -0.271489, 0.959069,
		-0.980479, -0.151600, -0.125211,
		0.179388, -0.950427, -0.253986,
		40.365540, 33.671967, 38.829227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645397, 33.870113, 39.233559>,  <40.239967, 34.337265, 39.007015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645397, 33.870113, 39.233559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970032, 33.640457, 39.190319>,  <40.164814, 33.502663, 39.164375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970032, 33.640457, 39.190319>,  <39.645397, 33.870113, 39.233559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970032, 33.640457, 39.190319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063480, -0.270594, 0.960598,
		-0.580774, -0.772746, -0.256057,
		0.811586, -0.574145, -0.108100,
		40.213509, 33.468212, 39.157890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506363, 33.252762, 39.623486>,  <39.645397, 33.870113, 39.233559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506363, 33.252762, 39.623486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903217, 33.242111, 39.574574>,  <40.141331, 33.235722, 39.545227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903217, 33.242111, 39.574574>,  <39.506363, 33.252762, 39.623486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903217, 33.242111, 39.574574> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108836, -0.298779, 0.948096,
		-0.061779, -0.953951, -0.293532,
		0.992138, -0.026625, -0.122282,
		40.200859, 33.234123, 39.537888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684341, 32.627316, 39.748077>,  <39.506363, 33.252762, 39.623486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684341, 32.627316, 39.748077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027699, 32.829601, 39.782536>,  <40.233711, 32.950974, 39.803211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027699, 32.829601, 39.782536>,  <39.684341, 32.627316, 39.748077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027699, 32.829601, 39.782536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122465, -0.365085, 0.922884,
		0.498164, -0.781645, -0.375317,
		0.858391, 0.505711, 0.086148,
		40.285217, 32.981316, 39.808380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593964, 31.897659, 39.669186>,  <39.684341, 32.627316, 39.748077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593964, 31.897659, 39.669186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340843, 31.660355, 39.868225>,  <39.188972, 31.517971, 39.987648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340843, 31.660355, 39.868225>,  <39.593964, 31.897659, 39.669186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340843, 31.660355, 39.868225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336012, -0.368574, -0.866746,
		0.697608, -0.715677, 0.033892,
		-0.632802, -0.593261, 0.497597,
		39.151001, 31.482376, 40.017506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559872, 31.243046, 39.353237>,  <39.593964, 31.897659, 39.669186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559872, 31.243046, 39.353237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220345, 31.232336, 39.564442>,  <39.016628, 31.225910, 39.691166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220345, 31.232336, 39.564442>,  <39.559872, 31.243046, 39.353237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220345, 31.232336, 39.564442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454944, -0.471785, -0.755278,
		0.269331, -0.881307, 0.388277,
		-0.848815, -0.026776, 0.528012,
		38.965698, 31.224304, 39.722847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321461, 30.518040, 39.327812>,  <39.559872, 31.243046, 39.353237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321461, 30.518040, 39.327812> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996845, 30.740200, 39.400398>,  <38.802074, 30.873497, 39.443951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996845, 30.740200, 39.400398>,  <39.321461, 30.518040, 39.327812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996845, 30.740200, 39.400398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406953, -0.314419, -0.857630,
		-0.419275, -0.769849, 0.481187,
		-0.811540, 0.555403, 0.181464,
		38.753384, 30.906820, 39.454838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856857, 30.240170, 38.886017>,  <39.321461, 30.518040, 39.327812>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856857, 30.240170, 38.886017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668465, 30.579241, 38.983681>,  <38.555428, 30.782684, 39.042278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668465, 30.579241, 38.983681>,  <38.856857, 30.240170, 38.886017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668465, 30.579241, 38.983681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534283, -0.053878, -0.843587,
		-0.701936, -0.527767, 0.478276,
		-0.470986, 0.847679, 0.244158,
		38.527168, 30.833544, 39.056927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148308, 30.089470, 38.719875>,  <38.856857, 30.240170, 38.886017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148308, 30.089470, 38.719875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218662, 30.482910, 38.735836>,  <38.260876, 30.718975, 38.745411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218662, 30.482910, 38.735836>,  <38.148308, 30.089470, 38.719875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218662, 30.482910, 38.735836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561867, 0.133587, -0.816370,
		-0.808313, 0.121170, 0.576149,
		0.175886, 0.983602, 0.039899,
		38.271427, 30.777990, 38.747807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545086, 30.321114, 38.534000>,  <38.148308, 30.089470, 38.719875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545086, 30.321114, 38.534000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823936, 30.600250, 38.468239>,  <37.991245, 30.767733, 38.428780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823936, 30.600250, 38.468239>,  <37.545086, 30.321114, 38.534000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823936, 30.600250, 38.468239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532138, 0.349960, -0.770946,
		-0.480463, 0.624934, 0.615315,
		0.697126, 0.697844, -0.164408,
		38.033073, 30.809603, 38.418915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194523, 30.935417, 38.622314>,  <37.545086, 30.321114, 38.534000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194523, 30.935417, 38.622314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517281, 31.013233, 38.399220>,  <37.710938, 31.059923, 38.265362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517281, 31.013233, 38.399220>,  <37.194523, 30.935417, 38.622314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517281, 31.013233, 38.399220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588136, 0.352349, -0.727974,
		0.054897, 0.915425, 0.398727,
		0.806897, 0.194542, -0.557738,
		37.759350, 31.071596, 38.231899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112076, 31.547722, 38.180630>,  <37.194523, 30.935417, 38.622314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112076, 31.547722, 38.180630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405231, 31.370789, 37.973862>,  <37.581127, 31.264627, 37.849800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405231, 31.370789, 37.973862>,  <37.112076, 31.547722, 38.180630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405231, 31.370789, 37.973862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469781, 0.220556, -0.854787,
		0.492112, 0.869308, -0.046156,
		0.732893, -0.442334, -0.516922,
		37.625099, 31.238089, 37.818787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276840, 31.967113, 37.655350>,  <37.112076, 31.547722, 38.180630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276840, 31.967113, 37.655350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392345, 31.601543, 37.541256>,  <37.461651, 31.382202, 37.472801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392345, 31.601543, 37.541256>,  <37.276840, 31.967113, 37.655350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392345, 31.601543, 37.541256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609735, 0.054136, -0.790754,
		0.738131, 0.402258, -0.541619,
		0.288766, -0.913924, -0.285230,
		37.478973, 31.327366, 37.455688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243904, 31.984762, 36.940365>,  <37.276840, 31.967113, 37.655350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243904, 31.984762, 36.940365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281281, 31.590492, 36.996525>,  <37.303707, 31.353930, 37.030220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281281, 31.590492, 36.996525>,  <37.243904, 31.984762, 36.940365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281281, 31.590492, 36.996525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450527, -0.167616, -0.876887,
		0.887860, 0.018678, -0.459735,
		0.093438, -0.985675, 0.140404,
		37.309311, 31.294790, 37.038647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489063, 31.721760, 36.252377>,  <37.243904, 31.984762, 36.940365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489063, 31.721760, 36.252377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296783, 31.419796, 36.430836>,  <37.181416, 31.238619, 36.537910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296783, 31.419796, 36.430836>,  <37.489063, 31.721760, 36.252377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296783, 31.419796, 36.430836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360425, -0.293722, -0.885337,
		0.799391, -0.586379, -0.130897,
		-0.480696, -0.754908, 0.446144,
		37.152576, 31.193323, 36.564678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791611, 31.092035, 36.090290>,  <37.489063, 31.721760, 36.252377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791611, 31.092035, 36.090290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404835, 31.038731, 36.177258>,  <37.172771, 31.006748, 36.229439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404835, 31.038731, 36.177258>,  <37.791611, 31.092035, 36.090290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404835, 31.038731, 36.177258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157555, -0.358209, -0.920251,
		0.200517, -0.924082, 0.325370,
		-0.966938, -0.133262, 0.217421,
		37.114754, 30.998753, 36.242485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<41.638706, 30.826611, 42.955219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.257324, 30.885311, 43.060585>,  <41.028496, 30.920532, 43.123802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.257324, 30.885311, 43.060585>,  <41.638706, 30.826611, 42.955219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.257324, 30.885311, 43.060585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297014, -0.306417, -0.904373,
		-0.052003, -0.940517, 0.335742,
		-0.953456, 0.146750, 0.263413,
		40.971287, 30.929337, 43.139610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248680, 30.219942, 42.750031>,  <41.638706, 30.826611, 42.955219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248680, 30.219942, 42.750031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.989792, 30.523050, 42.783211>,  <40.834457, 30.704916, 42.803120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.989792, 30.523050, 42.783211>,  <41.248680, 30.219942, 42.750031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.989792, 30.523050, 42.783211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407071, -0.251565, -0.878071,
		-0.644510, -0.602076, 0.471286,
		-0.647224, 0.757773, 0.082952,
		40.795624, 30.750381, 42.808098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710796, 29.985868, 42.414692>,  <41.248680, 30.219942, 42.750031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710796, 29.985868, 42.414692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.648849, 30.380062, 42.442524>,  <40.611683, 30.616577, 42.459221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.648849, 30.380062, 42.442524>,  <40.710796, 29.985868, 42.414692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648849, 30.380062, 42.442524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509197, -0.019272, -0.860434,
		-0.846602, -0.168679, 0.504789,
		-0.154866, 0.985483, 0.069576,
		40.602390, 30.675707, 42.463398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002033, 30.026705, 42.502617>,  <40.710796, 29.985868, 42.414692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002033, 30.026705, 42.502617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.154869, 30.366249, 42.356495>,  <40.246571, 30.569975, 42.268822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.154869, 30.366249, 42.356495>,  <40.002033, 30.026705, 42.502617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154869, 30.366249, 42.356495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710105, 0.016713, -0.703897,
		-0.591405, 0.528353, 0.609166,
		0.382087, 0.848860, -0.365302,
		40.269497, 30.620907, 42.246902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495941, 30.366819, 42.226669>,  <40.002033, 30.026705, 42.502617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495941, 30.366819, 42.226669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.755260, 30.605610, 42.037636>,  <39.910851, 30.748884, 41.924217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.755260, 30.605610, 42.037636>,  <39.495941, 30.366819, 42.226669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755260, 30.605610, 42.037636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720794, 0.281235, -0.633532,
		-0.245297, 0.751349, 0.612621,
		0.648294, 0.596977, -0.472581,
		39.949749, 30.784702, 41.895863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160728, 31.061136, 42.107201>,  <39.495941, 30.366819, 42.226669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160728, 31.061136, 42.107201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.453453, 31.028807, 41.836521>,  <39.629086, 31.009409, 41.674114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.453453, 31.028807, 41.836521>,  <39.160728, 31.061136, 42.107201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453453, 31.028807, 41.836521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582627, 0.440928, -0.682736,
		0.353560, 0.893896, 0.275583,
		0.731807, -0.080826, -0.676702,
		39.672997, 31.004559, 41.633511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328037, 31.688025, 41.710552>,  <39.160728, 31.061136, 42.107201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328037, 31.688025, 41.710552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.453186, 31.396002, 41.467529>,  <39.528275, 31.220787, 41.321716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.453186, 31.396002, 41.467529>,  <39.328037, 31.688025, 41.710552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453186, 31.396002, 41.467529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577689, 0.361482, -0.731851,
		0.753916, 0.579953, -0.308651,
		0.312867, -0.730059, -0.607559,
		39.547047, 31.176985, 41.285263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349308, 32.076111, 41.149464>,  <39.328037, 31.688025, 41.710552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349308, 32.076111, 41.149464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.385010, 31.705637, 41.002918>,  <39.406429, 31.483353, 40.914989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.385010, 31.705637, 41.002918>,  <39.349308, 32.076111, 41.149464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385010, 31.705637, 41.002918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588264, 0.247803, -0.769766,
		0.803729, 0.284221, -0.522723,
		0.089251, -0.926182, -0.366363,
		39.411785, 31.427782, 40.893009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567890, 32.065899, 40.365231>,  <39.349308, 32.076111, 41.149464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567890, 32.065899, 40.365231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.377132, 31.725573, 40.453484>,  <39.262676, 31.521376, 40.506435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.377132, 31.725573, 40.453484>,  <39.567890, 32.065899, 40.365231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377132, 31.725573, 40.453484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633919, 0.159048, -0.756869,
		0.608865, -0.500814, -0.615199,
		-0.476896, -0.850817, 0.220637,
		39.234062, 31.470327, 40.519676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285118, 32.154911, 40.138325>,  <39.567890, 32.065899, 40.365231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285118, 32.154911, 40.138325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.418655, 32.529575, 40.180706>,  <40.498775, 32.754372, 40.206135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.418655, 32.529575, 40.180706>,  <40.285118, 32.154911, 40.138325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418655, 32.529575, 40.180706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362748, -0.231398, 0.902701,
		0.870037, -0.262925, -0.417020,
		0.333840, 0.936656, 0.105950,
		40.518806, 32.810574, 40.212490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869995, 32.062778, 40.624905>,  <40.285118, 32.154911, 40.138325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869995, 32.062778, 40.624905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.836872, 32.460621, 40.649910>,  <40.816998, 32.699326, 40.664913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.836872, 32.460621, 40.649910>,  <40.869995, 32.062778, 40.624905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836872, 32.460621, 40.649910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412283, -0.022918, 0.910767,
		0.907284, 0.101196, -0.408160,
		-0.082812, 0.994602, 0.062515,
		40.812027, 32.759003, 40.668663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584938, 32.401779, 40.759949>,  <40.869995, 32.062778, 40.624905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584938, 32.401779, 40.759949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.295887, 32.646557, 40.888527>,  <41.122456, 32.793423, 40.965672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.295887, 32.646557, 40.888527>,  <41.584938, 32.401779, 40.759949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295887, 32.646557, 40.888527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386918, -0.027256, 0.921711,
		0.572799, 0.790430, -0.217077,
		-0.722631, 0.611946, 0.321444,
		41.079098, 32.830139, 40.984959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006298, 32.877224, 41.116817>,  <41.584938, 32.401779, 40.759949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006298, 32.877224, 41.116817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.624809, 32.942608, 41.217766>,  <41.395916, 32.981838, 41.278336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.624809, 32.942608, 41.217766>,  <42.006298, 32.877224, 41.116817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624809, 32.942608, 41.217766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286946, 0.244042, 0.926340,
		0.089829, 0.955890, -0.279652,
		-0.953726, 0.163457, 0.252367,
		41.338692, 32.991646, 41.293476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996014, 33.545784, 41.280373>,  <42.006298, 32.877224, 41.116817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996014, 33.545784, 41.280373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.690159, 33.355629, 41.454422>,  <41.506645, 33.241535, 41.558853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.690159, 33.355629, 41.454422>,  <41.996014, 33.545784, 41.280373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690159, 33.355629, 41.454422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350198, 0.260300, 0.899781,
		-0.541006, 0.840388, -0.032557,
		-0.764640, -0.475385, 0.435126,
		41.460766, 33.213013, 41.584961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819080, 34.012436, 41.765301>,  <41.996014, 33.545784, 41.280373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.819080, 34.012436, 41.765301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.686382, 33.649399, 41.868233>,  <41.606762, 33.431576, 41.929993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.686382, 33.649399, 41.868233>,  <41.819080, 34.012436, 41.765301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.686382, 33.649399, 41.868233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270009, 0.170013, 0.947729,
		-0.903902, 0.383887, 0.188657,
		-0.331747, -0.907594, 0.257328,
		41.586857, 33.377121, 41.945431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551495, 34.096821, 42.401764>,  <41.819080, 34.012436, 41.765301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551495, 34.096821, 42.401764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.557369, 33.697056, 42.414169>,  <41.560894, 33.457195, 42.421612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.557369, 33.697056, 42.414169>,  <41.551495, 34.096821, 42.401764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557369, 33.697056, 42.414169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285616, 0.033920, 0.957744,
		-0.958232, -0.005205, 0.285946,
		0.014684, -0.999411, 0.031016,
		41.561775, 33.397232, 42.423473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095215, 33.849281, 42.956486>,  <41.551495, 34.096821, 42.401764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095215, 33.849281, 42.956486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.388039, 33.590683, 42.870575>,  <41.563732, 33.435524, 42.819027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.388039, 33.590683, 42.870575>,  <41.095215, 33.849281, 42.956486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388039, 33.590683, 42.870575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207676, -0.088483, 0.974187,
		-0.648810, -0.757771, 0.069486,
		0.732063, -0.646493, -0.214780,
		41.607658, 33.396736, 42.806141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014088, 33.318932, 43.505466>,  <41.095215, 33.849281, 42.956486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014088, 33.318932, 43.505466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.377789, 33.243164, 43.357204>,  <41.596008, 33.197704, 43.268246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.377789, 33.243164, 43.357204>,  <41.014088, 33.318932, 43.505466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377789, 33.243164, 43.357204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385294, 0.045986, 0.921647,
		-0.157529, -0.980820, 0.114794,
		0.909248, -0.189416, -0.370660,
		41.650562, 33.186340, 43.246006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297199, 32.866184, 43.973915>,  <41.014088, 33.318932, 43.505466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297199, 32.866184, 43.973915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.616634, 33.008755, 43.779922>,  <41.808296, 33.094296, 43.663525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.616634, 33.008755, 43.779922>,  <41.297199, 32.866184, 43.973915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.616634, 33.008755, 43.779922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530626, -0.036650, 0.846813,
		0.284053, -0.933604, -0.218398,
		0.798592, 0.356428, -0.484984,
		41.856213, 33.115685, 43.634426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881168, 32.443161, 44.177879>,  <41.297199, 32.866184, 43.973915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.881168, 32.443161, 44.177879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.044022, 32.780701, 44.038074>,  <42.141735, 32.983223, 43.954193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.044022, 32.780701, 44.038074>,  <41.881168, 32.443161, 44.177879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.044022, 32.780701, 44.038074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587489, 0.051059, 0.807620,
		0.699354, -0.534147, -0.474964,
		0.407137, 0.843848, -0.349514,
		42.166164, 33.033855, 43.933220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.590923, 32.392048, 44.427929>,  <41.881168, 32.443161, 44.177879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.590923, 32.392048, 44.427929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.542171, 32.775032, 44.323311>,  <42.512920, 33.004822, 44.260540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.542171, 32.775032, 44.323311>,  <42.590923, 32.392048, 44.427929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.542171, 32.775032, 44.323311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559077, 0.283959, 0.778974,
		0.820109, -0.051284, -0.569905,
		-0.121881, 0.957464, -0.261549,
		42.505608, 33.062271, 44.244846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.192753, 32.702854, 44.633083>,  <42.590923, 32.392048, 44.427929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.192753, 32.702854, 44.633083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.959644, 33.026943, 44.608047>,  <42.819778, 33.221397, 44.593025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.959644, 33.026943, 44.608047>,  <43.192753, 32.702854, 44.633083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.959644, 33.026943, 44.608047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473532, 0.401173, 0.784109,
		0.660413, 0.427317, -0.617458,
		-0.582771, 0.810223, -0.062592,
		42.784813, 33.270008, 44.589272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.590443, 33.184223, 44.506390>,  <43.192753, 32.702854, 44.633083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.590443, 33.184223, 44.506390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.273647, 33.372608, 44.661797>,  <43.083569, 33.485641, 44.755039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.273647, 33.372608, 44.661797>,  <43.590443, 33.184223, 44.506390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273647, 33.372608, 44.661797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587508, 0.414774, 0.694836,
		0.166096, 0.778559, -0.605192,
		-0.791989, 0.470965, 0.388518,
		43.036049, 33.513897, 44.778351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.277828, 34.461430, 47.734543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.539436, 34.182117, 47.618149>,  <36.696400, 34.014530, 47.548313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.539436, 34.182117, 47.618149>,  <36.277828, 34.461430, 47.734543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539436, 34.182117, 47.618149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260344, 0.153397, -0.953252,
		0.710270, 0.699199, -0.081468,
		0.654016, -0.698277, -0.290986,
		36.735641, 33.972633, 47.530853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439011, 34.686741, 47.089634>,  <36.277828, 34.461430, 47.734543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439011, 34.686741, 47.089634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.584534, 34.314671, 47.070011>,  <36.671848, 34.091427, 47.058239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.584534, 34.314671, 47.070011>,  <36.439011, 34.686741, 47.089634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584534, 34.314671, 47.070011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276863, -0.057703, -0.959175,
		0.889375, 0.362541, -0.278525,
		0.363812, -0.930179, -0.049054,
		36.693676, 34.035618, 47.055294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070786, 34.734135, 46.688675>,  <36.439011, 34.686741, 47.089634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070786, 34.734135, 46.688675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.913174, 34.366688, 46.676800>,  <36.818607, 34.146221, 46.669674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.913174, 34.366688, 46.676800>,  <37.070786, 34.734135, 46.688675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913174, 34.366688, 46.676800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041373, 0.049995, -0.997892,
		0.918166, -0.391971, -0.057706,
		-0.394030, -0.918618, -0.029687,
		36.794964, 34.091103, 46.667892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415802, 34.452526, 46.146564>,  <37.070786, 34.734135, 46.688675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415802, 34.452526, 46.146564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.119545, 34.190968, 46.208351>,  <36.941792, 34.034031, 46.245422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.119545, 34.190968, 46.208351>,  <37.415802, 34.452526, 46.146564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119545, 34.190968, 46.208351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002437, -0.232513, -0.972590,
		0.671894, -0.719966, 0.173802,
		-0.740643, -0.653901, 0.154469,
		36.897350, 33.994797, 46.254692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588188, 33.777580, 45.837563>,  <37.415802, 34.452526, 46.146564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588188, 33.777580, 45.837563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.189507, 33.784512, 45.869278>,  <36.950298, 33.788670, 45.888309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.189507, 33.784512, 45.869278>,  <37.588188, 33.777580, 45.837563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189507, 33.784512, 45.869278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081022, -0.154728, -0.984629,
		-0.004789, -0.987805, 0.155621,
		-0.996701, 0.017325, 0.079293,
		36.890495, 33.789711, 45.893066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313904, 33.159264, 45.455032>,  <37.588188, 33.777580, 45.837563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313904, 33.159264, 45.455032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.037075, 33.446774, 45.481564>,  <36.870975, 33.619278, 45.497482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.037075, 33.446774, 45.481564>,  <37.313904, 33.159264, 45.455032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037075, 33.446774, 45.481564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224500, -0.127008, -0.966162,
		-0.686026, -0.683547, 0.249263,
		-0.692075, 0.718772, 0.066325,
		36.829453, 33.662407, 45.501461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693123, 32.834053, 45.036709>,  <37.313904, 33.159264, 45.455032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693123, 32.834053, 45.036709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.621937, 33.223476, 45.093998>,  <36.579227, 33.457130, 45.128372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.621937, 33.223476, 45.093998>,  <36.693123, 32.834053, 45.036709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621937, 33.223476, 45.093998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440026, 0.051452, -0.896510,
		-0.880174, -0.222566, 0.419235,
		-0.177963, 0.973559, 0.143221,
		36.568546, 33.515545, 45.136963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084427, 32.826645, 44.711594>,  <36.693123, 32.834053, 45.036709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084427, 32.826645, 44.711594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.228615, 33.199715, 44.716999>,  <36.315128, 33.423557, 44.720242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.228615, 33.199715, 44.716999>,  <36.084427, 32.826645, 44.711594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228615, 33.199715, 44.716999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187451, 0.086628, -0.978447,
		-0.913741, 0.350169, 0.206057,
		0.360472, 0.932672, 0.013516,
		36.336758, 33.479515, 44.721054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525448, 33.319408, 44.489674>,  <36.084427, 32.826645, 44.711594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525448, 33.319408, 44.489674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.875820, 33.504524, 44.435165>,  <36.086044, 33.615593, 44.402458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.875820, 33.504524, 44.435165>,  <35.525448, 33.319408, 44.489674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875820, 33.504524, 44.435165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327029, 0.361925, -0.872962,
		-0.354674, 0.809221, 0.468366,
		0.875933, 0.462786, -0.136273,
		36.138599, 33.643360, 44.394283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353527, 34.011436, 44.186283>,  <35.525448, 33.319408, 44.489674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353527, 34.011436, 44.186283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.737724, 33.976509, 44.080578>,  <35.968243, 33.955551, 44.017155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.737724, 33.976509, 44.080578>,  <35.353527, 34.011436, 44.186283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737724, 33.976509, 44.080578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239676, 0.223167, -0.944855,
		0.141480, 0.970861, 0.193421,
		0.960489, -0.087320, -0.264266,
		36.025871, 33.950314, 44.001297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339230, 34.359299, 43.593075>,  <35.353527, 34.011436, 44.186283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339230, 34.359299, 43.593075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.691074, 34.169735, 43.576645>,  <35.902184, 34.055996, 43.566788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.691074, 34.169735, 43.576645>,  <35.339230, 34.359299, 43.593075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691074, 34.169735, 43.576645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025308, 0.132841, -0.990814,
		0.475013, 0.870495, 0.128843,
		0.879615, -0.473911, -0.041071,
		35.954960, 34.027561, 43.564323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794025, 34.785213, 43.250893>,  <35.339230, 34.359299, 43.593075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794025, 34.785213, 43.250893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.923721, 34.408581, 43.214462>,  <36.001537, 34.182602, 43.192604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.923721, 34.408581, 43.214462>,  <35.794025, 34.785213, 43.250893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923721, 34.408581, 43.214462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252387, 0.178889, -0.950947,
		0.911686, 0.285347, 0.295646,
		0.324238, -0.941582, -0.091072,
		36.020992, 34.126106, 43.187141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468399, 34.781296, 42.859173>,  <35.794025, 34.785213, 43.250893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468399, 34.781296, 42.859173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.302608, 34.419743, 42.816822>,  <36.203133, 34.202812, 42.791412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.302608, 34.419743, 42.816822>,  <36.468399, 34.781296, 42.859173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302608, 34.419743, 42.816822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041437, 0.097478, -0.994375,
		0.909116, -0.416532, -0.002948,
		-0.414477, -0.903880, -0.105878,
		36.178265, 34.148579, 42.785057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539692, 34.728706, 42.201195>,  <36.468399, 34.781296, 42.859173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539692, 34.728706, 42.201195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.331989, 34.389702, 42.245178>,  <36.207367, 34.186298, 42.271568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.331989, 34.389702, 42.245178>,  <36.539692, 34.728706, 42.201195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331989, 34.389702, 42.245178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299634, 0.060048, -0.952163,
		0.800367, -0.527368, -0.285124,
		-0.519261, -0.847513, 0.109957,
		36.176212, 34.135448, 42.278164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320789, 34.506878, 42.250874>,  <36.539692, 34.728706, 42.201195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320789, 34.506878, 42.250874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.463295, 34.841957, 42.085300>,  <37.548798, 35.043003, 41.985958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.463295, 34.841957, 42.085300>,  <37.320789, 34.506878, 42.250874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463295, 34.841957, 42.085300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023402, 0.450861, 0.892287,
		0.934091, -0.308205, 0.180231,
		0.356266, 0.837696, -0.413932,
		37.570175, 35.093266, 41.961121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046730, 34.653545, 42.572956>,  <37.320789, 34.506878, 42.250874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046730, 34.653545, 42.572956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.849976, 34.967854, 42.422958>,  <37.731922, 35.156437, 42.332962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.849976, 34.967854, 42.422958>,  <38.046730, 34.653545, 42.572956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849976, 34.967854, 42.422958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098285, 0.478055, 0.872813,
		0.865096, 0.392466, -0.312377,
		-0.491882, 0.785770, -0.374990,
		37.702412, 35.203583, 42.310463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482025, 35.267292, 42.681393>,  <38.046730, 34.653545, 42.572956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482025, 35.267292, 42.681393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.126415, 35.436718, 42.611858>,  <37.913048, 35.538372, 42.570137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.126415, 35.436718, 42.611858>,  <38.482025, 35.267292, 42.681393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126415, 35.436718, 42.611858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180331, 0.672932, 0.717386,
		0.420842, 0.606428, -0.674638,
		-0.889029, 0.423565, -0.173840,
		37.859707, 35.563786, 42.559708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542664, 36.108948, 42.521175>,  <38.482025, 35.267292, 42.681393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542664, 36.108948, 42.521175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.182220, 36.016045, 42.667633>,  <37.965954, 35.960300, 42.755508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.182220, 36.016045, 42.667633>,  <38.542664, 36.108948, 42.521175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182220, 36.016045, 42.667633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144301, 0.635666, 0.758358,
		-0.408883, 0.736196, -0.539286,
		-0.901106, -0.232260, 0.366147,
		37.911888, 35.946365, 42.777477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379917, 36.587212, 43.035271>,  <38.542664, 36.108948, 42.521175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379917, 36.587212, 43.035271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.096916, 36.320473, 43.128872>,  <37.927116, 36.160431, 43.185032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.096916, 36.320473, 43.128872>,  <38.379917, 36.587212, 43.035271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096916, 36.320473, 43.128872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054516, 0.278634, 0.958849,
		-0.704605, 0.691145, -0.160781,
		-0.707503, -0.666844, 0.234005,
		37.884666, 36.120419, 43.199074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967442, 36.945259, 43.475368>,  <38.379917, 36.587212, 43.035271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967442, 36.945259, 43.475368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.845039, 36.571342, 43.547508>,  <37.771599, 36.346992, 43.590794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.845039, 36.571342, 43.547508>,  <37.967442, 36.945259, 43.475368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845039, 36.571342, 43.547508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063272, 0.208991, 0.975869,
		-0.949924, 0.287213, -0.123099,
		-0.306009, -0.934790, 0.180353,
		37.753235, 36.290905, 43.601616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365910, 36.974129, 43.899635>,  <37.967442, 36.945259, 43.475368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365910, 36.974129, 43.899635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.534542, 36.615173, 43.951721>,  <37.635723, 36.399799, 43.982975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.534542, 36.615173, 43.951721>,  <37.365910, 36.974129, 43.899635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534542, 36.615173, 43.951721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016706, 0.135893, 0.990583,
		-0.906635, -0.419791, 0.042298,
		0.421586, -0.897390, 0.130218,
		37.661018, 36.345955, 43.990788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101028, 36.755302, 44.517525>,  <37.365910, 36.974129, 43.899635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101028, 36.755302, 44.517525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.420864, 36.523716, 44.453693>,  <37.612766, 36.384766, 44.415394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.420864, 36.523716, 44.453693>,  <37.101028, 36.755302, 44.517525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420864, 36.523716, 44.453693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159835, -0.050975, 0.985827,
		-0.578893, -0.813758, 0.051780,
		0.799585, -0.578964, -0.159576,
		37.660740, 36.350025, 44.405819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992489, 36.254944, 45.069744>,  <37.101028, 36.755302, 44.517525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992489, 36.254944, 45.069744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.369705, 36.247623, 44.936871>,  <37.596035, 36.243233, 44.857147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.369705, 36.247623, 44.936871>,  <36.992489, 36.254944, 45.069744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369705, 36.247623, 44.936871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327702, -0.121181, 0.936978,
		-0.057396, -0.992462, -0.108283,
		0.943036, -0.018294, -0.332187,
		37.652615, 36.242134, 44.837215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381779, 35.587013, 45.295525>,  <36.992489, 36.254944, 45.069744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381779, 35.587013, 45.295525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.678532, 35.841110, 45.209663>,  <37.856583, 35.993568, 45.158146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.678532, 35.841110, 45.209663>,  <37.381779, 35.587013, 45.295525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678532, 35.841110, 45.209663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493194, -0.300080, 0.816524,
		0.454281, -0.711629, -0.535923,
		0.741882, 0.635245, -0.214651,
		37.901096, 36.031685, 45.145267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929104, 35.349651, 45.670647>,  <37.381779, 35.587013, 45.295525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929104, 35.349651, 45.670647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.070850, 35.705769, 45.556248>,  <38.155899, 35.919441, 45.487610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.070850, 35.705769, 45.556248>,  <37.929104, 35.349651, 45.670647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070850, 35.705769, 45.556248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584594, 0.027788, 0.810849,
		0.729845, -0.454531, -0.510616,
		0.354367, 0.890298, -0.285997,
		38.177162, 35.972858, 45.470448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642479, 35.250004, 45.537457>,  <37.929104, 35.349651, 45.670647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642479, 35.250004, 45.537457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.539371, 35.619606, 45.650433>,  <38.477505, 35.841366, 45.718216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.539371, 35.619606, 45.650433>,  <38.642479, 35.250004, 45.537457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539371, 35.619606, 45.650433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700363, -0.022688, 0.713426,
		0.665617, 0.381708, -0.641290,
		-0.257771, 0.924004, 0.282436,
		38.462040, 35.896809, 45.735165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221466, 35.521095, 45.795788>,  <38.642479, 35.250004, 45.537457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221466, 35.521095, 45.795788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.959160, 35.766106, 45.972324>,  <38.801777, 35.913113, 46.078247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.959160, 35.766106, 45.972324>,  <39.221466, 35.521095, 45.795788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959160, 35.766106, 45.972324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544636, -0.021011, 0.838409,
		0.522820, 0.790171, -0.319826,
		-0.655767, 0.612526, 0.441340,
		38.762428, 35.949863, 46.104725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619186, 35.674423, 46.231113>,  <39.221466, 35.521095, 45.795788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619186, 35.674423, 46.231113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.269657, 35.818260, 46.362038>,  <39.059940, 35.904564, 46.440590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.269657, 35.818260, 46.362038>,  <39.619186, 35.674423, 46.231113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269657, 35.818260, 46.362038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298815, -0.133909, 0.944869,
		0.383599, 0.923451, 0.009560,
		-0.873820, 0.359594, 0.327308,
		39.007511, 35.926140, 46.460232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240349, 36.157318, 46.293900>,  <39.619186, 35.674423, 46.231113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240349, 36.157318, 46.293900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.637043, 36.114285, 46.265938>,  <40.875061, 36.088463, 46.249161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.637043, 36.114285, 46.265938>,  <40.240349, 36.157318, 46.293900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637043, 36.114285, 46.265938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004377, 0.516145, -0.856490,
		0.128226, 0.849717, 0.511408,
		0.991735, -0.107585, -0.069903,
		40.934563, 36.082008, 46.244968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601925, 36.812382, 46.241131>,  <40.240349, 36.157318, 46.293900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601925, 36.812382, 46.241131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.807812, 36.522034, 46.058624>,  <40.931343, 36.347824, 45.949120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.807812, 36.522034, 46.058624>,  <40.601925, 36.812382, 46.241131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807812, 36.522034, 46.058624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005467, 0.534944, -0.844870,
		0.857344, 0.432373, 0.279312,
		0.514715, -0.725871, -0.456267,
		40.962227, 36.304272, 45.921745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076042, 37.153072, 45.821579>,  <40.601925, 36.812382, 46.241131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076042, 37.153072, 45.821579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.077915, 36.789993, 45.653744>,  <41.079037, 36.572144, 45.553043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.077915, 36.789993, 45.653744>,  <41.076042, 37.153072, 45.821579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077915, 36.789993, 45.653744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157600, 0.415022, -0.896057,
		0.987492, -0.061936, 0.144996,
		0.004678, -0.907701, -0.419592,
		41.079319, 36.517685, 45.527866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647350, 37.186161, 45.395878>,  <41.076042, 37.153072, 45.821579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647350, 37.186161, 45.395878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.428520, 36.882416, 45.254978>,  <41.297222, 36.700169, 45.170437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.428520, 36.882416, 45.254978>,  <41.647350, 37.186161, 45.395878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428520, 36.882416, 45.254978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087684, 0.366503, -0.926276,
		0.832478, -0.537629, -0.133921,
		-0.547076, -0.759361, -0.352248,
		41.264397, 36.654606, 45.149303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096710, 36.828381, 44.951527>,  <41.647350, 37.186161, 45.395878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096710, 36.828381, 44.951527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.742664, 36.691513, 44.825356>,  <41.530235, 36.609394, 44.749653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.742664, 36.691513, 44.825356>,  <42.096710, 36.828381, 44.951527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742664, 36.691513, 44.825356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295397, 0.110659, -0.948944,
		0.359601, -0.933101, 0.003129,
		-0.885114, -0.342166, -0.315428,
		41.477131, 36.588863, 44.730728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268887, 36.437832, 44.360115>,  <42.096710, 36.828381, 44.951527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268887, 36.437832, 44.360115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.887074, 36.543884, 44.305595>,  <41.657986, 36.607517, 44.272884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.887074, 36.543884, 44.305595>,  <42.268887, 36.437832, 44.360115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.887074, 36.543884, 44.305595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160013, 0.069892, -0.984638,
		-0.251535, -0.961675, -0.109139,
		-0.954529, 0.265135, -0.136300,
		41.600716, 36.623425, 44.264706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038662, 36.198689, 43.764088>,  <42.268887, 36.437832, 44.360115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038662, 36.198689, 43.764088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.740154, 36.461250, 43.808285>,  <41.561050, 36.618790, 43.834805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.740154, 36.461250, 43.808285>,  <42.038662, 36.198689, 43.764088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740154, 36.461250, 43.808285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018355, 0.145644, -0.989167,
		-0.665389, -0.740215, -0.096642,
		-0.746271, 0.656407, 0.110497,
		41.516273, 36.658173, 43.841434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674366, 35.951477, 43.297897>,  <42.038662, 36.198689, 43.764088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674366, 35.951477, 43.297897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.533024, 36.317169, 43.377224>,  <41.448219, 36.536583, 43.424820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.533024, 36.317169, 43.377224>,  <41.674366, 35.951477, 43.297897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533024, 36.317169, 43.377224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029933, 0.200832, -0.979168,
		-0.935010, -0.351930, -0.043599,
		-0.353355, 0.914227, 0.198314,
		41.427017, 36.591438, 43.436718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052105, 36.012619, 42.992474>,  <41.674366, 35.951477, 43.297897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052105, 36.012619, 42.992474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.199154, 36.383545, 43.020611>,  <41.287384, 36.606098, 43.037495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.199154, 36.383545, 43.020611>,  <41.052105, 36.012619, 42.992474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.199154, 36.383545, 43.020611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072464, 0.103977, -0.991936,
		-0.927148, 0.359559, 0.105421,
		0.367621, 0.927311, 0.070347,
		41.309441, 36.661739, 43.041714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699692, 36.419621, 42.548065>,  <41.052105, 36.012619, 42.992474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699692, 36.419621, 42.548065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.035606, 36.629112, 42.605289>,  <41.237156, 36.754807, 42.639626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.035606, 36.629112, 42.605289>,  <40.699692, 36.419621, 42.548065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035606, 36.629112, 42.605289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012762, 0.244389, -0.969593,
		-0.542768, 0.816076, 0.198551,
		0.839785, 0.523731, 0.143061,
		41.287540, 36.786232, 42.648209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524517, 36.919964, 42.190228>,  <40.699692, 36.419621, 42.548065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524517, 36.919964, 42.190228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.920834, 36.957321, 42.229424>,  <41.158623, 36.979736, 42.252941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.920834, 36.957321, 42.229424>,  <40.524517, 36.919964, 42.190228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920834, 36.957321, 42.229424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063319, 0.320073, -0.945274,
		-0.119649, 0.942778, 0.311213,
		0.990795, 0.093395, 0.097993,
		41.218071, 36.985340, 42.258820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658154, 37.554626, 41.834240>,  <40.524517, 36.919964, 42.190228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658154, 37.554626, 41.834240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.013451, 37.374626, 41.871159>,  <41.226627, 37.266624, 41.893311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.013451, 37.374626, 41.871159>,  <40.658154, 37.554626, 41.834240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013451, 37.374626, 41.871159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302630, 0.422068, -0.854561,
		0.345600, 0.786991, 0.511084,
		0.888243, -0.450005, 0.092300,
		41.279922, 37.239624, 41.898849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169621, 38.052856, 41.695721>,  <40.658154, 37.554626, 41.834240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169621, 38.052856, 41.695721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.372375, 37.716305, 41.620739>,  <41.494030, 37.514374, 41.575748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.372375, 37.716305, 41.620739>,  <41.169621, 38.052856, 41.695721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372375, 37.716305, 41.620739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201096, 0.326882, -0.923422,
		0.838228, 0.430375, 0.334891,
		0.506887, -0.841383, -0.187455,
		41.524441, 37.463890, 41.564503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666855, 38.163582, 41.059292>,  <41.169621, 38.052856, 41.695721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666855, 38.163582, 41.059292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.690369, 37.764297, 41.054924>,  <41.704475, 37.524727, 41.052303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.690369, 37.764297, 41.054924>,  <41.666855, 38.163582, 41.059292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690369, 37.764297, 41.054924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229866, 0.024178, -0.972922,
		0.971445, 0.054682, 0.230876,
		0.058783, -0.998211, -0.010918,
		41.708004, 37.464832, 41.051647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.107843, 33.054092, 28.961926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.984095, 32.673725, 28.959291>,  <30.909845, 32.445503, 28.957710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.984095, 32.673725, 28.959291>,  <31.107843, 33.054092, 28.961926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984095, 32.673725, 28.959291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873720, 0.281509, 0.396694,
		-0.375369, 0.128480, -0.917928,
		-0.309372, -0.950918, -0.006585,
		30.891283, 32.388451, 28.957315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.403519, 33.103703, 28.861839>,  <31.107843, 33.054092, 28.961926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.403519, 33.103703, 28.861839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.430447, 32.719982, 28.971537>,  <30.446604, 32.489750, 29.037355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.430447, 32.719982, 28.971537>,  <30.403519, 33.103703, 28.861839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.430447, 32.719982, 28.971537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847816, 0.089907, 0.522613,
		-0.526000, -0.267690, -0.807259,
		0.067319, -0.959301, 0.274243,
		30.450642, 32.432190, 29.053810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650248, 32.813873, 28.727081>,  <30.403519, 33.103703, 28.861839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650248, 32.813873, 28.727081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.838591, 32.593739, 29.002884>,  <29.951597, 32.461658, 29.168365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.838591, 32.593739, 29.002884>,  <29.650248, 32.813873, 28.727081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838591, 32.593739, 29.002884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759654, 0.144478, 0.634075,
		-0.448574, -0.822347, -0.350038,
		0.470858, -0.550337, 0.689509,
		29.979849, 32.428638, 29.209736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096882, 32.422684, 29.078588>,  <29.650248, 32.813873, 28.727081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096882, 32.422684, 29.078588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.399387, 32.439419, 29.339760>,  <29.580891, 32.449459, 29.496462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.399387, 32.439419, 29.339760>,  <29.096882, 32.422684, 29.078588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.399387, 32.439419, 29.339760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643633, 0.226751, 0.730972,
		-0.117474, -0.973054, 0.198408,
		0.756265, 0.041832, 0.652927,
		29.626266, 32.451969, 29.535639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.708391, 32.447731, 29.645201>,  <29.096882, 32.422684, 29.078588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.708391, 32.447731, 29.645201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.068727, 32.504440, 29.809340>,  <29.284929, 32.538464, 29.907822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.068727, 32.504440, 29.809340>,  <28.708391, 32.447731, 29.645201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068727, 32.504440, 29.809340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423263, 0.497101, 0.757456,
		-0.096598, -0.856033, 0.507816,
		0.900843, 0.141771, 0.410346,
		29.338980, 32.546970, 29.932444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630655, 32.397255, 30.288046>,  <28.708391, 32.447731, 29.645201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.630655, 32.397255, 30.288046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.969034, 32.610531, 30.291613>,  <29.172062, 32.738495, 30.293753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.969034, 32.610531, 30.291613>,  <28.630655, 32.397255, 30.288046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.969034, 32.610531, 30.291613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269178, 0.412520, 0.870270,
		0.460342, -0.738603, 0.492494,
		0.845948, 0.533191, 0.008915,
		29.222818, 32.770489, 30.294287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010406, 32.174809, 30.932583>,  <28.630655, 32.397255, 30.288046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.010406, 32.174809, 30.932583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.127365, 32.545116, 30.836708>,  <29.197540, 32.767303, 30.779182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.127365, 32.545116, 30.836708>,  <29.010406, 32.174809, 30.932583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.127365, 32.545116, 30.836708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177453, 0.298814, 0.937668,
		0.939689, -0.231637, 0.251653,
		0.292396, 0.925772, -0.239688,
		29.215084, 32.822849, 30.764801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389038, 32.419361, 31.560778>,  <29.010406, 32.174809, 30.932583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389038, 32.419361, 31.560778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.285522, 32.749187, 31.359531>,  <29.223413, 32.947083, 31.238783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.285522, 32.749187, 31.359531>,  <29.389038, 32.419361, 31.560778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.285522, 32.749187, 31.359531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277049, 0.435614, 0.856437,
		0.925350, 0.361024, 0.115712,
		-0.258789, 0.824561, -0.503117,
		29.207886, 32.996555, 31.208597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630070, 32.999809, 31.951572>,  <29.389038, 32.419361, 31.560778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.630070, 32.999809, 31.951572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.324076, 33.119583, 31.723490>,  <29.140480, 33.191448, 31.586639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.324076, 33.119583, 31.723490>,  <29.630070, 32.999809, 31.951572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324076, 33.119583, 31.723490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409840, 0.456633, 0.789631,
		0.496819, 0.837750, -0.226597,
		-0.764985, 0.299435, -0.570207,
		29.094580, 33.209415, 31.552427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.674791, 33.725170, 32.111820>,  <29.630070, 32.999809, 31.951572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.674791, 33.725170, 32.111820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.314524, 33.620670, 31.972940>,  <29.098364, 33.557968, 31.889612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.314524, 33.620670, 31.972940>,  <29.674791, 33.725170, 32.111820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314524, 33.620670, 31.972940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432745, 0.467369, 0.770907,
		-0.039131, 0.844579, -0.533999,
		-0.900667, -0.261252, -0.347199,
		29.044323, 33.542294, 31.868780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267014, 34.186630, 32.344070>,  <29.674791, 33.725170, 32.111820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267014, 34.186630, 32.344070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.989449, 33.918892, 32.237896>,  <28.822908, 33.758247, 32.174191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.989449, 33.918892, 32.237896>,  <29.267014, 34.186630, 32.344070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989449, 33.918892, 32.237896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559157, 0.268643, 0.784331,
		-0.453681, 0.692680, -0.560685,
		-0.693914, -0.669347, -0.265438,
		28.781275, 33.718086, 32.158264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598585, 34.550072, 32.520416>,  <29.267014, 34.186630, 32.344070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.598585, 34.550072, 32.520416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.497057, 34.163631, 32.501526>,  <28.436140, 33.931767, 32.490192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.497057, 34.163631, 32.501526>,  <28.598585, 34.550072, 32.520416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.497057, 34.163631, 32.501526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348398, 0.045772, 0.936228,
		-0.902327, 0.254085, -0.348205,
		-0.253819, -0.966098, -0.047222,
		28.420912, 33.873802, 32.487358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907413, 34.495243, 32.697186>,  <28.598585, 34.550072, 32.520416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.907413, 34.495243, 32.697186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.065104, 34.134117, 32.765900>,  <28.159718, 33.917442, 32.807129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.065104, 34.134117, 32.765900>,  <27.907413, 34.495243, 32.697186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.065104, 34.134117, 32.765900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302206, 0.049182, 0.951973,
		-0.867904, -0.427208, -0.253447,
		0.394225, -0.902815, 0.171790,
		28.183371, 33.863274, 32.817436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.379990, 34.089931, 33.102650>,  <27.907413, 34.495243, 32.697186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.379990, 34.089931, 33.102650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.731770, 33.907246, 33.156284>,  <27.942837, 33.797634, 33.188465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.731770, 33.907246, 33.156284>,  <27.379990, 34.089931, 33.102650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.731770, 33.907246, 33.156284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153865, -0.006193, 0.988073,
		-0.450442, -0.889589, -0.075720,
		0.879448, -0.456720, 0.134086,
		27.995604, 33.770229, 33.196510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.215761, 33.771687, 33.622284>,  <27.379990, 34.089931, 33.102650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.215761, 33.771687, 33.622284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.609108, 33.699852, 33.633137>,  <27.845116, 33.656754, 33.639648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.609108, 33.699852, 33.633137>,  <27.215761, 33.771687, 33.622284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.609108, 33.699852, 33.633137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017552, 0.054725, 0.998347,
		-0.180772, -0.982219, 0.050663,
		0.983369, -0.179584, 0.027132,
		27.904119, 33.645977, 33.641277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315601, 33.298588, 34.128513>,  <27.215761, 33.771687, 33.622284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.315601, 33.298588, 34.128513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.680443, 33.458866, 34.093861>,  <27.899347, 33.555035, 34.073071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.680443, 33.458866, 34.093861>,  <27.315601, 33.298588, 34.128513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.680443, 33.458866, 34.093861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050526, 0.099826, 0.993721,
		0.406831, -0.910755, 0.070806,
		0.912105, 0.400699, -0.086629,
		27.954075, 33.579075, 34.067871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.717222, 33.009651, 34.753540>,  <27.315601, 33.298588, 34.128513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.717222, 33.009651, 34.753540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.891245, 33.340439, 34.611080>,  <27.995659, 33.538914, 34.525604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.891245, 33.340439, 34.611080>,  <27.717222, 33.009651, 34.753540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891245, 33.340439, 34.611080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258663, 0.264089, 0.929167,
		0.862450, -0.496363, -0.099014,
		0.435056, 0.826971, -0.356154,
		28.021761, 33.588531, 34.504234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341120, 32.956177, 35.042435>,  <27.717222, 33.009651, 34.753540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341120, 32.956177, 35.042435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.264103, 33.340099, 34.960758>,  <28.217892, 33.570454, 34.911751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.264103, 33.340099, 34.960758>,  <28.341120, 32.956177, 35.042435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.264103, 33.340099, 34.960758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435161, 0.270025, 0.858907,
		0.879524, 0.076520, -0.469663,
		-0.192545, 0.959808, -0.204195,
		28.206339, 33.628040, 34.899498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.026913, 33.349270, 35.045658>,  <28.341120, 32.956177, 35.042435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.026913, 33.349270, 35.045658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.717932, 33.594440, 35.112167>,  <28.532543, 33.741543, 35.152073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.717932, 33.594440, 35.112167>,  <29.026913, 33.349270, 35.045658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.717932, 33.594440, 35.112167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441493, 0.330066, 0.834350,
		0.456512, 0.717902, -0.525561,
		-0.772451, 0.612922, 0.166270,
		28.486197, 33.778316, 35.162048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323669, 33.981441, 35.244846>,  <29.026913, 33.349270, 35.045658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.323669, 33.981441, 35.244846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.941202, 34.011684, 35.358002>,  <28.711721, 34.029831, 35.425896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.941202, 34.011684, 35.358002>,  <29.323669, 33.981441, 35.244846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.941202, 34.011684, 35.358002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292789, 0.261359, 0.919764,
		-0.004393, 0.962276, -0.272041,
		-0.956167, 0.075610, 0.282892,
		28.654352, 34.034367, 35.442871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051928, 33.808533, 35.179642>,  <29.323669, 33.981441, 35.244846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051928, 33.808533, 35.179642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.241772, 34.160286, 35.164543>,  <30.355679, 34.371338, 35.155483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.241772, 34.160286, 35.164543>,  <30.051928, 33.808533, 35.179642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241772, 34.160286, 35.164543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535136, -0.322331, -0.780853,
		-0.698838, 0.350403, -0.623573,
		0.474610, 0.879387, -0.037744,
		30.384155, 34.424103, 35.153221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961908, 34.255585, 34.524872>,  <30.051928, 33.808533, 35.179642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961908, 34.255585, 34.524872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.315594, 34.294754, 34.707554>,  <30.527805, 34.318256, 34.817162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.315594, 34.294754, 34.707554>,  <29.961908, 34.255585, 34.524872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315594, 34.294754, 34.707554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461575, -0.332931, -0.822256,
		0.071529, 0.937852, -0.339582,
		0.884212, 0.097927, 0.456704,
		30.580858, 34.324131, 34.844566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.464951, 34.683746, 34.205112>,  <29.961908, 34.255585, 34.524872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.464951, 34.683746, 34.205112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.670490, 34.396061, 34.392174>,  <30.793814, 34.223450, 34.504410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.670490, 34.396061, 34.392174>,  <30.464951, 34.683746, 34.205112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670490, 34.396061, 34.392174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263756, -0.386272, -0.883870,
		0.816330, 0.577519, -0.008789,
		0.513847, -0.719212, 0.467650,
		30.824644, 34.180298, 34.532467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099728, 34.632927, 33.820854>,  <30.464951, 34.683746, 34.205112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099728, 34.632927, 33.820854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.072979, 34.291279, 34.027157>,  <31.056931, 34.086288, 34.150940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.072979, 34.291279, 34.027157>,  <31.099728, 34.632927, 33.820854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072979, 34.291279, 34.027157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498778, -0.476308, -0.724121,
		0.864147, 0.208827, 0.457867,
		-0.066870, -0.854120, 0.515758,
		31.052917, 34.035042, 34.181885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812616, 34.349430, 33.917042>,  <31.099728, 34.632927, 33.820854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812616, 34.349430, 33.917042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.563946, 34.037819, 33.949623>,  <31.414743, 33.850853, 33.969170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.563946, 34.037819, 33.949623>,  <31.812616, 34.349430, 33.917042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563946, 34.037819, 33.949623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510211, -0.481655, -0.712526,
		0.594309, -0.401403, 0.696902,
		-0.621677, -0.779028, 0.081452,
		31.377443, 33.804111, 33.974060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157841, 33.787975, 33.983074>,  <31.812616, 34.349430, 33.917042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157841, 33.787975, 33.983074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.824007, 33.602703, 33.863792>,  <31.623707, 33.491539, 33.792221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.824007, 33.602703, 33.863792>,  <32.157841, 33.787975, 33.983074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824007, 33.602703, 33.863792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504416, -0.424956, -0.751649,
		0.221423, -0.777739, 0.588298,
		-0.834588, -0.463179, -0.298209,
		31.573631, 33.463749, 33.774330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367455, 33.165634, 33.932423>,  <32.157841, 33.787975, 33.983074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367455, 33.165634, 33.932423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.040455, 33.154465, 33.702320>,  <31.844255, 33.147762, 33.564259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.040455, 33.154465, 33.702320>,  <32.367455, 33.165634, 33.932423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040455, 33.154465, 33.702320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502149, -0.523673, -0.688195,
		-0.282029, -0.851462, 0.442122,
		-0.817499, -0.027920, -0.575252,
		31.795204, 33.146088, 33.529743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198471, 32.475250, 33.884647>,  <32.367455, 33.165634, 33.932423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198471, 32.475250, 33.884647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.068378, 32.680943, 33.567207>,  <31.990324, 32.804356, 33.376743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.068378, 32.680943, 33.567207>,  <32.198471, 32.475250, 33.884647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068378, 32.680943, 33.567207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535918, -0.591208, -0.602715,
		-0.779114, -0.621323, -0.083306,
		-0.325229, 0.514229, -0.793596,
		31.970810, 32.835213, 33.329128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396729, 32.028442, 33.294636>,  <32.198471, 32.475250, 33.884647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396729, 32.028442, 33.294636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.268661, 32.331688, 33.067390>,  <32.191822, 32.513634, 32.931042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.268661, 32.331688, 33.067390>,  <32.396729, 32.028442, 33.294636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268661, 32.331688, 33.067390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460292, -0.399655, -0.792722,
		-0.828023, -0.515304, -0.220997,
		-0.320170, 0.758115, -0.568113,
		32.172611, 32.559124, 32.896957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008747, 31.812000, 32.694378>,  <32.396729, 32.028442, 33.294636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008747, 31.812000, 32.694378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.129940, 32.178185, 32.588448>,  <32.202656, 32.397896, 32.524891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.129940, 32.178185, 32.588448>,  <32.008747, 31.812000, 32.694378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129940, 32.178185, 32.588448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227180, -0.339258, -0.912849,
		-0.925521, 0.216415, -0.310764,
		0.302984, 0.915461, -0.264825,
		32.220837, 32.452824, 32.508999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718565, 31.928982, 32.084400>,  <32.008747, 31.812000, 32.694378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718565, 31.928982, 32.084400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.005802, 32.206974, 32.099041>,  <32.178146, 32.373768, 32.107826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.005802, 32.206974, 32.099041>,  <31.718565, 31.928982, 32.084400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005802, 32.206974, 32.099041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309867, -0.272188, -0.910986,
		-0.623155, 0.665518, -0.410809,
		0.718095, 0.694982, 0.036607,
		32.221230, 32.415470, 32.110023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657324, 32.322136, 31.418760>,  <31.718565, 31.928982, 32.084400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657324, 32.322136, 31.418760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.023983, 32.374763, 31.569727>,  <32.243980, 32.406342, 31.660307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.023983, 32.374763, 31.569727>,  <31.657324, 32.322136, 31.418760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023983, 32.374763, 31.569727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396129, -0.424887, -0.813973,
		0.053264, 0.895634, -0.441592,
		0.916649, 0.131572, 0.377418,
		32.298977, 32.414234, 31.682953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111771, 32.706253, 30.928902>,  <31.657324, 32.322136, 31.418760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111771, 32.706253, 30.928902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.356895, 32.490791, 31.160181>,  <32.503971, 32.361515, 31.298948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.356895, 32.490791, 31.160181>,  <32.111771, 32.706253, 30.928902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356895, 32.490791, 31.160181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344771, -0.476126, -0.808973,
		0.711049, 0.695096, -0.106065,
		0.612815, -0.538651, 0.578198,
		32.540741, 32.329197, 31.333641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626579, 32.666142, 30.472689>,  <32.111771, 32.706253, 30.928902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626579, 32.666142, 30.472689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.719231, 32.426556, 30.779306>,  <32.774822, 32.282806, 30.963278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.719231, 32.426556, 30.779306>,  <32.626579, 32.666142, 30.472689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719231, 32.426556, 30.779306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414051, -0.652338, -0.634836,
		0.880290, 0.464434, 0.096903,
		0.231626, -0.598963, 0.766546,
		32.788719, 32.246868, 31.009270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270271, 32.722679, 30.605604>,  <32.626579, 32.666142, 30.472689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270271, 32.722679, 30.605604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.120152, 32.366558, 30.708761>,  <33.030079, 32.152885, 30.770655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.120152, 32.366558, 30.708761>,  <33.270271, 32.722679, 30.605604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120152, 32.366558, 30.708761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551895, -0.438171, -0.709520,
		0.744690, -0.123953, 0.655799,
		-0.375299, -0.890304, 0.257892,
		33.007561, 32.099468, 30.786129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846237, 32.283020, 30.501173>,  <33.270271, 32.722679, 30.605604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846237, 32.283020, 30.501173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.528885, 32.046360, 30.558447>,  <33.338474, 31.904366, 30.592812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.528885, 32.046360, 30.558447>,  <33.846237, 32.283020, 30.501173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528885, 32.046360, 30.558447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309456, -0.594570, -0.742107,
		0.524198, -0.544464, 0.654809,
		-0.793381, -0.591646, 0.143185,
		33.290871, 31.868866, 30.601402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097706, 31.591129, 30.590046>,  <33.846237, 32.283020, 30.501173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097706, 31.591129, 30.590046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.718922, 31.543444, 30.470684>,  <33.491650, 31.514832, 30.399067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.718922, 31.543444, 30.470684>,  <34.097706, 31.591129, 30.590046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718922, 31.543444, 30.470684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314571, -0.533476, -0.785142,
		-0.065589, -0.837371, 0.542685,
		-0.946965, -0.119216, -0.298403,
		33.434834, 31.507679, 30.381163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015759, 30.878542, 30.488873>,  <34.097706, 31.591129, 30.590046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015759, 30.878542, 30.488873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.718117, 31.036316, 30.273193>,  <33.539532, 31.130981, 30.143785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.718117, 31.036316, 30.273193>,  <34.015759, 30.878542, 30.488873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718117, 31.036316, 30.273193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277658, -0.551500, -0.786609,
		-0.607634, -0.735029, 0.300853,
		-0.744101, 0.394437, -0.539197,
		33.494884, 31.154646, 30.111435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639187, 30.366404, 30.126316>,  <34.015759, 30.878542, 30.488873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639187, 30.366404, 30.126316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.532978, 30.692997, 29.921240>,  <33.469254, 30.888952, 29.798193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.532978, 30.692997, 29.921240>,  <33.639187, 30.366404, 30.126316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532978, 30.692997, 29.921240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203036, -0.472499, -0.857625,
		-0.942484, -0.331811, -0.040317,
		-0.265520, 0.816484, -0.512692,
		33.453323, 30.937943, 29.767433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218445, 29.994450, 29.504393>,  <33.639187, 30.366404, 30.126316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218445, 29.994450, 29.504393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.273632, 30.382246, 29.423342>,  <33.306744, 30.614923, 29.374712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.273632, 30.382246, 29.423342>,  <33.218445, 29.994450, 29.504393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273632, 30.382246, 29.423342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215093, -0.170371, -0.961618,
		-0.966799, 0.176252, 0.185025,
		0.137964, 0.969489, -0.202625,
		33.315022, 30.673092, 29.362555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543030, 30.320244, 29.223503>,  <33.218445, 29.994450, 29.504393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543030, 30.320244, 29.223503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.871914, 30.489317, 29.071026>,  <33.069244, 30.590761, 28.979540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.871914, 30.489317, 29.071026>,  <32.543030, 30.320244, 29.223503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871914, 30.489317, 29.071026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295269, -0.255808, -0.920532,
		-0.486603, 0.869427, -0.085524,
		0.822213, 0.422681, -0.381192,
		33.118576, 30.616121, 28.956669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350170, 30.514452, 28.638702>,  <32.543030, 30.320244, 29.223503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350170, 30.514452, 28.638702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.743954, 30.532053, 28.570707>,  <32.980225, 30.542614, 28.529911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.743954, 30.532053, 28.570707>,  <32.350170, 30.514452, 28.638702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743954, 30.532053, 28.570707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154916, -0.238065, -0.958815,
		-0.082659, 0.970252, -0.227550,
		0.984464, 0.044003, -0.169986,
		33.039291, 30.545254, 28.519712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<43.567158, 34.756634, 44.984306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.257305, 34.586266, 45.171299>,  <43.071392, 34.484047, 45.283497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.257305, 34.586266, 45.171299>,  <43.567158, 34.756634, 44.984306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257305, 34.586266, 45.171299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366634, 0.299863, 0.880717,
		-0.515294, 0.853626, -0.076127,
		-0.774630, -0.425917, 0.467485,
		43.024918, 34.458492, 45.311546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.440491, 35.206615, 45.545734>,  <43.567158, 34.756634, 44.984306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.440491, 35.206615, 45.545734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.297161, 34.838329, 45.607559>,  <43.211163, 34.617359, 45.644653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.297161, 34.838329, 45.607559>,  <43.440491, 35.206615, 45.545734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.297161, 34.838329, 45.607559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451622, -0.026048, 0.891829,
		-0.817095, 0.389364, 0.425149,
		-0.358321, -0.920716, 0.154562,
		43.189667, 34.562115, 45.653927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.155735, 35.223095, 46.161198>,  <43.440491, 35.206615, 45.545734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.155735, 35.223095, 46.161198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.207901, 34.830250, 46.106880>,  <43.239201, 34.594543, 46.074287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.207901, 34.830250, 46.106880>,  <43.155735, 35.223095, 46.161198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.207901, 34.830250, 46.106880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430676, -0.067251, 0.899998,
		-0.893034, -0.175859, 0.414202,
		0.130418, -0.982115, -0.135796,
		43.247025, 34.535614, 46.066143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.899406, 34.784672, 46.763786>,  <43.155735, 35.223095, 46.161198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.899406, 34.784672, 46.763786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.159733, 34.540565, 46.583115>,  <43.315929, 34.394100, 46.474712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.159733, 34.540565, 46.583115>,  <42.899406, 34.784672, 46.763786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.159733, 34.540565, 46.583115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417265, -0.209506, 0.884306,
		-0.634289, -0.763993, 0.118291,
		0.650821, -0.610265, -0.451675,
		43.354980, 34.357487, 46.447613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.009373, 34.305725, 47.257748>,  <42.899406, 34.784672, 46.763786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.009373, 34.305725, 47.257748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.329472, 34.247631, 47.025017>,  <43.521530, 34.212776, 46.885380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.329472, 34.247631, 47.025017>,  <43.009373, 34.305725, 47.257748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.329472, 34.247631, 47.025017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527596, -0.290670, 0.798219,
		-0.285070, -0.945733, -0.155966,
		0.800236, -0.145262, -0.581825,
		43.569546, 34.204060, 46.850471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.342834, 33.783478, 47.491814>,  <43.009373, 34.305725, 47.257748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.342834, 33.783478, 47.491814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.638973, 33.961773, 47.290535>,  <43.816654, 34.068748, 47.169765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.638973, 33.961773, 47.290535>,  <43.342834, 33.783478, 47.491814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.638973, 33.961773, 47.290535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633020, -0.210357, 0.745007,
		0.226227, -0.870096, -0.437898,
		0.740343, 0.445739, -0.503200,
		43.861076, 34.095493, 47.139576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.850090, 33.351952, 47.506313>,  <43.342834, 33.783478, 47.491814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.850090, 33.351952, 47.506313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.040970, 33.699394, 47.452946>,  <44.155499, 33.907860, 47.420925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.040970, 33.699394, 47.452946>,  <43.850090, 33.351952, 47.506313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.040970, 33.699394, 47.452946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429322, -0.097955, 0.897824,
		0.766786, -0.485725, -0.419656,
		0.477203, 0.868606, -0.133421,
		44.184132, 33.959976, 47.412918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.609001, 33.233791, 47.612930>,  <43.850090, 33.351952, 47.506313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.609001, 33.233791, 47.612930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.551311, 33.626945, 47.658768>,  <44.516697, 33.862839, 47.686272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.551311, 33.626945, 47.658768>,  <44.609001, 33.233791, 47.612930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.551311, 33.626945, 47.658768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581007, -0.009634, 0.813842,
		0.801019, 0.183953, -0.569675,
		-0.144221, 0.982888, 0.114595,
		44.508045, 33.921810, 47.693146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.208031, 33.427357, 47.760433>,  <44.609001, 33.233791, 47.612930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.208031, 33.427357, 47.760433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.988182, 33.744453, 47.865864>,  <44.856274, 33.934711, 47.929123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.988182, 33.744453, 47.865864>,  <45.208031, 33.427357, 47.760433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.988182, 33.744453, 47.865864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394162, -0.032107, 0.918480,
		0.736579, 0.608713, -0.294821,
		-0.549625, 0.792741, 0.263581,
		44.823296, 33.982277, 47.944939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.650558, 33.890003, 48.067600>,  <45.208031, 33.427357, 47.760433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.650558, 33.890003, 48.067600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.288586, 33.994480, 48.201988>,  <45.071404, 34.057167, 48.282619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.288586, 33.994480, 48.201988>,  <45.650558, 33.890003, 48.067600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.288586, 33.994480, 48.201988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384149, 0.161692, 0.909002,
		0.183100, 0.951649, -0.246657,
		-0.904933, 0.261191, 0.335969,
		45.017105, 34.072838, 48.302780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.651463, 34.573009, 48.456703>,  <45.650558, 33.890003, 48.067600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.651463, 34.573009, 48.456703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.330265, 34.376858, 48.592194>,  <45.137547, 34.259167, 48.673489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.330265, 34.376858, 48.592194>,  <45.651463, 34.573009, 48.456703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.330265, 34.376858, 48.592194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329971, 0.107489, 0.937851,
		-0.496308, 0.864857, 0.075497,
		-0.802993, -0.490375, 0.338726,
		45.089367, 34.229744, 48.693810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.469864, 34.871140, 49.086514>,  <45.651463, 34.573009, 48.456703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.469864, 34.871140, 49.086514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.290527, 34.513645, 49.092499>,  <45.182926, 34.299149, 49.096092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.290527, 34.513645, 49.092499>,  <45.469864, 34.871140, 49.086514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.290527, 34.513645, 49.092499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306327, -0.137896, 0.941886,
		-0.839733, 0.426873, 0.335600,
		-0.448344, -0.893736, 0.014967,
		45.156025, 34.245525, 49.096989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.915543, 34.708561, 49.640373>,  <45.469864, 34.871140, 49.086514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.915543, 34.708561, 49.640373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.093761, 34.365116, 49.538963>,  <45.200695, 34.159050, 49.478119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.093761, 34.365116, 49.538963>,  <44.915543, 34.708561, 49.640373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.093761, 34.365116, 49.538963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294890, -0.126630, 0.947103,
		-0.845295, -0.496745, 0.196775,
		0.445551, -0.858609, -0.253525,
		45.227428, 34.107533, 49.462906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.784359, 34.148483, 50.131607>,  <44.915543, 34.708561, 49.640373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.784359, 34.148483, 50.131607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.140862, 34.101635, 49.956360>,  <45.354763, 34.073524, 49.851212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.140862, 34.101635, 49.956360>,  <44.784359, 34.148483, 50.131607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.140862, 34.101635, 49.956360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453133, 0.268832, 0.849941,
		0.018235, -0.956040, 0.292668,
		0.891256, -0.117119, -0.438116,
		45.408237, 34.066498, 49.824924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.081043, 34.184933, 50.497246>,  <44.784359, 34.148483, 50.131607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.081043, 34.184933, 50.497246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.848671, 34.444057, 50.694370>,  <43.709248, 34.599533, 50.812645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.848671, 34.444057, 50.694370>,  <44.081043, 34.184933, 50.497246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.848671, 34.444057, 50.694370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496391, 0.197864, -0.845249,
		-0.645074, -0.735653, 0.206625,
		-0.580927, 0.647815, 0.492809,
		43.674393, 34.638401, 50.842213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.317936, 34.110851, 50.251705>,  <44.081043, 34.184933, 50.497246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.317936, 34.110851, 50.251705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.318150, 34.468250, 50.431335>,  <43.318279, 34.682690, 50.539112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.318150, 34.468250, 50.431335>,  <43.317936, 34.110851, 50.251705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.318150, 34.468250, 50.431335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568688, 0.369657, -0.734811,
		-0.822553, -0.254989, 0.508318,
		0.000535, 0.893496, 0.449072,
		43.318310, 34.736298, 50.566055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.622715, 34.348545, 50.285759>,  <43.317936, 34.110851, 50.251705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.622715, 34.348545, 50.285759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.841728, 34.682148, 50.313019>,  <42.973137, 34.882309, 50.329372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.841728, 34.682148, 50.313019>,  <42.622715, 34.348545, 50.285759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.841728, 34.682148, 50.313019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571580, 0.432242, -0.697469,
		-0.611147, 0.342938, 0.713368,
		0.547536, 0.834003, 0.068147,
		43.005989, 34.932350, 50.333462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157970, 34.999561, 50.284088>,  <42.622715, 34.348545, 50.285759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.157970, 34.999561, 50.284088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.519253, 35.137524, 50.181900>,  <42.736023, 35.220299, 50.120586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.519253, 35.137524, 50.181900>,  <42.157970, 34.999561, 50.284088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.519253, 35.137524, 50.181900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409031, 0.511298, -0.755823,
		-0.130066, 0.787157, 0.602882,
		0.903204, 0.344904, -0.255469,
		42.790215, 35.240993, 50.105259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020416, 35.650860, 50.166805>,  <42.157970, 34.999561, 50.284088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020416, 35.650860, 50.166805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.354561, 35.551029, 49.970894>,  <42.555046, 35.491131, 49.853348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.354561, 35.551029, 49.970894>,  <42.020416, 35.650860, 50.166805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354561, 35.551029, 49.970894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360583, 0.423735, -0.830920,
		0.414917, 0.870724, 0.263978,
		0.835359, -0.249577, -0.489783,
		42.605167, 35.476154, 49.823959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.322151, 36.300076, 49.884926>,  <42.020416, 35.650860, 50.166805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.322151, 36.300076, 49.884926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.441605, 35.978954, 49.678501>,  <42.513275, 35.786282, 49.554646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.441605, 35.978954, 49.678501>,  <42.322151, 36.300076, 49.884926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441605, 35.978954, 49.678501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474431, 0.344314, -0.810162,
		0.828091, 0.486776, -0.278053,
		0.298630, -0.802805, -0.516066,
		42.531193, 35.738113, 49.523682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.492981, 36.479534, 49.291603>,  <42.322151, 36.300076, 49.884926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.492981, 36.479534, 49.291603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.489906, 36.089993, 49.200779>,  <42.488064, 35.856270, 49.146286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.489906, 36.089993, 49.200779>,  <42.492981, 36.479534, 49.291603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.489906, 36.089993, 49.200779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315022, 0.217861, -0.923741,
		0.949053, 0.064432, -0.308458,
		-0.007682, -0.973851, -0.227060,
		42.487602, 35.797836, 49.132660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.823662, 36.292179, 48.647121>,  <42.492981, 36.479534, 49.291603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.823662, 36.292179, 48.647121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.570225, 35.987316, 48.700314>,  <42.418163, 35.804398, 48.732227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.570225, 35.987316, 48.700314>,  <42.823662, 36.292179, 48.647121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.570225, 35.987316, 48.700314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335734, 0.116001, -0.934787,
		0.697026, -0.636918, -0.329378,
		-0.633591, -0.762155, 0.132980,
		42.380146, 35.758671, 48.740208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.842613, 35.884476, 47.869652>,  <42.823662, 36.292179, 48.647121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.842613, 35.884476, 47.869652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.539673, 35.750465, 48.093857>,  <42.357910, 35.670059, 48.228382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.539673, 35.750465, 48.093857>,  <42.842613, 35.884476, 47.869652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.539673, 35.750465, 48.093857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552144, -0.129748, -0.823591,
		0.348648, -0.933233, -0.086716,
		-0.757351, -0.335023, 0.560516,
		42.312466, 35.649960, 48.262012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.661812, 35.256409, 47.578773>,  <42.842613, 35.884476, 47.869652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.661812, 35.256409, 47.578773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.350136, 35.411922, 47.775425>,  <42.163128, 35.505230, 47.893417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.350136, 35.411922, 47.775425>,  <42.661812, 35.256409, 47.578773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350136, 35.411922, 47.775425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508956, 0.065322, -0.858311,
		-0.365816, -0.919008, 0.146978,
		-0.779194, 0.388789, 0.491630,
		42.116379, 35.528561, 47.922913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184574, 34.985798, 47.206615>,  <42.661812, 35.256409, 47.578773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.184574, 34.985798, 47.206615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.978527, 35.256313, 47.417248>,  <41.854900, 35.418625, 47.543625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.978527, 35.256313, 47.417248>,  <42.184574, 34.985798, 47.206615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.978527, 35.256313, 47.417248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566095, 0.192856, -0.801463,
		-0.643577, -0.710940, 0.283503,
		-0.515117, 0.676293, 0.526576,
		41.823994, 35.459202, 47.575222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346119, 34.813805, 47.230808>,  <42.184574, 34.985798, 47.206615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346119, 34.813805, 47.230808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.406677, 35.208778, 47.248962>,  <41.443012, 35.445763, 47.259853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.406677, 35.208778, 47.248962>,  <41.346119, 34.813805, 47.230808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406677, 35.208778, 47.248962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557565, 0.123219, -0.820938,
		-0.816212, 0.098979, 0.569211,
		0.151393, 0.987431, 0.045385,
		41.452095, 35.505009, 47.262577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670780, 35.053955, 47.061790>,  <41.346119, 34.813805, 47.230808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670780, 35.053955, 47.061790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.913166, 35.371304, 47.038578>,  <41.058598, 35.561714, 47.024651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.913166, 35.371304, 47.038578>,  <40.670780, 35.053955, 47.061790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913166, 35.371304, 47.038578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393313, 0.235394, -0.888760,
		-0.691459, 0.561379, 0.454684,
		0.605961, 0.793374, -0.058032,
		41.094955, 35.609318, 47.021168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337193, 35.611183, 46.828648>,  <40.670780, 35.053955, 47.061790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337193, 35.611183, 46.828648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.699448, 35.750530, 46.731934>,  <40.916801, 35.834137, 46.673904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.699448, 35.750530, 46.731934>,  <40.337193, 35.611183, 46.828648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699448, 35.750530, 46.731934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328975, 0.217406, -0.918973,
		-0.267575, 0.911797, 0.311495,
		0.905638, 0.348368, -0.241786,
		40.971138, 35.855042, 46.659397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768341, 36.215534, 46.832470>,  <40.337193, 35.611183, 46.828648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768341, 36.215534, 46.832470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.387466, 36.108433, 46.891319>,  <39.158939, 36.044174, 46.926628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.387466, 36.108433, 46.891319>,  <39.768341, 36.215534, 46.832470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387466, 36.108433, 46.891319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151537, 0.004233, 0.988442,
		-0.265278, 0.963479, 0.036543,
		-0.952189, -0.267749, 0.147126,
		39.101810, 36.028107, 46.935455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676628, 36.633633, 47.413982>,  <39.768341, 36.215534, 46.832470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676628, 36.633633, 47.413982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.405178, 36.340000, 47.404308>,  <39.242306, 36.163818, 47.398506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.405178, 36.340000, 47.404308>,  <39.676628, 36.633633, 47.413982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405178, 36.340000, 47.404308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115713, -0.139369, 0.983457,
		-0.725311, 0.664602, 0.179522,
		-0.678627, -0.734085, -0.024183,
		39.201591, 36.119774, 47.397053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263889, 36.844296, 47.942394>,  <39.676628, 36.633633, 47.413982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263889, 36.844296, 47.942394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.202991, 36.452721, 47.887970>,  <39.166454, 36.217777, 47.855316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.202991, 36.452721, 47.887970>,  <39.263889, 36.844296, 47.942394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202991, 36.452721, 47.887970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011115, -0.135958, 0.990652,
		-0.988281, 0.152329, 0.009817,
		-0.152240, -0.978934, -0.136058,
		39.157318, 36.159042, 47.847153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813866, 36.709019, 48.454460>,  <39.263889, 36.844296, 47.942394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813866, 36.709019, 48.454460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.946972, 36.344456, 48.357635>,  <39.026836, 36.125717, 48.299541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.946972, 36.344456, 48.357635>,  <38.813866, 36.709019, 48.454460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946972, 36.344456, 48.357635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039863, -0.242869, 0.969240,
		-0.942166, -0.332180, -0.044487,
		0.332767, -0.911411, -0.242065,
		39.046803, 36.071033, 48.285015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399986, 36.261047, 48.865753>,  <38.813866, 36.709019, 48.454460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399986, 36.261047, 48.865753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.733910, 36.066650, 48.762291>,  <38.934265, 35.950012, 48.700214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.733910, 36.066650, 48.762291>,  <38.399986, 36.261047, 48.865753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733910, 36.066650, 48.762291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154833, -0.243609, 0.957435,
		-0.528316, -0.839326, -0.128120,
		0.834811, -0.485991, -0.258658,
		38.984352, 35.920853, 48.684692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368469, 35.482681, 48.969212>,  <38.399986, 36.261047, 48.865753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368469, 35.482681, 48.969212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.755135, 35.584877, 48.976093>,  <38.987133, 35.646194, 48.980221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.755135, 35.584877, 48.976093>,  <38.368469, 35.482681, 48.969212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755135, 35.584877, 48.976093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084614, -0.382105, 0.920237,
		0.241683, -0.888100, -0.390984,
		0.966659, 0.255489, 0.017203,
		39.045132, 35.661522, 48.981255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723610, 34.902294, 49.387653>,  <38.368469, 35.482681, 48.969212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723610, 34.902294, 49.387653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.004501, 35.187046, 49.391586>,  <39.173035, 35.357899, 49.393948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.004501, 35.187046, 49.391586>,  <38.723610, 34.902294, 49.387653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004501, 35.187046, 49.391586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323614, -0.331463, 0.886232,
		0.634153, -0.619155, -0.463138,
		0.702228, 0.711884, 0.009831,
		39.215168, 35.400612, 49.394535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778568, 34.114319, 49.458576>,  <38.723610, 34.902294, 49.387653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778568, 34.114319, 49.458576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.521587, 33.860447, 49.630360>,  <38.367401, 33.708122, 49.733429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.521587, 33.860447, 49.630360>,  <38.778568, 34.114319, 49.458576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521587, 33.860447, 49.630360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405125, -0.194408, -0.893353,
		0.650486, -0.747920, -0.132227,
		-0.642450, -0.634682, 0.429461,
		38.328854, 33.670044, 49.759197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788216, 33.460957, 49.076328>,  <38.778568, 34.114319, 49.458576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788216, 33.460957, 49.076328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.434998, 33.479744, 49.263100>,  <38.223064, 33.491016, 49.375160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.434998, 33.479744, 49.263100>,  <38.788216, 33.460957, 49.076328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434998, 33.479744, 49.263100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468881, -0.047220, -0.881998,
		-0.019373, -0.997780, 0.063718,
		-0.883049, 0.046963, 0.466925,
		38.170082, 33.493835, 49.403175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406654, 32.988167, 48.792271>,  <38.788216, 33.460957, 49.076328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406654, 32.988167, 48.792271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.142250, 33.248219, 48.942150>,  <37.983608, 33.404251, 49.032078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.142250, 33.248219, 48.942150>,  <38.406654, 32.988167, 48.792271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142250, 33.248219, 48.942150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582691, -0.130090, -0.802214,
		-0.472803, -0.748600, 0.464818,
		-0.661006, 0.650134, 0.374696,
		37.943947, 33.443260, 49.054558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721287, 32.695518, 48.710964>,  <38.406654, 32.988167, 48.792271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721287, 32.695518, 48.710964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.616013, 33.067688, 48.812973>,  <37.552849, 33.290989, 48.874180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.616013, 33.067688, 48.812973>,  <37.721287, 32.695518, 48.710964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616013, 33.067688, 48.812973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805530, -0.066470, -0.588816,
		-0.530899, -0.360397, 0.766981,
		-0.263189, 0.930428, 0.255022,
		37.537056, 33.346817, 48.889481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043945, 32.670757, 48.753849>,  <37.721287, 32.695518, 48.710964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043945, 32.670757, 48.753849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.157509, 33.051838, 48.710468>,  <37.225647, 33.280487, 48.684441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.157509, 33.051838, 48.710468>,  <37.043945, 32.670757, 48.753849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157509, 33.051838, 48.710468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608900, 0.091758, -0.787922,
		-0.740701, 0.289735, 0.606148,
		0.283908, 0.952698, -0.108455,
		37.242680, 33.337646, 48.677933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366535, 33.146214, 48.601143>,  <37.043945, 32.670757, 48.753849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366535, 33.146214, 48.601143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.694450, 33.319302, 48.451107>,  <36.891201, 33.423153, 48.361084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.694450, 33.319302, 48.451107>,  <36.366535, 33.146214, 48.601143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694450, 33.319302, 48.451107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525923, 0.309724, -0.792134,
		-0.226596, 0.846655, 0.481487,
		0.819792, 0.432719, -0.375093,
		36.940388, 33.449116, 48.338577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121277, 33.770054, 48.321404>,  <36.366535, 33.146214, 48.601143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121277, 33.770054, 48.321404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.480640, 33.746048, 48.147392>,  <36.696259, 33.731644, 48.042984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.480640, 33.746048, 48.147392>,  <36.121277, 33.770054, 48.321404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480640, 33.746048, 48.147392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375216, 0.409821, -0.831420,
		0.228183, 0.910190, 0.345669,
		0.898413, -0.060015, -0.435032,
		36.750164, 33.728043, 48.016884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<43.153866, 31.679688, 49.878624> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.364151, 31.904617, 49.623306>,  <43.490322, 32.039574, 49.470116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.364151, 31.904617, 49.623306>,  <43.153866, 31.679688, 49.878624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.364151, 31.904617, 49.623306> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713460, -0.117155, -0.690832,
		-0.463252, 0.818575, 0.339607,
		0.525711, 0.562325, -0.638293,
		43.521866, 32.073315, 49.431820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671371, 32.175396, 49.512016>,  <43.153866, 31.679688, 49.878624>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671371, 32.175396, 49.512016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.008614, 32.138775, 49.300056>,  <43.210960, 32.116802, 49.172882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.008614, 32.138775, 49.300056>,  <42.671371, 32.175396, 49.512016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.008614, 32.138775, 49.300056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533685, -0.021555, -0.845408,
		0.065981, 0.995567, -0.067035,
		0.843105, -0.091557, -0.529897,
		43.261547, 32.111309, 49.141087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447868, 32.490955, 48.939487>,  <42.671371, 32.175396, 49.512016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447868, 32.490955, 48.939487> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.776665, 32.294769, 48.823708>,  <42.973942, 32.177059, 48.754238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.776665, 32.294769, 48.823708>,  <42.447868, 32.490955, 48.939487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.776665, 32.294769, 48.823708> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379946, -0.093669, -0.920254,
		0.424236, 0.866414, -0.263344,
		0.821988, -0.490461, -0.289453,
		43.023262, 32.147633, 48.736870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.760044, 32.813065, 48.307442>,  <42.447868, 32.490955, 48.939487>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.760044, 32.813065, 48.307442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.896152, 32.437664, 48.330864>,  <42.977818, 32.212421, 48.344917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.896152, 32.437664, 48.330864>,  <42.760044, 32.813065, 48.307442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896152, 32.437664, 48.330864> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312498, -0.171598, -0.934291,
		0.886883, 0.299610, -0.351670,
		0.340269, -0.938503, 0.058560,
		42.998234, 32.156113, 48.348431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.133759, 32.636200, 47.733128>,  <42.760044, 32.813065, 48.307442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.133759, 32.636200, 47.733128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.074917, 32.263256, 47.865223>,  <43.039612, 32.039490, 47.944481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.074917, 32.263256, 47.865223>,  <43.133759, 32.636200, 47.733128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.074917, 32.263256, 47.865223> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228749, -0.292756, -0.928422,
		0.962307, -0.212117, -0.170212,
		-0.147104, -0.932363, 0.330242,
		43.030785, 31.983547, 47.964294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.433006, 32.106075, 47.237396>,  <43.133759, 32.636200, 47.733128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.433006, 32.106075, 47.237396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.115108, 31.937836, 47.412430>,  <42.924370, 31.836893, 47.517448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.115108, 31.937836, 47.412430>,  <43.433006, 32.106075, 47.237396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.115108, 31.937836, 47.412430> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268692, -0.402653, -0.875028,
		0.544229, -0.812999, 0.206995,
		-0.794745, -0.420598, 0.437582,
		42.876686, 31.811657, 47.543705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.467884, 31.492235, 46.923187>,  <43.433006, 32.106075, 47.237396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.467884, 31.492235, 46.923187> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.097378, 31.529953, 47.069141>,  <42.875072, 31.552584, 47.156715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.097378, 31.529953, 47.069141>,  <43.467884, 31.492235, 46.923187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.097378, 31.529953, 47.069141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365472, -0.461082, -0.808600,
		0.091997, -0.882333, 0.461546,
		-0.926265, 0.094294, 0.364886,
		42.819500, 31.558241, 47.178608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.040424, 30.844374, 46.612404>,  <43.467884, 31.492235, 46.923187>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.040424, 30.844374, 46.612404> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.770149, 31.115175, 46.729099>,  <42.607986, 31.277657, 46.799118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.770149, 31.115175, 46.729099>,  <43.040424, 30.844374, 46.612404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.770149, 31.115175, 46.729099> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594222, -0.265965, -0.759054,
		-0.436291, -0.686240, 0.582001,
		-0.675686, 0.677006, 0.291741,
		42.567444, 31.318277, 46.816624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409004, 30.479649, 46.654419>,  <43.040424, 30.844374, 46.612404>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409004, 30.479649, 46.654419> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.307182, 30.864166, 46.612255>,  <42.246090, 31.094877, 46.586956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.307182, 30.864166, 46.612255>,  <42.409004, 30.479649, 46.654419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.307182, 30.864166, 46.612255> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685187, -0.256206, -0.681819,
		-0.682438, -0.101332, 0.723885,
		-0.254553, 0.961296, -0.105414,
		42.230816, 31.152555, 46.580631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738743, 30.400055, 46.356918>,  <42.409004, 30.479649, 46.654419>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738743, 30.400055, 46.356918> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.802334, 30.790464, 46.297451>,  <41.840488, 31.024710, 46.261768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.802334, 30.790464, 46.297451>,  <41.738743, 30.400055, 46.356918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.802334, 30.790464, 46.297451> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731552, 0.015332, -0.681613,
		-0.662992, 0.217121, 0.716450,
		0.158977, 0.976024, -0.148670,
		41.850025, 31.083271, 46.252850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074413, 30.576370, 46.276802>,  <41.738743, 30.400055, 46.356918>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074413, 30.576370, 46.276802> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.281975, 30.886196, 46.132145>,  <41.406513, 31.072092, 46.045349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.281975, 30.886196, 46.132145>,  <41.074413, 30.576370, 46.276802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281975, 30.886196, 46.132145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597594, 0.026188, -0.801371,
		-0.611242, 0.631954, 0.476463,
		0.518907, 0.774563, -0.361644,
		41.437649, 31.118565, 46.023651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554096, 30.979591, 45.998772>,  <41.074413, 30.576370, 46.276802>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554096, 30.979591, 45.998772> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.878559, 31.091473, 45.793327>,  <41.073235, 31.158602, 45.670059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.878559, 31.091473, 45.793327>,  <40.554096, 30.979591, 45.998772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878559, 31.091473, 45.793327> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553343, 0.082764, -0.828831,
		-0.189317, 0.956513, 0.221906,
		0.811154, 0.279702, -0.513611,
		41.121906, 31.175383, 45.639244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188503, 31.676981, 46.333088>,  <40.554096, 30.979591, 45.998772>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188503, 31.676981, 46.333088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.805283, 31.628326, 46.436886>,  <39.575348, 31.599134, 46.499165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.805283, 31.628326, 46.436886>,  <40.188503, 31.676981, 46.333088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805283, 31.628326, 46.436886> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280561, -0.213332, 0.935828,
		-0.058471, 0.969378, 0.238510,
		-0.958054, -0.121635, 0.259496,
		39.517868, 31.591835, 46.514736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986317, 32.268059, 46.874992>,  <40.188503, 31.676981, 46.333088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986317, 32.268059, 46.874992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.744827, 31.952053, 46.917702>,  <39.599934, 31.762451, 46.943325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.744827, 31.952053, 46.917702>,  <39.986317, 32.268059, 46.874992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744827, 31.952053, 46.917702> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154291, 0.015607, 0.987902,
		-0.782120, 0.612894, 0.112469,
		-0.603724, -0.790011, 0.106771,
		39.563709, 31.715050, 46.949734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521278, 32.395393, 47.372559>,  <39.986317, 32.268059, 46.874992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521278, 32.395393, 47.372559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.522461, 31.995407, 47.375835>,  <39.523170, 31.755417, 47.377800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.522461, 31.995407, 47.375835>,  <39.521278, 32.395393, 47.372559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522461, 31.995407, 47.375835> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132664, 0.008508, 0.991125,
		-0.991157, -0.001849, 0.132684,
		0.002961, -0.999962, 0.008188,
		39.523350, 31.695419, 47.378292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189987, 32.290794, 47.881432>,  <39.521278, 32.395393, 47.372559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189987, 32.290794, 47.881432> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.340034, 31.922062, 47.842419>,  <39.430061, 31.700823, 47.819012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.340034, 31.922062, 47.842419>,  <39.189987, 32.290794, 47.881432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340034, 31.922062, 47.842419> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191107, -0.026055, 0.981223,
		-0.907065, -0.386712, 0.166395,
		0.375116, -0.921832, -0.097537,
		39.452568, 31.645512, 47.813156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823391, 31.921904, 48.413094>,  <39.189987, 32.290794, 47.881432>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823391, 31.921904, 48.413094> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.151310, 31.706709, 48.334606>,  <39.348061, 31.577593, 48.287514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.151310, 31.706709, 48.334606>,  <38.823391, 31.921904, 48.413094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151310, 31.706709, 48.334606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051272, -0.410229, 0.910540,
		-0.570351, -0.736399, -0.363889,
		0.819799, -0.537985, -0.196218,
		39.397251, 31.545313, 48.275742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774048, 31.311090, 48.858849>,  <38.823391, 31.921904, 48.413094>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774048, 31.311090, 48.858849> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.154564, 31.332539, 48.737408>,  <39.382874, 31.345407, 48.664543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.154564, 31.332539, 48.737408>,  <38.774048, 31.311090, 48.858849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154564, 31.332539, 48.737408> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293641, -0.457670, 0.839234,
		-0.093951, -0.887504, -0.451121,
		0.951288, 0.053620, -0.303606,
		39.439949, 31.348625, 48.646324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048519, 30.700462, 49.054279>,  <38.774048, 31.311090, 48.858849>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048519, 30.700462, 49.054279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.354706, 30.952065, 49.000011>,  <39.538418, 31.103025, 48.967449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.354706, 30.952065, 49.000011>,  <39.048519, 30.700462, 49.054279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354706, 30.952065, 49.000011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333007, -0.206830, 0.919961,
		0.550601, -0.749381, -0.367786,
		0.765471, 0.629007, -0.135669,
		39.584347, 31.140766, 48.959312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602051, 30.371824, 49.302460>,  <39.048519, 30.700462, 49.054279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602051, 30.371824, 49.302460> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.721333, 30.753540, 49.310558>,  <39.792900, 30.982569, 49.315418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.721333, 30.753540, 49.310558>,  <39.602051, 30.371824, 49.302460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721333, 30.753540, 49.310558> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470504, -0.165417, 0.866755,
		0.830483, -0.248943, -0.498323,
		0.298203, 0.954288, 0.020247,
		39.810795, 31.039825, 49.316631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172211, 30.328350, 49.711502>,  <39.602051, 30.371824, 49.302460>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172211, 30.328350, 49.711502> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.091362, 30.719679, 49.693455>,  <40.042850, 30.954475, 49.682625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.091362, 30.719679, 49.693455>,  <40.172211, 30.328350, 49.711502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091362, 30.719679, 49.693455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228762, 0.091958, 0.969130,
		0.952268, 0.185564, -0.242389,
		-0.202125, 0.978320, -0.045119,
		40.030724, 31.013174, 49.679920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772362, 30.575659, 49.940926>,  <40.172211, 30.328350, 49.711502>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772362, 30.575659, 49.940926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.483082, 30.846008, 49.997753>,  <40.309513, 31.008217, 50.031849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.483082, 30.846008, 49.997753>,  <40.772362, 30.575659, 49.940926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483082, 30.846008, 49.997753> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100558, -0.100468, 0.989846,
		0.683282, 0.730140, 0.004694,
		-0.723197, 0.675872, 0.142069,
		40.266121, 31.048769, 50.040375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949894, 30.873926, 50.489674>,  <40.772362, 30.575659, 49.940926>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949894, 30.873926, 50.489674> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.563240, 30.967270, 50.447399>,  <40.331249, 31.023275, 50.422035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.563240, 30.967270, 50.447399>,  <40.949894, 30.873926, 50.489674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563240, 30.967270, 50.447399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161514, -0.234945, 0.958496,
		0.198843, 0.943581, 0.264796,
		-0.966630, 0.233359, -0.105685,
		40.273251, 31.037277, 50.415695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799496, 31.334826, 51.043564>,  <40.949894, 30.873926, 50.489674>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799496, 31.334826, 51.043564> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.469776, 31.151583, 50.910500>,  <40.271942, 31.041637, 50.830662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.469776, 31.151583, 50.910500>,  <40.799496, 31.334826, 51.043564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469776, 31.151583, 50.910500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121418, -0.430866, 0.894210,
		-0.552976, 0.777491, 0.299542,
		-0.824303, -0.458107, -0.332660,
		40.222485, 31.014151, 50.810703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127651, 31.538876, 51.446022>,  <40.799496, 31.334826, 51.043564>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127651, 31.538876, 51.446022> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.067562, 31.179413, 51.281170>,  <40.031509, 30.963736, 51.182259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.067562, 31.179413, 51.281170>,  <40.127651, 31.538876, 51.446022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067562, 31.179413, 51.281170> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148371, -0.391650, 0.908073,
		-0.977456, 0.197560, -0.074501,
		-0.150221, -0.898655, -0.412132,
		40.022495, 30.909817, 51.157532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681156, 32.067875, 51.791866>,  <40.127651, 31.538876, 51.446022>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681156, 32.067875, 51.791866> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.414703, 31.953566, 52.067432>,  <39.254833, 31.884979, 52.232773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.414703, 31.953566, 52.067432>,  <39.681156, 32.067875, 51.791866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414703, 31.953566, 52.067432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683364, 0.603913, -0.410246,
		-0.298807, -0.744057, -0.597573,
		-0.666129, -0.285776, 0.688915,
		39.214863, 31.867832, 52.274109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072781, 31.616058, 51.599346>,  <39.681156, 32.067875, 51.791866>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072781, 31.616058, 51.599346> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.990788, 31.888687, 51.880329>,  <38.941593, 32.052265, 52.048920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.990788, 31.888687, 51.880329>,  <39.072781, 31.616058, 51.599346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990788, 31.888687, 51.880329> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501558, 0.543157, -0.673365,
		-0.840489, -0.490350, 0.230510,
		-0.204981, 0.681570, 0.702456,
		38.929295, 32.093159, 52.091064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411503, 31.954298, 51.418137>,  <39.072781, 31.616058, 51.599346>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411503, 31.954298, 51.418137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.576691, 32.235943, 51.649197>,  <38.675804, 32.404930, 51.787834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.576691, 32.235943, 51.649197>,  <38.411503, 31.954298, 51.418137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576691, 32.235943, 51.649197> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436696, 0.709686, -0.552849,
		-0.799218, -0.023947, 0.600564,
		0.412973, 0.704111, 0.577652,
		38.700581, 32.447178, 51.822491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786526, 32.487110, 51.625732>,  <38.411503, 31.954298, 51.418137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786526, 32.487110, 51.625732> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.155025, 32.642109, 51.639240>,  <38.376125, 32.735107, 51.647346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.155025, 32.642109, 51.639240>,  <37.786526, 32.487110, 51.625732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155025, 32.642109, 51.639240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282800, 0.726883, -0.625832,
		-0.267056, 0.566999, 0.779227,
		0.921252, 0.387497, 0.033771,
		38.431400, 32.758358, 51.649372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782394, 33.225433, 51.672058>,  <37.786526, 32.487110, 51.625732>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782394, 33.225433, 51.672058> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.149029, 33.157501, 51.527271>,  <38.369011, 33.116741, 51.440399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.149029, 33.157501, 51.527271>,  <37.782394, 33.225433, 51.672058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149029, 33.157501, 51.527271> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190005, 0.611533, -0.768066,
		0.351798, 0.772777, 0.528256,
		0.916589, -0.169833, -0.361968,
		38.424007, 33.106552, 51.418682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951519, 33.934799, 51.413376>,  <37.782394, 33.225433, 51.672058>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951519, 33.934799, 51.413376> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.182022, 33.647644, 51.257137>,  <38.320324, 33.475353, 51.163395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.182022, 33.647644, 51.257137>,  <37.951519, 33.934799, 51.413376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182022, 33.647644, 51.257137> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097418, 0.414189, -0.904963,
		0.811441, 0.559544, 0.168745,
		0.576259, -0.717885, -0.390599,
		38.354900, 33.432278, 51.139957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359856, 34.367390, 50.835152>,  <37.951519, 33.934799, 51.413376>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359856, 34.367390, 50.835152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.391953, 33.974903, 50.764992>,  <38.411213, 33.739410, 50.722897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.391953, 33.974903, 50.764992>,  <38.359856, 34.367390, 50.835152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391953, 33.974903, 50.764992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127415, 0.164431, -0.978125,
		0.988598, 0.100838, -0.111828,
		0.080244, -0.981221, -0.175404,
		38.416027, 33.680538, 50.712372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693092, 34.378124, 50.283859>,  <38.359856, 34.367390, 50.835152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693092, 34.378124, 50.283859> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.537827, 34.010834, 50.252411>,  <38.444668, 33.790459, 50.233543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.537827, 34.010834, 50.252411>,  <38.693092, 34.378124, 50.283859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537827, 34.010834, 50.252411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149477, 0.146906, -0.977791,
		0.909386, -0.367794, -0.194279,
		-0.388167, -0.918230, -0.078617,
		38.421375, 33.735363, 50.228825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320118, 34.489258, 49.754841>,  <38.693092, 34.378124, 50.283859>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320118, 34.489258, 49.754841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.404270, 34.880272, 49.760052>,  <39.454762, 35.114880, 49.763176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.404270, 34.880272, 49.760052>,  <39.320118, 34.489258, 49.754841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404270, 34.880272, 49.760052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563941, -0.132231, 0.815159,
		0.798567, -0.164150, -0.579090,
		0.210382, 0.977532, 0.013025,
		39.467384, 35.173531, 49.763958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983536, 34.627876, 49.576820>,  <39.320118, 34.489258, 49.754841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983536, 34.627876, 49.576820> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.849487, 34.917526, 49.817928>,  <39.769058, 35.091316, 49.962593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.849487, 34.917526, 49.817928>,  <39.983536, 34.627876, 49.576820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849487, 34.917526, 49.817928> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509707, -0.398723, 0.762377,
		0.792398, 0.562724, -0.235473,
		-0.335119, 0.724128, 0.602772,
		39.748951, 35.134766, 49.998760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525002, 34.858669, 49.948090>,  <39.983536, 34.627876, 49.576820>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525002, 34.858669, 49.948090> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.204575, 34.965240, 50.162495>,  <40.012318, 35.029182, 50.291138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.204575, 34.965240, 50.162495>,  <40.525002, 34.858669, 49.948090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204575, 34.965240, 50.162495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503213, -0.185182, 0.844088,
		0.324149, 0.945898, 0.014272,
		-0.801064, 0.266429, 0.536015,
		39.964256, 35.045170, 50.323299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722122, 35.394894, 50.454330>,  <40.525002, 34.858669, 49.948090>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722122, 35.394894, 50.454330> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.393173, 35.221535, 50.601768>,  <40.195805, 35.117519, 50.690231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.393173, 35.221535, 50.601768>,  <40.722122, 35.394894, 50.454330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393173, 35.221535, 50.601768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478517, -0.176432, 0.860170,
		-0.307764, 0.883763, 0.352482,
		-0.822376, -0.433398, 0.368597,
		40.146461, 35.091515, 50.712349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845921, 35.508343, 51.101093>,  <40.722122, 35.394894, 50.454330>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845921, 35.508343, 51.101093> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.550835, 35.239845, 51.129967>,  <40.373783, 35.078747, 51.147293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.550835, 35.239845, 51.129967>,  <40.845921, 35.508343, 51.101093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550835, 35.239845, 51.129967> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444528, -0.402488, 0.800249,
		-0.508108, 0.622444, 0.595307,
		-0.737714, -0.671243, 0.072186,
		40.329521, 35.038471, 51.151623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768402, 35.437653, 51.844490>,  <40.845921, 35.508343, 51.101093>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768402, 35.437653, 51.844490> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.532879, 35.149349, 51.698170>,  <40.391563, 34.976368, 51.610378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.532879, 35.149349, 51.698170>,  <40.768402, 35.437653, 51.844490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532879, 35.149349, 51.698170> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227072, -0.581857, 0.780949,
		-0.775718, 0.376768, 0.506268,
		-0.588812, -0.720755, -0.365804,
		40.356236, 34.933121, 51.588428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286568, 35.247673, 52.373631>,  <40.768402, 35.437653, 51.844490>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286568, 35.247673, 52.373631> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.331284, 34.943188, 52.118114>,  <40.358112, 34.760498, 51.964806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.331284, 34.943188, 52.118114>,  <40.286568, 35.247673, 52.373631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331284, 34.943188, 52.118114> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359676, -0.568246, 0.740087,
		-0.926357, -0.312491, 0.210268,
		0.111787, -0.761213, -0.638794,
		40.364819, 34.714825, 51.926476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052444, 34.644039, 52.730656>,  <40.286568, 35.247673, 52.373631>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052444, 34.644039, 52.730656> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.263569, 34.499149, 52.423355>,  <40.390244, 34.412216, 52.238976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.263569, 34.499149, 52.423355>,  <40.052444, 34.644039, 52.730656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263569, 34.499149, 52.423355> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514892, -0.582904, 0.628577,
		-0.675503, -0.727335, -0.121155,
		0.527808, -0.362224, -0.768253,
		40.421913, 34.390484, 52.192879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251831, 33.960197, 52.897243>,  <40.052444, 34.644039, 52.730656>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251831, 33.960197, 52.897243> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.520329, 34.048389, 52.614170>,  <40.681427, 34.101303, 52.444324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.520329, 34.048389, 52.614170>,  <40.251831, 33.960197, 52.897243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520329, 34.048389, 52.614170> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680295, -0.562353, 0.470062,
		-0.294331, -0.796962, -0.527467,
		0.671244, 0.220479, -0.707686,
		40.721703, 34.114532, 52.401863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.572681, 34.390106, 36.927952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943691, 34.467846, 37.055656>,  <38.166298, 34.514492, 37.132278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943691, 34.467846, 37.055656>,  <37.572681, 34.390106, 36.927952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943691, 34.467846, 37.055656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340615, 0.087839, 0.936091,
		0.153888, -0.976991, 0.147672,
		0.927524, 0.194352, 0.319260,
		38.221947, 34.526150, 37.151436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787273, 33.922573, 37.489296>,  <37.572681, 34.390106, 36.927952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787273, 33.922573, 37.489296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977032, 34.273258, 37.521084>,  <38.090889, 34.483669, 37.540157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977032, 34.273258, 37.521084>,  <37.787273, 33.922573, 37.489296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977032, 34.273258, 37.521084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301217, 0.076835, 0.950455,
		0.827172, -0.474834, 0.300532,
		0.474400, 0.876715, 0.079472,
		38.119350, 34.536274, 37.544926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190258, 33.910015, 38.049454>,  <37.787273, 33.922573, 37.489296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190258, 33.910015, 38.049454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188526, 34.306190, 37.994286>,  <38.187485, 34.543896, 37.961185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188526, 34.306190, 37.994286>,  <38.190258, 33.910015, 38.049454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188526, 34.306190, 37.994286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081105, 0.137116, 0.987229,
		0.996696, 0.015465, 0.079735,
		-0.004335, 0.990434, -0.137918,
		38.187225, 34.603321, 37.952911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823063, 34.182884, 38.365726>,  <38.190258, 33.910015, 38.049454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823063, 34.182884, 38.365726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556374, 34.478477, 38.326992>,  <38.396358, 34.655834, 38.303753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556374, 34.478477, 38.326992>,  <38.823063, 34.182884, 38.365726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556374, 34.478477, 38.326992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080985, 0.200987, 0.976241,
		0.740890, 0.643043, -0.193850,
		-0.666726, 0.738986, -0.096833,
		38.356358, 34.700172, 38.297943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060162, 34.717049, 38.740234>,  <38.823063, 34.182884, 38.365726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060162, 34.717049, 38.740234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.674847, 34.817596, 38.702515>,  <38.443657, 34.877926, 38.679882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.674847, 34.817596, 38.702515>,  <39.060162, 34.717049, 38.740234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674847, 34.817596, 38.702515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005967, 0.331115, 0.943572,
		0.268414, 0.909491, -0.317458,
		-0.963285, 0.251374, -0.094303,
		38.385860, 34.893009, 38.674225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954964, 35.386307, 39.128941>,  <39.060162, 34.717049, 38.740234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954964, 35.386307, 39.128941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595783, 35.210766, 39.115692>,  <38.380276, 35.105442, 39.107742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595783, 35.210766, 39.115692>,  <38.954964, 35.386307, 39.128941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595783, 35.210766, 39.115692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184205, 0.306426, 0.933901,
		-0.399696, 0.844696, -0.355994,
		-0.897948, -0.438853, -0.033120,
		38.326397, 35.079109, 39.105755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442368, 35.872513, 39.365936>,  <38.954964, 35.386307, 39.128941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442368, 35.872513, 39.365936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288101, 35.506107, 39.410095>,  <38.195541, 35.286266, 39.436592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288101, 35.506107, 39.410095>,  <38.442368, 35.872513, 39.365936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288101, 35.506107, 39.410095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296170, 0.236232, 0.925461,
		-0.873813, 0.324218, -0.362401,
		-0.385662, -0.916011, 0.110399,
		38.172401, 35.231304, 39.443214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073811, 35.994274, 39.849194>,  <38.442368, 35.872513, 39.365936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073811, 35.994274, 39.849194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959648, 35.613438, 39.805241>,  <37.891151, 35.384937, 39.778870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959648, 35.613438, 39.805241>,  <38.073811, 35.994274, 39.849194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959648, 35.613438, 39.805241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414630, 0.019288, 0.909786,
		-0.864076, 0.305217, -0.400269,
		-0.285402, -0.952087, -0.109885,
		37.874027, 35.327812, 39.772274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351608, 35.873299, 40.131226>,  <38.073811, 35.994274, 39.849194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351608, 35.873299, 40.131226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551399, 35.529667, 40.175945>,  <37.671276, 35.323486, 40.202778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551399, 35.529667, 40.175945>,  <37.351608, 35.873299, 40.131226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551399, 35.529667, 40.175945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325491, -0.066497, 0.943204,
		-0.802855, -0.507500, -0.312837,
		0.499479, -0.859082, 0.111799,
		37.701244, 35.271942, 40.209484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854099, 35.421387, 40.407207>,  <37.351608, 35.873299, 40.131226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854099, 35.421387, 40.407207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217159, 35.275661, 40.490593>,  <37.434994, 35.188229, 40.540623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217159, 35.275661, 40.490593>,  <36.854099, 35.421387, 40.407207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217159, 35.275661, 40.490593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224983, -0.002993, 0.974358,
		-0.354344, -0.931273, -0.084680,
		0.907647, -0.364310, 0.208461,
		37.489452, 35.166370, 40.553131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820587, 34.878666, 40.901512>,  <36.854099, 35.421387, 40.407207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820587, 34.878666, 40.901512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197357, 35.012142, 40.916603>,  <37.423420, 35.092228, 40.925659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197357, 35.012142, 40.916603>,  <36.820587, 34.878666, 40.901512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197357, 35.012142, 40.916603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067234, 0.077321, 0.994737,
		0.329023, -0.939504, 0.095266,
		0.941926, 0.333696, 0.037726,
		37.479935, 35.112251, 40.927921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026340, 34.446007, 41.447609>,  <36.820587, 34.878666, 40.901512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026340, 34.446007, 41.447609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297832, 34.739742, 41.450989>,  <37.460728, 34.915985, 41.453018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297832, 34.739742, 41.450989>,  <37.026340, 34.446007, 41.447609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297832, 34.739742, 41.450989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035215, 0.021050, 0.999158,
		0.733545, -0.678455, 0.040147,
		0.678728, 0.734341, 0.008450,
		37.501450, 34.960045, 41.453526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792461, 33.711678, 41.414696>,  <37.026340, 34.446007, 41.447609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792461, 33.711678, 41.414696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433243, 33.723728, 41.590240>,  <36.217712, 33.730957, 41.695568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433243, 33.723728, 41.590240>,  <36.792461, 33.711678, 41.414696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433243, 33.723728, 41.590240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431408, -0.255360, -0.865262,
		0.086004, -0.966377, 0.242321,
		-0.898048, 0.030123, 0.438865,
		36.163830, 33.732765, 41.721901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431049, 33.422413, 40.935265>,  <36.792461, 33.711678, 41.414696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431049, 33.422413, 40.935265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107643, 33.499786, 41.157574>,  <35.913601, 33.546211, 41.290958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107643, 33.499786, 41.157574>,  <36.431049, 33.422413, 40.935265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107643, 33.499786, 41.157574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588477, -0.265944, -0.763524,
		0.000113, -0.944382, 0.328852,
		-0.808514, 0.193435, 0.555777,
		35.865089, 33.557816, 41.324306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953419, 32.944439, 40.815029>,  <36.431049, 33.422413, 40.935265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953419, 32.944439, 40.815029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729733, 33.238552, 40.968204>,  <35.595520, 33.415020, 41.060108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729733, 33.238552, 40.968204>,  <35.953419, 32.944439, 40.815029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729733, 33.238552, 40.968204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622974, -0.067944, -0.779286,
		-0.546975, -0.674349, 0.496056,
		-0.559215, 0.735281, 0.382938,
		35.561970, 33.459137, 41.083088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137775, 32.740311, 40.856201>,  <35.953419, 32.944439, 40.815029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137775, 32.740311, 40.856201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140594, 33.140221, 40.864246>,  <35.142288, 33.380165, 40.869072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140594, 33.140221, 40.864246>,  <35.137775, 32.740311, 40.856201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140594, 33.140221, 40.864246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610752, 0.020230, -0.791564,
		-0.791791, -0.006700, 0.610756,
		0.007052, 0.999773, 0.020110,
		35.142712, 33.440151, 40.870281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428764, 32.937973, 40.636314>,  <35.137775, 32.740311, 40.856201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428764, 32.937973, 40.636314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655632, 33.259480, 40.564449>,  <34.791752, 33.452385, 40.521332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655632, 33.259480, 40.564449>,  <34.428764, 32.937973, 40.636314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655632, 33.259480, 40.564449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440613, 0.111817, -0.890706,
		-0.695833, 0.584338, 0.417570,
		0.567165, 0.803769, -0.179661,
		34.825783, 33.500610, 40.510551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985397, 33.376640, 40.412300>,  <34.428764, 32.937973, 40.636314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985397, 33.376640, 40.412300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326763, 33.542542, 40.286022>,  <34.531582, 33.642082, 40.210255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326763, 33.542542, 40.286022>,  <33.985397, 33.376640, 40.412300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326763, 33.542542, 40.286022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390567, 0.107758, -0.914246,
		-0.345171, 0.903529, 0.253953,
		0.853413, 0.414757, -0.315694,
		34.582787, 33.666969, 40.191315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824547, 33.874443, 39.955818>,  <33.985397, 33.376640, 40.412300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824547, 33.874443, 39.955818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204151, 33.810135, 39.847351>,  <34.431915, 33.771549, 39.782272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204151, 33.810135, 39.847351>,  <33.824547, 33.874443, 39.955818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204151, 33.810135, 39.847351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238401, 0.196813, -0.951015,
		0.206262, 0.967171, 0.148450,
		0.949011, -0.160767, -0.271169,
		34.488853, 33.761906, 39.765999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941402, 34.361855, 39.492668>,  <33.824547, 33.874443, 39.955818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941402, 34.361855, 39.492668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199966, 34.061840, 39.436665>,  <34.355106, 33.881832, 39.403061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199966, 34.061840, 39.436665>,  <33.941402, 34.361855, 39.492668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199966, 34.061840, 39.436665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273893, -0.056828, -0.960080,
		0.712136, 0.658953, -0.242163,
		0.646409, -0.750034, -0.140013,
		34.393890, 33.836830, 39.394661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249310, 34.635681, 38.944107>,  <33.941402, 34.361855, 39.492668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249310, 34.635681, 38.944107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355797, 34.250645, 38.964329>,  <34.419689, 34.019623, 38.976463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355797, 34.250645, 38.964329>,  <34.249310, 34.635681, 38.944107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355797, 34.250645, 38.964329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253528, -0.120528, -0.959790,
		0.929974, 0.242694, -0.276130,
		0.266216, -0.962587, 0.050559,
		34.435661, 33.961868, 38.979496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678707, 34.559631, 38.426582>,  <34.249310, 34.635681, 38.944107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678707, 34.559631, 38.426582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554390, 34.187523, 38.504551>,  <34.479797, 33.964256, 38.551331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554390, 34.187523, 38.504551>,  <34.678707, 34.559631, 38.426582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554390, 34.187523, 38.504551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228297, -0.126006, -0.965403,
		0.922652, -0.344543, -0.173217,
		-0.310796, -0.930275, 0.194918,
		34.461151, 33.908440, 38.563026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760983, 34.196884, 37.807358>,  <34.678707, 34.559631, 38.426582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760983, 34.196884, 37.807358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528984, 33.932129, 37.997307>,  <34.389786, 33.773273, 38.111279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528984, 33.932129, 37.997307>,  <34.760983, 34.196884, 37.807358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528984, 33.932129, 37.997307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425567, -0.250884, -0.869454,
		0.694624, -0.706368, -0.136168,
		-0.579992, -0.661892, 0.474877,
		34.354988, 33.733562, 38.139771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881145, 33.586777, 37.357162>,  <34.760983, 34.196884, 37.807358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881145, 33.586777, 37.357162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550190, 33.508537, 37.567749>,  <34.351616, 33.461594, 37.694103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550190, 33.508537, 37.567749>,  <34.881145, 33.586777, 37.357162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550190, 33.508537, 37.567749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483658, -0.228349, -0.844945,
		0.285492, -0.953728, 0.094329,
		-0.827387, -0.195602, 0.526470,
		34.301975, 33.449856, 37.725689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581375, 32.994354, 37.057869>,  <34.881145, 33.586777, 37.357162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581375, 32.994354, 37.057869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277218, 33.137753, 37.274490>,  <34.094723, 33.223793, 37.404461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277218, 33.137753, 37.274490>,  <34.581375, 32.994354, 37.057869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277218, 33.137753, 37.274490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632045, -0.216682, -0.744021,
		-0.149384, -0.908036, 0.391350,
		-0.760397, 0.358496, 0.541551,
		34.049099, 33.245300, 37.436954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133652, 32.596436, 36.874111>,  <34.581375, 32.994354, 37.057869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133652, 32.596436, 36.874111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945095, 32.919758, 37.015213>,  <33.831963, 33.113750, 37.099873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945095, 32.919758, 37.015213>,  <34.133652, 32.596436, 36.874111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945095, 32.919758, 37.015213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554956, 0.038998, -0.830965,
		-0.685430, -0.587471, 0.430190,
		-0.471391, 0.808304, 0.352751,
		33.803677, 33.162251, 37.121040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621273, 32.122795, 37.092770>,  <34.133652, 32.596436, 36.874111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621273, 32.122795, 37.092770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424053, 31.789322, 36.993271>,  <34.305721, 31.589237, 36.933571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424053, 31.789322, 36.993271>,  <34.621273, 32.122795, 37.092770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424053, 31.789322, 36.993271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303900, -0.432942, 0.848650,
		-0.815200, 0.342829, 0.466817,
		-0.493046, -0.833684, -0.248749,
		34.276138, 31.539217, 36.918648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313763, 31.856728, 37.701794>,  <34.621273, 32.122795, 37.092770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313763, 31.856728, 37.701794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363834, 31.541592, 37.460583>,  <34.393879, 31.352510, 37.315857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363834, 31.541592, 37.460583>,  <34.313763, 31.856728, 37.701794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363834, 31.541592, 37.460583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083223, -0.597324, 0.797670,
		-0.988637, -0.150037, -0.009207,
		0.125180, -0.787841, -0.603023,
		34.401390, 31.305239, 37.279675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935879, 31.340599, 37.963829>,  <34.313763, 31.856728, 37.701794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935879, 31.340599, 37.963829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208244, 31.165350, 37.729084>,  <34.371662, 31.060200, 37.588238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208244, 31.165350, 37.729084>,  <33.935879, 31.340599, 37.963829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208244, 31.165350, 37.729084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275652, -0.589084, 0.759603,
		-0.678513, -0.678991, -0.280342,
		0.680909, -0.438123, -0.586866,
		34.412518, 31.033913, 37.553024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997990, 30.529139, 38.122845>,  <33.935879, 31.340599, 37.963829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997990, 30.529139, 38.122845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342510, 30.667156, 37.973660>,  <34.549225, 30.749968, 37.884148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342510, 30.667156, 37.973660>,  <33.997990, 30.529139, 38.122845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342510, 30.667156, 37.973660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467798, -0.252046, 0.847135,
		0.198297, -0.904111, -0.378500,
		0.861303, 0.345046, -0.372961,
		34.600903, 30.770670, 37.861771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442982, 29.992397, 38.259075>,  <33.997990, 30.529139, 38.122845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442982, 29.992397, 38.259075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660732, 30.325247, 38.216705>,  <34.791382, 30.524958, 38.191284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660732, 30.325247, 38.216705>,  <34.442982, 29.992397, 38.259075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660732, 30.325247, 38.216705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495423, -0.217040, 0.841100,
		0.676911, -0.510354, -0.530406,
		0.544378, 0.832125, -0.105925,
		34.824047, 30.574884, 38.184929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059513, 29.788364, 38.232071>,  <34.442982, 29.992397, 38.259075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059513, 29.788364, 38.232071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072975, 30.168425, 38.356060>,  <35.081055, 30.396460, 38.430454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072975, 30.168425, 38.356060>,  <35.059513, 29.788364, 38.232071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072975, 30.168425, 38.356060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599893, -0.267273, 0.754117,
		0.799372, 0.160569, -0.578984,
		0.033659, 0.950149, 0.309975,
		35.083073, 30.453468, 38.449051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780956, 29.982201, 38.503162>,  <35.059513, 29.788364, 38.232071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780956, 29.982201, 38.503162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544964, 30.255552, 38.675167>,  <35.403366, 30.419563, 38.778370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544964, 30.255552, 38.675167>,  <35.780956, 29.982201, 38.503162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544964, 30.255552, 38.675167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516647, -0.089754, 0.851481,
		0.620480, 0.724526, -0.300112,
		-0.589984, 0.683378, 0.430015,
		35.367970, 30.460566, 38.804173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271976, 30.469198, 38.760880>,  <35.780956, 29.982201, 38.503162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271976, 30.469198, 38.760880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935089, 30.552151, 38.959946>,  <35.732956, 30.601921, 39.079384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935089, 30.552151, 38.959946>,  <36.271976, 30.469198, 38.760880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935089, 30.552151, 38.959946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523395, 0.093017, 0.846998,
		0.129358, 0.973828, -0.186881,
		-0.842214, 0.207379, 0.497664,
		35.682426, 30.614365, 39.109245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439144, 31.061728, 39.289730>,  <36.271976, 30.469198, 38.760880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439144, 31.061728, 39.289730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112915, 30.877922, 39.430412>,  <35.917179, 30.767639, 39.514820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112915, 30.877922, 39.430412>,  <36.439144, 31.061728, 39.289730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112915, 30.877922, 39.430412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309918, 0.166401, 0.936088,
		-0.488670, 0.872443, 0.006700,
		-0.815569, -0.459515, 0.351701,
		35.868244, 30.740068, 39.535923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180851, 31.487251, 39.777042>,  <36.439144, 31.061728, 39.289730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180851, 31.487251, 39.777042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030487, 31.126997, 39.864258>,  <35.940269, 30.910845, 39.916588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030487, 31.126997, 39.864258>,  <36.180851, 31.487251, 39.777042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030487, 31.126997, 39.864258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125390, 0.183699, 0.974952,
		-0.918133, 0.393837, 0.043876,
		-0.375912, -0.900637, 0.218043,
		35.917713, 30.856806, 39.929672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787048, 31.494263, 40.315239>,  <36.180851, 31.487251, 39.777042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787048, 31.494263, 40.315239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856701, 31.101274, 40.341862>,  <35.898495, 30.865482, 40.357834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856701, 31.101274, 40.341862>,  <35.787048, 31.494263, 40.315239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856701, 31.101274, 40.341862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199283, 0.101347, 0.974687,
		-0.964346, -0.156465, 0.213437,
		0.174136, -0.982470, 0.066553,
		35.908943, 30.806534, 40.361828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371387, 31.286726, 40.863842>,  <35.787048, 31.494263, 40.315239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371387, 31.286726, 40.863842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638542, 30.992411, 40.819038>,  <35.798836, 30.815823, 40.792156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638542, 30.992411, 40.819038>,  <35.371387, 31.286726, 40.863842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638542, 30.992411, 40.819038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266551, 0.095966, 0.959031,
		-0.694894, -0.670380, 0.260219,
		0.667888, -0.735786, -0.112004,
		35.838909, 30.771675, 40.785439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304451, 30.974203, 41.461025>,  <35.371387, 31.286726, 40.863842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304451, 30.974203, 41.461025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656277, 30.847244, 41.319256>,  <35.867374, 30.771069, 41.234192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656277, 30.847244, 41.319256>,  <35.304451, 30.974203, 41.461025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656277, 30.847244, 41.319256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387951, 0.047230, 0.920469,
		-0.275413, -0.947116, 0.164676,
		0.879569, -0.317395, -0.354427,
		35.920147, 30.752026, 41.212929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597572, 30.436531, 41.965614>,  <35.304451, 30.974203, 41.461025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597572, 30.436531, 41.965614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908150, 30.579508, 41.758007>,  <36.094494, 30.665293, 41.633442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908150, 30.579508, 41.758007>,  <35.597572, 30.436531, 41.965614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908150, 30.579508, 41.758007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558980, -0.010326, 0.829117,
		0.290999, -0.933879, -0.207819,
		0.776441, 0.357439, -0.519014,
		36.141083, 30.686739, 41.602303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069508, 30.038898, 42.248711>,  <35.597572, 30.436531, 41.965614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069508, 30.038898, 42.248711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244091, 30.346655, 42.062145>,  <36.348839, 30.531309, 41.950207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244091, 30.346655, 42.062145>,  <36.069508, 30.038898, 42.248711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244091, 30.346655, 42.062145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688944, 0.047622, 0.723249,
		0.578673, -0.637000, -0.509282,
		0.436456, 0.769392, -0.466415,
		36.375027, 30.577473, 41.922222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787056, 29.989061, 42.367123>,  <36.069508, 30.038898, 42.248711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787056, 29.989061, 42.367123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.748386, 30.373295, 42.262867>,  <36.725185, 30.603836, 42.200314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.748386, 30.373295, 42.262867>,  <36.787056, 29.989061, 42.367123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748386, 30.373295, 42.262867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701199, 0.251573, 0.667106,
		0.706381, -0.118269, -0.697881,
		-0.096670, 0.960585, -0.260637,
		36.719387, 30.661470, 42.184677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546791, 30.325882, 42.251205>,  <36.787056, 29.989061, 42.367123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546791, 30.325882, 42.251205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262062, 30.599070, 42.316761>,  <37.091225, 30.762981, 42.356094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262062, 30.599070, 42.316761>,  <37.546791, 30.325882, 42.251205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262062, 30.599070, 42.316761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592058, 0.457947, 0.663137,
		0.377850, 0.569069, -0.730336,
		-0.711826, 0.682968, 0.163886,
		37.048515, 30.803961, 42.365929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996777, 30.892027, 42.491154>,  <37.546791, 30.325882, 42.251205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996777, 30.892027, 42.491154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627388, 30.999041, 42.601154>,  <37.405754, 31.063250, 42.667152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627388, 30.999041, 42.601154>,  <37.996777, 30.892027, 42.491154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627388, 30.999041, 42.601154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374110, 0.468943, 0.800084,
		0.085092, 0.841735, -0.533144,
		-0.923472, 0.267535, 0.274998,
		37.350346, 31.079302, 42.683655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110085, 31.582644, 42.730888>,  <37.996777, 30.892027, 42.491154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110085, 31.582644, 42.730888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763924, 31.475994, 42.900589>,  <37.556229, 31.412004, 43.002411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763924, 31.475994, 42.900589>,  <38.110085, 31.582644, 42.730888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763924, 31.475994, 42.900589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338915, 0.312174, 0.887516,
		-0.369072, 0.911844, -0.179794,
		-0.865403, -0.266622, 0.424252,
		37.504303, 31.396008, 43.027866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935577, 32.183258, 43.204308>,  <38.110085, 31.582644, 42.730888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935577, 32.183258, 43.204308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722469, 31.863590, 43.315647>,  <37.594604, 31.671789, 43.382450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722469, 31.863590, 43.315647>,  <37.935577, 32.183258, 43.204308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722469, 31.863590, 43.315647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192271, 0.206007, 0.959475,
		-0.824126, 0.564703, 0.043902,
		-0.532775, -0.799169, 0.278352,
		37.562637, 31.623840, 43.399155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475941, 32.507977, 43.646828>,  <37.935577, 32.183258, 43.204308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475941, 32.507977, 43.646828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538071, 32.118984, 43.716282>,  <37.575348, 31.885588, 43.757954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538071, 32.118984, 43.716282>,  <37.475941, 32.507977, 43.646828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538071, 32.118984, 43.716282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300476, 0.213945, 0.929485,
		-0.941058, -0.092197, 0.325438,
		0.155322, -0.972485, 0.173631,
		37.584667, 31.827238, 43.768372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158833, 32.333790, 44.349941>,  <37.475941, 32.507977, 43.646828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158833, 32.333790, 44.349941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426338, 32.047180, 44.270599>,  <37.586842, 31.875214, 44.222992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426338, 32.047180, 44.270599>,  <37.158833, 32.333790, 44.349941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426338, 32.047180, 44.270599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381487, 0.101715, 0.918761,
		-0.638139, -0.690107, 0.341368,
		0.668765, -0.716524, -0.198358,
		37.626968, 31.832224, 44.211090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085068, 31.993080, 44.857197>,  <37.158833, 32.333790, 44.349941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085068, 31.993080, 44.857197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436684, 31.863531, 44.717255>,  <37.647652, 31.785801, 44.633289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436684, 31.863531, 44.717255>,  <37.085068, 31.993080, 44.857197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436684, 31.863531, 44.717255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388120, 0.059986, 0.919654,
		-0.276866, -0.944196, 0.178432,
		0.879038, -0.323874, -0.349853,
		37.700394, 31.766369, 44.612297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342457, 31.372543, 45.247299>,  <37.085068, 31.993080, 44.857197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342457, 31.372543, 45.247299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672993, 31.516150, 45.073734>,  <37.871315, 31.602314, 44.969597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672993, 31.516150, 45.073734>,  <37.342457, 31.372543, 45.247299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672993, 31.516150, 45.073734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464135, 0.002252, 0.885762,
		0.318982, -0.933328, -0.164772,
		0.826335, 0.359018, -0.433909,
		37.920895, 31.623856, 44.943562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875961, 30.922092, 45.464737>,  <37.342457, 31.372543, 45.247299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875961, 30.922092, 45.464737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085449, 31.248264, 45.366108>,  <38.211140, 31.443968, 45.306931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085449, 31.248264, 45.366108>,  <37.875961, 30.922092, 45.464737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085449, 31.248264, 45.366108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524329, -0.080422, 0.847709,
		0.671416, -0.573245, -0.469671,
		0.523717, 0.815428, -0.246572,
		38.242565, 31.492893, 45.292137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547012, 30.657703, 45.485741>,  <37.875961, 30.922092, 45.464737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547012, 30.657703, 45.485741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553051, 31.053469, 45.543472>,  <38.556675, 31.290928, 45.578110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553051, 31.053469, 45.543472>,  <38.547012, 30.657703, 45.485741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553051, 31.053469, 45.543472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634878, -0.120995, 0.763079,
		0.772465, 0.080110, -0.629984,
		0.015094, 0.989415, 0.144325,
		38.557579, 31.350294, 45.586769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272007, 30.734741, 45.640209>,  <38.547012, 30.657703, 45.485741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272007, 30.734741, 45.640209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115334, 31.093451, 45.722561>,  <39.021328, 31.308676, 45.771973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115334, 31.093451, 45.722561>,  <39.272007, 30.734741, 45.640209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115334, 31.093451, 45.722561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567585, 0.059384, 0.821170,
		0.724176, 0.438492, -0.532254,
		-0.391684, 0.896771, 0.205877,
		38.997829, 31.362482, 45.784325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759331, 31.245003, 45.636700>,  <39.272007, 30.734741, 45.640209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759331, 31.245003, 45.636700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475025, 31.379906, 45.883621>,  <39.304440, 31.460848, 46.031776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475025, 31.379906, 45.883621>,  <39.759331, 31.245003, 45.636700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475025, 31.379906, 45.883621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644660, -0.038840, 0.763482,
		0.281468, 0.940610, -0.189811,
		-0.710766, 0.337259, 0.617306,
		39.261795, 31.481083, 46.068813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366154, 31.560335, 45.437893>,  <39.759331, 31.245003, 45.636700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366154, 31.560335, 45.437893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720039, 31.414797, 45.321339>,  <40.932369, 31.327473, 45.251408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720039, 31.414797, 45.321339>,  <40.366154, 31.560335, 45.437893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720039, 31.414797, 45.321339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291562, 0.055794, -0.954923,
		0.363704, 0.929786, -0.056722,
		0.884709, -0.363847, -0.291383,
		40.985451, 31.305643, 45.233925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554718, 31.859005, 44.867302>,  <40.366154, 31.560335, 45.437893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554718, 31.859005, 44.867302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810150, 31.552593, 44.837868>,  <40.963409, 31.368746, 44.820206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810150, 31.552593, 44.837868>,  <40.554718, 31.859005, 44.867302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810150, 31.552593, 44.837868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188250, -0.062780, -0.980112,
		0.746175, 0.639733, -0.184295,
		0.638580, -0.766029, -0.073585,
		41.001724, 31.322784, 44.815792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967014, 32.082275, 44.288837>,  <40.554718, 31.859005, 44.867302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967014, 32.082275, 44.288837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983532, 31.683779, 44.319305>,  <40.993443, 31.444681, 44.337585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983532, 31.683779, 44.319305>,  <40.967014, 32.082275, 44.288837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983532, 31.683779, 44.319305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037219, -0.077715, -0.996281,
		0.998453, 0.038309, -0.040289,
		0.041298, -0.996239, 0.076169,
		40.995922, 31.384907, 44.342155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242313, 31.971394, 43.696465>,  <40.967014, 32.082275, 44.288837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242313, 31.971394, 43.696465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124943, 31.607140, 43.812840>,  <41.054520, 31.388588, 43.882664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124943, 31.607140, 43.812840>,  <41.242313, 31.971394, 43.696465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124943, 31.607140, 43.812840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041240, -0.291990, -0.955532,
		0.955092, -0.292376, 0.048124,
		-0.293426, -0.910636, 0.290935,
		41.036915, 31.333948, 43.900120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702583, 31.441891, 43.391647>,  <41.242313, 31.971394, 43.696465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.702583, 31.441891, 43.391647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350662, 31.271473, 43.475967>,  <41.139511, 31.169222, 43.526558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350662, 31.271473, 43.475967>,  <41.702583, 31.441891, 43.391647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350662, 31.271473, 43.475967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067755, -0.326534, -0.942754,
		0.470486, -0.843720, 0.258419,
		-0.879803, -0.426043, 0.210796,
		41.086723, 31.143660, 43.539207>
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
