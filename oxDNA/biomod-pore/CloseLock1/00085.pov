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
	<23.993942, 35.042530, 35.339111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.295822, 34.901146, 35.118023>,  <24.476950, 34.816315, 34.985371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.295822, 34.901146, 35.118023>,  <23.993942, 35.042530, 35.339111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.295822, 34.901146, 35.118023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655691, 0.377641, 0.653802,
		-0.022361, -0.855836, 0.516763,
		0.754698, -0.353457, -0.552720,
		24.522232, 34.795109, 34.952206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.410452, 34.457321, 35.696774>,  <23.993942, 35.042530, 35.339111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.410452, 34.457321, 35.696774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.607746, 34.693573, 35.441315>,  <24.726122, 34.835323, 35.288040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.607746, 34.693573, 35.441315>,  <24.410452, 34.457321, 35.696774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.607746, 34.693573, 35.441315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644435, 0.245053, 0.724329,
		0.584314, -0.768834, -0.259753,
		0.493235, 0.590630, -0.638651,
		24.755716, 34.870762, 35.249718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.166830, 34.314880, 35.723526>,  <24.410452, 34.457321, 35.696774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.166830, 34.314880, 35.723526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.124878, 34.701233, 35.628807>,  <25.099707, 34.933044, 35.571976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.124878, 34.701233, 35.628807>,  <25.166830, 34.314880, 35.723526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.124878, 34.701233, 35.628807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795755, 0.224325, 0.562541,
		0.596468, -0.129436, -0.792132,
		-0.104882, 0.965880, -0.236802,
		25.093414, 34.990997, 35.557766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.792744, 34.735706, 35.378105>,  <25.166830, 34.314880, 35.723526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.792744, 34.735706, 35.378105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.580458, 34.998768, 35.591961>,  <25.453087, 35.156605, 35.720276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.580458, 34.998768, 35.591961>,  <25.792744, 34.735706, 35.378105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.580458, 34.998768, 35.591961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774519, 0.120154, 0.621034,
		0.344184, 0.743680, -0.573129,
		-0.530715, 0.657649, 0.534639,
		25.421244, 35.196064, 35.752354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.084732, 35.451527, 35.524933>,  <25.792744, 34.735706, 35.378105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.084732, 35.451527, 35.524933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872452, 35.337261, 35.844120>,  <25.745085, 35.268700, 36.035633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872452, 35.337261, 35.844120>,  <26.084732, 35.451527, 35.524933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.872452, 35.337261, 35.844120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816212, 0.081432, 0.571985,
		-0.228377, 0.954863, 0.189949,
		-0.530699, -0.285668, 0.797967,
		25.713242, 35.251560, 36.083511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.128550, 35.769688, 36.231789>,  <26.084732, 35.451527, 35.524933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.128550, 35.769688, 36.231789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397301, 36.043762, 36.344284>,  <26.558552, 36.208206, 36.411781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397301, 36.043762, 36.344284>,  <26.128550, 35.769688, 36.231789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397301, 36.043762, 36.344284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236563, 0.161301, -0.958134,
		-0.701867, 0.710280, -0.053716,
		0.671879, 0.685189, 0.281238,
		26.598864, 36.249317, 36.428654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.058109, 36.326588, 35.853252>,  <26.128550, 35.769688, 36.231789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.058109, 36.326588, 35.853252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.431425, 36.421864, 35.960758>,  <26.655415, 36.479031, 36.025261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.431425, 36.421864, 35.960758>,  <26.058109, 36.326588, 35.853252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.431425, 36.421864, 35.960758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199330, 0.278953, -0.939389,
		-0.298726, 0.930296, 0.212866,
		0.933290, 0.238189, 0.268767,
		26.711412, 36.493320, 36.041389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.256405, 36.989475, 35.575687>,  <26.058109, 36.326588, 35.853252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.256405, 36.989475, 35.575687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.597506, 36.789326, 35.635605>,  <26.802166, 36.669235, 35.671555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.597506, 36.789326, 35.635605>,  <26.256405, 36.989475, 35.575687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.597506, 36.789326, 35.635605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374805, 0.386480, -0.842707,
		0.363780, 0.774762, 0.517115,
		0.852752, -0.500377, 0.149791,
		26.853331, 36.639214, 35.680542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.743580, 37.520203, 35.498474>,  <26.256405, 36.989475, 35.575687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.743580, 37.520203, 35.498474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.902573, 37.158775, 35.434502>,  <26.997969, 36.941921, 35.396118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.902573, 37.158775, 35.434502>,  <26.743580, 37.520203, 35.498474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.902573, 37.158775, 35.434502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370755, 0.317569, -0.872749,
		0.839374, 0.287608, 0.461229,
		0.397481, -0.903566, -0.159927,
		27.021816, 36.887707, 35.386524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.526094, 37.651051, 35.314011>,  <26.743580, 37.520203, 35.498474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.526094, 37.651051, 35.314011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450966, 37.280983, 35.182083>,  <27.405888, 37.058941, 35.102924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450966, 37.280983, 35.182083>,  <27.526094, 37.651051, 35.314011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.450966, 37.280983, 35.182083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386587, 0.239061, -0.890730,
		0.902925, -0.294804, 0.312758,
		-0.187823, -0.925170, -0.329821,
		27.394619, 37.003433, 35.083138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.139444, 37.415924, 34.995857>,  <27.526094, 37.651051, 35.314011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.139444, 37.415924, 34.995857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.879307, 37.153263, 34.843090>,  <27.723225, 36.995667, 34.751431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.879307, 37.153263, 34.843090>,  <28.139444, 37.415924, 34.995857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.879307, 37.153263, 34.843090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599805, -0.135377, -0.788611,
		0.466139, -0.741945, 0.481904,
		-0.650345, -0.656651, -0.381918,
		27.684204, 36.956268, 34.728516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.493788, 36.855564, 34.840168>,  <28.139444, 37.415924, 34.995857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.493788, 36.855564, 34.840168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170292, 36.832413, 34.606041>,  <27.976194, 36.818523, 34.465565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170292, 36.832413, 34.606041>,  <28.493788, 36.855564, 34.840168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170292, 36.832413, 34.606041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587514, -0.032584, -0.808557,
		0.027726, -0.997792, 0.060356,
		-0.808738, -0.057879, -0.585313,
		27.927670, 36.815048, 34.430447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622444, 36.299454, 34.492298>,  <28.493788, 36.855564, 34.840168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622444, 36.299454, 34.492298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.359184, 36.512428, 34.279373>,  <28.201229, 36.640213, 34.151619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.359184, 36.512428, 34.279373>,  <28.622444, 36.299454, 34.492298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.359184, 36.512428, 34.279373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589736, -0.074945, -0.804111,
		-0.468029, -0.843148, -0.264670,
		-0.658149, 0.532433, -0.532311,
		28.161739, 36.672157, 34.119678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.524338, 35.885941, 33.876995>,  <28.622444, 36.299454, 34.492298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.524338, 35.885941, 33.876995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.371092, 36.240791, 33.774055>,  <28.279144, 36.453701, 33.712292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.371092, 36.240791, 33.774055>,  <28.524338, 35.885941, 33.876995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.371092, 36.240791, 33.774055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368704, -0.108581, -0.923183,
		-0.846924, -0.448572, -0.285488,
		-0.383115, 0.887126, -0.257350,
		28.256157, 36.506927, 33.696850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.271793, 35.763981, 33.260933>,  <28.524338, 35.885941, 33.876995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.271793, 35.763981, 33.260933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329868, 36.159096, 33.283573>,  <28.364714, 36.396164, 33.297157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329868, 36.159096, 33.283573>,  <28.271793, 35.763981, 33.260933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329868, 36.159096, 33.283573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624110, -0.047047, -0.779919,
		-0.767728, 0.148560, -0.623317,
		0.145190, 0.987784, 0.056599,
		28.373425, 36.455429, 33.300552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.393877, 35.973873, 32.569851>,  <28.271793, 35.763981, 33.260933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.393877, 35.973873, 32.569851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.542885, 36.274582, 32.787502>,  <28.632290, 36.455006, 32.918091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.542885, 36.274582, 32.787502>,  <28.393877, 35.973873, 32.569851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.542885, 36.274582, 32.787502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764173, 0.084193, -0.639493,
		-0.526561, 0.654032, -0.543117,
		0.372522, 0.751767, 0.544126,
		28.654642, 36.500111, 32.950741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.589909, 36.569832, 32.063137>,  <28.393877, 35.973873, 32.569851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.589909, 36.569832, 32.063137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803829, 36.620079, 32.397373>,  <28.932182, 36.650227, 32.597916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803829, 36.620079, 32.397373>,  <28.589909, 36.569832, 32.063137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803829, 36.620079, 32.397373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829068, 0.112979, -0.547614,
		-0.163194, 0.985624, -0.043725,
		0.534802, 0.125618, 0.835588,
		28.964270, 36.657764, 32.648048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940903, 37.148388, 32.013977>,  <28.589909, 36.569832, 32.063137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940903, 37.148388, 32.013977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166054, 36.947876, 32.276848>,  <29.301144, 36.827568, 32.434570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166054, 36.947876, 32.276848>,  <28.940903, 37.148388, 32.013977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166054, 36.947876, 32.276848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798249, 0.123447, -0.589541,
		0.214400, 0.856433, 0.469634,
		0.562877, -0.501282, 0.657180,
		29.334917, 36.797493, 32.474003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.528524, 37.499893, 32.018253>,  <28.940903, 37.148388, 32.013977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.528524, 37.499893, 32.018253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628479, 37.161942, 32.207455>,  <29.688452, 36.959171, 32.320976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628479, 37.161942, 32.207455>,  <29.528524, 37.499893, 32.018253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628479, 37.161942, 32.207455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932547, 0.078519, -0.352407,
		0.260602, 0.529161, 0.807512,
		0.249885, -0.844881, 0.473005,
		29.703445, 36.908478, 32.349358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182716, 37.737991, 32.120552>,  <29.528524, 37.499893, 32.018253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182716, 37.737991, 32.120552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172009, 37.345219, 32.195488>,  <30.165585, 37.109554, 32.240452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172009, 37.345219, 32.195488>,  <30.182716, 37.737991, 32.120552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172009, 37.345219, 32.195488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952914, -0.081693, -0.292030,
		0.302058, 0.170703, 0.937881,
		-0.026767, -0.981930, 0.187342,
		30.163979, 37.050640, 32.251690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.743765, 37.606201, 32.609097>,  <30.182716, 37.737991, 32.120552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.743765, 37.606201, 32.609097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654516, 37.271465, 32.409126>,  <30.600967, 37.070625, 32.289146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654516, 37.271465, 32.409126>,  <30.743765, 37.606201, 32.609097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654516, 37.271465, 32.409126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945123, -0.060153, -0.321129,
		0.238660, -0.544140, 0.804334,
		-0.223122, -0.836835, -0.499923,
		30.587580, 37.020416, 32.259148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280344, 37.120899, 32.781971>,  <30.743765, 37.606201, 32.609097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280344, 37.120899, 32.781971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131943, 36.967922, 32.443481>,  <31.042902, 36.876137, 32.240387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131943, 36.967922, 32.443481>,  <31.280344, 37.120899, 32.781971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131943, 36.967922, 32.443481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911904, 0.022137, -0.409805,
		0.175460, -0.923714, 0.340538,
		-0.371004, -0.382442, -0.846223,
		31.020641, 36.853191, 32.189613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768402, 36.608112, 32.601017>,  <31.280344, 37.120899, 32.781971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768402, 36.608112, 32.601017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556656, 36.678974, 32.269142>,  <31.429607, 36.721493, 32.070015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556656, 36.678974, 32.269142>,  <31.768402, 36.608112, 32.601017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556656, 36.678974, 32.269142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847562, 0.067135, -0.526433,
		-0.037561, -0.981890, -0.185691,
		-0.529366, 0.177158, -0.829691,
		31.397846, 36.732121, 32.020233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989784, 36.161678, 32.060688>,  <31.768402, 36.608112, 32.601017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989784, 36.161678, 32.060688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835857, 36.469856, 31.857388>,  <31.743502, 36.654762, 31.735407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835857, 36.469856, 31.857388>,  <31.989784, 36.161678, 32.060688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835857, 36.469856, 31.857388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727046, -0.086210, -0.681155,
		-0.568612, -0.631645, -0.526977,
		-0.384817, 0.770450, -0.508255,
		31.720411, 36.700993, 31.704910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133064, 35.954113, 31.435755>,  <31.989784, 36.161678, 32.060688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133064, 35.954113, 31.435755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077713, 36.348003, 31.393501>,  <32.044502, 36.584339, 31.368149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077713, 36.348003, 31.393501>,  <32.133064, 35.954113, 31.435755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077713, 36.348003, 31.393501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676895, 0.016182, -0.735902,
		-0.722955, -0.173336, -0.668798,
		-0.138381, 0.984730, -0.105632,
		32.036198, 36.643421, 31.361813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179081, 36.018806, 30.673979>,  <32.133064, 35.954113, 31.435755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179081, 36.018806, 30.673979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270817, 36.355618, 30.869280>,  <32.325859, 36.557705, 30.986460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270817, 36.355618, 30.869280>,  <32.179081, 36.018806, 30.673979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270817, 36.355618, 30.869280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798619, 0.123975, -0.588929,
		-0.556426, 0.524993, -0.644028,
		0.229340, 0.842029, 0.488253,
		32.339619, 36.608227, 31.015755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211510, 36.652020, 30.214588>,  <32.179081, 36.018806, 30.673979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211510, 36.652020, 30.214588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478481, 36.646736, 30.512411>,  <32.638664, 36.643566, 30.691105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478481, 36.646736, 30.512411>,  <32.211510, 36.652020, 30.214588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478481, 36.646736, 30.512411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718925, 0.272074, -0.639627,
		-0.194125, 0.962186, 0.191087,
		0.667430, -0.013210, 0.744556,
		32.678711, 36.642773, 30.735779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662113, 37.077705, 29.961752>,  <32.211510, 36.652020, 30.214588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662113, 37.077705, 29.961752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867191, 36.875938, 30.239662>,  <32.990238, 36.754879, 30.406408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867191, 36.875938, 30.239662>,  <32.662113, 37.077705, 29.961752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867191, 36.875938, 30.239662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858558, 0.296603, -0.418216,
		0.004881, 0.810921, 0.585135,
		0.512693, -0.504414, 0.694775,
		33.021000, 36.724613, 30.448095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004734, 37.570137, 30.391720>,  <32.662113, 37.077705, 29.961752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004734, 37.570137, 30.391720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190659, 37.217812, 30.355673>,  <33.302216, 37.006416, 30.334045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190659, 37.217812, 30.355673>,  <33.004734, 37.570137, 30.391720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190659, 37.217812, 30.355673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721700, 0.435867, -0.537745,
		0.512929, 0.184916, 0.838278,
		0.464815, -0.880810, -0.090115,
		33.330105, 36.953568, 30.328638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514187, 37.694973, 30.000946>,  <33.004734, 37.570137, 30.391720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514187, 37.694973, 30.000946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593025, 37.302826, 30.003424>,  <33.640327, 37.067539, 30.004910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593025, 37.302826, 30.003424>,  <33.514187, 37.694973, 30.000946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593025, 37.302826, 30.003424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749070, 0.146519, -0.646086,
		0.632492, 0.131982, 0.763240,
		0.197100, -0.980364, 0.006192,
		33.652157, 37.008717, 30.005281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272678, 37.678192, 30.137133>,  <33.514187, 37.694973, 30.000946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272678, 37.678192, 30.137133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138378, 37.332355, 29.987597>,  <34.057796, 37.124855, 29.897875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138378, 37.332355, 29.987597>,  <34.272678, 37.678192, 30.137133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138378, 37.332355, 29.987597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860222, -0.119733, -0.495664,
		0.383785, -0.488006, 0.783939,
		-0.335750, -0.864589, -0.373842,
		34.037655, 37.072979, 29.875444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790337, 37.237919, 30.347710>,  <34.272678, 37.678192, 30.137133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790337, 37.237919, 30.347710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581341, 37.167355, 30.014030>,  <34.455944, 37.125015, 29.813824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581341, 37.167355, 30.014030>,  <34.790337, 37.237919, 30.347710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581341, 37.167355, 30.014030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834703, 0.093840, -0.542647,
		0.174012, -0.979833, 0.098223,
		-0.522486, -0.176414, -0.834198,
		34.424595, 37.114429, 29.763771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253635, 36.898903, 30.587069>,  <34.790337, 37.237919, 30.347710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253635, 36.898903, 30.587069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485172, 36.640327, 30.785885>,  <34.624096, 36.485180, 30.905174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485172, 36.640327, 30.785885>,  <34.253635, 36.898903, 30.587069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485172, 36.640327, 30.785885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262342, 0.429504, 0.864120,
		-0.772085, -0.630587, 0.079028,
		0.578846, -0.646441, 0.497043,
		34.658825, 36.446396, 30.934998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810558, 36.498489, 31.040951>,  <34.253635, 36.898903, 30.587069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810558, 36.498489, 31.040951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178337, 36.525372, 31.195925>,  <34.399002, 36.541500, 31.288908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178337, 36.525372, 31.195925>,  <33.810558, 36.498489, 31.040951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178337, 36.525372, 31.195925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386047, 0.341581, 0.856908,
		-0.074755, -0.937447, 0.340007,
		0.919445, 0.067201, 0.387433,
		34.454170, 36.545532, 31.312155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952629, 36.131844, 31.654438>,  <33.810558, 36.498489, 31.040951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952629, 36.131844, 31.654438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180340, 36.460640, 31.660706>,  <34.316967, 36.657917, 31.664467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180340, 36.460640, 31.660706>,  <33.952629, 36.131844, 31.654438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180340, 36.460640, 31.660706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487517, 0.322165, 0.811503,
		0.662003, -0.469611, 0.584138,
		0.569280, 0.821995, 0.015669,
		34.351124, 36.707237, 31.665407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209927, 36.265156, 32.343098>,  <33.952629, 36.131844, 31.654438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209927, 36.265156, 32.343098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105968, 36.603733, 32.157196>,  <34.043594, 36.806877, 32.045654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105968, 36.603733, 32.157196>,  <34.209927, 36.265156, 32.343098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105968, 36.603733, 32.157196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543523, 0.269582, 0.794927,
		0.798146, 0.459203, 0.389995,
		-0.259897, 0.846439, -0.464752,
		34.028000, 36.857666, 32.017769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246784, 36.766525, 32.853577>,  <34.209927, 36.265156, 32.343098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246784, 36.766525, 32.853577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005211, 36.923252, 32.575947>,  <33.860268, 37.017288, 32.409370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005211, 36.923252, 32.575947>,  <34.246784, 36.766525, 32.853577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005211, 36.923252, 32.575947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590268, 0.365288, 0.719825,
		0.535577, 0.844419, 0.010666,
		-0.603938, 0.391818, -0.694073,
		33.824028, 37.040798, 32.367725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296494, 37.510757, 32.966709>,  <34.246784, 36.766525, 32.853577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296494, 37.510757, 32.966709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946831, 37.464211, 32.778111>,  <33.737034, 37.436283, 32.664951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946831, 37.464211, 32.778111>,  <34.296494, 37.510757, 32.966709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946831, 37.464211, 32.778111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480007, 0.354569, 0.802418,
		0.073800, 0.927760, -0.365807,
		-0.874155, -0.116372, -0.471498,
		33.684586, 37.429298, 32.636662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883224, 38.081108, 33.217442>,  <34.296494, 37.510757, 32.966709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883224, 38.081108, 33.217442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603237, 37.847084, 33.053612>,  <33.435246, 37.706669, 32.955315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603237, 37.847084, 33.053612>,  <33.883224, 38.081108, 33.217442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603237, 37.847084, 33.053612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628350, 0.231931, 0.742552,
		-0.339440, 0.777121, -0.529964,
		-0.699969, -0.585055, -0.409577,
		33.393246, 37.671566, 32.930740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238194, 38.411472, 33.276295>,  <33.883224, 38.081108, 33.217442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238194, 38.411472, 33.276295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144958, 38.025517, 33.227859>,  <33.089016, 37.793945, 33.198799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144958, 38.025517, 33.227859>,  <33.238194, 38.411472, 33.276295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144958, 38.025517, 33.227859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571857, 0.035293, 0.819594,
		-0.786542, 0.260285, -0.560004,
		-0.233092, -0.964887, -0.121086,
		33.075031, 37.736050, 33.191532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467335, 38.398407, 33.409008>,  <33.238194, 38.411472, 33.276295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467335, 38.398407, 33.409008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555771, 38.011997, 33.462551>,  <32.608833, 37.780151, 33.494675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555771, 38.011997, 33.462551>,  <32.467335, 38.398407, 33.409008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555771, 38.011997, 33.462551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665577, -0.049141, 0.744710,
		-0.712830, -0.253738, -0.653828,
		0.221091, -0.966024, 0.133853,
		32.622097, 37.722191, 33.502708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874023, 37.963860, 33.398071>,  <32.467335, 38.398407, 33.409008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874023, 37.963860, 33.398071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138813, 37.739460, 33.596893>,  <32.297688, 37.604820, 33.716187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138813, 37.739460, 33.596893>,  <31.874023, 37.963860, 33.398071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138813, 37.739460, 33.596893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590027, 0.018937, 0.807161,
		-0.462231, -0.827599, -0.318470,
		0.661975, -0.561001, 0.497059,
		32.337406, 37.571159, 33.746010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513941, 37.450592, 33.662270>,  <31.874023, 37.963860, 33.398071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513941, 37.450592, 33.662270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839474, 37.482563, 33.892498>,  <32.034794, 37.501747, 34.030636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839474, 37.482563, 33.892498>,  <31.513941, 37.450592, 33.662270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839474, 37.482563, 33.892498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570435, -0.078993, 0.817535,
		0.110813, -0.993665, -0.018691,
		0.813833, 0.079931, 0.575575,
		32.083622, 37.506542, 34.065170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481333, 36.730083, 34.007732>,  <31.513941, 37.450592, 33.662270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481333, 36.730083, 34.007732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704224, 36.983368, 34.222595>,  <31.837959, 37.135338, 34.351513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704224, 36.983368, 34.222595>,  <31.481333, 36.730083, 34.007732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704224, 36.983368, 34.222595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454834, -0.308466, 0.835449,
		0.694710, -0.709855, 0.116119,
		0.557229, 0.633210, 0.537161,
		31.871393, 37.173332, 34.383743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488390, 36.446606, 34.718075>,  <31.481333, 36.730083, 34.007732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488390, 36.446606, 34.718075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679052, 36.785053, 34.813473>,  <31.793449, 36.988121, 34.870712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679052, 36.785053, 34.813473>,  <31.488390, 36.446606, 34.718075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679052, 36.785053, 34.813473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232567, -0.140263, 0.962413,
		0.847768, -0.514208, 0.129922,
		0.476657, 0.846118, 0.238498,
		31.822050, 37.038887, 34.885021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933674, 36.309151, 35.284794>,  <31.488390, 36.446606, 34.718075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933674, 36.309151, 35.284794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806238, 36.687931, 35.267879>,  <31.729776, 36.915199, 35.257732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806238, 36.687931, 35.267879>,  <31.933674, 36.309151, 35.284794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806238, 36.687931, 35.267879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323301, -0.066617, 0.943948,
		0.891055, 0.314402, 0.327374,
		-0.318588, 0.946950, -0.042287,
		31.710663, 36.972015, 35.255192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095119, 36.589085, 35.930672>,  <31.933674, 36.309151, 35.284794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095119, 36.589085, 35.930672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828909, 36.850243, 35.786003>,  <31.669184, 37.006939, 35.699200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828909, 36.850243, 35.786003>,  <32.095119, 36.589085, 35.930672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828909, 36.850243, 35.786003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486568, -0.012066, 0.873559,
		0.565977, 0.757353, 0.325707,
		-0.665523, 0.652894, -0.361675,
		31.629251, 37.046112, 35.677502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900024, 37.091484, 36.462502>,  <32.095119, 36.589085, 35.930672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900024, 37.091484, 36.462502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.611273, 37.107334, 36.186150>,  <31.438023, 37.116844, 36.020336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.611273, 37.107334, 36.186150>,  <31.900024, 37.091484, 36.462502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.611273, 37.107334, 36.186150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689456, -0.127026, 0.713102,
		-0.059505, 0.991108, 0.119015,
		-0.721879, 0.039622, -0.690884,
		31.394709, 37.119221, 35.978886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425238, 37.536533, 36.679291>,  <31.900024, 37.091484, 36.462502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425238, 37.536533, 36.679291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210485, 37.320770, 36.419811>,  <31.081635, 37.191315, 36.264126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210485, 37.320770, 36.419811>,  <31.425238, 37.536533, 36.679291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210485, 37.320770, 36.419811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787050, 0.043318, 0.615366,
		-0.303831, 0.840932, -0.447794,
		-0.536878, -0.539404, -0.648695,
		31.049421, 37.158951, 36.225204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.707026, 37.811722, 36.768600>,  <31.425238, 37.536533, 36.679291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.707026, 37.811722, 36.768600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664806, 37.457333, 36.587971>,  <30.639475, 37.244701, 36.479591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664806, 37.457333, 36.587971>,  <30.707026, 37.811722, 36.768600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664806, 37.457333, 36.587971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894673, -0.113618, 0.432031,
		-0.434073, 0.449610, -0.780660,
		-0.105549, -0.885970, -0.451573,
		30.633142, 37.191544, 36.452499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076790, 37.880184, 36.434559>,  <30.707026, 37.811722, 36.768600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.076790, 37.880184, 36.434559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.135759, 37.489361, 36.496033>,  <30.171141, 37.254868, 36.532917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.135759, 37.489361, 36.496033>,  <30.076790, 37.880184, 36.434559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.135759, 37.489361, 36.496033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952387, -0.098307, 0.288610,
		-0.266881, -0.188914, -0.945032,
		0.147425, -0.977061, 0.153683,
		30.179987, 37.196243, 36.542137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714312, 37.529308, 35.994823>,  <30.076790, 37.880184, 36.434559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714312, 37.529308, 35.994823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.782925, 37.260193, 36.282692>,  <29.824093, 37.098724, 36.455414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.782925, 37.260193, 36.282692>,  <29.714312, 37.529308, 35.994823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.782925, 37.260193, 36.282692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985085, -0.107082, 0.134687,
		-0.013553, -0.732040, -0.681127,
		0.171532, -0.672793, 0.719671,
		29.834385, 37.058353, 36.498592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116655, 37.096333, 35.933540>,  <29.714312, 37.529308, 35.994823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116655, 37.096333, 35.933540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298536, 37.002842, 36.277313>,  <29.407665, 36.946747, 36.483578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298536, 37.002842, 36.277313>,  <29.116655, 37.096333, 35.933540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298536, 37.002842, 36.277313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890512, -0.135931, 0.434178,
		0.015345, -0.962754, -0.269942,
		0.454700, -0.233724, 0.859431,
		29.434946, 36.932724, 36.535141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732712, 36.493832, 36.195976>,  <29.116655, 37.096333, 35.933540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.732712, 36.493832, 36.195976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.902298, 36.651806, 36.521992>,  <29.004049, 36.746590, 36.717602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.902298, 36.651806, 36.521992>,  <28.732712, 36.493832, 36.195976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.902298, 36.651806, 36.521992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798107, -0.262470, 0.542342,
		0.428111, -0.880419, 0.203919,
		0.423966, 0.394931, 0.815035,
		29.029488, 36.770287, 36.766502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678017, 35.994328, 36.708164>,  <28.732712, 36.493832, 36.195976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678017, 35.994328, 36.708164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720602, 36.344749, 36.896290>,  <28.746153, 36.555004, 37.009163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720602, 36.344749, 36.896290>,  <28.678017, 35.994328, 36.708164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.720602, 36.344749, 36.896290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627475, -0.307725, 0.715249,
		0.771324, -0.371256, 0.516941,
		0.106465, 0.876056, 0.470309,
		28.752541, 36.607567, 37.037384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722290, 35.700165, 37.422741>,  <28.678017, 35.994328, 36.708164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722290, 35.700165, 37.422741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.636398, 36.090649, 37.434788>,  <28.584864, 36.324940, 37.442017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.636398, 36.090649, 37.434788>,  <28.722290, 35.700165, 37.422741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.636398, 36.090649, 37.434788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594612, -0.155131, 0.788904,
		0.774808, 0.151490, 0.613777,
		-0.214727, 0.976209, 0.030119,
		28.571980, 36.383511, 37.443825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782528, 35.915989, 38.069714>,  <28.722290, 35.700165, 37.422741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782528, 35.915989, 38.069714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.538309, 36.198589, 37.926556>,  <28.391777, 36.368149, 37.840660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.538309, 36.198589, 37.926556>,  <28.782528, 35.915989, 38.069714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.538309, 36.198589, 37.926556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581286, -0.092832, 0.808386,
		0.537902, 0.701596, 0.467358,
		-0.610547, 0.706502, -0.357894,
		28.355145, 36.410542, 37.819187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276800, 36.241211, 37.693111>,  <28.782528, 35.915989, 38.069714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276800, 36.241211, 37.693111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294275, 35.921940, 37.452774>,  <29.304760, 35.730377, 37.308571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294275, 35.921940, 37.452774>,  <29.276800, 36.241211, 37.693111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294275, 35.921940, 37.452774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908762, 0.281589, -0.307991,
		0.415021, -0.532566, 0.737652,
		0.043689, -0.798173, -0.600842,
		29.307383, 35.682487, 37.272522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858873, 35.690727, 37.854324>,  <29.276800, 36.241211, 37.693111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858873, 35.690727, 37.854324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.759428, 35.767700, 37.474606>,  <29.699760, 35.813885, 37.246777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.759428, 35.767700, 37.474606>,  <29.858873, 35.690727, 37.854324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759428, 35.767700, 37.474606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932640, 0.312137, -0.180978,
		0.261484, -0.930344, -0.257074,
		-0.248614, 0.192435, -0.949294,
		29.684843, 35.825432, 37.189816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.103224, 35.989010, 38.504971>,  <29.858873, 35.690727, 37.854324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.103224, 35.989010, 38.504971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953970, 35.654037, 38.664707>,  <29.864418, 35.453053, 38.760548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953970, 35.654037, 38.664707>,  <30.103224, 35.989010, 38.504971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953970, 35.654037, 38.664707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245942, -0.504309, -0.827759,
		0.894585, -0.210652, 0.394136,
		-0.373136, -0.837435, 0.399339,
		29.842030, 35.402805, 38.784508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607292, 35.492210, 38.468437>,  <30.103224, 35.989010, 38.504971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607292, 35.492210, 38.468437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313021, 35.574818, 38.726471>,  <30.136459, 35.624382, 38.881290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313021, 35.574818, 38.726471>,  <30.607292, 35.492210, 38.468437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313021, 35.574818, 38.726471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603622, -0.232167, 0.762718,
		0.307280, 0.950500, 0.046143,
		-0.735676, 0.206515, 0.645083,
		30.092318, 35.636772, 38.919994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863161, 35.899597, 39.008366>,  <30.607292, 35.492210, 38.468437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863161, 35.899597, 39.008366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515751, 35.774487, 39.162163>,  <30.307304, 35.699421, 39.254440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515751, 35.774487, 39.162163>,  <30.863161, 35.899597, 39.008366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515751, 35.774487, 39.162163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440151, -0.130059, 0.888455,
		-0.227881, 0.940880, 0.250629,
		-0.868526, -0.312777, 0.384491,
		30.255194, 35.680653, 39.277512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741707, 36.266655, 39.678795>,  <30.863161, 35.899597, 39.008366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741707, 36.266655, 39.678795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.558535, 35.911160, 39.670425>,  <30.448631, 35.697861, 39.665405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.558535, 35.911160, 39.670425>,  <30.741707, 36.266655, 39.678795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558535, 35.911160, 39.670425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341364, -0.197521, 0.918943,
		-0.820834, 0.413673, 0.393835,
		-0.457933, -0.888741, -0.020919,
		30.421154, 35.644539, 39.664150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224493, 36.099506, 40.169949>,  <30.741707, 36.266655, 39.678795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224493, 36.099506, 40.169949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452492, 35.781757, 40.085979>,  <30.589291, 35.591106, 40.035599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452492, 35.781757, 40.085979>,  <30.224493, 36.099506, 40.169949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452492, 35.781757, 40.085979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316504, -0.023497, 0.948300,
		-0.758240, -0.606971, 0.238030,
		0.569998, -0.794377, -0.209925,
		30.623491, 35.543446, 40.023003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.283489, 35.620518, 40.831974>,  <30.224493, 36.099506, 40.169949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.283489, 35.620518, 40.831974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.596058, 35.565098, 40.588604>,  <30.783600, 35.531845, 40.442581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.596058, 35.565098, 40.588604>,  <30.283489, 35.620518, 40.831974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596058, 35.565098, 40.588604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617651, 0.032993, 0.785760,
		-0.088798, -0.989805, 0.111360,
		0.781423, -0.138556, -0.608424,
		30.830484, 35.523533, 40.406078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.691566, 35.132103, 41.217072>,  <30.283489, 35.620518, 40.831974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.691566, 35.132103, 41.217072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965023, 35.241745, 40.946518>,  <31.129097, 35.307529, 40.784184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965023, 35.241745, 40.946518>,  <30.691566, 35.132103, 41.217072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965023, 35.241745, 40.946518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698081, 0.024734, 0.715591,
		0.212880, -0.961380, -0.174441,
		0.683641, 0.274109, -0.676387,
		31.170115, 35.323978, 40.743603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279531, 34.663353, 41.297211>,  <30.691566, 35.132103, 41.217072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279531, 34.663353, 41.297211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418036, 34.980839, 41.097160>,  <31.501137, 35.171329, 40.977131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418036, 34.980839, 41.097160>,  <31.279531, 34.663353, 41.297211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418036, 34.980839, 41.097160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716915, 0.119977, 0.686760,
		0.605094, -0.596342, -0.527482,
		0.346258, 0.793714, -0.500124,
		31.521914, 35.218952, 40.947124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898115, 34.476517, 40.922401>,  <31.279531, 34.663353, 41.297211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898115, 34.476517, 40.922401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849743, 34.852108, 41.051208>,  <31.820719, 35.077461, 41.128494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849743, 34.852108, 41.051208>,  <31.898115, 34.476517, 40.922401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849743, 34.852108, 41.051208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856350, -0.065380, 0.512240,
		0.502035, 0.337706, -0.796188,
		-0.120932, 0.938978, 0.322017,
		31.813463, 35.133801, 41.147812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541950, 34.829140, 40.990402>,  <31.898115, 34.476517, 40.922401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541950, 34.829140, 40.990402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316654, 35.083633, 41.201290>,  <32.181477, 35.236332, 41.327824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316654, 35.083633, 41.201290>,  <32.541950, 34.829140, 40.990402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316654, 35.083633, 41.201290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776043, 0.188212, 0.601941,
		0.283748, 0.748184, -0.599756,
		-0.563245, 0.636236, 0.527218,
		32.147682, 35.274506, 41.359455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913609, 35.511623, 41.014641>,  <32.541950, 34.829140, 40.990402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913609, 35.511623, 41.014641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669369, 35.452900, 41.325928>,  <32.522827, 35.417667, 41.512699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669369, 35.452900, 41.325928>,  <32.913609, 35.511623, 41.014641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669369, 35.452900, 41.325928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771057, 0.113976, 0.626482,
		-0.180668, 0.982577, 0.043601,
		-0.610598, -0.146804, 0.778215,
		32.486191, 35.408859, 41.559391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255199, 35.922153, 41.392910>,  <32.913609, 35.511623, 41.014641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255199, 35.922153, 41.392910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003971, 35.721226, 41.630630>,  <32.853233, 35.600670, 41.773262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003971, 35.721226, 41.630630>,  <33.255199, 35.922153, 41.392910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003971, 35.721226, 41.630630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738961, -0.145695, 0.657807,
		-0.243840, 0.852321, 0.462700,
		-0.628075, -0.502317, 0.594306,
		32.815548, 35.570530, 41.808922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399303, 36.133335, 42.004726>,  <33.255199, 35.922153, 41.392910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399303, 36.133335, 42.004726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196621, 35.798527, 42.087330>,  <33.075012, 35.597641, 42.136890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196621, 35.798527, 42.087330>,  <33.399303, 36.133335, 42.004726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196621, 35.798527, 42.087330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605805, -0.175267, 0.776068,
		-0.613390, 0.518344, 0.595879,
		-0.506708, -0.837019, 0.206508,
		33.044609, 35.547421, 42.149281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446362, 36.033978, 42.716148>,  <33.399303, 36.133335, 42.004726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446362, 36.033978, 42.716148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335396, 35.655556, 42.649200>,  <33.268814, 35.428501, 42.609032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335396, 35.655556, 42.649200>,  <33.446362, 36.033978, 42.716148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335396, 35.655556, 42.649200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614371, -0.308624, 0.726154,
		-0.738639, 0.098617, 0.666848,
		-0.277417, -0.946058, -0.167374,
		33.252171, 35.371738, 42.598988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235226, 35.752357, 43.404636>,  <33.446362, 36.033978, 42.716148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235226, 35.752357, 43.404636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318581, 35.432182, 43.179829>,  <33.368595, 35.240078, 43.044945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318581, 35.432182, 43.179829>,  <33.235226, 35.752357, 43.404636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318581, 35.432182, 43.179829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498270, -0.407589, 0.765244,
		-0.841606, -0.439509, 0.313898,
		0.208390, -0.800440, -0.562024,
		33.381096, 35.192051, 43.011223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010773, 35.169212, 43.797417>,  <33.235226, 35.752357, 43.404636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010773, 35.169212, 43.797417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291817, 35.046482, 43.540607>,  <33.460442, 34.972843, 43.386520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291817, 35.046482, 43.540607>,  <33.010773, 35.169212, 43.797417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291817, 35.046482, 43.540607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517565, -0.398832, 0.757007,
		-0.488334, -0.864169, -0.121417,
		0.702607, -0.306831, -0.642027,
		33.502598, 34.954433, 43.348000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024361, 34.493382, 43.769882>,  <33.010773, 35.169212, 43.797417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024361, 34.493382, 43.769882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388348, 34.613503, 43.655499>,  <33.606739, 34.685574, 43.586868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388348, 34.613503, 43.655499>,  <33.024361, 34.493382, 43.769882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388348, 34.613503, 43.655499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403424, -0.481600, 0.778017,
		0.095924, -0.823334, -0.559391,
		0.909971, 0.300303, -0.285956,
		33.661339, 34.703594, 43.569714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410339, 34.192303, 44.233711>,  <33.024361, 34.493382, 43.769882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410339, 34.192303, 44.233711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702019, 34.376419, 44.031162>,  <33.877026, 34.486889, 43.909634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702019, 34.376419, 44.031162>,  <33.410339, 34.192303, 44.233711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702019, 34.376419, 44.031162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671276, -0.337426, 0.659949,
		0.132905, -0.821144, -0.555030,
		0.729195, 0.460289, -0.506369,
		33.920776, 34.514507, 43.879253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943794, 33.657402, 44.146603>,  <33.410339, 34.192303, 44.233711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943794, 33.657402, 44.146603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116051, 34.018398, 44.149849>,  <34.219406, 34.234997, 44.151798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116051, 34.018398, 44.149849>,  <33.943794, 33.657402, 44.146603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116051, 34.018398, 44.149849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616005, -0.300488, 0.728179,
		0.659612, -0.308583, -0.685339,
		0.430640, 0.902487, 0.008117,
		34.245243, 34.289143, 44.152283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593842, 33.571182, 44.055103>,  <33.943794, 33.657402, 44.146603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593842, 33.571182, 44.055103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583481, 33.925877, 44.239723>,  <34.577263, 34.138691, 44.350494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583481, 33.925877, 44.239723>,  <34.593842, 33.571182, 44.055103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583481, 33.925877, 44.239723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595176, -0.357278, 0.719804,
		0.803178, 0.293353, -0.518507,
		-0.025906, 0.886734, 0.461554,
		34.575710, 34.191898, 44.378189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163803, 33.590034, 44.395538>,  <34.593842, 33.571182, 44.055103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163803, 33.590034, 44.395538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991211, 33.887424, 44.599918>,  <34.887653, 34.065857, 44.722546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991211, 33.887424, 44.599918>,  <35.163803, 33.590034, 44.395538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991211, 33.887424, 44.599918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452475, -0.311634, 0.835554,
		0.780441, 0.591721, -0.201937,
		-0.431485, 0.743472, 0.510950,
		34.861767, 34.110466, 44.753204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718971, 34.026337, 44.764160>,  <35.163803, 33.590034, 44.395538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718971, 34.026337, 44.764160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366497, 34.091534, 44.941677>,  <35.155014, 34.130653, 45.048187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366497, 34.091534, 44.941677>,  <35.718971, 34.026337, 44.764160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366497, 34.091534, 44.941677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424521, -0.140362, 0.894472,
		0.208083, 0.976592, 0.054491,
		-0.881183, 0.162992, 0.443791,
		35.102142, 34.140430, 45.074814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973030, 34.277607, 45.392159>,  <35.718971, 34.026337, 44.764160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973030, 34.277607, 45.392159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588661, 34.191315, 45.461540>,  <35.358040, 34.139538, 45.503170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588661, 34.191315, 45.461540>,  <35.973030, 34.277607, 45.392159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588661, 34.191315, 45.461540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207582, -0.147055, 0.967101,
		-0.183128, 0.965316, 0.186091,
		-0.960924, -0.215732, 0.173453,
		35.300385, 34.126595, 45.513577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745796, 34.747917, 45.886253>,  <35.973030, 34.277607, 45.392159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745796, 34.747917, 45.886253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502579, 34.430580, 45.898228>,  <35.356647, 34.240177, 45.905411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502579, 34.430580, 45.898228>,  <35.745796, 34.747917, 45.886253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502579, 34.430580, 45.898228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092660, -0.033468, 0.995135,
		-0.788478, 0.607859, 0.093861,
		-0.608044, -0.793339, 0.029935,
		35.320168, 34.192577, 45.907207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386963, 34.810276, 46.504265>,  <35.745796, 34.747917, 45.886253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386963, 34.810276, 46.504265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350899, 34.420315, 46.422848>,  <35.329258, 34.186337, 46.373997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350899, 34.420315, 46.422848>,  <35.386963, 34.810276, 46.504265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350899, 34.420315, 46.422848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284280, -0.221062, 0.932908,
		-0.954492, 0.026252, 0.297078,
		-0.090163, -0.974906, -0.203539,
		35.323849, 34.127842, 46.361786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918892, 34.572456, 47.044529>,  <35.386963, 34.810276, 46.504265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918892, 34.572456, 47.044529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112751, 34.259300, 46.888477>,  <35.229065, 34.071407, 46.794846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112751, 34.259300, 46.888477>,  <34.918892, 34.572456, 47.044529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112751, 34.259300, 46.888477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248951, -0.304108, 0.919533,
		-0.838535, -0.542772, 0.047516,
		0.484647, -0.782890, -0.390129,
		35.258144, 34.024433, 46.771439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077847, 34.099155, 47.679001>,  <34.918892, 34.572456, 47.044529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077847, 34.099155, 47.679001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263489, 33.884190, 47.397350>,  <35.374874, 33.755211, 47.228359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263489, 33.884190, 47.397350>,  <35.077847, 34.099155, 47.679001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263489, 33.884190, 47.397350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455475, -0.536982, 0.710065,
		-0.759701, -0.650258, -0.004440,
		0.464110, -0.537415, -0.704122,
		35.402721, 33.722965, 47.186115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982170, 33.311447, 47.789104>,  <35.077847, 34.099155, 47.679001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982170, 33.311447, 47.789104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.322811, 33.364891, 47.586357>,  <35.527195, 33.396957, 47.464710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.322811, 33.364891, 47.586357>,  <34.982170, 33.311447, 47.789104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322811, 33.364891, 47.586357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480608, -0.585017, 0.653277,
		-0.209239, -0.799939, -0.562420,
		0.851607, 0.133613, -0.506866,
		35.578293, 33.404976, 47.434296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255604, 32.724869, 47.782276>,  <34.982170, 33.311447, 47.789104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255604, 32.724869, 47.782276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571373, 32.954105, 47.694305>,  <35.760834, 33.091648, 47.641525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571373, 32.954105, 47.694305>,  <35.255604, 32.724869, 47.782276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571373, 32.954105, 47.694305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547999, -0.496526, 0.673171,
		0.276593, -0.651937, -0.706027,
		0.789426, 0.573096, -0.219925,
		35.808201, 33.126034, 47.628326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820827, 32.262840, 47.515293>,  <35.255604, 32.724869, 47.782276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820827, 32.262840, 47.515293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999207, 32.597874, 47.641525>,  <36.106232, 32.798893, 47.717266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999207, 32.597874, 47.641525>,  <35.820827, 32.262840, 47.515293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999207, 32.597874, 47.641525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591751, -0.540424, 0.598141,
		0.671539, -0.079992, -0.736639,
		0.445944, 0.837581, 0.315580,
		36.132988, 32.849148, 47.736198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504978, 32.063046, 47.496464>,  <35.820827, 32.262840, 47.515293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504978, 32.063046, 47.496464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476040, 32.400955, 47.708549>,  <36.458675, 32.603699, 47.835800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476040, 32.400955, 47.708549>,  <36.504978, 32.063046, 47.496464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476040, 32.400955, 47.708549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692824, -0.339848, 0.636002,
		0.717468, 0.413357, -0.560692,
		-0.072345, 0.844772, 0.530213,
		36.454338, 32.654388, 47.867615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120434, 32.396721, 47.656105>,  <36.504978, 32.063046, 47.496464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120434, 32.396721, 47.656105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910320, 32.552319, 47.958828>,  <36.784252, 32.645676, 48.140461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910320, 32.552319, 47.958828>,  <37.120434, 32.396721, 47.656105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910320, 32.552319, 47.958828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706698, -0.295976, 0.642632,
		0.473976, 0.872401, -0.119427,
		-0.525286, 0.388991, 0.756810,
		36.752735, 32.669018, 48.185871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598755, 32.681599, 48.103962>,  <37.120434, 32.396721, 47.656105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598755, 32.681599, 48.103962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264381, 32.635399, 48.318577>,  <37.063755, 32.607681, 48.447346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264381, 32.635399, 48.318577>,  <37.598755, 32.681599, 48.103962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264381, 32.635399, 48.318577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543426, -0.310975, 0.779732,
		0.076792, 0.943374, 0.322720,
		-0.835937, -0.115497, 0.536535,
		37.013599, 32.600750, 48.479538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791821, 32.946705, 48.837479>,  <37.598755, 32.681599, 48.103962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791821, 32.946705, 48.837479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481915, 32.698277, 48.884819>,  <37.295971, 32.549221, 48.913223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481915, 32.698277, 48.884819>,  <37.791821, 32.946705, 48.837479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481915, 32.698277, 48.884819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448553, -0.408024, 0.795183,
		-0.445573, 0.669170, 0.594707,
		-0.774768, -0.621070, 0.118353,
		37.249485, 32.511955, 48.920326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683464, 32.913769, 49.536331>,  <37.791821, 32.946705, 48.837479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683464, 32.913769, 49.536331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496002, 32.593891, 49.386204>,  <37.383526, 32.401966, 49.296127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496002, 32.593891, 49.386204>,  <37.683464, 32.913769, 49.536331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496002, 32.593891, 49.386204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378985, -0.565787, 0.732294,
		-0.797958, 0.200951, 0.568227,
		-0.468651, -0.799690, -0.375317,
		37.355408, 32.353985, 49.273609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383839, 32.586987, 50.089252>,  <37.683464, 32.913769, 49.536331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383839, 32.586987, 50.089252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410988, 32.297096, 49.814980>,  <37.427277, 32.123161, 49.650414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410988, 32.297096, 49.814980>,  <37.383839, 32.586987, 50.089252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410988, 32.297096, 49.814980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510174, -0.565409, 0.648101,
		-0.857389, -0.393806, 0.331362,
		0.067871, -0.724727, -0.685686,
		37.431351, 32.079678, 49.609272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122971, 31.957108, 50.447083>,  <37.383839, 32.586987, 50.089252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122971, 31.957108, 50.447083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370419, 31.879379, 50.142570>,  <37.518887, 31.832743, 49.959862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370419, 31.879379, 50.142570>,  <37.122971, 31.957108, 50.447083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370419, 31.879379, 50.142570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577089, -0.545146, 0.608099,
		-0.533176, -0.815509, -0.225096,
		0.618620, -0.194324, -0.761280,
		37.556004, 31.821083, 49.914188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292297, 31.326275, 50.609493>,  <37.122971, 31.957108, 50.447083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292297, 31.326275, 50.609493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562187, 31.449162, 50.341057>,  <37.724121, 31.522894, 50.179993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562187, 31.449162, 50.341057>,  <37.292297, 31.326275, 50.609493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562187, 31.449162, 50.341057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692182, -0.578996, 0.430869,
		-0.256189, -0.755235, -0.603313,
		0.674723, 0.307218, -0.671092,
		37.764603, 31.541327, 50.139729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554188, 30.673447, 50.341896>,  <37.292297, 31.326275, 50.609493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554188, 30.673447, 50.341896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804665, 30.984415, 50.318222>,  <37.954948, 31.170996, 50.304016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804665, 30.984415, 50.318222>,  <37.554188, 30.673447, 50.341896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804665, 30.984415, 50.318222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712307, -0.539571, 0.448868,
		0.317024, -0.323235, -0.891636,
		0.626190, 0.777421, -0.059185,
		37.992523, 31.217642, 50.300465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205524, 30.402288, 50.525967>,  <37.554188, 30.673447, 50.341896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205524, 30.402288, 50.525967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332039, 30.781687, 50.518784>,  <38.407948, 31.009325, 50.514473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332039, 30.781687, 50.518784>,  <38.205524, 30.402288, 50.525967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332039, 30.781687, 50.518784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913812, -0.299525, 0.274287,
		0.254781, -0.103160, -0.961480,
		0.316282, 0.948495, -0.017956,
		38.426922, 31.066235, 50.513397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941250, 30.229635, 50.487309>,  <38.205524, 30.402288, 50.525967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941250, 30.229635, 50.487309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891068, 30.616894, 50.573982>,  <38.860958, 30.849249, 50.625988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891068, 30.616894, 50.573982>,  <38.941250, 30.229635, 50.487309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891068, 30.616894, 50.573982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856478, -0.004541, 0.516163,
		0.500706, 0.250342, -0.828627,
		-0.125455, 0.968147, 0.216687,
		38.853432, 30.907337, 50.638988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538372, 30.615856, 50.305664>,  <38.941250, 30.229635, 50.487309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538372, 30.615856, 50.305664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375629, 30.838327, 50.595528>,  <39.277985, 30.971811, 50.769447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375629, 30.838327, 50.595528>,  <39.538372, 30.615856, 50.305664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375629, 30.838327, 50.595528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848779, -0.063101, 0.524969,
		0.337704, 0.828663, -0.446401,
		-0.406854, 0.556180, 0.724661,
		39.253574, 31.005182, 50.812927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088173, 30.873539, 50.576057>,  <39.538372, 30.615856, 50.305664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.088173, 30.873539, 50.576057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829659, 30.902161, 50.879951>,  <39.674549, 30.919334, 51.062286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829659, 30.902161, 50.879951>,  <40.088173, 30.873539, 50.576057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829659, 30.902161, 50.879951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757863, -0.056196, 0.649989,
		0.089204, 0.995852, -0.017910,
		-0.646286, 0.071555, 0.759733,
		39.635773, 30.923628, 51.107872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426876, 31.256260, 51.167492>,  <40.088173, 30.873539, 50.576057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426876, 31.256260, 51.167492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126575, 31.037012, 51.314968>,  <39.946396, 30.905462, 51.403454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126575, 31.037012, 51.314968>,  <40.426876, 31.256260, 51.167492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126575, 31.037012, 51.314968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593321, -0.314146, 0.741136,
		-0.290410, 0.775162, 0.561058,
		-0.750754, -0.548121, 0.368689,
		39.901348, 30.872576, 51.425575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551701, 31.321451, 51.820206>,  <40.426876, 31.256260, 51.167492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551701, 31.321451, 51.820206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303467, 31.007795, 51.820904>,  <40.154526, 30.819603, 51.821323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303467, 31.007795, 51.820904>,  <40.551701, 31.321451, 51.820206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303467, 31.007795, 51.820904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410392, -0.322900, 0.852827,
		-0.668171, 0.529966, 0.522191,
		-0.620585, -0.784138, 0.001742,
		40.117290, 30.772554, 51.821426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289696, 31.208883, 52.495808>,  <40.551701, 31.321451, 51.820206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289696, 31.208883, 52.495808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262394, 30.856018, 52.309422>,  <40.246014, 30.644299, 52.197590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262394, 30.856018, 52.309422>,  <40.289696, 31.208883, 52.495808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262394, 30.856018, 52.309422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448745, -0.444292, 0.775392,
		-0.891049, -0.156175, 0.426193,
		-0.068257, -0.882164, -0.465969,
		40.241917, 30.591370, 52.169632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957287, 30.657211, 52.897884>,  <40.289696, 31.208883, 52.495808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957287, 30.657211, 52.897884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.182827, 30.462008, 52.631374>,  <40.318150, 30.344885, 52.471470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.182827, 30.462008, 52.631374>,  <39.957287, 30.657211, 52.897884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182827, 30.462008, 52.631374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222228, -0.687342, 0.691503,
		-0.795418, -0.537968, -0.279107,
		0.563848, -0.488008, -0.666276,
		40.351982, 30.315605, 52.431492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720192, 29.978649, 52.825825>,  <39.957287, 30.657211, 52.897884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720192, 29.978649, 52.825825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108963, 30.050203, 52.764687>,  <40.342224, 30.093136, 52.728004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108963, 30.050203, 52.764687>,  <39.720192, 29.978649, 52.825825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108963, 30.050203, 52.764687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225587, -0.523849, 0.821396,
		0.066867, -0.832816, -0.549497,
		0.971926, 0.178884, -0.152845,
		40.400539, 30.103868, 52.718834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166908, 29.395222, 52.808964>,  <39.720192, 29.978649, 52.825825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166908, 29.395222, 52.808964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403854, 29.695362, 52.926319>,  <40.546021, 29.875446, 52.996731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403854, 29.695362, 52.926319>,  <40.166908, 29.395222, 52.808964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403854, 29.695362, 52.926319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293050, -0.539879, 0.789084,
		0.750486, -0.381446, -0.539695,
		0.592362, 0.750353, 0.293389,
		40.581562, 29.920467, 53.014336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815075, 29.192293, 52.851562>,  <40.166908, 29.395222, 52.808964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815075, 29.192293, 52.851562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744946, 29.476479, 53.124180>,  <40.702869, 29.646990, 53.287750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744946, 29.476479, 53.124180>,  <40.815075, 29.192293, 52.851562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744946, 29.476479, 53.124180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414071, -0.574850, 0.705757,
		0.893200, 0.405945, -0.193396,
		-0.175324, 0.710462, 0.681546,
		40.692348, 29.689617, 53.328644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521420, 29.400967, 53.225967>,  <40.815075, 29.192293, 52.851562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521420, 29.400967, 53.225967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201851, 29.443054, 53.462830>,  <41.010109, 29.468306, 53.604946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201851, 29.443054, 53.462830>,  <41.521420, 29.400967, 53.225967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201851, 29.443054, 53.462830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435662, -0.577529, 0.690404,
		0.414631, 0.809561, 0.415563,
		-0.798924, 0.105218, 0.592156,
		40.962173, 29.474619, 53.640476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303265, 29.994114, 53.433224>,  <41.521420, 29.400967, 53.225967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.303265, 29.994114, 53.433224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665688, 29.957184, 53.268040>,  <41.883141, 29.935026, 53.168930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665688, 29.957184, 53.268040>,  <41.303265, 29.994114, 53.433224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.665688, 29.957184, 53.268040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411243, -0.422050, -0.807932,
		-0.099696, 0.901859, -0.420370,
		0.906058, -0.092326, -0.412960,
		41.937504, 29.929485, 53.144154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339611, 30.421370, 52.809795>,  <41.303265, 29.994114, 53.433224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339611, 30.421370, 52.809795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.579762, 30.101534, 52.803963>,  <41.723850, 29.909634, 52.800461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.579762, 30.101534, 52.803963>,  <41.339611, 30.421370, 52.809795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.579762, 30.101534, 52.803963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470199, -0.338181, -0.815197,
		0.646889, 0.496279, -0.579000,
		0.600372, -0.799588, -0.014584,
		41.759872, 29.861658, 52.799587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568329, 30.401203, 52.079308>,  <41.339611, 30.421370, 52.809795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568329, 30.401203, 52.079308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.627064, 30.039190, 52.238983>,  <41.662304, 29.821983, 52.334789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.627064, 30.039190, 52.238983>,  <41.568329, 30.401203, 52.079308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.627064, 30.039190, 52.238983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436369, -0.421444, -0.794964,
		0.887705, -0.057464, -0.456812,
		0.146839, -0.905032, 0.399194,
		41.671116, 29.767681, 52.358742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824486, 29.946861, 51.563858>,  <41.568329, 30.401203, 52.079308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.824486, 29.946861, 51.563858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.638584, 29.723982, 51.839111>,  <41.527042, 29.590254, 52.004265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.638584, 29.723982, 51.839111>,  <41.824486, 29.946861, 51.563858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638584, 29.723982, 51.839111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362822, -0.589082, -0.722041,
		0.807688, -0.585244, 0.071615,
		-0.464758, -0.557200, 0.688134,
		41.499157, 29.556822, 52.045551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.017857, 29.248245, 51.581985>,  <41.824486, 29.946861, 51.563858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.017857, 29.248245, 51.581985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.638721, 29.299122, 51.698902>,  <41.411240, 29.329647, 51.769051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.638721, 29.299122, 51.698902>,  <42.017857, 29.248245, 51.581985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638721, 29.299122, 51.698902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316514, -0.484285, -0.815651,
		0.037807, -0.865616, 0.499280,
		-0.947834, 0.127192, 0.292289,
		41.354370, 29.337280, 51.786591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687355, 28.600889, 51.522419>,  <42.017857, 29.248245, 51.581985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.687355, 28.600889, 51.522419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451462, 28.923697, 51.510204>,  <41.309925, 29.117380, 51.502876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451462, 28.923697, 51.510204>,  <41.687355, 28.600889, 51.522419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451462, 28.923697, 51.510204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535561, -0.419110, -0.733158,
		-0.604471, -0.416015, 0.679372,
		-0.589737, 0.807018, -0.030539,
		41.274540, 29.165802, 51.501041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985126, 28.380665, 51.380566>,  <41.687355, 28.600889, 51.522419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985126, 28.380665, 51.380566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968903, 28.762640, 51.262959>,  <40.959167, 28.991825, 51.192394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968903, 28.762640, 51.262959>,  <40.985126, 28.380665, 51.380566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968903, 28.762640, 51.262959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465132, -0.278477, -0.840299,
		-0.884312, 0.102676, 0.455467,
		-0.040559, 0.954939, -0.294019,
		40.956734, 29.049122, 51.174751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230827, 28.470308, 51.124065>,  <40.985126, 28.380665, 51.380566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230827, 28.470308, 51.124065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446484, 28.762033, 50.955574>,  <40.575878, 28.937069, 50.854481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446484, 28.762033, 50.955574>,  <40.230827, 28.470308, 51.124065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446484, 28.762033, 50.955574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340043, -0.269067, -0.901096,
		-0.770518, 0.629053, 0.102932,
		0.539141, 0.729312, -0.421226,
		40.608227, 28.980827, 50.829205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760174, 28.787148, 50.560974>,  <40.230827, 28.470308, 51.124065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760174, 28.787148, 50.560974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092876, 28.982845, 50.456043>,  <40.292500, 29.100264, 50.393085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092876, 28.982845, 50.456043>,  <39.760174, 28.787148, 50.560974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092876, 28.982845, 50.456043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159059, -0.242709, -0.956971,
		-0.531862, 0.837695, -0.124056,
		0.831759, 0.489244, -0.262330,
		40.342403, 29.129618, 50.377346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542213, 29.265083, 50.127510>,  <39.760174, 28.787148, 50.560974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542213, 29.265083, 50.127510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929287, 29.198059, 50.052135>,  <40.161533, 29.157845, 50.006912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929287, 29.198059, 50.052135>,  <39.542213, 29.265083, 50.127510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929287, 29.198059, 50.052135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192734, -0.009621, -0.981204,
		0.162598, 0.985815, -0.041604,
		0.967686, -0.167560, -0.188435,
		40.219593, 29.147791, 49.995605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796200, 29.779325, 49.725845>,  <39.542213, 29.265083, 50.127510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796200, 29.779325, 49.725845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040901, 29.473429, 49.644924>,  <40.187721, 29.289890, 49.596371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040901, 29.473429, 49.644924>,  <39.796200, 29.779325, 49.725845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040901, 29.473429, 49.644924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142929, 0.144672, -0.979102,
		0.778026, 0.627887, -0.020799,
		0.611757, -0.764740, -0.202302,
		40.224430, 29.244007, 49.584232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134449, 30.008749, 49.132095>,  <39.796200, 29.779325, 49.725845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134449, 30.008749, 49.132095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189182, 29.612597, 49.123898>,  <40.222023, 29.374905, 49.118980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189182, 29.612597, 49.123898>,  <40.134449, 30.008749, 49.132095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189182, 29.612597, 49.123898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063929, 0.029476, -0.997519,
		0.988530, 0.135179, 0.067347,
		0.136829, -0.990383, -0.020496,
		40.230232, 29.315481, 49.117748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804344, 29.913080, 48.706955>,  <40.134449, 30.008749, 49.132095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804344, 29.913080, 48.706955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558487, 29.597677, 48.715580>,  <40.410973, 29.408436, 48.720753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558487, 29.597677, 48.715580>,  <40.804344, 29.913080, 48.706955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558487, 29.597677, 48.715580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068103, -0.080277, -0.994443,
		0.785856, -0.609764, 0.103042,
		-0.614648, -0.788507, 0.021560,
		40.374092, 29.361126, 48.722050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998558, 29.498737, 48.162167>,  <40.804344, 29.913080, 48.706955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998558, 29.498737, 48.162167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653881, 29.326017, 48.268772>,  <40.447075, 29.222385, 48.332733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653881, 29.326017, 48.268772>,  <40.998558, 29.498737, 48.162167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653881, 29.326017, 48.268772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273402, -0.047376, -0.960733,
		0.427469, -0.900725, -0.077231,
		-0.861697, -0.431799, 0.266511,
		40.395370, 29.196478, 48.348724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943115, 29.008102, 47.685577>,  <40.998558, 29.498737, 48.162167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943115, 29.008102, 47.685577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574154, 29.064898, 47.829250>,  <40.352776, 29.098974, 47.915455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574154, 29.064898, 47.829250>,  <40.943115, 29.008102, 47.685577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574154, 29.064898, 47.829250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367735, -0.038559, -0.929131,
		-0.118079, -0.989117, 0.087782,
		-0.922404, 0.141992, 0.359180,
		40.297432, 29.107494, 47.937004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476547, 28.479544, 47.393574>,  <40.943115, 29.008102, 47.685577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476547, 28.479544, 47.393574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240685, 28.787743, 47.490429>,  <40.099167, 28.972662, 47.548542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240685, 28.787743, 47.490429>,  <40.476547, 28.479544, 47.393574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240685, 28.787743, 47.490429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336424, 0.038241, -0.940934,
		-0.734249, -0.636292, 0.236666,
		-0.589658, 0.770500, 0.242142,
		40.063786, 29.018892, 47.563072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900383, 28.387133, 47.042957>,  <40.476547, 28.479544, 47.393574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900383, 28.387133, 47.042957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.857361, 28.773947, 47.135281>,  <39.831547, 29.006035, 47.190674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.857361, 28.773947, 47.135281>,  <39.900383, 28.387133, 47.042957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857361, 28.773947, 47.135281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504113, 0.147050, -0.851027,
		-0.856914, -0.207886, 0.471680,
		-0.107556, 0.967037, 0.230807,
		39.825092, 29.064058, 47.204521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232288, 28.524973, 46.928658>,  <39.900383, 28.387133, 47.042957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232288, 28.524973, 46.928658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370193, 28.899841, 46.950012>,  <39.452938, 29.124762, 46.962826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370193, 28.899841, 46.950012>,  <39.232288, 28.524973, 46.928658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370193, 28.899841, 46.950012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702876, 0.295434, -0.647057,
		-0.622175, 0.185557, 0.760570,
		0.344765, 0.937170, 0.053388,
		39.473621, 29.180992, 46.966030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651627, 28.923923, 46.814270>,  <39.232288, 28.524973, 46.928658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651627, 28.923923, 46.814270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951042, 29.178244, 46.738964>,  <39.130692, 29.330835, 46.693783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951042, 29.178244, 46.738964>,  <38.651627, 28.923923, 46.814270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951042, 29.178244, 46.738964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561467, 0.456699, -0.690058,
		-0.352761, 0.622240, 0.698840,
		0.748542, 0.635801, -0.188262,
		39.175606, 29.368984, 46.682484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348209, 29.597086, 46.680779>,  <38.651627, 28.923923, 46.814270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348209, 29.597086, 46.680779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.713684, 29.615799, 46.519287>,  <38.932968, 29.627028, 46.422394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.713684, 29.615799, 46.519287>,  <38.348209, 29.597086, 46.680779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713684, 29.615799, 46.519287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387057, 0.403165, -0.829244,
		0.123975, 0.913931, 0.386472,
		0.913683, 0.046782, -0.403726,
		38.987789, 29.629833, 46.398170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442345, 30.375965, 46.542202>,  <38.348209, 29.597086, 46.680779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442345, 30.375965, 46.542202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678745, 30.155439, 46.306656>,  <38.820587, 30.023123, 46.165329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678745, 30.155439, 46.306656>,  <38.442345, 30.375965, 46.542202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678745, 30.155439, 46.306656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232805, 0.582365, -0.778880,
		0.772344, 0.597413, 0.215831,
		0.591005, -0.551316, -0.588866,
		38.856049, 29.990044, 46.129997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784500, 30.898922, 46.159172>,  <38.442345, 30.375965, 46.542202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784500, 30.898922, 46.159172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860058, 30.567194, 45.948822>,  <38.905392, 30.368158, 45.822613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860058, 30.567194, 45.948822>,  <38.784500, 30.898922, 46.159172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860058, 30.567194, 45.948822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298888, 0.461557, -0.835243,
		0.935406, 0.314954, -0.160687,
		0.188897, -0.829318, -0.525879,
		38.916725, 30.318398, 45.791058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189648, 31.056889, 45.551964>,  <38.784500, 30.898922, 46.159172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189648, 31.056889, 45.551964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992023, 30.717045, 45.478134>,  <38.873447, 30.513140, 45.433838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992023, 30.717045, 45.478134>,  <39.189648, 31.056889, 45.551964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992023, 30.717045, 45.478134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344082, 0.386034, -0.855912,
		0.798442, -0.359365, -0.483060,
		-0.494062, -0.849609, -0.184575,
		38.843803, 30.462162, 45.422760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192120, 31.008080, 44.739883>,  <39.189648, 31.056889, 45.551964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192120, 31.008080, 44.739883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918961, 30.744001, 44.864975>,  <38.755066, 30.585554, 44.940029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918961, 30.744001, 44.864975>,  <39.192120, 31.008080, 44.739883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918961, 30.744001, 44.864975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552932, 0.187357, -0.811889,
		0.477412, -0.727352, -0.492988,
		-0.682893, -0.660195, 0.312729,
		38.714092, 30.545942, 44.958794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033623, 30.602655, 44.133533>,  <39.192120, 31.008080, 44.739883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033623, 30.602655, 44.133533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730305, 30.556353, 44.390152>,  <38.548313, 30.528572, 44.544125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730305, 30.556353, 44.390152>,  <39.033623, 30.602655, 44.133533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730305, 30.556353, 44.390152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649712, 0.053472, -0.758298,
		0.053472, -0.991837, -0.115755,
		0.758298, 0.115755, -0.641549,
		38.502815, 30.521626, 44.582615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550957, 30.230179, 43.783268>,  <39.033623, 30.602655, 44.133533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550957, 30.230179, 43.783268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345963, 30.404816, 44.079037>,  <38.222965, 30.509598, 44.256496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345963, 30.404816, 44.079037>,  <38.550957, 30.230179, 43.783268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345963, 30.404816, 44.079037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708931, 0.270774, -0.651228,
		-0.484539, -0.857943, 0.170748,
		-0.512483, 0.436594, 0.739423,
		38.192219, 30.535793, 44.300865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884144, 30.024588, 43.729816>,  <38.550957, 30.230179, 43.783268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884144, 30.024588, 43.729816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868763, 30.361210, 43.945339>,  <37.859535, 30.563183, 44.074654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868763, 30.361210, 43.945339>,  <37.884144, 30.024588, 43.729816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868763, 30.361210, 43.945339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644274, 0.391284, -0.657120,
		-0.763827, -0.372402, 0.527147,
		-0.038449, 0.841554, 0.538803,
		37.857227, 30.613676, 44.106979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168640, 30.159237, 43.706650>,  <37.884144, 30.024588, 43.729816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168640, 30.159237, 43.706650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315933, 30.500515, 43.854412>,  <37.404308, 30.705282, 43.943069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315933, 30.500515, 43.854412>,  <37.168640, 30.159237, 43.706650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315933, 30.500515, 43.854412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614812, 0.521509, -0.591636,
		-0.697431, -0.009257, 0.716592,
		0.368233, 0.853195, 0.369408,
		37.426403, 30.756474, 43.965233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577114, 30.610868, 43.968380>,  <37.168640, 30.159237, 43.706650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577114, 30.610868, 43.968380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.871975, 30.866222, 43.879776>,  <37.048893, 31.019434, 43.826614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.871975, 30.866222, 43.879776>,  <36.577114, 30.610868, 43.968380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871975, 30.866222, 43.879776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659745, 0.609092, -0.440163,
		-0.146072, 0.470610, 0.870166,
		0.737156, 0.638383, -0.221512,
		37.093121, 31.057737, 43.813324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288631, 31.272301, 44.136349>,  <36.577114, 30.610868, 43.968380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288631, 31.272301, 44.136349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606804, 31.353563, 43.907959>,  <36.797707, 31.402321, 43.770924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606804, 31.353563, 43.907959>,  <36.288631, 31.272301, 44.136349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606804, 31.353563, 43.907959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575825, 0.547126, -0.607519,
		0.188974, 0.812023, 0.552185,
		0.795434, 0.203157, -0.570975,
		36.845432, 31.414511, 43.736668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200455, 32.066875, 43.965942>,  <36.288631, 31.272301, 44.136349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200455, 32.066875, 43.965942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438076, 31.893303, 43.695000>,  <36.580650, 31.789160, 43.532436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438076, 31.893303, 43.695000>,  <36.200455, 32.066875, 43.965942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438076, 31.893303, 43.695000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527710, 0.425311, -0.735277,
		0.607145, 0.794239, 0.023668,
		0.594052, -0.433930, -0.677353,
		36.616291, 31.763124, 43.491795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462246, 32.547707, 43.515968>,  <36.200455, 32.066875, 43.965942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462246, 32.547707, 43.515968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501591, 32.206326, 43.311249>,  <36.525200, 32.001495, 43.188416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501591, 32.206326, 43.311249>,  <36.462246, 32.547707, 43.515968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501591, 32.206326, 43.311249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404645, 0.435558, -0.804085,
		0.909168, 0.286191, -0.302503,
		0.098364, -0.853454, -0.511801,
		36.531101, 31.950289, 43.157707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788170, 32.699711, 42.848583>,  <36.462246, 32.547707, 43.515968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788170, 32.699711, 42.848583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584183, 32.359695, 42.795872>,  <36.461788, 32.155685, 42.764244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584183, 32.359695, 42.795872>,  <36.788170, 32.699711, 42.848583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584183, 32.359695, 42.795872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367289, 0.353709, -0.860226,
		0.777837, -0.390288, -0.492591,
		-0.509970, -0.850039, -0.131779,
		36.431190, 32.104683, 42.756336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551216, 32.809536, 42.116928>,  <36.788170, 32.699711, 42.848583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551216, 32.809536, 42.116928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334579, 32.492130, 42.227932>,  <36.204597, 32.301689, 42.294537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334579, 32.492130, 42.227932>,  <36.551216, 32.809536, 42.116928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334579, 32.492130, 42.227932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650061, 0.186021, -0.736761,
		0.533006, -0.579426, -0.616580,
		-0.541595, -0.793513, 0.277512,
		36.172100, 32.254078, 42.311184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421864, 32.367321, 41.515583>,  <36.551216, 32.809536, 42.116928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421864, 32.367321, 41.515583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116646, 32.310822, 41.767872>,  <35.933514, 32.276920, 41.919243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116646, 32.310822, 41.767872>,  <36.421864, 32.367321, 41.515583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116646, 32.310822, 41.767872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636528, 0.333635, -0.695356,
		-0.112210, -0.932060, -0.344489,
		-0.763047, -0.141251, 0.630720,
		35.887733, 32.268444, 41.957088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813927, 32.084808, 41.075451>,  <36.421864, 32.367321, 41.515583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813927, 32.084808, 41.075451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637123, 32.181828, 41.420891>,  <35.531040, 32.240040, 41.628155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637123, 32.181828, 41.420891>,  <35.813927, 32.084808, 41.075451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637123, 32.181828, 41.420891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782763, 0.365885, -0.503399,
		-0.438074, -0.898499, 0.028131,
		-0.442011, 0.242547, 0.863596,
		35.504520, 32.254593, 41.679970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172600, 31.743301, 41.014641>,  <35.813927, 32.084808, 41.075451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172600, 31.743301, 41.014641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128212, 32.036148, 41.283470>,  <35.101582, 32.211857, 41.444767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128212, 32.036148, 41.283470>,  <35.172600, 31.743301, 41.014641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128212, 32.036148, 41.283470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892532, 0.224028, -0.391406,
		-0.437120, -0.643283, 0.628580,
		-0.110966, 0.732119, 0.672078,
		35.094921, 32.255783, 41.485092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535744, 31.791780, 41.004868>,  <35.172600, 31.743301, 41.014641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535744, 31.791780, 41.004868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614643, 32.126720, 41.208805>,  <34.661983, 32.327682, 41.331169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614643, 32.126720, 41.208805>,  <34.535744, 31.791780, 41.004868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614643, 32.126720, 41.208805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875286, 0.384656, -0.293110,
		-0.441550, -0.388443, 0.808793,
		0.197250, 0.837348, 0.509844,
		34.673817, 32.377926, 41.361759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971230, 31.925062, 41.458012>,  <34.535744, 31.791780, 41.004868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971230, 31.925062, 41.458012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142708, 32.278423, 41.382313>,  <34.245594, 32.490440, 41.336891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142708, 32.278423, 41.382313>,  <33.971230, 31.925062, 41.458012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142708, 32.278423, 41.382313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888583, 0.374447, -0.264973,
		-0.163214, 0.281758, 0.945502,
		0.428698, 0.883404, -0.189251,
		34.271317, 32.543446, 41.325539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492962, 32.454060, 41.714420>,  <33.971230, 31.925062, 41.458012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492962, 32.454060, 41.714420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708965, 32.626499, 41.425274>,  <33.838570, 32.729965, 41.251785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708965, 32.626499, 41.425274>,  <33.492962, 32.454060, 41.714420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708965, 32.626499, 41.425274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841263, 0.302753, -0.447902,
		0.025759, 0.849995, 0.526162,
		0.540012, 0.431103, -0.722868,
		33.870968, 32.755829, 41.208412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151531, 33.069302, 41.583576>,  <33.492962, 32.454060, 41.714420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151531, 33.069302, 41.583576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388107, 33.044365, 41.262005>,  <33.530052, 33.029404, 41.069061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388107, 33.044365, 41.262005>,  <33.151531, 33.069302, 41.583576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388107, 33.044365, 41.262005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752176, 0.316612, -0.577918,
		0.290563, 0.946505, 0.140366,
		0.591443, -0.062341, -0.803933,
		33.565540, 33.025661, 41.020824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979851, 33.631485, 41.273655>,  <33.151531, 33.069302, 41.583576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979851, 33.631485, 41.273655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178543, 33.467529, 40.967648>,  <33.297760, 33.369156, 40.784042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178543, 33.467529, 40.967648>,  <32.979851, 33.631485, 41.273655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178543, 33.467529, 40.967648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661388, 0.391978, -0.639468,
		0.561980, 0.823616, -0.076388,
		0.496733, -0.409891, -0.765014,
		33.327564, 33.344563, 40.738144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227108, 34.216236, 40.711823>,  <32.979851, 33.631485, 41.273655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227108, 34.216236, 40.711823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172966, 33.844166, 40.575325>,  <33.140480, 33.620922, 40.493427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172966, 33.844166, 40.575325>,  <33.227108, 34.216236, 40.711823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172966, 33.844166, 40.575325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642179, 0.344634, -0.684715,
		0.754511, 0.126461, -0.643988,
		-0.135350, -0.930180, -0.341240,
		33.132362, 33.565113, 40.472954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237713, 34.270828, 39.973705>,  <33.227108, 34.216236, 40.711823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237713, 34.270828, 39.973705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050652, 33.919529, 40.013672>,  <32.938416, 33.708748, 40.037651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050652, 33.919529, 40.013672>,  <33.237713, 34.270828, 39.973705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050652, 33.919529, 40.013672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623760, 0.247804, -0.741294,
		0.626278, -0.408993, -0.663702,
		-0.467652, -0.878247, 0.099919,
		32.910355, 33.656055, 40.043648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170982, 33.957661, 39.275967>,  <33.237713, 34.270828, 39.973705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170982, 33.957661, 39.275967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907150, 33.782990, 39.520676>,  <32.748852, 33.678188, 39.667500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907150, 33.782990, 39.520676>,  <33.170982, 33.957661, 39.275967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907150, 33.782990, 39.520676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751455, 0.400797, -0.524097,
		-0.016333, -0.805403, -0.592503,
		-0.659583, -0.436679, 0.611770,
		32.709274, 33.651985, 39.704208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891621, 34.130424, 39.102402>,  <33.170982, 33.957661, 39.275967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891621, 34.130424, 39.102402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201042, 34.324482, 38.939308>,  <34.386696, 34.440918, 38.841454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201042, 34.324482, 38.939308>,  <33.891621, 34.130424, 39.102402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201042, 34.324482, 38.939308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632048, -0.637452, 0.440648,
		-0.046130, -0.598572, -0.799740,
		0.773555, 0.485146, -0.407732,
		34.433109, 34.470024, 38.816990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308258, 33.607838, 38.926361>,  <33.891621, 34.130424, 39.102402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308258, 33.607838, 38.926361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547302, 33.928486, 38.932800>,  <34.690731, 34.120876, 38.936665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547302, 33.928486, 38.932800>,  <34.308258, 33.607838, 38.926361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547302, 33.928486, 38.932800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689586, -0.524123, 0.499766,
		0.409060, -0.287567, -0.866011,
		0.597613, 0.801623, 0.016095,
		34.726585, 34.168972, 38.937630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016994, 33.440880, 38.630085>,  <34.308258, 33.607838, 38.926361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016994, 33.440880, 38.630085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099754, 33.764111, 38.850704>,  <35.149410, 33.958050, 38.983074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099754, 33.764111, 38.850704>,  <35.016994, 33.440880, 38.630085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099754, 33.764111, 38.850704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849501, -0.428033, 0.308440,
		0.485323, 0.404720, -0.775025,
		0.206904, 0.808077, 0.551545,
		35.161827, 34.006535, 39.016167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861549, 33.571419, 38.539333>,  <35.016994, 33.440880, 38.630085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861549, 33.571419, 38.539333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765247, 33.772671, 38.871334>,  <35.707466, 33.893421, 39.070534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765247, 33.772671, 38.871334>,  <35.861549, 33.571419, 38.539333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765247, 33.772671, 38.871334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879377, -0.248845, 0.405923,
		0.410773, 0.827607, -0.382533,
		-0.240753, 0.503132, 0.829997,
		35.693020, 33.923611, 39.120335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532658, 33.961525, 38.735817>,  <35.861549, 33.571419, 38.539333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532658, 33.961525, 38.735817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301846, 33.911781, 39.058697>,  <36.163357, 33.881935, 39.252422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301846, 33.911781, 39.058697>,  <36.532658, 33.961525, 38.735817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301846, 33.911781, 39.058697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816718, -0.089836, 0.570001,
		0.001630, 0.988162, 0.153406,
		-0.577034, -0.124361, 0.807196,
		36.128735, 33.874474, 39.300858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863110, 34.409153, 39.197311>,  <36.532658, 33.961525, 38.735817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863110, 34.409153, 39.197311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634804, 34.160992, 39.412468>,  <36.497822, 34.012096, 39.541561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634804, 34.160992, 39.412468>,  <36.863110, 34.409153, 39.197311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634804, 34.160992, 39.412468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795598, -0.255815, 0.549165,
		-0.203103, 0.741390, 0.639601,
		-0.570766, -0.620403, 0.537892,
		36.463573, 33.974873, 39.573837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964020, 34.699924, 39.850567>,  <36.863110, 34.409153, 39.197311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964020, 34.699924, 39.850567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829273, 34.324512, 39.880726>,  <36.748425, 34.099266, 39.898823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829273, 34.324512, 39.880726>,  <36.964020, 34.699924, 39.850567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829273, 34.324512, 39.880726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797901, -0.242035, 0.552063,
		-0.499878, 0.246130, 0.830387,
		-0.336862, -0.938530, 0.075399,
		36.728214, 34.042953, 39.903347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200027, 34.485657, 40.547909>,  <36.964020, 34.699924, 39.850567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200027, 34.485657, 40.547909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128983, 34.128159, 40.383144>,  <37.086357, 33.913658, 40.284286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128983, 34.128159, 40.383144>,  <37.200027, 34.485657, 40.547909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128983, 34.128159, 40.383144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814822, -0.368269, 0.447709,
		-0.551833, -0.256117, 0.793652,
		-0.177612, -0.893746, -0.411913,
		37.075699, 33.860035, 40.259571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337811, 33.961739, 41.078217>,  <37.200027, 34.485657, 40.547909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337811, 33.961739, 41.078217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359417, 33.741100, 40.745270>,  <37.372379, 33.608719, 40.545502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359417, 33.741100, 40.745270>,  <37.337811, 33.961739, 41.078217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359417, 33.741100, 40.745270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725784, -0.550817, 0.412115,
		-0.685799, -0.626375, 0.370586,
		0.054013, -0.551593, -0.832363,
		37.375622, 33.575623, 40.495560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282127, 33.249592, 41.317749>,  <37.337811, 33.961739, 41.078217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282127, 33.249592, 41.317749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459957, 33.241730, 40.959538>,  <37.566654, 33.237011, 40.744610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459957, 33.241730, 40.959538>,  <37.282127, 33.249592, 41.317749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459957, 33.241730, 40.959538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751803, -0.535338, 0.384974,
		-0.486977, -0.844409, -0.223219,
		0.444573, -0.019657, -0.895527,
		37.593330, 33.235832, 40.690880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534157, 32.486362, 41.197010>,  <37.282127, 33.249592, 41.317749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534157, 32.486362, 41.197010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749084, 32.737457, 40.971718>,  <37.878040, 32.888115, 40.836540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749084, 32.737457, 40.971718>,  <37.534157, 32.486362, 41.197010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749084, 32.737457, 40.971718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842716, -0.426102, 0.329040,
		-0.033444, -0.651446, -0.757958,
		0.537318, 0.627739, -0.563234,
		37.910278, 32.925777, 40.802746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002430, 32.065735, 40.746780>,  <37.534157, 32.486362, 41.197010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002430, 32.065735, 40.746780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141167, 32.437038, 40.800495>,  <38.224407, 32.659821, 40.832726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141167, 32.437038, 40.800495>,  <38.002430, 32.065735, 40.746780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141167, 32.437038, 40.800495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853112, -0.371719, 0.366094,
		0.389748, -0.012414, -0.920838,
		0.346838, 0.928262, 0.134286,
		38.245216, 32.715519, 40.840782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622051, 32.049473, 40.538086>,  <38.002430, 32.065735, 40.746780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622051, 32.049473, 40.538086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649246, 32.366169, 40.780910>,  <38.665565, 32.556187, 40.926605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649246, 32.366169, 40.780910>,  <38.622051, 32.049473, 40.538086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649246, 32.366169, 40.780910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861711, -0.353264, 0.364223,
		0.502823, 0.498344, -0.706273,
		0.067992, 0.791744, 0.607058,
		38.669643, 32.603691, 40.963028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326797, 32.297634, 40.551388>,  <38.622051, 32.049473, 40.538086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326797, 32.297634, 40.551388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186962, 32.424980, 40.903851>,  <39.103062, 32.501389, 41.115326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186962, 32.424980, 40.903851>,  <39.326797, 32.297634, 40.551388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186962, 32.424980, 40.903851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790944, -0.403833, 0.459703,
		0.502194, 0.857649, -0.110637,
		-0.349584, 0.318368, 0.881154,
		39.082088, 32.520489, 41.168198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957550, 32.335842, 40.971066>,  <39.326797, 32.297634, 40.551388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957550, 32.335842, 40.971066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.652336, 32.318985, 41.229057>,  <39.469208, 32.308868, 41.383854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.652336, 32.318985, 41.229057>,  <39.957550, 32.335842, 40.971066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652336, 32.318985, 41.229057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619435, -0.332669, 0.711078,
		0.184596, 0.942101, 0.279945,
		-0.763036, -0.042145, 0.644980,
		39.423424, 32.306343, 41.422550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169666, 32.690765, 41.563656>,  <39.957550, 32.335842, 40.971066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169666, 32.690765, 41.563656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866249, 32.458889, 41.682697>,  <39.684200, 32.319763, 41.754124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866249, 32.458889, 41.682697>,  <40.169666, 32.690765, 41.563656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866249, 32.458889, 41.682697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577123, -0.385591, 0.719895,
		-0.302564, 0.717826, 0.627041,
		-0.758541, -0.579695, 0.297608,
		39.638687, 32.284981, 41.771980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216743, 32.828720, 42.276031>,  <40.169666, 32.690765, 41.563656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216743, 32.828720, 42.276031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993706, 32.500278, 42.227253>,  <39.859882, 32.303211, 42.197987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993706, 32.500278, 42.227253>,  <40.216743, 32.828720, 42.276031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993706, 32.500278, 42.227253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378441, -0.382190, 0.843038,
		-0.738832, 0.423924, 0.523848,
		-0.557593, -0.821109, -0.121944,
		39.826427, 32.253944, 42.190670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789043, 32.701168, 42.927235>,  <40.216743, 32.828720, 42.276031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789043, 32.701168, 42.927235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828789, 32.340214, 42.759502>,  <39.852634, 32.123642, 42.658863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828789, 32.340214, 42.759502>,  <39.789043, 32.701168, 42.927235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828789, 32.340214, 42.759502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331502, -0.367319, 0.869012,
		-0.938208, -0.225352, 0.262645,
		0.099359, -0.902381, -0.419327,
		39.858597, 32.069500, 42.633705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562347, 32.197407, 43.428661>,  <39.789043, 32.701168, 42.927235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562347, 32.197407, 43.428661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772686, 31.968134, 43.177280>,  <39.898888, 31.830570, 43.026451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772686, 31.968134, 43.177280>,  <39.562347, 32.197407, 43.428661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772686, 31.968134, 43.177280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268196, -0.589432, 0.761998,
		-0.807191, -0.569242, -0.156226,
		0.525845, -0.573179, -0.628453,
		39.930439, 31.796181, 42.988743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364845, 31.493771, 43.664780>,  <39.562347, 32.197407, 43.428661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364845, 31.493771, 43.664780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703316, 31.463200, 43.453823>,  <39.906399, 31.444857, 43.327248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703316, 31.463200, 43.453823>,  <39.364845, 31.493771, 43.664780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703316, 31.463200, 43.453823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370713, -0.626529, 0.685590,
		-0.382824, -0.775642, -0.501823,
		0.846178, -0.076428, -0.527391,
		39.957169, 31.440271, 43.295605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618137, 30.806475, 43.773579>,  <39.364845, 31.493771, 43.664780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618137, 30.806475, 43.773579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951962, 30.994200, 43.658169>,  <40.152256, 31.106834, 43.588921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951962, 30.994200, 43.658169>,  <39.618137, 30.806475, 43.773579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951962, 30.994200, 43.658169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497074, -0.415669, 0.761667,
		0.237526, -0.779081, -0.580185,
		0.834565, 0.469311, -0.288529,
		40.202332, 31.134993, 43.571609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224461, 30.322763, 43.644115>,  <39.618137, 30.806475, 43.773579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224461, 30.322763, 43.644115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363472, 30.683949, 43.745216>,  <40.446880, 30.900660, 43.805878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363472, 30.683949, 43.745216>,  <40.224461, 30.322763, 43.644115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363472, 30.683949, 43.745216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535739, -0.412436, 0.736804,
		0.769550, -0.120651, -0.627085,
		0.347528, 0.902962, 0.252753,
		40.467731, 30.954838, 43.821041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907715, 30.112526, 43.861824>,  <40.224461, 30.322763, 43.644115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907715, 30.112526, 43.861824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857594, 30.485289, 43.997971>,  <40.827518, 30.708946, 44.079659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857594, 30.485289, 43.997971>,  <40.907715, 30.112526, 43.861824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857594, 30.485289, 43.997971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579818, -0.209596, 0.787325,
		0.805052, 0.296006, -0.514073,
		-0.125305, 0.931907, 0.340365,
		40.820004, 30.764860, 44.100079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424553, 30.162252, 44.229759>,  <40.907715, 30.112526, 43.861824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.424553, 30.162252, 44.229759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242493, 30.499022, 44.345695>,  <41.133255, 30.701082, 44.415257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242493, 30.499022, 44.345695>,  <41.424553, 30.162252, 44.229759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242493, 30.499022, 44.345695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450081, -0.063329, 0.890739,
		0.768288, 0.535871, -0.350108,
		-0.455150, 0.841921, 0.289840,
		41.105949, 30.751598, 44.432648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959621, 30.559443, 44.655418>,  <41.424553, 30.162252, 44.229759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959621, 30.559443, 44.655418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.617744, 30.727524, 44.777351>,  <41.412617, 30.828373, 44.850510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.617744, 30.727524, 44.777351>,  <41.959621, 30.559443, 44.655418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617744, 30.727524, 44.777351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309243, -0.059521, 0.949118,
		0.416967, 0.905475, -0.079073,
		-0.854697, 0.420204, 0.304831,
		41.361336, 30.853584, 44.868801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.123417, 31.059315, 45.199585>,  <41.959621, 30.559443, 44.655418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.123417, 31.059315, 45.199585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734421, 30.978746, 45.246384>,  <41.501022, 30.930407, 45.274464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734421, 30.978746, 45.246384>,  <42.123417, 31.059315, 45.199585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.734421, 30.978746, 45.246384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116115, 0.016242, 0.993103,
		-0.201930, 0.979370, 0.007593,
		-0.972492, -0.201419, 0.116999,
		41.442673, 30.918322, 45.281483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858376, 31.650341, 45.539883>,  <42.123417, 31.059315, 45.199585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858376, 31.650341, 45.539883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.649300, 31.319342, 45.621895>,  <41.523853, 31.120741, 45.671101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.649300, 31.319342, 45.621895>,  <41.858376, 31.650341, 45.539883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.649300, 31.319342, 45.621895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136564, 0.156122, 0.978252,
		-0.841514, 0.539322, 0.031404,
		-0.522690, -0.827501, 0.205031,
		41.492493, 31.071091, 45.683403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463486, 31.867800, 46.029972>,  <41.858376, 31.650341, 45.539883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463486, 31.867800, 46.029972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497627, 31.470522, 46.061676>,  <41.518112, 31.232155, 46.080700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497627, 31.470522, 46.061676>,  <41.463486, 31.867800, 46.029972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497627, 31.470522, 46.061676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211803, 0.095820, 0.972604,
		-0.973578, -0.066228, 0.218540,
		0.085354, -0.993193, 0.079261,
		41.523235, 31.172564, 46.085453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262424, 31.704870, 46.662804>,  <41.463486, 31.867800, 46.029972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.262424, 31.704870, 46.662804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423351, 31.344782, 46.596180>,  <41.519909, 31.128729, 46.556206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423351, 31.344782, 46.596180>,  <41.262424, 31.704870, 46.662804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423351, 31.344782, 46.596180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150488, -0.114433, 0.981967,
		-0.903047, -0.420128, 0.089434,
		0.402318, -0.900221, -0.166563,
		41.544048, 31.074717, 46.546211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976635, 31.224228, 47.141964>,  <41.262424, 31.704870, 46.662804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976635, 31.224228, 47.141964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.324799, 31.062363, 47.029793>,  <41.533695, 30.965244, 46.962490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.324799, 31.062363, 47.029793>,  <40.976635, 31.224228, 47.141964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.324799, 31.062363, 47.029793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270896, -0.081980, 0.959112,
		-0.411105, -0.910785, 0.038265,
		0.870407, -0.404661, -0.280430,
		41.585922, 30.940964, 46.945663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081566, 30.652306, 47.512726>,  <40.976635, 31.224228, 47.141964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081566, 30.652306, 47.512726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456192, 30.734488, 47.399139>,  <41.680965, 30.783796, 47.330986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456192, 30.734488, 47.399139>,  <41.081566, 30.652306, 47.512726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456192, 30.734488, 47.399139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339650, -0.331999, 0.880009,
		0.086525, -0.920633, -0.380720,
		0.936564, 0.205454, -0.283967,
		41.737160, 30.796124, 47.313950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462139, 30.255993, 48.053627>,  <41.081566, 30.652306, 47.512726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.462139, 30.255993, 48.053627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.756222, 30.448717, 47.862911>,  <41.932671, 30.564352, 47.748482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.756222, 30.448717, 47.862911>,  <41.462139, 30.255993, 48.053627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.756222, 30.448717, 47.862911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626168, -0.213379, 0.749922,
		0.259583, -0.849899, -0.458571,
		0.735208, 0.481810, -0.476790,
		41.976784, 30.593260, 47.719875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048210, 29.851072, 48.175278>,  <41.462139, 30.255993, 48.053627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048210, 29.851072, 48.175278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.162624, 30.227596, 48.103588>,  <42.231274, 30.453510, 48.060574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.162624, 30.227596, 48.103588>,  <42.048210, 29.851072, 48.175278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.162624, 30.227596, 48.103588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574238, -0.018656, 0.818476,
		0.767095, -0.337031, -0.545871,
		0.286036, 0.941309, -0.179224,
		42.248436, 30.509989, 48.049820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747204, 29.847599, 48.184139>,  <42.048210, 29.851072, 48.175278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.747204, 29.847599, 48.184139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.668949, 30.231651, 48.264019>,  <42.621998, 30.462082, 48.311947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.668949, 30.231651, 48.264019>,  <42.747204, 29.847599, 48.184139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.668949, 30.231651, 48.264019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672113, -0.017020, 0.740253,
		0.714136, 0.279041, -0.641985,
		-0.195634, 0.960128, 0.199702,
		42.610260, 30.519690, 48.323929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.413826, 30.182364, 48.333221>,  <42.747204, 29.847599, 48.184139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.413826, 30.182364, 48.333221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.151760, 30.432261, 48.503143>,  <42.994522, 30.582199, 48.605099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.151760, 30.432261, 48.503143>,  <43.413826, 30.182364, 48.333221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.151760, 30.432261, 48.503143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606081, 0.098940, 0.789225,
		0.451031, 0.774539, -0.443465,
		-0.655162, 0.624741, 0.424809,
		42.955212, 30.619682, 48.630585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.907822, 30.664419, 48.646770>,  <43.413826, 30.182364, 48.333221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.907822, 30.664419, 48.646770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550816, 30.721724, 48.817833>,  <43.336613, 30.756107, 48.920471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550816, 30.721724, 48.817833>,  <43.907822, 30.664419, 48.646770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550816, 30.721724, 48.817833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450272, 0.228660, 0.863116,
		0.025864, 0.962907, -0.268589,
		-0.892517, 0.143262, 0.427656,
		43.283062, 30.764702, 48.946129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.898300, 31.249601, 48.975075>,  <43.907822, 30.664419, 48.646770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.898300, 31.249601, 48.975075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.596924, 31.081820, 49.177616>,  <43.416100, 30.981150, 49.299141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.596924, 31.081820, 49.177616>,  <43.898300, 31.249601, 48.975075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.596924, 31.081820, 49.177616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408464, 0.304884, 0.860350,
		-0.515256, 0.855046, -0.058379,
		-0.753438, -0.419455, 0.506349,
		43.370892, 30.955984, 49.329521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.597836, 31.856543, 49.444576>,  <43.898300, 31.249601, 48.975075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.597836, 31.856543, 49.444576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.537624, 31.482605, 49.573204>,  <43.501499, 31.258242, 49.650383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.537624, 31.482605, 49.573204>,  <43.597836, 31.856543, 49.444576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.537624, 31.482605, 49.573204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337116, 0.257246, 0.905637,
		-0.929352, 0.244729, 0.276428,
		-0.150525, -0.934844, 0.321574,
		43.492466, 31.202152, 49.669678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.258675, 32.160522, 49.861160>,  <43.597836, 31.856543, 49.444576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.258675, 32.160522, 49.861160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.361782, 32.544468, 49.905369>,  <44.423645, 32.774837, 49.931892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.361782, 32.544468, 49.905369>,  <44.258675, 32.160522, 49.861160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.361782, 32.544468, 49.905369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847980, 0.279569, -0.450302,
		-0.463126, 0.022356, 0.886010,
		0.257768, 0.959865, 0.110518,
		44.439114, 32.832428, 49.938526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.674095, 32.450123, 50.084820>,  <44.258675, 32.160522, 49.861160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.674095, 32.450123, 50.084820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.884212, 32.743889, 49.912914>,  <44.010284, 32.920151, 49.809772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.884212, 32.743889, 49.912914>,  <43.674095, 32.450123, 50.084820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.884212, 32.743889, 49.912914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735643, 0.138117, -0.663139,
		-0.427663, 0.664497, 0.612820,
		0.525295, 0.734417, -0.429765,
		44.041801, 32.964214, 49.783985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.258278, 33.061539, 50.014072>,  <43.674095, 32.450123, 50.084820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.258278, 33.061539, 50.014072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.547413, 33.150177, 49.752262>,  <43.720894, 33.203362, 49.595177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.547413, 33.150177, 49.752262>,  <43.258278, 33.061539, 50.014072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.547413, 33.150177, 49.752262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665231, 0.479502, -0.572316,
		0.187020, 0.849101, 0.494016,
		0.722836, 0.221600, -0.654524,
		43.764263, 33.216656, 49.555904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.935699, 33.671757, 49.650398>,  <43.258278, 33.061539, 50.014072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.935699, 33.671757, 49.650398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.243244, 33.542213, 49.429867>,  <43.427773, 33.464485, 49.297546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.243244, 33.542213, 49.429867>,  <42.935699, 33.671757, 49.650398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.243244, 33.542213, 49.429867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475393, 0.287100, -0.831610,
		0.427613, 0.901492, 0.066779,
		0.768862, -0.323861, -0.551331,
		43.473904, 33.445057, 49.264469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005676, 34.190819, 49.205631>,  <42.935699, 33.671757, 49.650398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005676, 34.190819, 49.205631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.218700, 33.894310, 49.042221>,  <43.346516, 33.716404, 48.944176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.218700, 33.894310, 49.042221>,  <43.005676, 34.190819, 49.205631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.218700, 33.894310, 49.042221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449010, 0.161721, -0.878770,
		0.717476, 0.651430, -0.246713,
		0.532559, -0.741272, -0.408530,
		43.378468, 33.671928, 48.919662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500275, 34.452492, 48.538574>,  <43.005676, 34.190819, 49.205631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500275, 34.452492, 48.538574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.408031, 34.063339, 48.531303>,  <43.352684, 33.829849, 48.526939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.408031, 34.063339, 48.531303>,  <43.500275, 34.452492, 48.538574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.408031, 34.063339, 48.531303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436599, 0.120148, -0.891597,
		0.869598, -0.197673, -0.452465,
		-0.230607, -0.972877, -0.018177,
		43.338848, 33.771477, 48.525848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.741879, 34.233212, 47.859512>,  <43.500275, 34.452492, 48.538574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.741879, 34.233212, 47.859512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.465096, 33.970570, 47.979557>,  <43.299026, 33.812984, 48.051586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.465096, 33.970570, 47.979557>,  <43.741879, 34.233212, 47.859512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.465096, 33.970570, 47.979557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444185, 0.059499, -0.893957,
		0.569117, -0.751888, -0.332823,
		-0.691958, -0.656601, 0.300116,
		43.257507, 33.773590, 48.069592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.621502, 33.733231, 47.247612>,  <43.741879, 34.233212, 47.859512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.621502, 33.733231, 47.247612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.296913, 33.677258, 47.474567>,  <43.102158, 33.643673, 47.610741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.296913, 33.677258, 47.474567>,  <43.621502, 33.733231, 47.247612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.296913, 33.677258, 47.474567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538715, -0.197168, -0.819091,
		0.226487, -0.970332, 0.084614,
		-0.811474, -0.139930, 0.567388,
		43.053471, 33.635277, 47.644783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.287132, 33.128571, 46.972115>,  <43.621502, 33.733231, 47.247612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.287132, 33.128571, 46.972115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.016106, 33.329876, 47.186638>,  <42.853489, 33.450661, 47.315353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.016106, 33.329876, 47.186638>,  <43.287132, 33.128571, 46.972115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.016106, 33.329876, 47.186638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619331, 0.002851, -0.785125,
		-0.396656, -0.864126, 0.309757,
		-0.677564, 0.503267, 0.536312,
		42.812836, 33.480854, 47.347530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618607, 32.821739, 46.899857>,  <43.287132, 33.128571, 46.972115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618607, 32.821739, 46.899857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515358, 33.189545, 47.018421>,  <42.453407, 33.410229, 47.089561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515358, 33.189545, 47.018421>,  <42.618607, 32.821739, 46.899857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515358, 33.189545, 47.018421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601010, 0.087384, -0.794450,
		-0.756413, -0.383211, 0.530084,
		-0.258121, 0.919518, 0.296412,
		42.437920, 33.465401, 47.107346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926105, 32.856617, 46.774387>,  <42.618607, 32.821739, 46.899857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.926105, 32.856617, 46.774387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.031799, 33.241940, 46.793240>,  <42.095215, 33.473133, 46.804550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.031799, 33.241940, 46.793240>,  <41.926105, 32.856617, 46.774387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031799, 33.241940, 46.793240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550091, 0.190665, -0.813048,
		-0.792199, 0.188912, 0.580286,
		0.264235, 0.963306, 0.047126,
		42.111069, 33.530930, 46.807377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303123, 33.179485, 46.595196>,  <41.926105, 32.856617, 46.774387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.303123, 33.179485, 46.595196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572590, 33.467030, 46.526608>,  <41.734272, 33.639557, 46.485455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572590, 33.467030, 46.526608>,  <41.303123, 33.179485, 46.595196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572590, 33.467030, 46.526608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494153, 0.265631, -0.827800,
		-0.549528, 0.642397, 0.534177,
		0.673670, 0.718865, -0.171471,
		41.774693, 33.682690, 46.475166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931896, 33.820724, 46.550289>,  <41.303123, 33.179485, 46.595196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931896, 33.820724, 46.550289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278416, 33.881519, 46.359951>,  <41.486328, 33.917995, 46.245747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278416, 33.881519, 46.359951>,  <40.931896, 33.820724, 46.550289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278416, 33.881519, 46.359951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498629, 0.205987, -0.841985,
		-0.029951, 0.966680, 0.254231,
		0.866298, 0.151985, -0.475845,
		41.538303, 33.927116, 46.217197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963821, 34.563595, 46.273178>,  <40.931896, 33.820724, 46.550289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963821, 34.563595, 46.273178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189056, 34.314346, 46.056049>,  <41.324196, 34.164799, 45.925770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189056, 34.314346, 46.056049>,  <40.963821, 34.563595, 46.273178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.189056, 34.314346, 46.056049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451397, 0.318296, -0.833624,
		0.692227, 0.714428, -0.102047,
		0.563083, -0.623121, -0.542824,
		41.357983, 34.127411, 45.893204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058933, 34.997570, 45.675930>,  <40.963821, 34.563595, 46.273178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058933, 34.997570, 45.675930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198921, 34.649460, 45.537289>,  <41.282913, 34.440594, 45.454105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198921, 34.649460, 45.537289>,  <41.058933, 34.997570, 45.675930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198921, 34.649460, 45.537289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195460, 0.294018, -0.935601,
		0.916142, 0.395180, -0.067207,
		0.349970, -0.870279, -0.346604,
		41.303913, 34.388374, 45.433308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638935, 35.078197, 45.167583>,  <41.058933, 34.997570, 45.675930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.638935, 35.078197, 45.167583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.426083, 34.742287, 45.124466>,  <41.298370, 34.540741, 45.098595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.426083, 34.742287, 45.124466>,  <41.638935, 35.078197, 45.167583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426083, 34.742287, 45.124466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381689, 0.351588, -0.854810,
		0.755746, -0.413724, -0.507622,
		-0.532129, -0.839773, -0.107797,
		41.266445, 34.490356, 45.092125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683773, 35.005764, 44.504105>,  <41.638935, 35.078197, 45.167583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683773, 35.005764, 44.504105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381504, 34.755844, 44.582672>,  <41.200142, 34.605892, 44.629814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381504, 34.755844, 44.582672>,  <41.683773, 35.005764, 44.504105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.381504, 34.755844, 44.582672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442019, 0.265214, -0.856902,
		0.483301, -0.734359, -0.476590,
		-0.755672, -0.624803, 0.196422,
		41.154804, 34.568405, 44.641598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383358, 34.891487, 43.901318>,  <41.683773, 35.005764, 44.504105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383358, 34.891487, 43.901318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099949, 34.695469, 44.104431>,  <40.929905, 34.577858, 44.226299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099949, 34.695469, 44.104431>,  <41.383358, 34.891487, 43.901318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099949, 34.695469, 44.104431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623337, 0.097271, -0.775880,
		0.330825, -0.866251, -0.374384,
		-0.708524, -0.490048, 0.507787,
		40.887390, 34.548454, 44.256767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210976, 34.386436, 43.437702>,  <41.383358, 34.891487, 43.901318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210976, 34.386436, 43.437702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.906010, 34.462006, 43.685257>,  <40.723030, 34.507347, 43.833790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.906010, 34.462006, 43.685257>,  <41.210976, 34.386436, 43.437702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.906010, 34.462006, 43.685257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624662, 0.034708, -0.780124,
		-0.168863, -0.981379, 0.091550,
		-0.762419, 0.188922, 0.618891,
		40.677284, 34.518681, 43.870926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613880, 34.008030, 43.233959>,  <41.210976, 34.386436, 43.437702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613880, 34.008030, 43.233959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462505, 34.300583, 43.460892>,  <40.371681, 34.476116, 43.597050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462505, 34.300583, 43.460892>,  <40.613880, 34.008030, 43.233959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462505, 34.300583, 43.460892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754962, 0.110733, -0.646352,
		-0.535554, -0.672915, 0.510262,
		-0.378437, 0.731385, 0.567329,
		40.348976, 34.519997, 43.631092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961182, 33.762550, 43.172413>,  <40.613880, 34.008030, 43.233959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961182, 33.762550, 43.172413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958698, 34.146816, 43.283470>,  <39.957207, 34.377377, 43.350105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958698, 34.146816, 43.283470>,  <39.961182, 33.762550, 43.172413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958698, 34.146816, 43.283470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690762, 0.196634, -0.695832,
		-0.723055, -0.196106, 0.662370,
		-0.006213, 0.960665, 0.277640,
		39.956833, 34.435017, 43.366760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336655, 33.886341, 42.962067>,  <39.961182, 33.762550, 43.172413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336655, 33.886341, 42.962067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509411, 34.242294, 43.020840>,  <39.613064, 34.455864, 43.056103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509411, 34.242294, 43.020840>,  <39.336655, 33.886341, 42.962067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509411, 34.242294, 43.020840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550809, 0.389231, -0.738314,
		-0.714200, 0.237938, 0.658258,
		0.431888, 0.889879, 0.146931,
		39.638977, 34.509258, 43.064919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799648, 34.258896, 43.162712>,  <39.336655, 33.886341, 42.962067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799648, 34.258896, 43.162712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095760, 34.465050, 42.990028>,  <39.273426, 34.588741, 42.886417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095760, 34.465050, 42.990028>,  <38.799648, 34.258896, 43.162712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095760, 34.465050, 42.990028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609739, 0.244179, -0.754053,
		-0.283211, 0.821437, 0.495008,
		0.740277, 0.515382, -0.431708,
		39.317844, 34.619663, 42.860516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544609, 34.870651, 42.969753>,  <38.799648, 34.258896, 43.162712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544609, 34.870651, 42.969753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876293, 34.837791, 42.748608>,  <39.075306, 34.818073, 42.615921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876293, 34.837791, 42.748608>,  <38.544609, 34.870651, 42.969753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876293, 34.837791, 42.748608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495883, 0.348250, -0.795501,
		0.257887, 0.933795, 0.248035,
		0.829213, -0.082153, -0.552862,
		39.125057, 34.813145, 42.582748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557232, 35.545570, 42.589310>,  <38.544609, 34.870651, 42.969753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557232, 35.545570, 42.589310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785545, 35.281719, 42.393723>,  <38.922535, 35.123409, 42.276371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785545, 35.281719, 42.393723>,  <38.557232, 35.545570, 42.589310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785545, 35.281719, 42.393723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304365, 0.383108, -0.872118,
		0.762604, 0.646618, 0.017905,
		0.570787, -0.659631, -0.488968,
		38.956783, 35.083832, 42.247032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609409, 35.935944, 42.034584>,  <38.557232, 35.545570, 42.589310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609409, 35.935944, 42.034584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787220, 35.591885, 41.934555>,  <38.893906, 35.385448, 41.874538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787220, 35.591885, 41.934555>,  <38.609409, 35.935944, 42.034584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787220, 35.591885, 41.934555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091218, 0.234257, -0.967886,
		0.891108, 0.453065, 0.025673,
		0.444529, -0.860149, -0.250076,
		38.920578, 35.333839, 41.859531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244205, 36.050816, 41.668564>,  <38.609409, 35.935944, 42.034584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244205, 36.050816, 41.668564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068619, 35.702206, 41.581161>,  <38.963268, 35.493038, 41.528721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068619, 35.702206, 41.581161>,  <39.244205, 36.050816, 41.668564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068619, 35.702206, 41.581161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017612, 0.251487, -0.967700,
		0.898330, -0.420941, -0.125745,
		-0.438968, -0.871529, -0.218505,
		38.936928, 35.440746, 41.515610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527237, 35.838940, 41.029648>,  <39.244205, 36.050816, 41.668564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527237, 35.838940, 41.029648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179028, 35.645679, 41.067062>,  <38.970100, 35.529724, 41.089508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179028, 35.645679, 41.067062>,  <39.527237, 35.838940, 41.029648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179028, 35.645679, 41.067062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159117, 0.096486, -0.982534,
		0.465687, -0.870205, -0.160871,
		-0.870527, -0.483151, 0.093532,
		38.917870, 35.500732, 41.095123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486847, 35.392464, 40.312862>,  <39.527237, 35.838940, 41.029648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486847, 35.392464, 40.312862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120655, 35.429356, 40.469521>,  <38.900940, 35.451492, 40.563515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120655, 35.429356, 40.469521>,  <39.486847, 35.392464, 40.312862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120655, 35.429356, 40.469521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397356, -0.054271, -0.916058,
		-0.063296, -0.994251, 0.086359,
		-0.915479, 0.092298, 0.391637,
		38.846008, 35.457024, 40.587013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997520, 34.924118, 39.949436>,  <39.486847, 35.392464, 40.312862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997520, 34.924118, 39.949436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753784, 35.198212, 40.109013>,  <38.607540, 35.362667, 40.204758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753784, 35.198212, 40.109013>,  <38.997520, 34.924118, 39.949436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753784, 35.198212, 40.109013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356668, 0.212479, -0.909747,
		-0.708159, -0.696636, 0.114930,
		-0.609342, 0.685238, 0.398937,
		38.570980, 35.403782, 40.228695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325603, 34.703053, 39.747288>,  <38.997520, 34.924118, 39.949436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325603, 34.703053, 39.747288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.339607, 35.096264, 39.819317>,  <38.348011, 35.332191, 39.862534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.339607, 35.096264, 39.819317>,  <38.325603, 34.703053, 39.747288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339607, 35.096264, 39.819317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074791, 0.182257, -0.980402,
		-0.996584, 0.020860, 0.079904,
		0.035014, 0.983030, 0.180074,
		38.350113, 35.391174, 39.873341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786175, 34.918049, 39.397976>,  <38.325603, 34.703053, 39.747288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786175, 34.918049, 39.397976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993332, 35.249058, 39.484692>,  <38.117626, 35.447662, 39.536720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993332, 35.249058, 39.484692>,  <37.786175, 34.918049, 39.397976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993332, 35.249058, 39.484692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205725, 0.366465, -0.907403,
		-0.830342, 0.425336, 0.360031,
		0.517890, 0.827522, 0.216789,
		38.148701, 35.497314, 39.549728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453907, 35.458996, 39.047073>,  <37.786175, 34.918049, 39.397976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453907, 35.458996, 39.047073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816601, 35.611675, 39.118782>,  <38.034218, 35.703281, 39.161808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816601, 35.611675, 39.118782>,  <37.453907, 35.458996, 39.047073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816601, 35.611675, 39.118782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017624, 0.390446, -0.920457,
		-0.421334, 0.837769, 0.347304,
		0.906734, 0.381699, 0.179273,
		38.088619, 35.726185, 39.172565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439270, 36.217552, 38.859745>,  <37.453907, 35.458996, 39.047073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439270, 36.217552, 38.859745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822224, 36.103306, 38.842587>,  <38.051994, 36.034760, 38.832291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822224, 36.103306, 38.842587>,  <37.439270, 36.217552, 38.859745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822224, 36.103306, 38.842587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114662, 0.512189, -0.851185,
		0.265078, 0.809993, 0.523111,
		0.957385, -0.285612, -0.042895,
		38.109440, 36.017624, 38.829720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818066, 36.620178, 38.429283>,  <37.439270, 36.217552, 38.859745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818066, 36.620178, 38.429283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110493, 36.347336, 38.435741>,  <38.285950, 36.183628, 38.439617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110493, 36.347336, 38.435741>,  <37.818066, 36.620178, 38.429283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110493, 36.347336, 38.435741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337125, 0.340550, -0.877709,
		0.593196, 0.647111, 0.478922,
		0.731072, -0.682110, 0.016144,
		38.329815, 36.142704, 38.440586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432060, 37.025925, 38.370617>,  <37.818066, 36.620178, 38.429283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432060, 37.025925, 38.370617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554279, 36.660282, 38.263992>,  <38.627609, 36.440895, 38.200020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554279, 36.660282, 38.263992>,  <38.432060, 37.025925, 38.370617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554279, 36.660282, 38.263992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360585, 0.370179, -0.856123,
		0.881260, 0.165469, 0.442720,
		0.305547, -0.914105, -0.266558,
		38.645943, 36.386051, 38.184025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129025, 37.115681, 38.155113>,  <38.432060, 37.025925, 38.370617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129025, 37.115681, 38.155113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982208, 36.781281, 37.991955>,  <38.894119, 36.580639, 37.894062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982208, 36.781281, 37.991955>,  <39.129025, 37.115681, 38.155113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982208, 36.781281, 37.991955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021445, 0.445988, -0.894782,
		0.929956, -0.319678, -0.181626,
		-0.367045, -0.836003, -0.407894,
		38.872093, 36.530479, 37.869587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569122, 37.001842, 37.564423>,  <39.129025, 37.115681, 38.155113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569122, 37.001842, 37.564423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248093, 36.776680, 37.485420>,  <39.055473, 36.641582, 37.438019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248093, 36.776680, 37.485420>,  <39.569122, 37.001842, 37.564423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248093, 36.776680, 37.485420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062193, 0.250323, -0.966163,
		0.593298, -0.787703, -0.165895,
		-0.802577, -0.562905, -0.197506,
		39.007320, 36.607807, 37.426170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782261, 36.610455, 36.978649>,  <39.569122, 37.001842, 37.564423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782261, 36.610455, 36.978649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382359, 36.601582, 36.978859>,  <39.142418, 36.596260, 36.978985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382359, 36.601582, 36.978859>,  <39.782261, 36.610455, 36.978649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382359, 36.601582, 36.978859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008274, 0.350591, -0.936492,
		0.020586, -0.936266, -0.350688,
		-0.999754, -0.022180, 0.000529,
		39.082432, 36.594929, 36.979019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562973, 36.061554, 36.545345>,  <39.782261, 36.610455, 36.978649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562973, 36.061554, 36.545345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290775, 36.354244, 36.560848>,  <39.127457, 36.529858, 36.570148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290775, 36.354244, 36.560848>,  <39.562973, 36.061554, 36.545345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290775, 36.354244, 36.560848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216721, 0.251512, -0.943278,
		-0.699967, -0.633500, -0.329733,
		-0.680498, 0.731724, 0.038758,
		39.086624, 36.573761, 36.572475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169079, 36.055164, 35.888802>,  <39.562973, 36.061554, 36.545345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169079, 36.055164, 35.888802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182156, 36.404385, 36.083416>,  <39.190002, 36.613918, 36.200184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182156, 36.404385, 36.083416>,  <39.169079, 36.055164, 35.888802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182156, 36.404385, 36.083416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468304, 0.416671, -0.779151,
		-0.882962, 0.253318, -0.395231,
		0.032691, 0.873049, 0.486535,
		39.191963, 36.666298, 36.229378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037643, 36.593002, 35.411434>,  <39.169079, 36.055164, 35.888802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037643, 36.593002, 35.411434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249916, 36.735874, 35.718887>,  <39.377281, 36.821598, 35.903358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249916, 36.735874, 35.718887>,  <39.037643, 36.593002, 35.411434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249916, 36.735874, 35.718887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708020, 0.311705, -0.633678,
		-0.465924, 0.880490, -0.087473,
		0.530682, 0.357179, 0.768635,
		39.409122, 36.843029, 35.949478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150024, 37.186302, 35.203133>,  <39.037643, 36.593002, 35.411434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150024, 37.186302, 35.203133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433517, 37.110435, 35.474934>,  <39.603615, 37.064915, 35.638012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433517, 37.110435, 35.474934>,  <39.150024, 37.186302, 35.203133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433517, 37.110435, 35.474934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695087, 0.352403, -0.626631,
		-0.120610, 0.916428, 0.381593,
		0.708737, -0.189663, 0.679500,
		39.646137, 37.053535, 35.678783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566036, 37.760826, 35.146076>,  <39.150024, 37.186302, 35.203133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566036, 37.760826, 35.146076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806946, 37.494637, 35.322445>,  <39.951492, 37.334923, 35.428268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806946, 37.494637, 35.322445>,  <39.566036, 37.760826, 35.146076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806946, 37.494637, 35.322445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745091, 0.270348, -0.609714,
		0.286545, 0.695742, 0.658661,
		0.602271, -0.665473, 0.440924,
		39.987629, 37.294994, 35.454723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157898, 38.096573, 35.439491>,  <39.566036, 37.760826, 35.146076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157898, 38.096573, 35.439491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255936, 37.724506, 35.330147>,  <40.314758, 37.501266, 35.264542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255936, 37.724506, 35.330147>,  <40.157898, 38.096573, 35.439491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255936, 37.724506, 35.330147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928116, 0.306616, -0.211158,
		0.280227, -0.201954, 0.938450,
		0.245099, -0.930162, -0.273359,
		40.329464, 37.445457, 35.248138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817436, 37.848251, 35.759762>,  <40.157898, 38.096573, 35.439491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817436, 37.848251, 35.759762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764629, 37.691959, 35.395367>,  <40.732944, 37.598183, 35.176731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764629, 37.691959, 35.395367>,  <40.817436, 37.848251, 35.759762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764629, 37.691959, 35.395367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951775, 0.206795, -0.226627,
		0.276938, -0.896975, 0.344588,
		-0.132019, -0.390732, -0.910988,
		40.725025, 37.574741, 35.122070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399055, 37.514221, 35.646564>,  <40.817436, 37.848251, 35.759762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399055, 37.514221, 35.646564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269638, 37.577518, 35.273411>,  <41.191986, 37.615498, 35.049519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269638, 37.577518, 35.273411>,  <41.399055, 37.514221, 35.646564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269638, 37.577518, 35.273411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945781, 0.083834, -0.313799,
		0.028551, -0.983835, -0.176789,
		-0.323547, 0.158245, -0.932886,
		41.172573, 37.624992, 34.993546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845203, 38.148754, 35.421753>,  <41.399055, 37.514221, 35.646564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845203, 38.148754, 35.421753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239380, 38.090008, 35.387505>,  <42.475887, 38.054760, 35.366955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239380, 38.090008, 35.387505>,  <41.845203, 38.148754, 35.421753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239380, 38.090008, 35.387505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088870, -0.015674, -0.995920,
		0.144925, 0.989032, -0.028498,
		0.985444, -0.146866, -0.085624,
		42.535011, 38.045948, 35.361816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083622, 38.645912, 34.913528>,  <41.845203, 38.148754, 35.421753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083622, 38.645912, 34.913528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.352455, 38.350258, 34.931305>,  <42.513756, 38.172863, 34.941971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.352455, 38.350258, 34.931305>,  <42.083622, 38.645912, 34.913528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352455, 38.350258, 34.931305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072429, -0.125349, -0.989465,
		0.736924, 0.661785, -0.137780,
		0.672084, -0.739140, 0.044440,
		42.554081, 38.128517, 34.944637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.628246, 38.784615, 34.405201>,  <42.083622, 38.645912, 34.913528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.628246, 38.784615, 34.405201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.667614, 38.391754, 34.469318>,  <42.691235, 38.156036, 34.507790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.667614, 38.391754, 34.469318>,  <42.628246, 38.784615, 34.405201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.667614, 38.391754, 34.469318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118801, -0.148325, -0.981777,
		0.988028, 0.115666, 0.102083,
		0.098417, -0.982151, 0.160291,
		42.697140, 38.097107, 34.517406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.120502, 38.628399, 33.920654>,  <42.628246, 38.784615, 34.405201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.120502, 38.628399, 33.920654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.960457, 38.277348, 34.026241>,  <42.864429, 38.066719, 34.089592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.960457, 38.277348, 34.026241>,  <43.120502, 38.628399, 33.920654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.960457, 38.277348, 34.026241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039286, -0.304188, -0.951802,
		0.915622, -0.370461, 0.156189,
		-0.400116, -0.877626, 0.263967,
		42.840424, 38.014061, 34.105431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.556061, 38.033901, 33.660069>,  <43.120502, 38.628399, 33.920654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.556061, 38.033901, 33.660069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.192993, 37.887199, 33.741676>,  <42.975151, 37.799179, 33.790642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.192993, 37.887199, 33.741676>,  <43.556061, 38.033901, 33.660069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.192993, 37.887199, 33.741676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060958, -0.365763, -0.928710,
		0.415234, -0.855398, 0.309635,
		-0.907670, -0.366758, 0.204020,
		42.920692, 37.777172, 33.802883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580166, 37.325085, 33.601929>,  <43.556061, 38.033901, 33.660069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.580166, 37.325085, 33.601929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.203064, 37.444664, 33.542812>,  <42.976803, 37.516411, 33.507343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.203064, 37.444664, 33.542812>,  <43.580166, 37.325085, 33.601929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.203064, 37.444664, 33.542812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008312, -0.464099, -0.885744,
		-0.333375, -0.833814, 0.440017,
		-0.942757, 0.298943, -0.147789,
		42.920238, 37.534348, 33.498474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.388447, 36.840633, 33.176575>,  <43.580166, 37.325085, 33.601929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.388447, 36.840633, 33.176575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.086864, 37.098503, 33.126072>,  <42.905914, 37.253223, 33.095768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.086864, 37.098503, 33.126072>,  <43.388447, 36.840633, 33.176575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.086864, 37.098503, 33.126072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002418, -0.194923, -0.980816,
		-0.656920, -0.739187, 0.148522,
		-0.753957, 0.644676, -0.126262,
		42.860676, 37.291904, 33.088192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898914, 36.551960, 32.676762>,  <43.388447, 36.840633, 33.176575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898914, 36.551960, 32.676762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.819302, 36.943645, 32.692413>,  <42.771534, 37.178658, 32.701805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.819302, 36.943645, 32.692413>,  <42.898914, 36.551960, 32.676762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.819302, 36.943645, 32.692413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199208, -0.001329, -0.979956,
		-0.959532, -0.202842, 0.195331,
		-0.199036, 0.979211, 0.039132,
		42.759590, 37.237408, 32.704151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204945, 36.660221, 32.330364>,  <42.898914, 36.551960, 32.676762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204945, 36.660221, 32.330364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.454033, 36.970627, 32.290329>,  <42.603485, 37.156872, 32.266308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.454033, 36.970627, 32.290329>,  <42.204945, 36.660221, 32.330364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.454033, 36.970627, 32.290329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019944, -0.143619, -0.989432,
		-0.782191, 0.614143, -0.104911,
		0.622720, 0.776017, -0.100089,
		42.640850, 37.203430, 32.260303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874416, 36.955963, 31.717506>,  <42.204945, 36.660221, 32.330364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874416, 36.955963, 31.717506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218803, 37.151928, 31.772242>,  <42.425434, 37.269508, 31.805082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218803, 37.151928, 31.772242>,  <41.874416, 36.955963, 31.717506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.218803, 37.151928, 31.772242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156914, 0.000090, -0.987612,
		-0.483855, 0.871772, -0.076796,
		0.860966, 0.489912, 0.136836,
		42.477093, 37.298901, 31.813292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861046, 37.508404, 31.187983>,  <41.874416, 36.955963, 31.717506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861046, 37.508404, 31.187983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.237144, 37.447811, 31.309961>,  <42.462803, 37.411457, 31.383148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.237144, 37.447811, 31.309961>,  <41.861046, 37.508404, 31.187983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.237144, 37.447811, 31.309961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307449, -0.007183, -0.951537,
		0.146330, 0.988434, 0.039819,
		0.940246, -0.151481, 0.304945,
		42.519218, 37.402367, 31.401445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203468, 38.024551, 30.750261>,  <41.861046, 37.508404, 31.187983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203468, 38.024551, 30.750261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.499355, 37.787666, 30.878077>,  <42.676888, 37.645535, 30.954765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.499355, 37.787666, 30.878077>,  <42.203468, 38.024551, 30.750261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.499355, 37.787666, 30.878077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423318, 0.040404, -0.905080,
		0.523087, 0.804770, 0.280581,
		0.739718, -0.592210, 0.319539,
		42.721272, 37.610004, 30.973938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.785347, 38.425636, 30.624126>,  <42.203468, 38.024551, 30.750261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.785347, 38.425636, 30.624126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.876652, 38.036575, 30.641310>,  <42.931435, 37.803139, 30.651619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.876652, 38.036575, 30.641310>,  <42.785347, 38.425636, 30.624126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.876652, 38.036575, 30.641310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427857, 0.060582, -0.901814,
		0.874547, 0.224233, 0.429984,
		0.228265, -0.972651, 0.042958,
		42.945133, 37.744781, 30.654198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.471939, 38.419956, 30.463867>,  <42.785347, 38.425636, 30.624126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.471939, 38.419956, 30.463867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.349087, 38.045998, 30.392725>,  <43.275375, 37.821621, 30.350040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.349087, 38.045998, 30.392725>,  <43.471939, 38.419956, 30.463867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.349087, 38.045998, 30.392725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434231, 0.028629, -0.900347,
		0.846825, -0.353758, 0.397169,
		-0.307134, -0.934899, -0.177856,
		43.256947, 37.765530, 30.339369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.078892, 38.125523, 30.286995>,  <43.471939, 38.419956, 30.463867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.078892, 38.125523, 30.286995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.757378, 37.934502, 30.145081>,  <43.564468, 37.819889, 30.059931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.757378, 37.934502, 30.145081>,  <44.078892, 38.125523, 30.286995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.757378, 37.934502, 30.145081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345506, 0.110770, -0.931856,
		0.484310, -0.871592, 0.075962,
		-0.803784, -0.477553, -0.354788,
		43.516243, 37.791237, 30.038645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.389877, 37.691711, 29.660534>,  <44.078892, 38.125523, 30.286995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.389877, 37.691711, 29.660534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.001030, 37.627407, 29.592249>,  <43.767723, 37.588825, 29.551277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.001030, 37.627407, 29.592249>,  <44.389877, 37.691711, 29.660534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.001030, 37.627407, 29.592249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209530, -0.268631, -0.940178,
		0.105285, -0.949733, 0.294825,
		-0.972118, -0.160761, -0.170714,
		43.709396, 37.579178, 29.541035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.316963, 36.979496, 29.391275>,  <44.389877, 37.691711, 29.660534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.316963, 36.979496, 29.391275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.988117, 37.183571, 29.290216>,  <43.790810, 37.306015, 29.229582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.988117, 37.183571, 29.290216>,  <44.316963, 36.979496, 29.391275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.988117, 37.183571, 29.290216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060637, -0.362778, -0.929901,
		-0.566080, -0.779807, 0.267309,
		-0.822117, 0.510189, -0.252647,
		43.741482, 37.336628, 29.214422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.816685, 36.535511, 29.059656>,  <44.316963, 36.979496, 29.391275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.816685, 36.535511, 29.059656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.738686, 36.905415, 28.928940>,  <43.691887, 37.127357, 28.850510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.738686, 36.905415, 28.928940>,  <43.816685, 36.535511, 29.059656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.738686, 36.905415, 28.928940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008197, -0.331637, -0.943371,
		-0.980770, -0.186632, 0.057088,
		-0.194996, 0.924762, -0.326790,
		43.680187, 37.182842, 28.830902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.353386, 36.414555, 28.579491>,  <43.816685, 36.535511, 29.059656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.353386, 36.414555, 28.579491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458813, 36.783272, 28.465771>,  <43.522068, 37.004501, 28.397539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458813, 36.783272, 28.465771>,  <43.353386, 36.414555, 28.579491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.458813, 36.783272, 28.465771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124236, -0.324705, -0.937620,
		-0.956608, 0.211803, -0.200101,
		0.263565, 0.921795, -0.284302,
		43.537884, 37.059811, 28.380480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.942802, 36.618809, 28.072443>,  <43.353386, 36.414555, 28.579491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.942802, 36.618809, 28.072443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247334, 36.871410, 28.013691>,  <43.430054, 37.022972, 27.978439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247334, 36.871410, 28.013691>,  <42.942802, 36.618809, 28.072443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.247334, 36.871410, 28.013691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075494, -0.311344, -0.947294,
		-0.643952, 0.710117, -0.284711,
		0.761332, 0.631505, -0.146881,
		43.475735, 37.060863, 27.969627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.923347, 36.781067, 27.400867>,  <42.942802, 36.618809, 28.072443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.923347, 36.781067, 27.400867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.289062, 36.918114, 27.487299>,  <43.508492, 37.000340, 27.539158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.289062, 36.918114, 27.487299>,  <42.923347, 36.781067, 27.400867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.289062, 36.918114, 27.487299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353878, -0.416057, -0.837655,
		-0.197090, 0.842326, -0.501640,
		0.914290, 0.342613, 0.216080,
		43.563351, 37.020897, 27.552122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.200375, 36.945107, 26.716047>,  <42.923347, 36.781067, 27.400867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.200375, 36.945107, 26.716047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.496666, 36.872860, 26.974874>,  <43.674442, 36.829514, 27.130171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.496666, 36.872860, 26.974874>,  <43.200375, 36.945107, 26.716047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.496666, 36.872860, 26.974874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479395, -0.532660, -0.697462,
		0.470638, 0.826833, -0.307972,
		0.740729, -0.180612, 0.647070,
		43.718884, 36.818676, 27.168995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.931553, 37.113579, 26.283146>,  <43.200375, 36.945107, 26.716047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.931553, 37.113579, 26.283146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.940136, 36.853226, 26.586695>,  <43.945286, 36.697014, 26.768824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.940136, 36.853226, 26.586695>,  <43.931553, 37.113579, 26.283146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.940136, 36.853226, 26.586695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573110, -0.613942, -0.542789,
		0.819197, 0.446565, 0.359854,
		0.021461, -0.650888, 0.758871,
		43.946575, 36.657959, 26.814356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.619129, 36.985874, 26.398657>,  <43.931553, 37.113579, 26.283146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.619129, 36.985874, 26.398657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.359924, 36.694141, 26.486437>,  <44.204403, 36.519100, 26.539104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.359924, 36.694141, 26.486437>,  <44.619129, 36.985874, 26.398657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.359924, 36.694141, 26.486437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496939, -0.623222, -0.603859,
		0.577180, -0.282253, 0.766288,
		-0.648008, -0.729334, 0.219449,
		44.165524, 36.475342, 26.552271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.086346, 36.536789, 25.946329>,  <44.619129, 36.985874, 26.398657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.086346, 36.536789, 25.946329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.315651, 36.686764, 25.654907>,  <45.453236, 36.776749, 25.480053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.315651, 36.686764, 25.654907>,  <45.086346, 36.536789, 25.946329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.315651, 36.686764, 25.654907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781941, 0.015344, 0.623164,
		0.244824, -0.926925, -0.284380,
		0.573262, 0.374934, -0.728557,
		45.487629, 36.799244, 25.436340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.288738, 36.262718, 26.557972>,  <45.086346, 36.536789, 25.946329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.288738, 36.262718, 26.557972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.643120, 36.304199, 26.738785>,  <45.855747, 36.329090, 26.847273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.643120, 36.304199, 26.738785>,  <45.288738, 36.262718, 26.557972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.643120, 36.304199, 26.738785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381137, -0.392519, 0.837056,
		0.264241, -0.913878, -0.308226,
		0.885952, 0.103708, 0.452033,
		45.908905, 36.335312, 26.874395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.326206, 35.546593, 26.917740>,  <45.288738, 36.262718, 26.557972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.326206, 35.546593, 26.917740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.649399, 35.731270, 27.064165>,  <45.843315, 35.842075, 27.152021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.649399, 35.731270, 27.064165>,  <45.326206, 35.546593, 26.917740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.649399, 35.731270, 27.064165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023271, -0.645805, 0.763148,
		0.588747, -0.608091, -0.532543,
		0.807983, 0.461694, 0.366065,
		45.891792, 35.869778, 27.173985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.110058, 35.370930, 27.127102>,  <45.326206, 35.546593, 26.917740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.110058, 35.370930, 27.127102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.360619, 35.257385, 26.836710>,  <46.510956, 35.189259, 26.662476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.360619, 35.257385, 26.836710>,  <46.110058, 35.370930, 27.127102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.360619, 35.257385, 26.836710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775020, 0.127082, 0.619027,
		-0.083458, -0.950407, 0.299602,
		0.626402, -0.283860, -0.725978,
		46.548538, 35.172226, 26.618916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.567944, 34.888935, 27.256300>,  <46.110058, 35.370930, 27.127102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.567944, 34.888935, 27.256300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.789177, 35.074963, 26.979803>,  <46.921917, 35.186577, 26.813906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.789177, 35.074963, 26.979803>,  <46.567944, 34.888935, 27.256300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.789177, 35.074963, 26.979803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719481, 0.151701, 0.677742,
		0.420058, -0.872181, -0.250704,
		0.553082, 0.465067, -0.691240,
		46.955101, 35.214481, 26.772430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.223495, 34.550526, 27.170565>,  <46.567944, 34.888935, 27.256300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.223495, 34.550526, 27.170565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.205879, 34.948158, 27.130859>,  <47.195309, 35.186737, 27.107037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.205879, 34.948158, 27.130859>,  <47.223495, 34.550526, 27.170565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.205879, 34.948158, 27.130859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372874, 0.108536, 0.921513,
		0.926836, 0.003576, -0.375449,
		-0.044045, 0.994086, -0.099261,
		47.192665, 35.246384, 27.101082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.820316, 34.791592, 27.499176>,  <47.223495, 34.550526, 27.170565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.820316, 34.791592, 27.499176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.574894, 35.107288, 27.488953>,  <47.427643, 35.296707, 27.482819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.574894, 35.107288, 27.488953>,  <47.820316, 34.791592, 27.499176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.574894, 35.107288, 27.488953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180010, 0.171310, 0.968633,
		0.768862, 0.589706, -0.247179,
		-0.613553, 0.789240, -0.025561,
		47.390827, 35.344059, 27.481285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.156399, 35.403702, 27.774158>,  <47.820316, 34.791592, 27.499176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.156399, 35.403702, 27.774158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.765438, 35.472317, 27.823576>,  <47.530861, 35.513485, 27.853226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.765438, 35.472317, 27.823576>,  <48.156399, 35.403702, 27.774158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.765438, 35.472317, 27.823576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180611, 0.373933, 0.909700,
		0.109851, 0.911455, -0.396464,
		-0.977401, 0.171537, 0.123542,
		47.472218, 35.523777, 27.860638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.183231, 36.009254, 28.002922>,  <48.156399, 35.403702, 27.774158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.183231, 36.009254, 28.002922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.820930, 35.874752, 28.106110>,  <47.603550, 35.794048, 28.168022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.820930, 35.874752, 28.106110>,  <48.183231, 36.009254, 28.002922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.820930, 35.874752, 28.106110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141400, 0.334050, 0.931889,
		-0.399533, 0.880534, -0.255018,
		-0.905748, -0.336261, 0.257971,
		47.549206, 35.773872, 28.183500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.885822, 36.638969, 28.050653>,  <48.183231, 36.009254, 28.002922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.885822, 36.638969, 28.050653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.683285, 36.361370, 28.255388>,  <47.561760, 36.194809, 28.378229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.683285, 36.361370, 28.255388>,  <47.885822, 36.638969, 28.050653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.683285, 36.361370, 28.255388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040656, 0.612106, 0.789730,
		-0.861370, 0.379069, -0.338154,
		-0.506348, -0.693998, 0.511838,
		47.531380, 36.153172, 28.408939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.555595, 37.087864, 28.647381>,  <47.885822, 36.638969, 28.050653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.555595, 37.087864, 28.647381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.436100, 36.731884, 28.785221>,  <47.364403, 36.518295, 28.867926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.436100, 36.731884, 28.785221>,  <47.555595, 37.087864, 28.647381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.436100, 36.731884, 28.785221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251772, 0.421793, 0.871035,
		-0.920525, 0.173449, -0.350069,
		-0.298737, -0.889947, 0.344602,
		47.346478, 36.464901, 28.888601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.876740, 37.130344, 29.004229>,  <47.555595, 37.087864, 28.647381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.876740, 37.130344, 29.004229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.048611, 36.800514, 29.151445>,  <47.151733, 36.602615, 29.239775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.048611, 36.800514, 29.151445>,  <46.876740, 37.130344, 29.004229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.048611, 36.800514, 29.151445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347566, 0.225157, 0.910221,
		-0.833414, -0.519017, -0.189850,
		0.429673, -0.824576, 0.368042,
		47.177513, 36.553143, 29.261858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.325684, 36.934109, 29.483480>,  <46.876740, 37.130344, 29.004229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.325684, 36.934109, 29.483480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.655983, 36.739670, 29.597921>,  <46.854160, 36.623005, 29.666586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.655983, 36.739670, 29.597921>,  <46.325684, 36.934109, 29.483480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.655983, 36.739670, 29.597921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146278, 0.305324, 0.940946,
		-0.544747, -0.818832, 0.181014,
		0.825744, -0.486099, 0.286102,
		46.903706, 36.593842, 29.683752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.100540, 36.627754, 30.032618>,  <46.325684, 36.934109, 29.483480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.100540, 36.627754, 30.032618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.499207, 36.624413, 30.065063>,  <46.738407, 36.622410, 30.084532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.499207, 36.624413, 30.065063>,  <46.100540, 36.627754, 30.032618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.499207, 36.624413, 30.065063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078977, 0.148756, 0.985715,
		-0.020300, -0.988838, 0.147601,
		0.996670, -0.008353, 0.081115,
		46.798206, 36.621906, 30.089397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.177975, 36.254955, 30.601915>,  <46.100540, 36.627754, 30.032618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.177975, 36.254955, 30.601915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.527950, 36.447914, 30.585068>,  <46.737934, 36.563690, 30.574959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.527950, 36.447914, 30.585068>,  <46.177975, 36.254955, 30.601915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.527950, 36.447914, 30.585068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112560, 0.287208, 0.951232,
		0.470970, -0.827528, 0.305588,
		0.874938, 0.482399, -0.042120,
		46.790432, 36.592632, 30.572432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.640640, 35.953735, 30.939169>,  <46.177975, 36.254955, 30.601915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.640640, 35.953735, 30.939169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.760899, 36.335186, 30.944933>,  <46.833054, 36.564056, 30.948391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.760899, 36.335186, 30.944933>,  <46.640640, 35.953735, 30.939169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.760899, 36.335186, 30.944933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152570, 0.033174, 0.987736,
		0.941454, -0.299157, 0.155468,
		0.300646, 0.953627, 0.014411,
		46.851093, 36.621273, 30.949257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.212940, 35.934467, 31.410078>,  <46.640640, 35.953735, 30.939169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.212940, 35.934467, 31.410078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.078506, 36.310093, 31.381205>,  <46.997845, 36.535469, 31.363880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.078506, 36.310093, 31.381205>,  <47.212940, 35.934467, 31.410078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.078506, 36.310093, 31.381205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072912, 0.102354, 0.992072,
		0.939004, 0.328161, -0.102869,
		-0.336088, 0.939060, -0.072184,
		46.977680, 36.591812, 31.359549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.338688, 36.318588, 32.072830>,  <47.212940, 35.934467, 31.410078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.338688, 36.318588, 32.072830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.064949, 36.567463, 31.920753>,  <46.900703, 36.716789, 31.829508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.064949, 36.567463, 31.920753>,  <47.338688, 36.318588, 32.072830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.064949, 36.567463, 31.920753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222809, 0.318033, 0.921526,
		0.694277, 0.715357, -0.079017,
		-0.684351, 0.622188, -0.380191,
		46.859642, 36.754120, 31.806696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.433479, 36.834339, 32.445415>,  <47.338688, 36.318588, 32.072830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.433479, 36.834339, 32.445415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.069050, 36.879498, 32.286819>,  <46.850391, 36.906593, 32.191662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.069050, 36.879498, 32.286819>,  <47.433479, 36.834339, 32.445415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.069050, 36.879498, 32.286819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377163, 0.160022, 0.912218,
		0.166430, 0.980637, -0.103212,
		-0.911070, 0.112893, -0.396493,
		46.795731, 36.913364, 32.167873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.127171, 37.519962, 32.624996>,  <47.433479, 36.834339, 32.445415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.127171, 37.519962, 32.624996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.839371, 37.251343, 32.554188>,  <46.666691, 37.090172, 32.511703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.839371, 37.251343, 32.554188>,  <47.127171, 37.519962, 32.624996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.839371, 37.251343, 32.554188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381628, 0.169356, 0.908669,
		-0.580240, 0.721343, -0.378135,
		-0.719501, -0.671552, -0.177018,
		46.623520, 37.049877, 32.501083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.621071, 37.786877, 32.968891>,  <47.127171, 37.519962, 32.624996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.621071, 37.786877, 32.968891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.503712, 37.408260, 32.915253>,  <46.433296, 37.181091, 32.883072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.503712, 37.408260, 32.915253>,  <46.621071, 37.786877, 32.968891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.503712, 37.408260, 32.915253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606892, 0.076038, 0.791139,
		-0.738649, 0.313495, -0.596757,
		-0.293394, -0.946540, -0.134093,
		46.415695, 37.124298, 32.875027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.980358, 37.749722, 33.235149>,  <46.621071, 37.786877, 32.968891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.980358, 37.749722, 33.235149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.011635, 37.350945, 33.235180>,  <46.030399, 37.111679, 33.235199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.011635, 37.350945, 33.235180>,  <45.980358, 37.749722, 33.235149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.011635, 37.350945, 33.235180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547801, -0.042903, 0.835508,
		-0.832947, -0.065367, -0.549478,
		0.078189, -0.996938, 0.000072,
		46.035091, 37.051865, 33.235203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.323021, 37.521599, 33.327709>,  <45.980358, 37.749722, 33.235149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.323021, 37.521599, 33.327709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.551041, 37.206764, 33.421978>,  <45.687855, 37.017864, 33.478539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.551041, 37.206764, 33.421978>,  <45.323021, 37.521599, 33.327709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.551041, 37.206764, 33.421978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619715, -0.223577, 0.752307,
		-0.539438, -0.574903, -0.615218,
		0.570052, -0.787083, 0.235670,
		45.722057, 36.970638, 33.492680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.817055, 37.024612, 33.464264>,  <45.323021, 37.521599, 33.327709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.817055, 37.024612, 33.464264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.143532, 36.879108, 33.643822>,  <45.339417, 36.791805, 33.751556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.143532, 36.879108, 33.643822>,  <44.817055, 37.024612, 33.464264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.143532, 36.879108, 33.643822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552704, -0.265158, 0.790069,
		-0.168370, -0.892954, -0.417474,
		0.816192, -0.363764, 0.448895,
		45.388390, 36.769978, 33.778488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.664749, 36.286976, 33.730156>,  <44.817055, 37.024612, 33.464264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.664749, 36.286976, 33.730156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.962070, 36.431545, 33.955318>,  <45.140465, 36.518288, 34.090416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.962070, 36.431545, 33.955318>,  <44.664749, 36.286976, 33.730156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.962070, 36.431545, 33.955318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471452, -0.313946, 0.824119,
		0.474581, -0.877957, -0.062963,
		0.743308, 0.361427, 0.562907,
		45.185062, 36.539974, 34.124191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.875240, 35.777805, 34.124641>,  <44.664749, 36.286976, 33.730156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.875240, 35.777805, 34.124641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.042328, 36.087036, 34.315578>,  <45.142582, 36.272575, 34.430141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.042328, 36.087036, 34.315578>,  <44.875240, 35.777805, 34.124641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.042328, 36.087036, 34.315578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312789, -0.370898, 0.874413,
		0.853036, -0.514569, 0.086879,
		0.417723, 0.773080, 0.477341,
		45.167645, 36.318962, 34.458782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.316494, 35.547405, 34.754135>,  <44.875240, 35.777805, 34.124641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.316494, 35.547405, 34.754135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.198429, 35.920322, 34.837757>,  <45.127590, 36.144073, 34.887932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.198429, 35.920322, 34.837757>,  <45.316494, 35.547405, 34.754135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.198429, 35.920322, 34.837757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421722, -0.323461, 0.847068,
		0.857341, 0.161854, 0.488642,
		-0.295158, 0.932296, 0.209059,
		45.109882, 36.200012, 34.900475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.413944, 35.664490, 35.497280>,  <45.316494, 35.547405, 34.754135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.413944, 35.664490, 35.497280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.190601, 35.970299, 35.368446>,  <45.056595, 36.153786, 35.291145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.190601, 35.970299, 35.368446>,  <45.413944, 35.664490, 35.497280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.190601, 35.970299, 35.368446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524022, -0.024048, 0.851365,
		0.643143, 0.644146, 0.414055,
		-0.558361, 0.764524, -0.322081,
		45.023094, 36.199657, 35.271824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.070190, 35.806633, 35.066555>,  <45.413944, 35.664490, 35.497280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.070190, 35.806633, 35.066555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.180695, 35.749836, 35.446770>,  <46.246998, 35.715759, 35.674900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.180695, 35.749836, 35.446770>,  <46.070190, 35.806633, 35.066555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.180695, 35.749836, 35.446770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132028, -0.985257, -0.108803,
		0.951971, -0.095440, -0.290934,
		0.276261, -0.141988, 0.950536,
		46.263573, 35.707241, 35.731930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.665833, 35.368702, 35.003204>,  <46.070190, 35.806633, 35.066555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.665833, 35.368702, 35.003204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.452980, 35.326469, 35.339226>,  <46.325268, 35.301132, 35.540840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.452980, 35.326469, 35.339226>,  <46.665833, 35.368702, 35.003204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.452980, 35.326469, 35.339226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165664, -0.960032, -0.225595,
		0.830298, -0.259212, 0.493370,
		-0.532128, -0.105578, 0.840055,
		46.293343, 35.294796, 35.591244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.234337, 35.217804, 35.350216>,  <46.665833, 35.368702, 35.003204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.234337, 35.217804, 35.350216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.634274, 35.212711, 35.345127>,  <47.874233, 35.209656, 35.342072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.634274, 35.212711, 35.345127>,  <47.234337, 35.217804, 35.350216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.634274, 35.212711, 35.345127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017413, -0.863688, -0.503725,
		-0.004576, 0.503865, -0.863770,
		0.999838, -0.012736, -0.012727,
		47.934223, 35.208889, 35.341309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.501663, 35.066093, 34.621304>,  <47.234337, 35.217804, 35.350216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.501663, 35.066093, 34.621304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.774586, 34.953152, 34.891037>,  <47.938339, 34.885387, 35.052879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.774586, 34.953152, 34.891037>,  <47.501663, 35.066093, 34.621304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.774586, 34.953152, 34.891037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131625, -0.859886, -0.493225,
		0.719117, 0.425292, -0.549543,
		0.682309, -0.282353, 0.674338,
		47.979279, 34.868446, 35.093338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.523315, 36.706947, 47.352146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.204926, 36.466797, 47.383057>,  <37.013889, 36.322708, 47.401604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.204926, 36.466797, 47.383057>,  <37.523315, 36.706947, 47.352146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204926, 36.466797, 47.383057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185026, 0.119759, -0.975409,
		0.576357, -0.790701, -0.206411,
		-0.795976, -0.600375, 0.077276,
		36.966133, 36.286686, 47.406239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545589, 36.299900, 46.774601>,  <37.523315, 36.706947, 47.352146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545589, 36.299900, 46.774601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.160934, 36.268402, 46.879711>,  <36.930141, 36.249504, 46.942776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.160934, 36.268402, 46.879711>,  <37.545589, 36.299900, 46.774601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160934, 36.268402, 46.879711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267339, 0.054370, -0.962067,
		0.061514, -0.995407, -0.073348,
		-0.961637, -0.078790, 0.262767,
		36.872444, 36.244781, 46.958542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311543, 35.869423, 46.260014>,  <37.545589, 36.299900, 46.774601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311543, 35.869423, 46.260014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.999107, 36.073700, 46.403728>,  <36.811646, 36.196266, 46.489956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.999107, 36.073700, 46.403728>,  <37.311543, 35.869423, 46.260014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999107, 36.073700, 46.403728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469724, -0.101461, -0.876963,
		-0.411409, -0.853753, 0.319137,
		-0.781090, 0.510697, 0.359286,
		36.764782, 36.226910, 46.511513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811947, 35.581070, 45.888973>,  <37.311543, 35.869423, 46.260014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811947, 35.581070, 45.888973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.658577, 35.921444, 46.032581>,  <36.566555, 36.125668, 46.118748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.658577, 35.921444, 46.032581>,  <36.811947, 35.581070, 45.888973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658577, 35.921444, 46.032581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206311, 0.299995, -0.931364,
		-0.900235, -0.431177, 0.060532,
		-0.383423, 0.850935, 0.359022,
		36.543549, 36.176723, 46.140289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089230, 35.482964, 45.723484>,  <36.811947, 35.581070, 45.888973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089230, 35.482964, 45.723484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.154984, 35.874031, 45.775864>,  <36.194435, 36.108669, 45.807289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.154984, 35.874031, 45.775864>,  <36.089230, 35.482964, 45.723484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154984, 35.874031, 45.775864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524654, 0.199077, -0.827712,
		-0.835294, 0.067362, 0.545661,
		0.164385, 0.977666, 0.130946,
		36.204300, 36.167332, 45.815147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426029, 35.772453, 45.665100>,  <36.089230, 35.482964, 45.723484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426029, 35.772453, 45.665100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.693336, 36.057442, 45.579491>,  <35.853722, 36.228436, 45.528126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.693336, 36.057442, 45.579491>,  <35.426029, 35.772453, 45.665100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693336, 36.057442, 45.579491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349939, 0.047183, -0.935584,
		-0.656479, 0.700112, 0.280852,
		0.668265, 0.712472, -0.214022,
		35.893814, 36.271183, 45.515285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081364, 36.435875, 45.316078>,  <35.426029, 35.772453, 45.665100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081364, 36.435875, 45.316078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.463799, 36.414761, 45.200764>,  <35.693260, 36.402092, 45.131577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.463799, 36.414761, 45.200764>,  <35.081364, 36.435875, 45.316078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463799, 36.414761, 45.200764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252968, 0.348055, -0.902699,
		0.147992, 0.935986, 0.319418,
		0.956089, -0.052789, -0.288284,
		35.750626, 36.398922, 45.114277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041008, 36.871746, 44.753296>,  <35.081364, 36.435875, 45.316078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041008, 36.871746, 44.753296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.407932, 36.720028, 44.704826>,  <35.628086, 36.628998, 44.675747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.407932, 36.720028, 44.704826>,  <35.041008, 36.871746, 44.753296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407932, 36.720028, 44.704826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005784, 0.291584, -0.956528,
		0.398140, 0.878130, 0.265278,
		0.917306, -0.379297, -0.121171,
		35.683125, 36.606239, 44.668476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378960, 37.376778, 44.233078>,  <35.041008, 36.871746, 44.753296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378960, 37.376778, 44.233078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.577618, 37.031433, 44.268757>,  <35.696812, 36.824226, 44.290165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.577618, 37.031433, 44.268757>,  <35.378960, 37.376778, 44.233078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577618, 37.031433, 44.268757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163560, -0.007835, -0.986502,
		0.852404, 0.504529, 0.137319,
		0.496644, -0.863359, 0.089200,
		35.726612, 36.772427, 44.295517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978401, 37.503540, 43.924595>,  <35.378960, 37.376778, 44.233078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978401, 37.503540, 43.924595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.888836, 37.114689, 43.896770>,  <35.835098, 36.881378, 43.880074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.888836, 37.114689, 43.896770>,  <35.978401, 37.503540, 43.924595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888836, 37.114689, 43.896770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207417, 0.117273, -0.971198,
		0.952283, -0.203031, -0.227893,
		-0.223909, -0.972124, -0.069565,
		35.821663, 36.823051, 43.875900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362980, 37.348309, 43.319828>,  <35.978401, 37.503540, 43.924595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362980, 37.348309, 43.319828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.109406, 37.044567, 43.378494>,  <35.957260, 36.862324, 43.413696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.109406, 37.044567, 43.378494>,  <36.362980, 37.348309, 43.319828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109406, 37.044567, 43.378494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153057, -0.062709, -0.986226,
		0.758087, -0.647654, -0.076470,
		-0.633938, -0.759350, 0.146667,
		35.919224, 36.816761, 43.422493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563911, 36.815983, 42.854122>,  <36.362980, 37.348309, 43.319828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563911, 36.815983, 42.854122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.176483, 36.750374, 42.928917>,  <35.944027, 36.711010, 42.973793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.176483, 36.750374, 42.928917>,  <36.563911, 36.815983, 42.854122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176483, 36.750374, 42.928917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158729, -0.171190, -0.972368,
		0.191503, -0.971488, 0.139774,
		-0.968572, -0.164025, 0.186987,
		35.885910, 36.701168, 42.985012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389942, 36.233803, 42.359612>,  <36.563911, 36.815983, 42.854122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389942, 36.233803, 42.359612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.043678, 36.405140, 42.463272>,  <35.835922, 36.507942, 42.525467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.043678, 36.405140, 42.463272>,  <36.389942, 36.233803, 42.359612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043678, 36.405140, 42.463272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360418, -0.173933, -0.916431,
		-0.347477, -0.886716, 0.304951,
		-0.865655, 0.428349, 0.259150,
		35.783981, 36.533646, 42.541016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863602, 35.756527, 42.145870>,  <36.389942, 36.233803, 42.359612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863602, 35.756527, 42.145870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.657104, 36.096325, 42.189415>,  <35.533207, 36.300205, 42.215542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.657104, 36.096325, 42.189415>,  <35.863602, 35.756527, 42.145870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657104, 36.096325, 42.189415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306944, -0.064851, -0.949516,
		-0.799552, -0.523591, 0.294227,
		-0.516239, 0.849498, 0.108861,
		35.502232, 36.351173, 42.222073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164291, 35.674572, 41.900349>,  <35.863602, 35.756527, 42.145870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164291, 35.674572, 41.900349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.217331, 36.071041, 41.900837>,  <35.249153, 36.308922, 41.901131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.217331, 36.071041, 41.900837>,  <35.164291, 35.674572, 41.900349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217331, 36.071041, 41.900837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171152, 0.024111, -0.984950,
		-0.976281, 0.130391, 0.172838,
		0.132596, 0.991170, 0.001223,
		35.257111, 36.368393, 41.901203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591122, 35.931164, 41.554718>,  <35.164291, 35.674572, 41.900349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591122, 35.931164, 41.554718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.891052, 36.195301, 41.538158>,  <35.071011, 36.353783, 41.528225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.891052, 36.195301, 41.538158>,  <34.591122, 35.931164, 41.554718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891052, 36.195301, 41.538158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204344, 0.171617, -0.963738,
		-0.629293, 0.731091, 0.263620,
		0.749822, 0.660343, -0.041397,
		35.115997, 36.393402, 41.525738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294930, 36.491131, 41.354534>,  <34.591122, 35.931164, 41.554718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294930, 36.491131, 41.354534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.674686, 36.534519, 41.236633>,  <34.902542, 36.560551, 41.165894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.674686, 36.534519, 41.236633>,  <34.294930, 36.491131, 41.354534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674686, 36.534519, 41.236633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311257, 0.450438, -0.836794,
		0.042003, 0.886194, 0.461406,
		0.949397, 0.108468, -0.294754,
		34.959507, 36.567059, 41.148209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172161, 36.849102, 40.805878>,  <34.294930, 36.491131, 41.354534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172161, 36.849102, 40.805878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.567543, 36.793415, 40.781971>,  <34.804771, 36.760002, 40.767628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.567543, 36.793415, 40.781971>,  <34.172161, 36.849102, 40.805878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567543, 36.793415, 40.781971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024318, 0.243613, -0.969568,
		0.149540, 0.959829, 0.237415,
		0.988457, -0.139215, -0.059771,
		34.864079, 36.751652, 40.764038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443943, 37.432930, 40.601135>,  <34.172161, 36.849102, 40.805878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443943, 37.432930, 40.601135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.686241, 37.145863, 40.463715>,  <34.831619, 36.973621, 40.381264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.686241, 37.145863, 40.463715>,  <34.443943, 37.432930, 40.601135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686241, 37.145863, 40.463715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208228, 0.273745, -0.938991,
		0.767928, 0.640327, 0.016381,
		0.605745, -0.717667, -0.343550,
		34.867966, 36.930561, 40.360649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816261, 37.744282, 40.033352>,  <34.443943, 37.432930, 40.601135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816261, 37.744282, 40.033352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.830822, 37.346313, 39.995819>,  <34.839558, 37.107533, 39.973301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.830822, 37.346313, 39.995819>,  <34.816261, 37.744282, 40.033352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830822, 37.346313, 39.995819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276776, 0.080187, -0.957583,
		0.960245, 0.060824, -0.272452,
		0.036397, -0.994922, -0.093834,
		34.841740, 37.047836, 39.967670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209251, 37.680439, 39.373199>,  <34.816261, 37.744282, 40.033352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209251, 37.680439, 39.373199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.064186, 37.311783, 39.428402>,  <34.977146, 37.090588, 39.461521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.064186, 37.311783, 39.428402>,  <35.209251, 37.680439, 39.373199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064186, 37.311783, 39.428402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065543, -0.122492, -0.990303,
		0.929612, -0.368194, -0.015984,
		-0.362666, -0.921645, 0.138003,
		34.955387, 37.035290, 39.469803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656097, 37.247097, 38.942764>,  <35.209251, 37.680439, 39.373199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656097, 37.247097, 38.942764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.312431, 37.045837, 38.980034>,  <35.106232, 36.925083, 39.002396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.312431, 37.045837, 38.980034>,  <35.656097, 37.247097, 38.942764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312431, 37.045837, 38.980034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066792, -0.070249, -0.995291,
		0.507324, -0.861340, 0.026749,
		-0.859163, -0.503149, 0.093170,
		35.054684, 36.894894, 39.007984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351772, 37.156979, 38.550667>,  <35.656097, 37.247097, 38.942764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351772, 37.156979, 38.550667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.659397, 37.409798, 38.512611>,  <36.843971, 37.561489, 38.489777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.659397, 37.409798, 38.512611>,  <36.351772, 37.156979, 38.550667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659397, 37.409798, 38.512611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310633, -0.239508, 0.919860,
		0.558613, -0.736985, -0.380533,
		0.769064, 0.632052, -0.095140,
		36.890118, 37.599415, 38.484070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905079, 36.909100, 38.843529>,  <36.351772, 37.156979, 38.550667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905079, 36.909100, 38.843529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.017990, 37.292549, 38.858318>,  <37.085735, 37.522617, 38.867191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.017990, 37.292549, 38.858318>,  <36.905079, 36.909100, 38.843529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017990, 37.292549, 38.858318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156753, -0.084112, 0.984050,
		0.946440, -0.271977, -0.174009,
		0.282275, 0.958621, 0.036973,
		37.102673, 37.580135, 38.869411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577477, 36.879810, 39.087574>,  <36.905079, 36.909100, 38.843529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577477, 36.879810, 39.087574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.441349, 37.249329, 39.157764>,  <37.359673, 37.471039, 39.199879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.441349, 37.249329, 39.157764>,  <37.577477, 36.879810, 39.087574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441349, 37.249329, 39.157764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345133, -0.050879, 0.937174,
		0.874682, 0.379499, -0.301517,
		-0.340316, 0.923792, 0.175480,
		37.339256, 37.526466, 39.210407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060814, 37.117851, 39.561672>,  <37.577477, 36.879810, 39.087574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060814, 37.117851, 39.561672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.767902, 37.387272, 39.601871>,  <37.592155, 37.548923, 39.625992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.767902, 37.387272, 39.601871>,  <38.060814, 37.117851, 39.561672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767902, 37.387272, 39.601871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365144, 0.263761, 0.892805,
		0.574842, 0.690476, -0.439088,
		-0.732275, 0.673552, 0.100502,
		37.548222, 37.589336, 39.632023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466084, 37.742844, 39.710266>,  <38.060814, 37.117851, 39.561672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466084, 37.742844, 39.710266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.084873, 37.780491, 39.825428>,  <37.856148, 37.803082, 39.894527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.084873, 37.780491, 39.825428>,  <38.466084, 37.742844, 39.710266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084873, 37.780491, 39.825428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299996, 0.424650, 0.854210,
		-0.041860, 0.900452, -0.432937,
		-0.953022, 0.094122, 0.287908,
		37.798965, 37.808727, 39.911800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433998, 38.432037, 39.955482>,  <38.466084, 37.742844, 39.710266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433998, 38.432037, 39.955482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.132786, 38.226490, 40.119862>,  <37.952057, 38.103161, 40.218491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.132786, 38.226490, 40.119862>,  <38.433998, 38.432037, 39.955482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132786, 38.226490, 40.119862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124250, 0.502270, 0.855738,
		-0.646142, 0.695461, -0.314379,
		-0.753035, -0.513866, 0.410949,
		37.906876, 38.072330, 40.243145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313869, 38.894958, 40.646606>,  <38.433998, 38.432037, 39.955482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313869, 38.894958, 40.646606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.122704, 38.559147, 40.749977>,  <38.008003, 38.357658, 40.812000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.122704, 38.559147, 40.749977>,  <38.313869, 38.894958, 40.646606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122704, 38.559147, 40.749977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103443, 0.238361, 0.965652,
		-0.872292, 0.488235, -0.027074,
		-0.477918, -0.839530, 0.258425,
		37.979328, 38.307289, 40.827503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922249, 39.044083, 41.209671>,  <38.313869, 38.894958, 40.646606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922249, 39.044083, 41.209671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.941738, 38.644646, 41.218113>,  <37.953430, 38.404984, 41.223179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.941738, 38.644646, 41.218113>,  <37.922249, 39.044083, 41.209671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941738, 38.644646, 41.218113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010254, 0.021625, 0.999714,
		-0.998760, -0.048492, 0.011293,
		0.048722, -0.998590, 0.021101,
		37.956356, 38.345070, 41.224442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493427, 38.831860, 41.801785>,  <37.922249, 39.044083, 41.209671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493427, 38.831860, 41.801785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.725273, 38.517159, 41.716869>,  <37.864380, 38.328339, 41.665920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.725273, 38.517159, 41.716869>,  <37.493427, 38.831860, 41.801785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725273, 38.517159, 41.716869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192773, -0.120736, 0.973787,
		-0.791761, -0.605344, 0.081685,
		0.579614, -0.786754, -0.212288,
		37.899158, 38.281132, 41.653183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250809, 38.314930, 42.240993>,  <37.493427, 38.831860, 41.801785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250809, 38.314930, 42.240993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.630997, 38.244648, 42.138439>,  <37.859108, 38.202477, 42.076904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.630997, 38.244648, 42.138439>,  <37.250809, 38.314930, 42.240993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630997, 38.244648, 42.138439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237306, -0.122510, 0.963679,
		-0.200739, -0.976789, -0.074745,
		0.950468, -0.175711, -0.256390,
		37.916138, 38.191936, 42.061523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448700, 37.851147, 42.705700>,  <37.250809, 38.314930, 42.240993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448700, 37.851147, 42.705700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.796146, 37.990463, 42.564728>,  <38.004612, 38.074051, 42.480145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.796146, 37.990463, 42.564728>,  <37.448700, 37.851147, 42.705700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796146, 37.990463, 42.564728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405787, -0.091864, 0.909339,
		0.284336, -0.932876, -0.221125,
		0.868614, 0.348287, -0.352428,
		38.056732, 38.094948, 42.459000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883823, 37.376495, 42.943462>,  <37.448700, 37.851147, 42.705700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883823, 37.376495, 42.943462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.121414, 37.691864, 42.879490>,  <38.263969, 37.881084, 42.841106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.121414, 37.691864, 42.879490>,  <37.883823, 37.376495, 42.943462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121414, 37.691864, 42.879490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499125, -0.205258, 0.841869,
		0.630923, -0.579877, -0.515441,
		0.593979, 0.788423, -0.159929,
		38.299606, 37.928391, 42.831512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543060, 37.091690, 42.788330>,  <37.883823, 37.376495, 42.943462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543060, 37.091690, 42.788330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.537334, 37.459850, 42.944611>,  <38.533897, 37.680748, 43.038380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.537334, 37.459850, 42.944611>,  <38.543060, 37.091690, 42.788330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537334, 37.459850, 42.944611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461640, -0.340522, 0.819105,
		0.886952, 0.192090, -0.420021,
		-0.014315, 0.920406, 0.390703,
		38.533039, 37.735973, 43.061821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237434, 37.230789, 43.012966>,  <38.543060, 37.091690, 42.788330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237434, 37.230789, 43.012966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.020542, 37.502621, 43.210617>,  <38.890408, 37.665718, 43.329208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.020542, 37.502621, 43.210617>,  <39.237434, 37.230789, 43.012966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020542, 37.502621, 43.210617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617547, -0.076453, 0.782809,
		0.569759, 0.729607, -0.378217,
		-0.542227, 0.679579, 0.494127,
		38.857872, 37.706493, 43.358856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690201, 37.454193, 43.459545>,  <39.237434, 37.230789, 43.012966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690201, 37.454193, 43.459545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.366768, 37.608868, 43.636936>,  <39.172707, 37.701672, 43.743370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.366768, 37.608868, 43.636936>,  <39.690201, 37.454193, 43.459545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366768, 37.608868, 43.636936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374445, -0.243206, 0.894786,
		0.453859, 0.889563, 0.051858,
		-0.808581, 0.386689, 0.443473,
		39.124195, 37.724873, 43.769978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913689, 37.841034, 44.071697>,  <39.690201, 37.454193, 43.459545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913689, 37.841034, 44.071697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.529663, 37.752773, 44.140503>,  <39.299248, 37.699818, 44.181786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.529663, 37.752773, 44.140503>,  <39.913689, 37.841034, 44.071697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529663, 37.752773, 44.140503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208701, -0.155338, 0.965564,
		-0.186330, 0.962904, 0.195184,
		-0.960065, -0.220649, 0.172015,
		39.241642, 37.686577, 44.192108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762070, 38.215202, 44.808704>,  <39.913689, 37.841034, 44.071697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762070, 38.215202, 44.808704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.467220, 37.948811, 44.762886>,  <39.290310, 37.788975, 44.735394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.467220, 37.948811, 44.762886>,  <39.762070, 38.215202, 44.808704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467220, 37.948811, 44.762886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103076, -0.278337, 0.954936,
		-0.667852, 0.692097, 0.273815,
		-0.737122, -0.665980, -0.114550,
		39.246082, 37.749016, 44.728519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429939, 38.310493, 45.384521>,  <39.762070, 38.215202, 44.808704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429939, 38.310493, 45.384521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.291409, 37.956615, 45.259697>,  <39.208290, 37.744289, 45.184803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.291409, 37.956615, 45.259697>,  <39.429939, 38.310493, 45.384521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291409, 37.956615, 45.259697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074503, -0.357532, 0.930924,
		-0.935152, 0.299152, 0.189733,
		-0.346323, -0.884691, -0.312060,
		39.187511, 37.691208, 45.166080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.003181, 38.071491, 45.909073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.089394, 37.732365, 45.715263>,  <39.141121, 37.528889, 45.598980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.089394, 37.732365, 45.715263>,  <39.003181, 38.071491, 45.909073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089394, 37.732365, 45.715263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045253, -0.504321, 0.862329,
		-0.975449, -0.163928, -0.147060,
		0.215526, -0.847813, -0.484522,
		39.154053, 37.478020, 45.569908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469204, 37.606972, 46.177879>,  <39.003181, 38.071491, 45.909073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469204, 37.606972, 46.177879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.772911, 37.389099, 46.035423>,  <38.955135, 37.258373, 45.949951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.772911, 37.389099, 46.035423>,  <38.469204, 37.606972, 46.177879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772911, 37.389099, 46.035423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016400, -0.531062, 0.847174,
		-0.650575, -0.649070, -0.394284,
		0.759265, -0.544685, -0.356141,
		39.000690, 37.225693, 45.928581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377502, 36.911720, 46.497974>,  <38.469204, 37.606972, 46.177879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377502, 36.911720, 46.497974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.751911, 36.918892, 46.357384>,  <38.976559, 36.923195, 46.273029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.751911, 36.918892, 46.357384>,  <38.377502, 36.911720, 46.497974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751911, 36.918892, 46.357384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295167, -0.583859, 0.756297,
		-0.191653, -0.811657, -0.551799,
		0.936026, 0.017927, -0.351473,
		39.032719, 36.924271, 46.251942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604813, 36.209293, 46.386311>,  <38.377502, 36.911720, 46.497974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604813, 36.209293, 46.386311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.923561, 36.441055, 46.454758>,  <39.114811, 36.580112, 46.495827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.923561, 36.441055, 46.454758>,  <38.604813, 36.209293, 46.386311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923561, 36.441055, 46.454758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250181, -0.574289, 0.779488,
		0.549909, -0.578345, -0.602592,
		0.796875, 0.579405, 0.171115,
		39.162624, 36.614876, 46.506092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052395, 35.738541, 46.605522>,  <38.604813, 36.209293, 46.386311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052395, 35.738541, 46.605522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.204163, 36.090073, 46.721245>,  <39.295223, 36.300991, 46.790680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.204163, 36.090073, 46.721245>,  <39.052395, 35.738541, 46.605522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204163, 36.090073, 46.721245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294163, -0.411049, 0.862848,
		0.877215, -0.242281, -0.414480,
		0.379423, 0.878828, 0.289308,
		39.317989, 36.353722, 46.808037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648335, 35.553200, 46.922577>,  <39.052395, 35.738541, 46.605522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648335, 35.553200, 46.922577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.624485, 35.932716, 47.046665>,  <39.610176, 36.160427, 47.121117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.624485, 35.932716, 47.046665>,  <39.648335, 35.553200, 46.922577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624485, 35.932716, 47.046665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168821, -0.296712, 0.939926,
		0.983842, 0.108416, -0.142484,
		-0.059627, 0.948793, 0.310220,
		39.606598, 36.217354, 47.139732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239044, 35.809814, 47.268883>,  <39.648335, 35.553200, 46.922577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239044, 35.809814, 47.268883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.954731, 36.048531, 47.417809>,  <39.784142, 36.191761, 47.507164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.954731, 36.048531, 47.417809>,  <40.239044, 35.809814, 47.268883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954731, 36.048531, 47.417809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330065, -0.184440, 0.925764,
		0.621162, 0.780908, -0.065884,
		-0.710785, 0.596795, 0.372318,
		39.741497, 36.227570, 47.529503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567986, 36.265755, 47.653038>,  <40.239044, 35.809814, 47.268883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567986, 36.265755, 47.653038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.195480, 36.280811, 47.798000>,  <39.971977, 36.289845, 47.884979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.195480, 36.280811, 47.798000>,  <40.567986, 36.265755, 47.653038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195480, 36.280811, 47.798000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356884, -0.106186, 0.928094,
		0.073419, 0.993634, 0.085452,
		-0.931259, 0.037643, 0.362408,
		39.916103, 36.292103, 47.906723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554771, 36.855717, 48.190758>,  <40.567986, 36.265755, 47.653038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554771, 36.855717, 48.190758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.264519, 36.592815, 48.272221>,  <40.090366, 36.435074, 48.321098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.264519, 36.592815, 48.272221>,  <40.554771, 36.855717, 48.190758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264519, 36.592815, 48.272221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223361, 0.054950, 0.973186,
		-0.650823, 0.751662, 0.106932,
		-0.725631, -0.657256, 0.203654,
		40.046829, 36.395638, 48.333317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364750, 37.071171, 48.850163>,  <40.554771, 36.855717, 48.190758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364750, 37.071171, 48.850163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.185802, 36.720806, 48.777901>,  <40.078434, 36.510586, 48.734543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.185802, 36.720806, 48.777901>,  <40.364750, 37.071171, 48.850163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185802, 36.720806, 48.777901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334632, -0.351260, 0.874436,
		-0.829386, 0.330744, 0.450252,
		-0.447370, -0.875914, -0.180652,
		40.051590, 36.458031, 48.723705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781227, 36.881996, 49.347603>,  <40.364750, 37.071171, 48.850163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781227, 36.881996, 49.347603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.950253, 36.541691, 49.222614>,  <40.051666, 36.337505, 49.147621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.950253, 36.541691, 49.222614>,  <39.781227, 36.881996, 49.347603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950253, 36.541691, 49.222614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344254, -0.168261, 0.923676,
		-0.838409, -0.497880, 0.221779,
		0.422563, -0.850767, -0.312469,
		40.077023, 36.286461, 49.128872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801922, 36.282364, 49.951595>,  <39.781227, 36.881996, 49.347603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801922, 36.282364, 49.951595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.078396, 36.176807, 49.682484>,  <40.244282, 36.113472, 49.521019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.078396, 36.176807, 49.682484>,  <39.801922, 36.282364, 49.951595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078396, 36.176807, 49.682484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597599, -0.314780, 0.737421,
		-0.406375, -0.911743, -0.059869,
		0.691183, -0.263892, -0.672775,
		40.285751, 36.097641, 49.480652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997597, 35.722363, 50.253777>,  <39.801922, 36.282364, 49.951595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997597, 35.722363, 50.253777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.308731, 35.786209, 50.010632>,  <40.495411, 35.824516, 49.864746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.308731, 35.786209, 50.010632>,  <39.997597, 35.722363, 50.253777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308731, 35.786209, 50.010632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619395, -0.358456, 0.698469,
		-0.106408, -0.919801, -0.377683,
		0.777835, 0.159612, -0.607862,
		40.542080, 35.834091, 49.828274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440975, 35.147373, 50.378048>,  <39.997597, 35.722363, 50.253777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440975, 35.147373, 50.378048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.661228, 35.431835, 50.203205>,  <40.793381, 35.602512, 50.098301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.661228, 35.431835, 50.203205>,  <40.440975, 35.147373, 50.378048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661228, 35.431835, 50.203205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760179, -0.210861, 0.614545,
		0.344868, -0.670668, -0.656713,
		0.550631, 0.711156, -0.437108,
		40.826416, 35.645184, 50.072071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040939, 34.812912, 50.118713>,  <40.440975, 35.147373, 50.378048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.040939, 34.812912, 50.118713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.139889, 35.197895, 50.163403>,  <41.199257, 35.428886, 50.190216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.139889, 35.197895, 50.163403>,  <41.040939, 34.812912, 50.118713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139889, 35.197895, 50.163403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778490, -0.266076, 0.568469,
		0.576854, -0.053650, -0.815084,
		0.247372, 0.962458, 0.111721,
		41.214100, 35.486633, 50.196918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.709053, 34.800911, 50.227810>,  <41.040939, 34.812912, 50.118713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.709053, 34.800911, 50.227810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.675556, 35.187935, 50.323154>,  <41.655460, 35.420151, 50.380360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.675556, 35.187935, 50.323154>,  <41.709053, 34.800911, 50.227810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675556, 35.187935, 50.323154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874017, -0.043576, 0.483937,
		0.478625, 0.248855, -0.842015,
		-0.083739, 0.967560, 0.238360,
		41.650436, 35.478203, 50.394661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191574, 35.129692, 49.863968>,  <41.709053, 34.800911, 50.227810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191574, 35.129692, 49.863968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.097485, 35.333740, 50.194893>,  <42.041031, 35.456169, 50.393448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.097485, 35.333740, 50.194893>,  <42.191574, 35.129692, 49.863968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097485, 35.333740, 50.194893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929117, -0.131865, 0.345476,
		0.285327, 0.849937, -0.442940,
		-0.235224, 0.510116, 0.827316,
		42.026917, 35.486774, 50.443089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710884, 35.669418, 49.944950>,  <42.191574, 35.129692, 49.863968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.710884, 35.669418, 49.944950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.553272, 35.587265, 50.303291>,  <42.458706, 35.537971, 50.518295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.553272, 35.587265, 50.303291>,  <42.710884, 35.669418, 49.944950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.553272, 35.587265, 50.303291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914558, -0.184382, 0.359982,
		0.091245, 0.961156, 0.260487,
		-0.394028, -0.205384, 0.895857,
		42.435062, 35.525650, 50.572048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.215828, 35.947750, 50.509567>,  <42.710884, 35.669418, 49.944950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.215828, 35.947750, 50.509567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.965141, 35.691399, 50.686878>,  <42.814728, 35.537586, 50.793266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.965141, 35.691399, 50.686878>,  <43.215828, 35.947750, 50.509567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.965141, 35.691399, 50.686878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748274, -0.336157, 0.571913,
		-0.217516, 0.690123, 0.690230,
		-0.626716, -0.640881, 0.443281,
		42.777126, 35.499134, 50.819862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.398315, 35.844749, 51.215477>,  <43.215828, 35.947750, 50.509567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.398315, 35.844749, 51.215477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.187828, 35.505295, 51.193874>,  <43.061535, 35.301624, 51.180912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.187828, 35.505295, 51.193874>,  <43.398315, 35.844749, 51.215477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.187828, 35.505295, 51.193874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614691, -0.423501, 0.665434,
		-0.587579, 0.316969, 0.744501,
		-0.526218, -0.848633, -0.054002,
		43.029964, 35.250706, 51.177673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.277355, 35.407097, 51.936527>,  <43.398315, 35.844749, 51.215477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.277355, 35.407097, 51.936527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.173241, 35.148891, 51.649319>,  <43.110771, 34.993969, 51.476994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.173241, 35.148891, 51.649319>,  <43.277355, 35.407097, 51.936527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.173241, 35.148891, 51.649319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320151, -0.759287, 0.566557,
		-0.910909, -0.082409, 0.404295,
		-0.260286, -0.645517, -0.718025,
		43.095154, 34.955238, 51.433910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.977409, 35.005234, 52.323345>,  <43.277355, 35.407097, 51.936527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.977409, 35.005234, 52.323345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.053940, 34.778969, 52.002491>,  <43.099857, 34.643211, 51.809978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.053940, 34.778969, 52.002491>,  <42.977409, 35.005234, 52.323345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.053940, 34.778969, 52.002491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342738, -0.727288, 0.594628,
		-0.919743, -0.388688, 0.054728,
		0.191322, -0.565662, -0.802136,
		43.111336, 34.609272, 51.761848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.635883, 34.347477, 52.353016>,  <42.977409, 35.005234, 52.323345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.635883, 34.347477, 52.353016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.961033, 34.322113, 52.121426>,  <43.156124, 34.306896, 51.982471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.961033, 34.322113, 52.121426>,  <42.635883, 34.347477, 52.353016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.961033, 34.322113, 52.121426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202701, -0.901115, 0.383281,
		-0.546024, -0.428919, -0.719643,
		0.812877, -0.063408, -0.578973,
		43.204895, 34.303089, 51.947735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.548870, 33.810371, 52.011593>,  <42.635883, 34.347477, 52.353016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.548870, 33.810371, 52.011593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.941242, 33.879238, 52.047684>,  <43.176666, 33.920559, 52.069340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.941242, 33.879238, 52.047684>,  <42.548870, 33.810371, 52.011593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.941242, 33.879238, 52.047684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133999, -0.935211, 0.327757,
		0.140813, -0.309415, -0.940444,
		0.980926, 0.172171, 0.090228,
		43.235519, 33.930889, 52.074753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.983711, 33.373123, 52.197559>,  <42.548870, 33.810371, 52.011593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.983711, 33.373123, 52.197559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.750683, 33.083637, 52.345531>,  <41.610867, 32.909946, 52.434315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.750683, 33.083637, 52.345531>,  <41.983711, 33.373123, 52.197559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750683, 33.083637, 52.345531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745496, 0.294467, -0.597935,
		0.323803, -0.624119, -0.711075,
		-0.582570, -0.723716, 0.369929,
		41.575912, 32.866524, 52.456512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.798309, 32.938999, 51.645298>,  <41.983711, 33.373123, 52.197559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.798309, 32.938999, 51.645298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.512737, 32.896770, 51.922184>,  <41.341393, 32.871433, 52.088314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.512737, 32.896770, 51.922184>,  <41.798309, 32.938999, 51.645298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.512737, 32.896770, 51.922184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692769, 0.250292, -0.676332,
		-0.101851, -0.962397, -0.251830,
		-0.713931, -0.105575, 0.692211,
		41.298557, 32.865097, 52.129848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255882, 32.436123, 51.378174>,  <41.798309, 32.938999, 51.645298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255882, 32.436123, 51.378174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.046082, 32.630215, 51.658016>,  <40.920200, 32.746670, 51.825920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.046082, 32.630215, 51.658016>,  <41.255882, 32.436123, 51.378174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046082, 32.630215, 51.658016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766065, 0.089617, -0.636485,
		-0.371536, -0.869784, 0.324709,
		-0.524505, 0.485225, 0.699607,
		40.888729, 32.775784, 51.867897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629402, 32.147221, 51.348179>,  <41.255882, 32.436123, 51.378174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629402, 32.147221, 51.348179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.565735, 32.504547, 51.516300>,  <40.527534, 32.718941, 51.617172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.565735, 32.504547, 51.516300>,  <40.629402, 32.147221, 51.348179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565735, 32.504547, 51.516300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860013, 0.083602, -0.503376,
		-0.484811, -0.441589, 0.754955,
		-0.159170, 0.893314, 0.420304,
		40.517982, 32.772541, 51.642391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949608, 32.092148, 51.539139>,  <40.629402, 32.147221, 51.348179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949608, 32.092148, 51.539139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.037922, 32.482162, 51.548630>,  <40.090912, 32.716171, 51.554325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.037922, 32.482162, 51.548630>,  <39.949608, 32.092148, 51.539139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037922, 32.482162, 51.548630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788450, 0.192753, -0.584117,
		-0.574107, 0.110257, 0.811323,
		0.220787, 0.975033, 0.023729,
		40.104156, 32.774673, 51.555748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335224, 32.441170, 51.611965>,  <39.949608, 32.092148, 51.539139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335224, 32.441170, 51.611965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.575974, 32.739178, 51.496937>,  <39.720421, 32.917984, 51.427921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.575974, 32.739178, 51.496937>,  <39.335224, 32.441170, 51.611965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575974, 32.739178, 51.496937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785605, 0.487678, -0.380782,
		-0.143449, 0.455098, 0.878811,
		0.601870, 0.745021, -0.287570,
		39.756535, 32.962685, 51.410667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033161, 33.054230, 51.884972>,  <39.335224, 32.441170, 51.611965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033161, 33.054230, 51.884972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.263702, 33.160301, 51.575779>,  <39.402027, 33.223946, 51.390263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.263702, 33.160301, 51.575779>,  <39.033161, 33.054230, 51.884972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263702, 33.160301, 51.575779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730683, 0.590806, -0.342127,
		0.365956, 0.761989, 0.534275,
		0.576350, 0.265182, -0.772981,
		39.436607, 33.239857, 51.343884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838764, 33.736282, 51.665104>,  <39.033161, 33.054230, 51.884972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838764, 33.736282, 51.665104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.050755, 33.635757, 51.341137>,  <39.177948, 33.575443, 51.146755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.050755, 33.635757, 51.341137>,  <38.838764, 33.736282, 51.665104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050755, 33.635757, 51.341137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645982, 0.499114, -0.577575,
		0.549394, 0.829293, 0.102174,
		0.529976, -0.251313, -0.809918,
		39.209747, 33.560364, 51.098160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925117, 34.359379, 51.250916>,  <38.838764, 33.736282, 51.665104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925117, 34.359379, 51.250916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.984058, 34.049313, 51.005180>,  <39.019424, 33.863274, 50.857738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.984058, 34.049313, 51.005180>,  <38.925117, 34.359379, 51.250916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984058, 34.049313, 51.005180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608224, 0.418782, -0.674303,
		0.779968, 0.473015, -0.409764,
		0.147354, -0.775163, -0.614336,
		39.028263, 33.816765, 50.820881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125340, 34.692696, 50.590931>,  <38.925117, 34.359379, 51.250916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125340, 34.692696, 50.590931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.016308, 34.320724, 50.492191>,  <38.950890, 34.097542, 50.432949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.016308, 34.320724, 50.492191>,  <39.125340, 34.692696, 50.590931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016308, 34.320724, 50.492191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477229, 0.353450, -0.804565,
		0.835437, -0.101503, -0.540132,
		-0.272575, -0.929930, -0.246845,
		38.934536, 34.041744, 50.418137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231480, 34.696297, 49.868366>,  <39.125340, 34.692696, 50.590931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231480, 34.696297, 49.868366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.975609, 34.406658, 49.971512>,  <38.822086, 34.232876, 50.033398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.975609, 34.406658, 49.971512>,  <39.231480, 34.696297, 49.868366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975609, 34.406658, 49.971512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633127, 0.306140, -0.710935,
		0.435848, -0.618026, -0.654279,
		-0.639677, -0.724101, 0.257859,
		38.783707, 34.189426, 50.048870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008041, 34.355164, 49.268906>,  <39.231480, 34.696297, 49.868366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008041, 34.355164, 49.268906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.703312, 34.251076, 49.506195>,  <38.520473, 34.188622, 49.648567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.703312, 34.251076, 49.506195>,  <39.008041, 34.355164, 49.268906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703312, 34.251076, 49.506195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647750, 0.296170, -0.701928,
		0.006963, -0.919004, -0.394188,
		-0.761821, -0.260223, 0.593223,
		38.474766, 34.173008, 49.684162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486462, 34.035885, 48.808285>,  <39.008041, 34.355164, 49.268906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486462, 34.035885, 48.808285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.309727, 34.187401, 49.133564>,  <38.203686, 34.278309, 49.328732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.309727, 34.187401, 49.133564>,  <38.486462, 34.035885, 48.808285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309727, 34.187401, 49.133564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695689, 0.427637, -0.577185,
		-0.566387, -0.820758, 0.074574,
		-0.441839, 0.378791, 0.813201,
		38.177174, 34.301037, 49.377525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786411, 33.947914, 48.633968>,  <38.486462, 34.035885, 48.808285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786411, 33.947914, 48.633968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.786453, 34.196793, 48.947113>,  <37.786480, 34.346119, 49.134998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.786453, 34.196793, 48.947113>,  <37.786411, 33.947914, 48.633968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786453, 34.196793, 48.947113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600052, 0.626295, -0.497687,
		-0.799961, -0.469704, 0.373418,
		0.000104, 0.622200, 0.782858,
		37.786484, 34.383453, 49.181969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054741, 34.129604, 48.849251>,  <37.786411, 33.947914, 48.633968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054741, 34.129604, 48.849251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.286304, 34.434055, 48.966248>,  <37.425243, 34.616726, 49.036446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.286304, 34.434055, 48.966248>,  <37.054741, 34.129604, 48.849251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286304, 34.434055, 48.966248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537687, 0.626011, -0.564803,
		-0.612988, 0.169701, 0.771652,
		0.578911, 0.761125, 0.292491,
		37.459976, 34.662392, 49.053993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716053, 34.695339, 48.741123>,  <37.054741, 34.129604, 48.849251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716053, 34.695339, 48.741123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.061111, 34.889183, 48.799080>,  <37.268147, 35.005489, 48.833855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.061111, 34.889183, 48.799080>,  <36.716053, 34.695339, 48.741123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061111, 34.889183, 48.799080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314354, 0.738081, -0.597008,
		-0.396257, 0.469460, 0.789042,
		0.862648, 0.484608, 0.144893,
		37.319904, 35.034565, 48.842548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672470, 35.352558, 49.152199>,  <36.716053, 34.695339, 48.741123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672470, 35.352558, 49.152199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.990196, 35.382927, 48.911102>,  <37.180832, 35.401150, 48.766445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.990196, 35.382927, 48.911102>,  <36.672470, 35.352558, 49.152199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990196, 35.382927, 48.911102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423552, 0.780471, -0.459858,
		0.435507, 0.620565, 0.652099,
		0.794316, 0.075926, -0.602742,
		37.228493, 35.405704, 48.730278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647053, 36.025864, 49.062904>,  <36.672470, 35.352558, 49.152199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647053, 36.025864, 49.062904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.906605, 35.902729, 48.784569>,  <37.062336, 35.828850, 48.617565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.906605, 35.902729, 48.784569>,  <36.647053, 36.025864, 49.062904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906605, 35.902729, 48.784569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441370, 0.592650, -0.673764,
		0.619797, 0.744315, 0.248690,
		0.648879, -0.307832, -0.695841,
		37.101269, 35.810379, 48.575817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870380, 36.603901, 48.643963>,  <36.647053, 36.025864, 49.062904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870380, 36.603901, 48.643963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.956501, 36.288929, 48.412933>,  <37.008175, 36.099945, 48.274315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.956501, 36.288929, 48.412933>,  <36.870380, 36.603901, 48.643963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956501, 36.288929, 48.412933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400125, 0.468388, -0.787726,
		0.890812, 0.400701, -0.214227,
		0.215301, -0.787434, -0.577576,
		37.021091, 36.052700, 48.239662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157963, 36.858112, 47.939438>,  <36.870380, 36.603901, 48.643963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157963, 36.858112, 47.939438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.056595, 36.475567, 47.881275>,  <36.995773, 36.246040, 47.846378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.056595, 36.475567, 47.881275>,  <37.157963, 36.858112, 47.939438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056595, 36.475567, 47.881275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179492, 0.194195, -0.964402,
		0.950558, -0.218298, -0.220873,
		-0.253420, -0.956365, -0.145411,
		36.980568, 36.188656, 47.837650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.772934, 37.467777, 27.761372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.402626, 37.338898, 27.682232>,  <44.180443, 37.261570, 27.634748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.402626, 37.338898, 27.682232>,  <44.772934, 37.467777, 27.761372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.402626, 37.338898, 27.682232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328363, 0.425726, 0.843170,
		-0.187439, 0.845545, -0.499921,
		-0.925767, -0.322199, -0.197848,
		44.124897, 37.242237, 27.622877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.397339, 37.980171, 27.926458>,  <44.772934, 37.467777, 27.761372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.397339, 37.980171, 27.926458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.124855, 37.687733, 27.941647>,  <43.961365, 37.512268, 27.950760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.124855, 37.687733, 27.941647>,  <44.397339, 37.980171, 27.926458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.124855, 37.687733, 27.941647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443626, 0.453502, 0.773002,
		-0.582362, 0.509734, -0.633266,
		-0.681213, -0.731100, 0.037971,
		43.920490, 37.468403, 27.953037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.784435, 38.305347, 28.101685>,  <44.397339, 37.980171, 27.926458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.784435, 38.305347, 28.101685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.688206, 37.924892, 28.179100>,  <43.630466, 37.696617, 28.225550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.688206, 37.924892, 28.179100>,  <43.784435, 38.305347, 28.101685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.688206, 37.924892, 28.179100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421370, 0.281968, 0.861940,
		-0.874398, 0.125807, -0.468616,
		-0.240573, -0.951140, 0.193541,
		43.616035, 37.639549, 28.237162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.212662, 38.366825, 28.521351>,  <43.784435, 38.305347, 28.101685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.212662, 38.366825, 28.521351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.348183, 37.999229, 28.602022>,  <43.429497, 37.778671, 28.650425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.348183, 37.999229, 28.602022>,  <43.212662, 38.366825, 28.521351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.348183, 37.999229, 28.602022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268927, 0.110824, 0.956763,
		-0.901604, -0.378392, -0.209593,
		0.338804, -0.918987, 0.201679,
		43.449825, 37.723534, 28.662525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688152, 38.088284, 28.897871>,  <43.212662, 38.366825, 28.521351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688152, 38.088284, 28.897871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.013420, 37.871990, 28.983988>,  <43.208580, 37.742214, 29.035658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.013420, 37.871990, 28.983988>,  <42.688152, 38.088284, 28.897871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.013420, 37.871990, 28.983988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270324, -0.023308, 0.962487,
		-0.515435, -0.840868, -0.165128,
		0.813174, -0.540738, 0.215294,
		43.257374, 37.709770, 29.048576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396698, 37.503540, 29.265671>,  <42.688152, 38.088284, 28.897871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396698, 37.503540, 29.265671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.784512, 37.514488, 29.363043>,  <43.017200, 37.521057, 29.421467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.784512, 37.514488, 29.363043>,  <42.396698, 37.503540, 29.265671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.784512, 37.514488, 29.363043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233226, -0.200779, 0.951469,
		0.074918, -0.979254, -0.188278,
		0.969532, 0.027371, 0.243430,
		43.075371, 37.522701, 29.436071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.592724, 36.877407, 29.670185>,  <42.396698, 37.503540, 29.265671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.592724, 36.877407, 29.670185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.903183, 37.111927, 29.763004>,  <43.089458, 37.252640, 29.818697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.903183, 37.111927, 29.763004>,  <42.592724, 36.877407, 29.670185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.903183, 37.111927, 29.763004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105526, -0.242043, 0.964510,
		0.621660, -0.773088, -0.125990,
		0.776146, 0.586303, 0.232049,
		43.136028, 37.287819, 29.832619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.172981, 36.557137, 30.053209>,  <42.592724, 36.877407, 29.670185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.172981, 36.557137, 30.053209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.148575, 36.943214, 30.154928>,  <43.133930, 37.174862, 30.215960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.148575, 36.943214, 30.154928>,  <43.172981, 36.557137, 30.053209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.148575, 36.943214, 30.154928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120359, -0.260028, 0.958071,
		0.990853, 0.027854, 0.132037,
		-0.061019, 0.965199, 0.254297,
		43.130268, 37.232773, 30.231216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.475681, 36.528320, 30.654737>,  <43.172981, 36.557137, 30.053209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.475681, 36.528320, 30.654737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.314869, 36.894371, 30.666853>,  <43.218380, 37.114002, 30.674122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.314869, 36.894371, 30.666853>,  <43.475681, 36.528320, 30.654737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.314869, 36.894371, 30.666853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133544, -0.091330, 0.986825,
		0.905834, 0.392692, 0.158927,
		-0.402033, 0.915124, 0.030288,
		43.194260, 37.168907, 30.675940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.584362, 36.740520, 31.371878>,  <43.475681, 36.528320, 30.654737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.584362, 36.740520, 31.371878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.336666, 37.030499, 31.251211>,  <43.188049, 37.204487, 31.178812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.336666, 37.030499, 31.251211>,  <43.584362, 36.740520, 31.371878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.336666, 37.030499, 31.251211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328878, 0.109407, 0.938013,
		0.713012, 0.680064, 0.170669,
		-0.619236, 0.724944, -0.301666,
		43.150894, 37.247982, 31.160711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.766495, 37.300415, 31.659256>,  <43.584362, 36.740520, 31.371878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.766495, 37.300415, 31.659256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.374435, 37.323334, 31.583324>,  <43.139202, 37.337086, 31.537766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.374435, 37.323334, 31.583324>,  <43.766495, 37.300415, 31.659256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.374435, 37.323334, 31.583324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177368, 0.174660, 0.968522,
		0.088645, 0.982961, -0.161030,
		-0.980144, 0.057293, -0.189829,
		43.080391, 37.340523, 31.526377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.614548, 37.936821, 31.850302>,  <43.766495, 37.300415, 31.659256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.614548, 37.936821, 31.850302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.262966, 37.746113, 31.845770>,  <43.052017, 37.631687, 31.843050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.262966, 37.746113, 31.845770>,  <43.614548, 37.936821, 31.850302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.262966, 37.746113, 31.845770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210994, 0.367458, 0.905790,
		-0.427689, 0.798540, -0.423575,
		-0.878956, -0.476769, -0.011330,
		42.999279, 37.603081, 31.842371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.067852, 38.403782, 32.119453>,  <43.614548, 37.936821, 31.850302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.067852, 38.403782, 32.119453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.976524, 38.016850, 32.163528>,  <42.921726, 37.784691, 32.189972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.976524, 38.016850, 32.163528>,  <43.067852, 38.403782, 32.119453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.976524, 38.016850, 32.163528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063097, 0.127641, 0.989811,
		-0.971539, 0.219044, -0.090179,
		-0.228323, -0.967330, 0.110187,
		42.908028, 37.726650, 32.196583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.564045, 38.501759, 32.638496>,  <43.067852, 38.403782, 32.119453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.564045, 38.501759, 32.638496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.613163, 38.104950, 32.649845>,  <42.642635, 37.866863, 32.656654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.613163, 38.104950, 32.649845>,  <42.564045, 38.501759, 32.638496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.613163, 38.104950, 32.649845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283418, -0.007657, 0.958966,
		-0.951102, -0.125801, -0.282099,
		0.122799, -0.992026, 0.028372,
		42.650002, 37.807343, 32.658356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.981121, 38.202267, 33.028564>,  <42.564045, 38.501759, 32.638496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.981121, 38.202267, 33.028564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.231567, 37.890961, 33.047665>,  <42.381836, 37.704178, 33.059124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.231567, 37.890961, 33.047665>,  <41.981121, 38.202267, 33.028564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.231567, 37.890961, 33.047665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206179, -0.106192, 0.972735,
		-0.751977, -0.618889, -0.226951,
		0.626115, -0.778267, 0.047748,
		42.419403, 37.657482, 33.061989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647297, 37.672737, 33.418560>,  <41.981121, 38.202267, 33.028564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647297, 37.672737, 33.418560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.044067, 37.626259, 33.438873>,  <42.282131, 37.598373, 33.451061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.044067, 37.626259, 33.438873>,  <41.647297, 37.672737, 33.418560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.044067, 37.626259, 33.438873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068464, -0.153653, 0.985750,
		-0.106730, -0.981270, -0.160368,
		0.991928, -0.116189, 0.050782,
		42.341644, 37.591400, 33.454109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.723301, 37.267845, 34.009586>,  <41.647297, 37.672737, 33.418560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.723301, 37.267845, 34.009586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.084053, 37.425079, 33.937935>,  <42.300507, 37.519421, 33.894943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.084053, 37.425079, 33.937935>,  <41.723301, 37.267845, 34.009586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084053, 37.425079, 33.937935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222281, -0.066738, 0.972696,
		0.370402, -0.917075, -0.147566,
		0.901883, 0.393090, -0.179128,
		42.354618, 37.543007, 33.884197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195892, 36.865036, 34.414307>,  <41.723301, 37.267845, 34.009586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.195892, 36.865036, 34.414307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.357533, 37.221165, 34.330376>,  <42.454517, 37.434841, 34.280018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.357533, 37.221165, 34.330376>,  <42.195892, 36.865036, 34.414307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357533, 37.221165, 34.330376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416770, 0.024989, 0.908668,
		0.814251, -0.454645, -0.360962,
		0.404101, 0.890323, -0.209829,
		42.478764, 37.488262, 34.267426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.810383, 36.824486, 34.628983>,  <42.195892, 36.865036, 34.414307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.810383, 36.824486, 34.628983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.734249, 37.216457, 34.605267>,  <42.688568, 37.451641, 34.591038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.734249, 37.216457, 34.605267>,  <42.810383, 36.824486, 34.628983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734249, 37.216457, 34.605267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411507, 0.134467, 0.901433,
		0.891312, 0.147171, -0.428840,
		-0.190330, 0.979928, -0.059290,
		42.677151, 37.510437, 34.587479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.422813, 37.165386, 34.927612>,  <42.810383, 36.824486, 34.628983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.422813, 37.165386, 34.927612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.127514, 37.434628, 34.945187>,  <42.950336, 37.596172, 34.955730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.127514, 37.434628, 34.945187>,  <43.422813, 37.165386, 34.927612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.127514, 37.434628, 34.945187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389534, 0.372250, 0.842433,
		0.550688, 0.639035, -0.537007,
		-0.738245, 0.673100, 0.043932,
		42.906040, 37.636559, 34.958366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.735817, 37.768112, 35.034924>,  <43.422813, 37.165386, 34.927612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.735817, 37.768112, 35.034924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.366547, 37.828426, 35.176350>,  <43.144985, 37.864613, 35.261204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.366547, 37.828426, 35.176350>,  <43.735817, 37.768112, 35.034924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.366547, 37.828426, 35.176350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382455, 0.268514, 0.884098,
		0.038369, 0.951402, -0.305553,
		-0.923177, 0.150782, 0.353565,
		43.089592, 37.873661, 35.282421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.192142, 37.162720, 34.851021>,  <43.735817, 37.768112, 35.034924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.192142, 37.162720, 34.851021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.427448, 36.873383, 34.995647>,  <44.568630, 36.699780, 35.082424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.427448, 36.873383, 34.995647>,  <44.192142, 37.162720, 34.851021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.427448, 36.873383, 34.995647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745844, 0.312517, -0.588260,
		0.312517, 0.615720, 0.723340,
		0.588260, -0.723340, 0.361564,
		44.603928, 36.656380, 35.104118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.919701, 37.464691, 35.101208>,  <44.192142, 37.162720, 34.851021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.919701, 37.464691, 35.101208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.988441, 37.077927, 35.025784>,  <45.029686, 36.845867, 34.980530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.988441, 37.077927, 35.025784>,  <44.919701, 37.464691, 35.101208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.988441, 37.077927, 35.025784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787525, 0.249837, -0.563371,
		0.591838, -0.051683, 0.804398,
		0.171852, -0.966908, -0.188565,
		45.039997, 36.787853, 34.969215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.599369, 37.399998, 34.976398>,  <44.919701, 37.464691, 35.101208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.599369, 37.399998, 34.976398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.481415, 37.047714, 34.828133>,  <45.410645, 36.836346, 34.739174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.481415, 37.047714, 34.828133>,  <45.599369, 37.399998, 34.976398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.481415, 37.047714, 34.828133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626860, 0.114470, -0.770677,
		0.721173, -0.459616, 0.518327,
		-0.294883, -0.880710, -0.370667,
		45.392948, 36.783501, 34.716934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.239021, 36.953594, 34.790428>,  <45.599369, 37.399998, 34.976398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.239021, 36.953594, 34.790428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.920185, 36.819839, 34.589294>,  <45.728886, 36.739586, 34.468616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.920185, 36.819839, 34.589294>,  <46.239021, 36.953594, 34.790428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.920185, 36.819839, 34.589294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571438, -0.148476, -0.807102,
		0.195224, -0.930668, 0.309427,
		-0.797086, -0.334384, -0.502833,
		45.681061, 36.719524, 34.438446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.550423, 36.628704, 34.311226>,  <46.239021, 36.953594, 34.790428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.550423, 36.628704, 34.311226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.179787, 36.619980, 34.161049>,  <45.957405, 36.614746, 34.070942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.179787, 36.619980, 34.161049>,  <46.550423, 36.628704, 34.311226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.179787, 36.619980, 34.161049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375725, -0.010793, -0.926668,
		0.016165, -0.999704, 0.018197,
		-0.926590, -0.021816, -0.375439,
		45.901810, 36.613438, 34.048416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.422901, 35.949306, 33.900646>,  <46.550423, 36.628704, 34.311226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.422901, 35.949306, 33.900646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.205524, 36.258404, 33.769474>,  <46.075100, 36.443863, 33.690769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.205524, 36.258404, 33.769474>,  <46.422901, 35.949306, 33.900646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.205524, 36.258404, 33.769474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414796, -0.092440, -0.905206,
		-0.729808, -0.627949, -0.270296,
		-0.543438, 0.772745, -0.327934,
		46.042492, 36.490227, 33.671093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.212982, 35.796005, 33.208942>,  <46.422901, 35.949306, 33.900646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.212982, 35.796005, 33.208942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.170883, 36.193417, 33.226063>,  <46.145622, 36.431862, 33.236336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.170883, 36.193417, 33.226063>,  <46.212982, 35.796005, 33.208942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.170883, 36.193417, 33.226063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382262, 0.080154, -0.920571,
		-0.918041, -0.080525, -0.388222,
		-0.105246, 0.993525, 0.042803,
		46.139309, 36.491474, 33.238903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.912006, 35.888168, 32.604240>,  <46.212982, 35.796005, 33.208942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.912006, 35.888168, 32.604240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.065971, 36.245697, 32.696270>,  <46.158348, 36.460213, 32.751488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.065971, 36.245697, 32.696270>,  <45.912006, 35.888168, 32.604240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.065971, 36.245697, 32.696270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166082, 0.178139, -0.969888,
		-0.907889, 0.411530, -0.079880,
		0.384909, 0.893817, 0.230078,
		46.181442, 36.513844, 32.765293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.508957, 36.387306, 32.222450>,  <45.912006, 35.888168, 32.604240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.508957, 36.387306, 32.222450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.860039, 36.558582, 32.308517>,  <46.070686, 36.661346, 32.360157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.860039, 36.558582, 32.308517>,  <45.508957, 36.387306, 32.222450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.860039, 36.558582, 32.308517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118286, 0.241528, -0.963158,
		-0.464381, 0.870815, 0.161341,
		0.877701, 0.428188, 0.215167,
		46.123348, 36.687038, 32.373066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.592232, 36.948143, 31.690075>,  <45.508957, 36.387306, 32.222450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.592232, 36.948143, 31.690075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.962204, 36.918148, 31.839142>,  <46.184189, 36.900150, 31.928581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.962204, 36.918148, 31.839142>,  <45.592232, 36.948143, 31.690075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.962204, 36.918148, 31.839142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379711, 0.135844, -0.915077,
		0.017997, 0.987888, 0.154120,
		0.924930, -0.074990, 0.372667,
		46.239681, 36.895653, 31.950943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.870010, 37.520855, 31.419437>,  <45.592232, 36.948143, 31.690075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.870010, 37.520855, 31.419437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.180218, 37.293404, 31.529146>,  <46.366344, 37.156933, 31.594971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.180218, 37.293404, 31.529146>,  <45.870010, 37.520855, 31.419437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.180218, 37.293404, 31.529146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439966, 0.175223, -0.880753,
		0.452765, 0.803714, 0.386068,
		0.775522, -0.568631, 0.274272,
		46.412872, 37.122814, 31.611427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.513332, 37.839600, 31.139784>,  <45.870010, 37.520855, 31.419437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.513332, 37.839600, 31.139784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.626831, 37.462173, 31.208099>,  <46.694931, 37.235718, 31.249088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.626831, 37.462173, 31.208099>,  <46.513332, 37.839600, 31.139784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.626831, 37.462173, 31.208099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526686, 0.004523, -0.850048,
		0.801303, 0.331155, 0.498246,
		0.283752, -0.943565, 0.170791,
		46.711956, 37.179104, 31.259336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.305138, 37.817310, 30.877707>,  <46.513332, 37.839600, 31.139784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.305138, 37.817310, 30.877707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.159481, 37.445629, 30.902933>,  <47.072086, 37.222618, 30.918068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.159481, 37.445629, 30.902933>,  <47.305138, 37.817310, 30.877707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.159481, 37.445629, 30.902933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467687, -0.240995, -0.850406,
		0.805401, -0.280173, 0.522334,
		-0.364141, -0.929206, 0.063064,
		47.050240, 37.166866, 30.921852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.853493, 37.334415, 30.628294>,  <47.305138, 37.817310, 30.877707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.853493, 37.334415, 30.628294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.513248, 37.127975, 30.588097>,  <47.309101, 37.004112, 30.563978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.513248, 37.127975, 30.588097>,  <47.853493, 37.334415, 30.628294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.513248, 37.127975, 30.588097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373713, -0.458986, -0.806022,
		0.369865, -0.723167, 0.583292,
		-0.850611, -0.516103, -0.100494,
		47.258064, 36.973145, 30.557949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.092010, 36.793324, 30.263166>,  <47.853493, 37.334415, 30.628294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.092010, 36.793324, 30.263166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.703564, 36.710812, 30.215191>,  <47.470497, 36.661304, 30.186405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.703564, 36.710812, 30.215191>,  <48.092010, 36.793324, 30.263166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.703564, 36.710812, 30.215191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223477, -0.610078, -0.760173,
		0.083640, -0.765018, 0.638555,
		-0.971114, -0.206283, -0.119937,
		47.412228, 36.648926, 30.179209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.065041, 36.151642, 30.141502>,  <48.092010, 36.793324, 30.263166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.065041, 36.151642, 30.141502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.729412, 36.301319, 29.983543>,  <47.528034, 36.391125, 29.888767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.729412, 36.301319, 29.983543>,  <48.065041, 36.151642, 30.141502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.729412, 36.301319, 29.983543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226019, -0.420500, -0.878690,
		-0.494853, -0.826535, 0.268254,
		-0.839068, 0.374192, -0.394898,
		47.477692, 36.413574, 29.865074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.850727, 35.605011, 29.808372>,  <48.065041, 36.151642, 30.141502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.850727, 35.605011, 29.808372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.649757, 35.900089, 29.627989>,  <47.529175, 36.077137, 29.519758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.649757, 35.900089, 29.627989>,  <47.850727, 35.605011, 29.808372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.649757, 35.900089, 29.627989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035208, -0.503682, -0.863171,
		-0.863902, -0.449558, 0.227091,
		-0.502427, 0.737700, -0.450960,
		47.499027, 36.121399, 29.492701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.615898, 35.258080, 29.280064>,  <47.850727, 35.605011, 29.808372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.615898, 35.258080, 29.280064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.487080, 35.624287, 29.183632>,  <47.409786, 35.844009, 29.125772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.487080, 35.624287, 29.183632>,  <47.615898, 35.258080, 29.280064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.487080, 35.624287, 29.183632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169226, -0.306214, -0.936801,
		-0.931476, -0.260898, 0.253544,
		-0.322048, 0.915514, -0.241080,
		47.390465, 35.898941, 29.111307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.926857, 35.209492, 29.045923>,  <47.615898, 35.258080, 29.280064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.926857, 35.209492, 29.045923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.104111, 35.518143, 28.863400>,  <47.210464, 35.703335, 28.753885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.104111, 35.518143, 28.863400>,  <46.926857, 35.209492, 29.045923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.104111, 35.518143, 28.863400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204655, -0.408493, -0.889522,
		-0.872781, 0.487565, -0.023100,
		0.443136, 0.771630, -0.456308,
		47.237053, 35.749630, 28.726507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.363892, 35.453163, 28.563843>,  <46.926857, 35.209492, 29.045923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.363892, 35.453163, 28.563843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.726902, 35.574924, 28.448092>,  <46.944706, 35.647980, 28.378641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.726902, 35.574924, 28.448092>,  <46.363892, 35.453163, 28.563843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.726902, 35.574924, 28.448092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263010, -0.125296, -0.956622,
		-0.327455, 0.944267, -0.033649,
		0.907523, 0.304401, -0.289381,
		46.999161, 35.666245, 28.361277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.203392, 35.828720, 28.033945>,  <46.363892, 35.453163, 28.563843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.203392, 35.828720, 28.033945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.587757, 35.728760, 27.986292>,  <46.818375, 35.668781, 27.957699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.587757, 35.728760, 27.986292>,  <46.203392, 35.828720, 28.033945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.587757, 35.728760, 27.986292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122937, 0.000396, -0.992414,
		0.248055, 0.968271, -0.030342,
		0.960914, -0.249903, -0.119134,
		46.876030, 35.653790, 27.950552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.112617, 38.908817, 42.768314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844212, 38.612396, 42.777966>,  <38.683167, 38.434544, 42.783756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844212, 38.612396, 42.777966>,  <39.112617, 38.908817, 42.768314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844212, 38.612396, 42.777966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191796, 0.142045, -0.971101,
		0.716208, -0.656252, -0.237445,
		-0.671015, -0.741051, 0.024132,
		38.642906, 38.390079, 42.785206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240093, 38.545887, 42.083740>,  <39.112617, 38.908817, 42.768314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240093, 38.545887, 42.083740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877647, 38.413689, 42.189358>,  <38.660179, 38.334370, 42.252728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877647, 38.413689, 42.189358>,  <39.240093, 38.545887, 42.083740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877647, 38.413689, 42.189358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200788, -0.213374, -0.956115,
		0.372336, -0.919370, 0.126982,
		-0.906118, -0.330500, 0.264045,
		38.605812, 38.314537, 42.268570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152172, 37.915146, 41.739468>,  <39.240093, 38.545887, 42.083740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152172, 37.915146, 41.739468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775192, 37.996017, 41.845985>,  <38.549004, 38.044540, 41.909897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775192, 37.996017, 41.845985>,  <39.152172, 37.915146, 41.739468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775192, 37.996017, 41.845985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327840, -0.402365, -0.854765,
		-0.065668, -0.892875, 0.445491,
		-0.942449, 0.202181, 0.266297,
		38.492458, 38.056671, 41.925873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815132, 37.388462, 41.424252>,  <39.152172, 37.915146, 41.739468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815132, 37.388462, 41.424252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520073, 37.645184, 41.508114>,  <38.343037, 37.799217, 41.558434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520073, 37.645184, 41.508114>,  <38.815132, 37.388462, 41.424252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520073, 37.645184, 41.508114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422574, -0.196659, -0.884735,
		-0.526599, -0.741220, 0.416277,
		-0.737648, 0.641808, 0.209660,
		38.298779, 37.837727, 41.571011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201492, 37.097275, 41.327553>,  <38.815132, 37.388462, 41.424252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201492, 37.097275, 41.327553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107616, 37.484856, 41.296421>,  <38.051292, 37.717403, 41.277744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107616, 37.484856, 41.296421>,  <38.201492, 37.097275, 41.327553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107616, 37.484856, 41.296421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615297, -0.210056, -0.759793,
		-0.752549, -0.130428, 0.645490,
		-0.234688, 0.968950, -0.077826,
		38.037209, 37.775539, 41.273075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524467, 36.969078, 40.961224>,  <38.201492, 37.097275, 41.327553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524467, 36.969078, 40.961224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630966, 37.351929, 40.915565>,  <37.694866, 37.581638, 40.888172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630966, 37.351929, 40.915565>,  <37.524467, 36.969078, 40.961224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630966, 37.351929, 40.915565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347644, -0.015101, -0.937505,
		-0.899031, 0.289287, 0.328718,
		0.266244, 0.957123, -0.114145,
		37.710838, 37.639065, 40.881321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968544, 37.295956, 40.693501>,  <37.524467, 36.969078, 40.961224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968544, 37.295956, 40.693501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254681, 37.552757, 40.583149>,  <37.426361, 37.706841, 40.516937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254681, 37.552757, 40.583149>,  <36.968544, 37.295956, 40.693501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254681, 37.552757, 40.583149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434834, 0.099927, -0.894949,
		-0.546996, 0.760159, 0.350649,
		0.715343, 0.642007, -0.275883,
		37.469284, 37.745361, 40.500385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627041, 37.949284, 40.403343>,  <36.968544, 37.295956, 40.693501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627041, 37.949284, 40.403343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994797, 37.918285, 40.249088>,  <37.215450, 37.899685, 40.156536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994797, 37.918285, 40.249088>,  <36.627041, 37.949284, 40.403343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994797, 37.918285, 40.249088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389899, -0.049986, -0.919500,
		0.051983, 0.995739, -0.076173,
		0.919389, -0.077499, -0.385639,
		37.270615, 37.895035, 40.133396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582661, 38.458698, 39.900669>,  <36.627041, 37.949284, 40.403343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582661, 38.458698, 39.900669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874901, 38.203197, 39.804153>,  <37.050243, 38.049896, 39.746243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874901, 38.203197, 39.804153>,  <36.582661, 38.458698, 39.900669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874901, 38.203197, 39.804153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264331, 0.061242, -0.962485,
		0.629568, 0.766970, -0.124099,
		0.730597, -0.638754, -0.241290,
		37.094082, 38.011570, 39.731766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937679, 38.772278, 39.449970>,  <36.582661, 38.458698, 39.900669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937679, 38.772278, 39.449970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048481, 38.396000, 39.371624>,  <37.114960, 38.170235, 39.324615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048481, 38.396000, 39.371624>,  <36.937679, 38.772278, 39.449970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048481, 38.396000, 39.371624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031762, 0.194770, -0.980335,
		0.960344, 0.277776, 0.024073,
		0.277003, -0.940694, -0.195869,
		37.131580, 38.113792, 39.312862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479641, 38.784546, 38.791958>,  <36.937679, 38.772278, 39.449970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479641, 38.784546, 38.791958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353741, 38.406078, 38.822151>,  <37.278202, 38.178997, 38.840267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353741, 38.406078, 38.822151>,  <37.479641, 38.784546, 38.791958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353741, 38.406078, 38.822151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000016, -0.079535, -0.996832,
		0.949175, -0.313750, 0.025048,
		-0.314748, -0.946169, 0.075488,
		37.259315, 38.122227, 38.844799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916706, 38.394753, 38.477623>,  <37.479641, 38.784546, 38.791958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916706, 38.394753, 38.477623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578743, 38.181747, 38.457348>,  <37.375965, 38.053944, 38.445183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578743, 38.181747, 38.457348>,  <37.916706, 38.394753, 38.477623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578743, 38.181747, 38.457348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093109, -0.053086, -0.994240,
		0.526751, -0.844758, 0.094434,
		-0.844905, -0.532509, -0.050691,
		37.325272, 38.021996, 38.442139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065311, 37.789856, 37.989765>,  <37.916706, 38.394753, 38.477623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065311, 37.789856, 37.989765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668308, 37.837620, 38.000156>,  <37.430107, 37.866280, 38.006390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668308, 37.837620, 38.000156>,  <38.065311, 37.789856, 37.989765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668308, 37.837620, 38.000156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028811, -0.022049, -0.999342,
		-0.118760, -0.992600, 0.025324,
		-0.992505, 0.119412, 0.025979,
		37.370556, 37.873444, 38.007950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720982, 37.376572, 37.419601>,  <38.065311, 37.789856, 37.989765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720982, 37.376572, 37.419601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467945, 37.666126, 37.529732>,  <37.316124, 37.839859, 37.595810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467945, 37.666126, 37.529732>,  <37.720982, 37.376572, 37.419601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467945, 37.666126, 37.529732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283450, 0.114440, -0.952134,
		-0.720750, -0.680357, 0.132793,
		-0.632595, 0.723891, 0.275330,
		37.278168, 37.883293, 37.612331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157810, 37.417969, 36.805813>,  <37.720982, 37.376572, 37.419601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157810, 37.417969, 36.805813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430748, 37.147541, 36.694572>,  <38.594509, 36.985283, 36.627831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430748, 37.147541, 36.694572>,  <38.157810, 37.417969, 36.805813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430748, 37.147541, 36.694572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325810, -0.621789, 0.712198,
		-0.654419, -0.395351, -0.644542,
		0.682337, -0.676074, -0.278101,
		38.635452, 36.944721, 36.611145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800728, 36.721542, 36.921932>,  <38.157810, 37.417969, 36.805813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800728, 36.721542, 36.921932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197639, 36.672989, 36.932045>,  <38.435787, 36.643856, 36.938114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197639, 36.672989, 36.932045>,  <37.800728, 36.721542, 36.921932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197639, 36.672989, 36.932045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086948, -0.535807, 0.839852,
		-0.088399, -0.835569, -0.542227,
		0.992283, -0.121388, 0.025286,
		38.495323, 36.636574, 36.939632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952358, 35.935028, 37.118443>,  <37.800728, 36.721542, 36.921932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952358, 35.935028, 37.118443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289654, 36.129929, 37.209244>,  <38.492031, 36.246868, 37.263725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289654, 36.129929, 37.209244>,  <37.952358, 35.935028, 37.118443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289654, 36.129929, 37.209244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089950, -0.544248, 0.834088,
		0.529957, -0.682918, -0.502761,
		0.843241, 0.487254, 0.226999,
		38.542625, 36.276104, 37.277344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396126, 35.406891, 37.376907>,  <37.952358, 35.935028, 37.118443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396126, 35.406891, 37.376907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560097, 35.740299, 37.525070>,  <38.658482, 35.940346, 37.613968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560097, 35.740299, 37.525070>,  <38.396126, 35.406891, 37.376907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560097, 35.740299, 37.525070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065133, -0.431806, 0.899612,
		0.909788, -0.344654, -0.231300,
		0.409931, 0.833521, 0.370404,
		38.683075, 35.990356, 37.636192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930981, 35.176197, 37.782902>,  <38.396126, 35.406891, 37.376907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930981, 35.176197, 37.782902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847301, 35.544006, 37.916000>,  <38.797092, 35.764690, 37.995857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847301, 35.544006, 37.916000>,  <38.930981, 35.176197, 37.782902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847301, 35.544006, 37.916000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090845, -0.357075, 0.929648,
		0.973644, 0.164253, 0.158233,
		-0.209198, 0.919521, 0.332742,
		38.784542, 35.819862, 38.015823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204983, 35.199036, 38.439159>,  <38.930981, 35.176197, 37.782902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204983, 35.199036, 38.439159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927322, 35.486908, 38.445015>,  <38.760727, 35.659634, 38.448528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927322, 35.486908, 38.445015>,  <39.204983, 35.199036, 38.439159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927322, 35.486908, 38.445015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116488, -0.132377, 0.984331,
		0.710346, 0.681564, 0.175724,
		-0.694147, 0.719685, 0.014640,
		38.719078, 35.702812, 38.449406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317535, 35.575699, 38.931908>,  <39.204983, 35.199036, 38.439159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317535, 35.575699, 38.931908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953415, 35.736732, 38.893372>,  <38.734943, 35.833355, 38.870251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953415, 35.736732, 38.893372>,  <39.317535, 35.575699, 38.931908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953415, 35.736732, 38.893372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082714, 0.051140, 0.995260,
		0.405606, 0.913952, -0.013253,
		-0.910298, 0.402588, -0.096339,
		38.680325, 35.857510, 38.864471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282948, 36.179855, 39.361488>,  <39.317535, 35.575699, 38.931908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282948, 36.179855, 39.361488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908199, 36.055016, 39.298412>,  <38.683350, 35.980110, 39.260567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908199, 36.055016, 39.298412>,  <39.282948, 36.179855, 39.361488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908199, 36.055016, 39.298412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147750, -0.055398, 0.987472,
		-0.316927, 0.948432, 0.005788,
		-0.936871, -0.312102, -0.157688,
		38.627136, 35.961384, 39.251106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844860, 36.593937, 39.783413>,  <39.282948, 36.179855, 39.361488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844860, 36.593937, 39.783413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645489, 36.254299, 39.713436>,  <38.525864, 36.050518, 39.671448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645489, 36.254299, 39.713436>,  <38.844860, 36.593937, 39.783413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645489, 36.254299, 39.713436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129682, -0.126503, 0.983453,
		-0.857175, 0.512870, -0.047059,
		-0.498430, -0.849094, -0.174946,
		38.495960, 35.999573, 39.660954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273788, 36.659153, 40.209625>,  <38.844860, 36.593937, 39.783413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273788, 36.659153, 40.209625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317905, 36.275780, 40.104374>,  <38.344376, 36.045757, 40.041222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317905, 36.275780, 40.104374>,  <38.273788, 36.659153, 40.209625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317905, 36.275780, 40.104374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014879, -0.266310, 0.963772,
		-0.993788, -0.102382, -0.043633,
		0.110293, -0.958434, -0.263133,
		38.350994, 35.988251, 40.025433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851528, 36.342651, 40.749462>,  <38.273788, 36.659153, 40.209625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851528, 36.342651, 40.749462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057785, 36.043282, 40.582619>,  <38.181538, 35.863659, 40.482513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057785, 36.043282, 40.582619>,  <37.851528, 36.342651, 40.749462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057785, 36.043282, 40.582619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228740, -0.348898, 0.908817,
		-0.825707, -0.564033, -0.008712,
		0.515642, -0.748424, -0.417104,
		38.212479, 35.818756, 40.457489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675186, 35.706963, 41.112194>,  <37.851528, 36.342651, 40.749462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675186, 35.706963, 41.112194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027290, 35.622723, 40.942120>,  <38.238552, 35.572178, 40.840076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027290, 35.622723, 40.942120>,  <37.675186, 35.706963, 41.112194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027290, 35.622723, 40.942120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305299, -0.434564, 0.847318,
		-0.363214, -0.875672, -0.318235,
		0.880266, -0.210601, -0.425182,
		38.291370, 35.559540, 40.814564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773716, 34.917198, 41.135967>,  <37.675186, 35.706963, 41.112194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773716, 34.917198, 41.135967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125450, 35.107620, 41.131184>,  <38.336491, 35.221874, 41.128315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125450, 35.107620, 41.131184>,  <37.773716, 34.917198, 41.135967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125450, 35.107620, 41.131184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232892, -0.408015, 0.882771,
		0.415367, -0.779037, -0.469651,
		0.879336, 0.476052, -0.011955,
		38.389252, 35.250435, 41.127598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324497, 34.309444, 41.279125>,  <37.773716, 34.917198, 41.135967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324497, 34.309444, 41.279125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512447, 34.657734, 41.337170>,  <38.625217, 34.866707, 41.371998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512447, 34.657734, 41.337170>,  <38.324497, 34.309444, 41.279125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512447, 34.657734, 41.337170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454624, -0.379610, 0.805737,
		0.756662, -0.312622, -0.574221,
		0.469872, 0.870726, 0.145111,
		38.653408, 34.918953, 41.380703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608704, 33.931107, 40.793327>,  <38.324497, 34.309444, 41.279125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608704, 33.931107, 40.793327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524849, 33.540741, 40.769180>,  <38.474537, 33.306522, 40.754692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524849, 33.540741, 40.769180>,  <38.608704, 33.931107, 40.793327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524849, 33.540741, 40.769180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805144, 0.207325, -0.555661,
		0.554794, -0.067881, -0.829214,
		-0.209636, -0.975914, -0.060369,
		38.461960, 33.247967, 40.751068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555912, 33.726887, 40.033489>,  <38.608704, 33.931107, 40.793327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555912, 33.726887, 40.033489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358810, 33.444458, 40.236923>,  <38.240551, 33.275002, 40.358982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358810, 33.444458, 40.236923>,  <38.555912, 33.726887, 40.033489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358810, 33.444458, 40.236923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812339, 0.163739, -0.559727,
		0.311933, -0.688949, -0.654253,
		-0.492750, -0.706073, 0.508585,
		38.210987, 33.232635, 40.389500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177773, 33.298389, 39.569225>,  <38.555912, 33.726887, 40.033489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177773, 33.298389, 39.569225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986496, 33.256092, 39.917973>,  <37.871731, 33.230713, 40.127220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986496, 33.256092, 39.917973>,  <38.177773, 33.298389, 39.569225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986496, 33.256092, 39.917973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866796, 0.216660, -0.449135,
		-0.141405, -0.970503, -0.195265,
		-0.478193, -0.105745, 0.871865,
		37.843037, 33.224369, 40.179531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534271, 32.986923, 39.338032>,  <38.177773, 33.298389, 39.569225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534271, 32.986923, 39.338032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469559, 33.143555, 39.700356>,  <37.430733, 33.237534, 39.917751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469559, 33.143555, 39.700356>,  <37.534271, 32.986923, 39.338032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469559, 33.143555, 39.700356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967886, 0.116015, -0.223018,
		-0.192418, -0.912800, 0.360239,
		-0.161778, 0.391583, 0.905810,
		37.421024, 33.261028, 39.972099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948673, 32.756393, 39.571636>,  <37.534271, 32.986923, 39.338032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948673, 32.756393, 39.571636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949200, 33.075726, 39.812523>,  <36.949516, 33.267326, 39.957054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949200, 33.075726, 39.812523>,  <36.948673, 32.756393, 39.571636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949200, 33.075726, 39.812523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939102, 0.207932, -0.273590,
		-0.343635, -0.565178, 0.749992,
		0.001321, 0.798335, 0.602212,
		36.949596, 33.315228, 39.993187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404839, 32.774929, 40.004925>,  <36.948673, 32.756393, 39.571636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404839, 32.774929, 40.004925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467422, 33.169983, 40.001038>,  <36.504974, 33.407017, 39.998703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467422, 33.169983, 40.001038>,  <36.404839, 32.774929, 40.004925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467422, 33.169983, 40.001038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945723, 0.146971, -0.289840,
		-0.284827, 0.054545, 0.957026,
		0.156464, 0.987636, -0.009723,
		36.514362, 33.466274, 39.998119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747303, 33.206173, 40.337383>,  <36.404839, 32.774929, 40.004925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747303, 33.206173, 40.337383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964558, 33.439392, 40.095699>,  <36.094910, 33.579323, 39.950691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964558, 33.439392, 40.095699>,  <35.747303, 33.206173, 40.337383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964558, 33.439392, 40.095699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838541, 0.339730, -0.425950,
		-0.043081, 0.737999, 0.673425,
		0.543133, 0.583045, -0.604207,
		36.127499, 33.614304, 39.914436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439133, 33.836948, 40.364624>,  <35.747303, 33.206173, 40.337383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439133, 33.836948, 40.364624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646568, 33.858788, 40.023315>,  <35.771030, 33.871891, 39.818531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646568, 33.858788, 40.023315>,  <35.439133, 33.836948, 40.364624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646568, 33.858788, 40.023315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729850, 0.548123, -0.408510,
		0.445398, 0.834614, 0.324098,
		0.518594, 0.054593, -0.853276,
		35.802147, 33.875164, 39.767334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284184, 34.486279, 40.215847>,  <35.439133, 33.836948, 40.364624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284184, 34.486279, 40.215847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412880, 34.310589, 39.880333>,  <35.490097, 34.205173, 39.679024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412880, 34.310589, 39.880333>,  <35.284184, 34.486279, 40.215847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412880, 34.310589, 39.880333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555033, 0.630229, -0.542909,
		0.767088, 0.640229, -0.041016,
		0.321737, -0.439224, -0.838789,
		35.509399, 34.178822, 39.628696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475056, 35.038563, 39.656170>,  <35.284184, 34.486279, 40.215847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475056, 35.038563, 39.656170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386112, 34.712097, 39.442844>,  <35.332745, 34.516216, 39.314850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386112, 34.712097, 39.442844>,  <35.475056, 35.038563, 39.656170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386112, 34.712097, 39.442844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644255, 0.533568, -0.547942,
		0.731774, 0.221752, -0.644463,
		-0.222358, -0.816168, -0.533316,
		35.319405, 34.467247, 39.282848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477726, 35.268764, 38.991055>,  <35.475056, 35.038563, 39.656170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477726, 35.268764, 38.991055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244320, 34.944168, 39.003613>,  <35.104275, 34.749409, 39.011147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244320, 34.944168, 39.003613>,  <35.477726, 35.268764, 38.991055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244320, 34.944168, 39.003613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628928, 0.427110, -0.649636,
		0.513768, -0.398816, -0.759597,
		-0.583517, -0.811494, 0.031392,
		35.069263, 34.700722, 39.013031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502888, 35.056541, 38.215950>,  <35.477726, 35.268764, 38.991055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502888, 35.056541, 38.215950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189041, 34.905575, 38.412697>,  <35.000732, 34.814995, 38.530746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189041, 34.905575, 38.412697>,  <35.502888, 35.056541, 38.215950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189041, 34.905575, 38.412697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609590, 0.324946, -0.723056,
		0.113064, -0.867159, -0.485028,
		-0.784612, -0.377420, 0.491872,
		34.953659, 34.792347, 38.560257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<41.309654, 31.748907, 43.199020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.967712, 31.577477, 43.316017>,  <40.762547, 31.474617, 43.386215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.967712, 31.577477, 43.316017>,  <41.309654, 31.748907, 43.199020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.967712, 31.577477, 43.316017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426349, 0.258906, -0.866715,
		0.295738, -0.865610, -0.404053,
		-0.854849, -0.428588, 0.292483,
		40.711258, 31.448902, 43.403763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077572, 31.359793, 42.670471>,  <41.309654, 31.748907, 43.199020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077572, 31.359793, 42.670471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.731812, 31.396505, 42.868214>,  <40.524357, 31.418533, 42.986858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.731812, 31.396505, 42.868214>,  <41.077572, 31.359793, 42.670471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731812, 31.396505, 42.868214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472295, 0.189085, -0.860921,
		-0.172493, -0.977662, -0.120096,
		-0.864398, 0.091782, 0.494360,
		40.472492, 31.424040, 43.016521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603931, 31.079699, 42.185535>,  <41.077572, 31.359793, 42.670471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603931, 31.079699, 42.185535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.379940, 31.295647, 42.436920>,  <40.245544, 31.425215, 42.587749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.379940, 31.295647, 42.436920>,  <40.603931, 31.079699, 42.185535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379940, 31.295647, 42.436920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557915, 0.315058, -0.767769,
		-0.612496, -0.780563, 0.124776,
		-0.559981, 0.539870, 0.628460,
		40.211945, 31.457607, 42.625458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906857, 30.959753, 41.937885>,  <40.603931, 31.079699, 42.185535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906857, 30.959753, 41.937885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.903759, 31.300386, 42.147549>,  <39.901901, 31.504766, 42.273346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.903759, 31.300386, 42.147549>,  <39.906857, 30.959753, 41.937885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903759, 31.300386, 42.147549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615672, 0.408983, -0.673559,
		-0.787965, -0.327930, 0.521128,
		-0.007748, 0.851584, 0.524161,
		39.901436, 31.555862, 42.304798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173141, 31.167734, 42.162964>,  <39.906857, 30.959753, 41.937885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173141, 31.167734, 42.162964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.388855, 31.504261, 42.148209>,  <39.518284, 31.706177, 42.139355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.388855, 31.504261, 42.148209>,  <39.173141, 31.167734, 42.162964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388855, 31.504261, 42.148209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678139, 0.407883, -0.611358,
		-0.499301, 0.354707, 0.790494,
		0.539282, 0.841317, -0.036885,
		39.550640, 31.756657, 42.137142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655262, 31.631872, 42.271549>,  <39.173141, 31.167734, 42.162964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655262, 31.631872, 42.271549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.956997, 31.839193, 42.110386>,  <39.138039, 31.963587, 42.013687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.956997, 31.839193, 42.110386>,  <38.655262, 31.631872, 42.271549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956997, 31.839193, 42.110386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650384, 0.506519, -0.566074,
		-0.089317, 0.689057, 0.719183,
		0.754336, 0.518305, -0.402911,
		39.183296, 31.994684, 41.989513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508339, 32.261055, 42.358482>,  <38.655262, 31.631872, 42.271549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508339, 32.261055, 42.358482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.792137, 32.314110, 42.081638>,  <38.962418, 32.345943, 41.915531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.792137, 32.314110, 42.081638>,  <38.508339, 32.261055, 42.358482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792137, 32.314110, 42.081638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554856, 0.710620, -0.432614,
		0.434448, 0.690961, 0.577778,
		0.709500, 0.132635, -0.692111,
		39.004986, 32.353901, 41.874004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657631, 33.032570, 42.318317>,  <38.508339, 32.261055, 42.358482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657631, 33.032570, 42.318317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.751122, 32.835217, 41.983189>,  <38.807217, 32.716805, 41.782112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.751122, 32.835217, 41.983189>,  <38.657631, 33.032570, 42.318317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751122, 32.835217, 41.983189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484408, 0.688041, -0.540322,
		0.843042, 0.532135, -0.078184,
		0.233731, -0.493387, -0.837818,
		38.821239, 32.687199, 41.731842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815350, 33.577415, 41.855297>,  <38.657631, 33.032570, 42.318317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815350, 33.577415, 41.855297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.755520, 33.272419, 41.603508>,  <38.719624, 33.089420, 41.452435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.755520, 33.272419, 41.603508>,  <38.815350, 33.577415, 41.855297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755520, 33.272419, 41.603508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582357, 0.582429, -0.567131,
		0.799055, 0.281752, -0.531156,
		-0.149571, -0.762491, -0.629473,
		38.710648, 33.043671, 41.414665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062149, 34.086887, 41.377563>,  <38.815350, 33.577415, 41.855297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062149, 34.086887, 41.377563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.026947, 34.455212, 41.529541>,  <39.005825, 34.676208, 41.620728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.026947, 34.455212, 41.529541>,  <39.062149, 34.086887, 41.377563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026947, 34.455212, 41.529541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518438, -0.283348, 0.806806,
		0.850574, 0.267981, -0.452449,
		-0.088008, 0.920815, 0.379940,
		39.000546, 34.731457, 41.643524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705692, 34.260296, 41.575981>,  <39.062149, 34.086887, 41.377563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705692, 34.260296, 41.575981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.461945, 34.499378, 41.784370>,  <39.315697, 34.642826, 41.909405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.461945, 34.499378, 41.784370>,  <39.705692, 34.260296, 41.575981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461945, 34.499378, 41.784370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575093, -0.119145, 0.809365,
		0.545834, 0.792812, -0.271133,
		-0.609371, 0.597706, 0.520974,
		39.279133, 34.678692, 41.940662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209579, 34.670784, 41.878975>,  <39.705692, 34.260296, 41.575981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209579, 34.670784, 41.878975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.869534, 34.731735, 42.080601>,  <39.665504, 34.768307, 42.201576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.869534, 34.731735, 42.080601>,  <40.209579, 34.670784, 41.878975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869534, 34.731735, 42.080601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507972, -0.015034, 0.861243,
		0.138814, 0.988208, -0.064624,
		-0.850115, 0.152380, 0.504068,
		39.614498, 34.777451, 42.231823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268833, 35.328384, 42.289860>,  <40.209579, 34.670784, 41.878975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268833, 35.328384, 42.289860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.982174, 35.117702, 42.472725>,  <39.810177, 34.991291, 42.582443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.982174, 35.117702, 42.472725>,  <40.268833, 35.328384, 42.289860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.982174, 35.117702, 42.472725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507944, 0.055004, 0.859632,
		-0.477920, 0.848265, 0.228120,
		-0.716648, -0.526708, 0.457159,
		39.767178, 34.959690, 42.609871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004662, 35.694225, 42.872639>,  <40.268833, 35.328384, 42.289860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004662, 35.694225, 42.872639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.935276, 35.307617, 42.948269>,  <39.893646, 35.075653, 42.993649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.935276, 35.307617, 42.948269>,  <40.004662, 35.694225, 42.872639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935276, 35.307617, 42.948269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536474, 0.068269, 0.841151,
		-0.825897, 0.247344, 0.506671,
		-0.173464, -0.966520, 0.189077,
		39.883236, 35.017662, 43.004993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885090, 35.680428, 43.584797>,  <40.004662, 35.694225, 42.872639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885090, 35.680428, 43.584797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.864132, 35.282146, 43.554253>,  <39.851559, 35.043179, 43.535927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.864132, 35.282146, 43.554253>,  <39.885090, 35.680428, 43.584797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864132, 35.282146, 43.554253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592010, -0.092547, 0.800599,
		-0.804226, -0.003262, 0.594314,
		-0.052390, -0.995703, -0.076359,
		39.848415, 34.983437, 43.531345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659439, 35.424793, 44.265755>,  <39.885090, 35.680428, 43.584797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659439, 35.424793, 44.265755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.860107, 35.124100, 44.094532>,  <39.980507, 34.943684, 43.991798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.860107, 35.124100, 44.094532>,  <39.659439, 35.424793, 44.265755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860107, 35.124100, 44.094532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581381, -0.073428, 0.810311,
		-0.640567, -0.655369, 0.400207,
		0.501666, -0.751732, -0.428055,
		40.010609, 34.898579, 43.966114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737808, 34.826878, 44.707951>,  <39.659439, 35.424793, 44.265755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737808, 34.826878, 44.707951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.038113, 34.723087, 44.464958>,  <40.218296, 34.660812, 44.319164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.038113, 34.723087, 44.464958>,  <39.737808, 34.826878, 44.707951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038113, 34.723087, 44.464958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522624, -0.329125, 0.786474,
		-0.404009, -0.907936, -0.111484,
		0.750760, -0.259478, -0.607478,
		40.263340, 34.645245, 44.282715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908772, 34.187496, 44.978630>,  <39.737808, 34.826878, 44.707951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908772, 34.187496, 44.978630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.222149, 34.291908, 44.753036>,  <40.410175, 34.354557, 44.617680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.222149, 34.291908, 44.753036>,  <39.908772, 34.187496, 44.978630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222149, 34.291908, 44.753036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617332, -0.431317, 0.657927,
		-0.071513, -0.863613, -0.499058,
		0.783446, 0.261034, -0.563980,
		40.457184, 34.370220, 44.583843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292755, 33.656708, 44.878590>,  <39.908772, 34.187496, 44.978630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292755, 33.656708, 44.878590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.570606, 33.927994, 44.782654>,  <40.737316, 34.090763, 44.725090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.570606, 33.927994, 44.782654>,  <40.292755, 33.656708, 44.878590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570606, 33.927994, 44.782654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620156, -0.395601, 0.677427,
		0.364556, -0.619298, -0.695391,
		0.694626, 0.678211, -0.239843,
		40.778996, 34.131458, 44.710701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973942, 33.272621, 44.768555>,  <40.292755, 33.656708, 44.878590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973942, 33.272621, 44.768555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.039955, 33.654099, 44.869141>,  <41.079563, 33.882984, 44.929493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.039955, 33.654099, 44.869141>,  <40.973942, 33.272621, 44.768555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039955, 33.654099, 44.869141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707061, -0.292158, 0.643978,
		0.687625, 0.071524, -0.722535,
		0.165034, 0.953692, 0.251467,
		41.089466, 33.940205, 44.944580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656723, 33.232407, 44.968300>,  <40.973942, 33.272621, 44.768555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.656723, 33.232407, 44.968300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.527565, 33.577866, 45.123146>,  <41.450069, 33.785141, 45.216053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.527565, 33.577866, 45.123146>,  <41.656723, 33.232407, 44.968300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.527565, 33.577866, 45.123146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634282, -0.106115, 0.765785,
		0.702444, 0.492808, -0.513530,
		-0.322892, 0.863643, 0.387119,
		41.430698, 33.836960, 45.239281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282848, 33.538517, 45.189106>,  <41.656723, 33.232407, 44.968300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282848, 33.538517, 45.189106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.999836, 33.701271, 45.420227>,  <41.830029, 33.798923, 45.558899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.999836, 33.701271, 45.420227>,  <42.282848, 33.538517, 45.189106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999836, 33.701271, 45.420227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596815, -0.093813, 0.796876,
		0.378441, 0.908650, -0.176460,
		-0.707526, 0.406884, 0.577799,
		41.787579, 33.823338, 45.593567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.661030, 34.026730, 45.541546>,  <42.282848, 33.538517, 45.189106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.661030, 34.026730, 45.541546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.319023, 33.999126, 45.747143>,  <42.113819, 33.982563, 45.870502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.319023, 33.999126, 45.747143>,  <42.661030, 34.026730, 45.541546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.319023, 33.999126, 45.747143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517138, -0.038973, 0.855014,
		-0.038973, 0.996854, 0.069010,
		-0.855014, -0.069010, 0.513993,
		42.062519, 33.978424, 45.901340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.061874, 33.223717, 49.183632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.260563, 33.047836, 48.884319>,  <36.379776, 32.942307, 48.704731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.260563, 33.047836, 48.884319>,  <36.061874, 33.223717, 49.183632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260563, 33.047836, 48.884319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400212, 0.648989, -0.647026,
		0.770126, 0.620865, 0.146395,
		0.496725, -0.439703, -0.748282,
		36.409580, 32.915924, 48.659836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268333, 33.703533, 48.664230>,  <36.061874, 33.223717, 49.183632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268333, 33.703533, 48.664230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.343891, 33.382320, 48.438148>,  <36.389225, 33.189594, 48.302498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.343891, 33.382320, 48.438148>,  <36.268333, 33.703533, 48.664230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343891, 33.382320, 48.438148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289504, 0.504447, -0.813462,
		0.938353, 0.317289, -0.137193,
		0.188897, -0.803032, -0.565205,
		36.400558, 33.141411, 48.268585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692783, 33.920517, 48.090782>,  <36.268333, 33.703533, 48.664230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692783, 33.920517, 48.090782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.513241, 33.584026, 47.970207>,  <36.405514, 33.382133, 47.897861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.513241, 33.584026, 47.970207>,  <36.692783, 33.920517, 48.090782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513241, 33.584026, 47.970207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179822, 0.415458, -0.891660,
		0.875322, -0.346026, -0.337754,
		-0.448860, -0.841225, -0.301437,
		36.378582, 33.331657, 47.879776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787178, 33.944016, 47.395107>,  <36.692783, 33.920517, 48.090782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787178, 33.944016, 47.395107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.479832, 33.695587, 47.456932>,  <36.295425, 33.546532, 47.494026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.479832, 33.695587, 47.456932>,  <36.787178, 33.944016, 47.395107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479832, 33.695587, 47.456932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479516, 0.398688, -0.781737,
		0.423900, -0.674766, -0.604152,
		-0.768358, -0.621079, 0.154558,
		36.249325, 33.509266, 47.503300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601074, 33.686596, 46.694626>,  <36.787178, 33.944016, 47.395107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601074, 33.686596, 46.694626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.290436, 33.601566, 46.931847>,  <36.104053, 33.550549, 47.074181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.290436, 33.601566, 46.931847>,  <36.601074, 33.686596, 46.694626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290436, 33.601566, 46.931847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627693, 0.180621, -0.757217,
		0.053847, -0.960306, -0.273701,
		-0.776597, -0.212574, 0.593052,
		36.057457, 33.537796, 47.109760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246929, 33.132576, 46.416260>,  <36.601074, 33.686596, 46.694626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246929, 33.132576, 46.416260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.978123, 33.323700, 46.642567>,  <35.816837, 33.438374, 46.778351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.978123, 33.323700, 46.642567>,  <36.246929, 33.132576, 46.416260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978123, 33.323700, 46.642567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591892, 0.112575, -0.798117,
		-0.445039, -0.871221, 0.207158,
		-0.672016, 0.477809, 0.565769,
		35.776520, 33.467041, 46.812298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649448, 32.858192, 46.197426>,  <36.246929, 33.132576, 46.416260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649448, 32.858192, 46.197426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.539307, 33.204094, 46.365421>,  <35.473221, 33.411633, 46.466217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.539307, 33.204094, 46.365421>,  <35.649448, 32.858192, 46.197426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539307, 33.204094, 46.365421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528079, 0.229006, -0.817734,
		-0.803315, -0.446950, 0.393599,
		-0.275350, 0.864749, 0.419989,
		35.456703, 33.463520, 46.491417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973797, 32.910271, 46.044933>,  <35.649448, 32.858192, 46.197426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973797, 32.910271, 46.044933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.050068, 33.287331, 46.154518>,  <35.095829, 33.513565, 46.220268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.050068, 33.287331, 46.154518>,  <34.973797, 32.910271, 46.044933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050068, 33.287331, 46.154518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547541, 0.333765, -0.767333,
		-0.814765, -0.003696, 0.579779,
		0.190674, 0.942649, 0.273964,
		35.107269, 33.570126, 46.236706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419052, 33.245056, 45.894630>,  <34.973797, 32.910271, 46.044933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419052, 33.245056, 45.894630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.696411, 33.532925, 45.880344>,  <34.862827, 33.705647, 45.871773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.696411, 33.532925, 45.880344>,  <34.419052, 33.245056, 45.894630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696411, 33.532925, 45.880344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479663, 0.424029, -0.768194,
		-0.537699, 0.549798, 0.639220,
		0.693399, 0.719668, -0.035718,
		34.904430, 33.748825, 45.869629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083511, 33.824871, 45.784637>,  <34.419052, 33.245056, 45.894630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083511, 33.824871, 45.784637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.460949, 33.934887, 45.710907>,  <34.687412, 34.000896, 45.666668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.460949, 33.934887, 45.710907>,  <34.083511, 33.824871, 45.784637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460949, 33.934887, 45.710907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300506, 0.477733, -0.825510,
		-0.138993, 0.834340, 0.533440,
		0.943598, 0.275042, -0.184323,
		34.744030, 34.017399, 45.655609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000206, 34.489388, 45.657909>,  <34.083511, 33.824871, 45.784637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000206, 34.489388, 45.657909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.350273, 34.381458, 45.497272>,  <34.560314, 34.316700, 45.400890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.350273, 34.381458, 45.497272>,  <34.000206, 34.489388, 45.657909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350273, 34.381458, 45.497272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282972, 0.387800, -0.877233,
		0.392434, 0.881366, 0.263039,
		0.875170, -0.269824, -0.401588,
		34.612823, 34.300510, 45.376797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322327, 35.058235, 45.445946>,  <34.000206, 34.489388, 45.657909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322327, 35.058235, 45.445946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.465343, 34.753765, 45.229511>,  <34.551155, 34.571083, 45.099651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.465343, 34.753765, 45.229511>,  <34.322327, 35.058235, 45.445946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465343, 34.753765, 45.229511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325402, 0.441540, -0.836155,
		0.875371, 0.475035, -0.089817,
		0.357545, -0.761173, -0.541088,
		34.572605, 34.525414, 45.067184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499279, 35.426765, 44.884193>,  <34.322327, 35.058235, 45.445946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499279, 35.426765, 44.884193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.527874, 35.047951, 44.758965>,  <34.545029, 34.820663, 44.683826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.527874, 35.047951, 44.758965>,  <34.499279, 35.426765, 44.884193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527874, 35.047951, 44.758965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289310, 0.280697, -0.915155,
		0.954563, 0.155994, -0.253922,
		0.071483, -0.947035, -0.313074,
		34.549320, 34.763840, 44.665043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854515, 35.478771, 44.258095>,  <34.499279, 35.426765, 44.884193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854515, 35.478771, 44.258095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.656334, 35.132492, 44.229572>,  <34.537426, 34.924725, 44.212460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.656334, 35.132492, 44.229572>,  <34.854515, 35.478771, 44.258095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656334, 35.132492, 44.229572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308477, 0.252099, -0.917217,
		0.812015, -0.432441, -0.391953,
		-0.495453, -0.865703, -0.071310,
		34.507698, 34.872780, 44.208179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430386, 35.596088, 43.898933>,  <34.854515, 35.478771, 44.258095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430386, 35.596088, 43.898933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.556046, 35.975327, 43.879223>,  <35.631443, 36.202869, 43.867397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.556046, 35.975327, 43.879223>,  <35.430386, 35.596088, 43.898933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556046, 35.975327, 43.879223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355512, -0.069353, 0.932095,
		0.880296, -0.310337, -0.358846,
		0.314151, 0.948093, -0.049277,
		35.650291, 36.259754, 43.864441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218655, 35.592506, 44.149117>,  <35.430386, 35.596088, 43.898933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218655, 35.592506, 44.149117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.071152, 35.962143, 44.189262>,  <35.982651, 36.183926, 44.213348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.071152, 35.962143, 44.189262>,  <36.218655, 35.592506, 44.149117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071152, 35.962143, 44.189262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488368, 0.100740, 0.866803,
		0.790896, 0.368651, -0.488446,
		-0.368754, 0.924093, 0.100362,
		35.960526, 36.239372, 44.219372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745594, 35.968361, 44.281193>,  <36.218655, 35.592506, 44.149117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745594, 35.968361, 44.281193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.416275, 36.150402, 44.416874>,  <36.218685, 36.259628, 44.498283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.416275, 36.150402, 44.416874>,  <36.745594, 35.968361, 44.281193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416275, 36.150402, 44.416874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397985, 0.036746, 0.916656,
		0.404712, 0.889678, -0.211379,
		-0.823296, 0.455107, 0.339207,
		36.169285, 36.286934, 44.518635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959908, 36.607273, 44.685509>,  <36.745594, 35.968361, 44.281193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959908, 36.607273, 44.685509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.606750, 36.488510, 44.831024>,  <36.394855, 36.417252, 44.918335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.606750, 36.488510, 44.831024>,  <36.959908, 36.607273, 44.685509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606750, 36.488510, 44.831024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371398, 0.032517, 0.927904,
		-0.287329, 0.954353, 0.081561,
		-0.882896, -0.296905, 0.363787,
		36.341881, 36.399437, 44.940159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890469, 37.103306, 45.286720>,  <36.959908, 36.607273, 44.685509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890469, 37.103306, 45.286720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.611256, 36.821529, 45.338120>,  <36.443729, 36.652462, 45.368958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.611256, 36.821529, 45.338120>,  <36.890469, 37.103306, 45.286720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611256, 36.821529, 45.338120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087714, 0.093982, 0.991702,
		-0.710674, 0.703511, -0.003813,
		-0.698032, -0.704443, 0.128498,
		36.401848, 36.610195, 45.376671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423683, 37.403137, 45.838985>,  <36.890469, 37.103306, 45.286720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423683, 37.403137, 45.838985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.394707, 37.004311, 45.829166>,  <36.377319, 36.765015, 45.823273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.394707, 37.004311, 45.829166>,  <36.423683, 37.403137, 45.838985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394707, 37.004311, 45.829166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127237, -0.033654, 0.991301,
		-0.989223, 0.068690, 0.129303,
		-0.072444, -0.997070, -0.024552,
		36.372974, 36.705189, 45.821800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043285, 37.292019, 46.524532>,  <36.423683, 37.403137, 45.838985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043285, 37.292019, 46.524532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.199406, 36.943108, 46.406693>,  <36.293079, 36.733761, 46.335991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.199406, 36.943108, 46.406693>,  <36.043285, 37.292019, 46.524532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199406, 36.943108, 46.406693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354955, -0.152673, 0.922333,
		-0.849512, -0.464558, 0.250032,
		0.390304, -0.872283, -0.294595,
		36.316498, 36.681423, 46.318314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695507, 36.813499, 47.040478>,  <36.043285, 37.292019, 46.524532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695507, 36.813499, 47.040478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.024376, 36.650028, 46.881977>,  <36.221695, 36.551945, 46.786877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.024376, 36.650028, 46.881977>,  <35.695507, 36.813499, 47.040478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024376, 36.650028, 46.881977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370792, -0.143692, 0.917532,
		-0.431918, -0.901294, 0.033397,
		0.822168, -0.408682, -0.396256,
		36.271027, 36.527424, 46.763100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627716, 36.220596, 47.309902>,  <35.695507, 36.813499, 47.040478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627716, 36.220596, 47.309902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.013870, 36.230019, 47.205997>,  <36.245564, 36.235672, 47.143654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.013870, 36.230019, 47.205997>,  <35.627716, 36.220596, 47.309902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013870, 36.230019, 47.205997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240842, -0.462846, 0.853094,
		-0.100136, -0.886126, -0.452497,
		0.965385, 0.023555, -0.259764,
		36.303486, 36.237083, 47.128067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872799, 35.530918, 47.466125>,  <35.627716, 36.220596, 47.309902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872799, 35.530918, 47.466125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.201069, 35.758072, 47.440849>,  <36.398033, 35.894363, 47.425686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.201069, 35.758072, 47.440849>,  <35.872799, 35.530918, 47.466125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201069, 35.758072, 47.440849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349112, -0.410805, 0.842235,
		0.452335, -0.713264, -0.535395,
		0.820679, 0.567886, -0.063187,
		36.447273, 35.928436, 47.421894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447510, 34.984138, 47.600155>,  <35.872799, 35.530918, 47.466125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447510, 34.984138, 47.600155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.609051, 35.346237, 47.652966>,  <36.705975, 35.563496, 47.684654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.609051, 35.346237, 47.652966>,  <36.447510, 34.984138, 47.600155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609051, 35.346237, 47.652966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503618, -0.340481, 0.794003,
		0.763722, -0.254169, -0.593403,
		0.403854, 0.905246, 0.132029,
		36.730206, 35.617809, 47.692574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218941, 34.962246, 47.527405>,  <36.447510, 34.984138, 47.600155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218941, 34.962246, 47.527405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.139992, 35.295246, 47.734478>,  <37.092625, 35.495045, 47.858723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.139992, 35.295246, 47.734478>,  <37.218941, 34.962246, 47.527405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139992, 35.295246, 47.734478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683206, -0.261897, 0.681645,
		0.703047, 0.488218, -0.517077,
		-0.197370, 0.832498, 0.517679,
		37.080780, 35.544994, 47.889782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798916, 35.317272, 47.583260>,  <37.218941, 34.962246, 47.527405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798916, 35.317272, 47.583260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.591644, 35.453796, 47.896946>,  <37.467281, 35.535709, 48.085159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.591644, 35.453796, 47.896946>,  <37.798916, 35.317272, 47.583260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591644, 35.453796, 47.896946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713174, -0.333689, 0.616469,
		0.472091, 0.878726, -0.070500,
		-0.518183, 0.341309, 0.784216,
		37.436188, 35.556190, 48.132210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323910, 35.524841, 48.024239>,  <37.798916, 35.317272, 47.583260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323910, 35.524841, 48.024239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.000332, 35.484959, 48.255989>,  <37.806187, 35.461029, 48.395039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.000332, 35.484959, 48.255989>,  <38.323910, 35.524841, 48.024239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000332, 35.484959, 48.255989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577982, -0.315062, 0.752777,
		0.107480, 0.943819, 0.312496,
		-0.808941, -0.099709, 0.579373,
		37.757648, 35.455048, 48.429802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648632, 36.293858, 48.228737>,  <38.323910, 35.524841, 48.024239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648632, 36.293858, 48.228737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.039181, 36.280621, 48.143311>,  <39.273510, 36.272678, 48.092056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.039181, 36.280621, 48.143311>,  <38.648632, 36.293858, 48.228737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039181, 36.280621, 48.143311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186970, 0.366251, -0.911539,
		0.108380, 0.929928, 0.351409,
		0.976369, -0.033090, -0.213563,
		39.332092, 36.270695, 48.079243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837429, 36.995216, 47.911999>,  <38.648632, 36.293858, 48.228737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837429, 36.995216, 47.911999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.150951, 36.776283, 47.794643>,  <39.339066, 36.644924, 47.724232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.150951, 36.776283, 47.794643>,  <38.837429, 36.995216, 47.911999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150951, 36.776283, 47.794643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025596, 0.443558, -0.895880,
		0.620481, 0.709703, 0.333653,
		0.783803, -0.547337, -0.293385,
		39.386093, 36.612083, 47.706627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457031, 37.399052, 47.662621>,  <38.837429, 36.995216, 47.911999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457031, 37.399052, 47.662621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.508186, 37.046730, 47.480263>,  <39.538879, 36.835339, 47.370850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.508186, 37.046730, 47.480263>,  <39.457031, 37.399052, 47.662621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508186, 37.046730, 47.480263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100346, 0.468797, -0.877587,
		0.986700, 0.066483, 0.148337,
		0.127885, -0.880800, -0.455891,
		39.546551, 36.782490, 47.343494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979992, 37.462273, 47.165108>,  <39.457031, 37.399052, 47.662621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979992, 37.462273, 47.165108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.783978, 37.137447, 47.038349>,  <39.666370, 36.942554, 46.962296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.783978, 37.137447, 47.038349>,  <39.979992, 37.462273, 47.165108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783978, 37.137447, 47.038349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029709, 0.347763, -0.937111,
		0.871196, -0.468633, -0.146291,
		-0.490036, -0.812061, -0.316893,
		39.636967, 36.893829, 46.943283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261631, 37.291405, 46.510639>,  <39.979992, 37.462273, 47.165108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261631, 37.291405, 46.510639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.915298, 37.091572, 46.521652>,  <39.707500, 36.971672, 46.528259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.915298, 37.091572, 46.521652>,  <40.261631, 37.291405, 46.510639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915298, 37.091572, 46.521652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201556, 0.297895, -0.933077,
		0.457952, -0.813432, -0.358620,
		-0.865826, -0.499587, 0.027530,
		39.655552, 36.941696, 46.529911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289253, 36.860897, 45.892445>,  <40.261631, 37.291405, 46.510639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289253, 36.860897, 45.892445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.903484, 36.899670, 45.990829>,  <39.672024, 36.922932, 46.049862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.903484, 36.899670, 45.990829>,  <40.289253, 36.860897, 45.892445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903484, 36.899670, 45.990829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241341, 0.057025, -0.968763,
		-0.107926, -0.993656, -0.031604,
		-0.964420, 0.096928, 0.245965,
		39.614159, 36.928749, 46.064617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927727, 36.459190, 45.475632>,  <40.289253, 36.860897, 45.892445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927727, 36.459190, 45.475632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.641781, 36.702953, 45.612797>,  <39.470215, 36.849213, 45.695095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.641781, 36.702953, 45.612797>,  <39.927727, 36.459190, 45.475632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641781, 36.702953, 45.612797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315610, 0.156415, -0.935909,
		-0.623990, -0.777273, 0.080521,
		-0.714862, 0.609410, 0.342916,
		39.427322, 36.885777, 45.715672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373512, 36.297413, 45.046417>,  <39.927727, 36.459190, 45.475632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373512, 36.297413, 45.046417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.297264, 36.659821, 45.197567>,  <39.251514, 36.877266, 45.288258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.297264, 36.659821, 45.197567>,  <39.373512, 36.297413, 45.046417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297264, 36.659821, 45.197567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363854, 0.292305, -0.884402,
		-0.911743, -0.306072, 0.273942,
		-0.190616, 0.906023, 0.377873,
		39.240078, 36.931629, 45.310928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841572, 36.416145, 44.747868>,  <39.373512, 36.297413, 45.046417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841572, 36.416145, 44.747868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.928829, 36.787457, 44.868343>,  <38.981182, 37.010242, 44.940628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.928829, 36.787457, 44.868343>,  <38.841572, 36.416145, 44.747868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928829, 36.787457, 44.868343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357486, 0.363174, -0.860412,
		-0.908085, 0.080021, 0.411070,
		0.218140, 0.928279, 0.301186,
		38.994270, 37.065941, 44.958698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343155, 36.827576, 44.556713>,  <38.841572, 36.416145, 44.747868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343155, 36.827576, 44.556713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.631115, 37.103764, 44.585003>,  <38.803890, 37.269478, 44.601978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.631115, 37.103764, 44.585003>,  <38.343155, 36.827576, 44.556713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631115, 37.103764, 44.585003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432505, 0.525951, -0.732336,
		-0.542852, 0.496618, 0.677261,
		0.719897, 0.690468, 0.070724,
		38.847084, 37.310905, 44.606220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016151, 37.485985, 44.404991>,  <38.343155, 36.827576, 44.556713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016151, 37.485985, 44.404991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.403118, 37.575657, 44.357903>,  <38.635296, 37.629459, 44.329651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.403118, 37.575657, 44.357903>,  <38.016151, 37.485985, 44.404991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403118, 37.575657, 44.357903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219645, 0.511678, -0.830627,
		-0.125975, 0.829415, 0.544244,
		0.967412, 0.224179, -0.117718,
		38.693340, 37.642910, 44.322586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043297, 38.116257, 44.282837>,  <38.016151, 37.485985, 44.404991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043297, 38.116257, 44.282837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.392345, 38.010811, 44.118382>,  <38.601776, 37.947544, 44.019707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.392345, 38.010811, 44.118382>,  <38.043297, 38.116257, 44.282837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392345, 38.010811, 44.118382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200720, 0.573863, -0.793973,
		0.445242, 0.775362, 0.447853,
		0.872623, -0.263617, -0.411139,
		38.654133, 37.931725, 43.995041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206242, 38.725609, 43.804607>,  <38.043297, 38.116257, 44.282837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206242, 38.725609, 43.804607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.398174, 38.401817, 43.669250>,  <38.513332, 38.207542, 43.588036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.398174, 38.401817, 43.669250>,  <38.206242, 38.725609, 43.804607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398174, 38.401817, 43.669250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151184, 0.303637, -0.940717,
		0.864239, 0.502542, 0.023313,
		0.479828, -0.809479, -0.338391,
		38.542122, 38.158974, 43.567734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640396, 39.004864, 43.311958>,  <38.206242, 38.725609, 43.804607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640396, 39.004864, 43.311958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.604366, 38.613670, 43.236664>,  <38.582748, 38.378956, 43.191486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.604366, 38.613670, 43.236664>,  <38.640396, 39.004864, 43.311958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604366, 38.613670, 43.236664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118814, 0.198206, -0.972933,
		0.988822, -0.065274, -0.134052,
		-0.090077, -0.977985, -0.188235,
		38.577343, 38.320274, 43.180195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.772245, 37.884796, 31.382763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.851755, 37.498363, 31.316816>,  <31.899460, 37.266506, 31.277248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.851755, 37.498363, 31.316816>,  <31.772245, 37.884796, 31.382763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851755, 37.498363, 31.316816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900964, -0.246331, 0.357189,
		-0.385684, 0.077538, -0.919367,
		0.198773, -0.966079, -0.164865,
		31.911386, 37.208538, 31.267357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216623, 37.604935, 30.959652>,  <31.772245, 37.884796, 31.382763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216623, 37.604935, 30.959652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.382826, 37.337864, 31.206734>,  <31.482548, 37.177620, 31.354982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.382826, 37.337864, 31.206734>,  <31.216623, 37.604935, 30.959652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382826, 37.337864, 31.206734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909411, -0.291487, 0.296661,
		-0.018022, -0.685012, -0.728309,
		0.415509, -0.667678, 0.617704,
		31.507479, 37.137562, 31.392044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697018, 37.044960, 30.942266>,  <31.216623, 37.604935, 30.959652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697018, 37.044960, 30.942266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.910347, 36.923977, 31.258263>,  <31.038345, 36.851387, 31.447861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.910347, 36.923977, 31.258263>,  <30.697018, 37.044960, 30.942266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910347, 36.923977, 31.258263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823105, -0.400944, 0.402171,
		0.195103, -0.864733, -0.462786,
		0.533322, -0.302457, 0.789992,
		31.070343, 36.833241, 31.495260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.457655, 36.349586, 31.152712>,  <30.697018, 37.044960, 30.942266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.457655, 36.349586, 31.152712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.639381, 36.508198, 31.471802>,  <30.748417, 36.603363, 31.663256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.639381, 36.508198, 31.471802>,  <30.457655, 36.349586, 31.152712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639381, 36.508198, 31.471802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750686, -0.311740, 0.582485,
		0.479652, -0.863474, 0.156036,
		0.454318, 0.396524, 0.797724,
		30.775677, 36.627155, 31.711119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441549, 35.814865, 31.720327>,  <30.457655, 36.349586, 31.152712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441549, 35.814865, 31.720327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.493198, 36.164867, 31.906958>,  <30.524187, 36.374870, 32.018936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.493198, 36.164867, 31.906958>,  <30.441549, 35.814865, 31.720327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493198, 36.164867, 31.906958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787453, -0.195497, 0.584550,
		0.602698, -0.442884, 0.663784,
		0.129120, 0.875006, 0.466576,
		30.531935, 36.427368, 32.046932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153404, 35.728001, 32.335613>,  <30.441549, 35.814865, 31.720327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153404, 35.728001, 32.335613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.165405, 36.127735, 32.343941>,  <30.172606, 36.367577, 32.348938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.165405, 36.127735, 32.343941>,  <30.153404, 35.728001, 32.335613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165405, 36.127735, 32.343941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851741, 0.014659, 0.523758,
		0.523103, -0.033446, 0.851613,
		0.030002, 0.999333, 0.020819,
		30.174406, 36.427536, 32.350185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138796, 35.952934, 33.063595>,  <30.153404, 35.728001, 32.335613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138796, 35.952934, 33.063595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.015808, 36.266571, 32.847942>,  <29.942015, 36.454754, 32.718552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.015808, 36.266571, 32.847942>,  <30.138796, 35.952934, 33.063595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.015808, 36.266571, 32.847942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693474, 0.203322, 0.691198,
		0.651580, 0.586394, 0.481233,
		-0.307469, 0.784093, -0.539129,
		29.923567, 36.501801, 32.686203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976879, 36.352734, 33.563595>,  <30.138796, 35.952934, 33.063595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976879, 36.352734, 33.563595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.795130, 36.486446, 33.233311>,  <29.686081, 36.566673, 33.035141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.795130, 36.486446, 33.233311>,  <29.976879, 36.352734, 33.563595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795130, 36.486446, 33.233311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754921, 0.347580, 0.556131,
		0.472904, 0.876040, 0.094422,
		-0.454374, 0.334278, -0.825714,
		29.658817, 36.586731, 32.985596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565250, 36.820782, 33.770138>,  <29.976879, 36.352734, 33.563595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565250, 36.820782, 33.770138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.400507, 36.780590, 33.407860>,  <29.301661, 36.756477, 33.190495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.400507, 36.780590, 33.407860>,  <29.565250, 36.820782, 33.770138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.400507, 36.780590, 33.407860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888267, 0.266068, 0.374420,
		0.203355, 0.958704, -0.198833,
		-0.411860, -0.100477, -0.905691,
		29.276949, 36.750446, 33.136154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201254, 37.421276, 33.646095>,  <29.565250, 36.820782, 33.770138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.201254, 37.421276, 33.646095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.034595, 37.110516, 33.457275>,  <28.934601, 36.924057, 33.343983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.034595, 37.110516, 33.457275>,  <29.201254, 37.421276, 33.646095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.034595, 37.110516, 33.457275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883618, 0.224088, 0.411102,
		-0.213607, 0.588391, -0.779851,
		-0.416644, -0.776905, -0.472046,
		28.909603, 36.877445, 33.315662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616779, 37.702667, 33.200500>,  <29.201254, 37.421276, 33.646095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616779, 37.702667, 33.200500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.555044, 37.313538, 33.269547>,  <28.518003, 37.080059, 33.310974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.555044, 37.313538, 33.269547>,  <28.616779, 37.702667, 33.200500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555044, 37.313538, 33.269547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837148, 0.221550, 0.500099,
		-0.524751, -0.067323, -0.848589,
		-0.154337, -0.972822, 0.172618,
		28.508743, 37.021690, 33.321331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.889294, 37.717392, 33.386890>,  <28.616779, 37.702667, 33.200500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.889294, 37.717392, 33.386890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.998087, 37.339390, 33.459538>,  <28.063364, 37.112587, 33.503128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.998087, 37.339390, 33.459538>,  <27.889294, 37.717392, 33.386890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998087, 37.339390, 33.459538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753582, -0.091792, 0.650913,
		-0.598447, -0.313903, -0.737107,
		0.271984, -0.945007, 0.181619,
		28.079681, 37.055889, 33.514023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.235344, 37.258125, 33.423771>,  <27.889294, 37.717392, 33.386890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.235344, 37.258125, 33.423771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.509298, 37.068760, 33.645332>,  <27.673670, 36.955139, 33.778271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.509298, 37.068760, 33.645332>,  <27.235344, 37.258125, 33.423771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.509298, 37.068760, 33.645332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685288, -0.160169, 0.710441,
		-0.247622, -0.866150, -0.434129,
		0.684882, -0.473424, 0.553900,
		27.714764, 36.926735, 33.811504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.886078, 36.696835, 33.690506>,  <27.235344, 37.258125, 33.423771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.886078, 36.696835, 33.690506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.203920, 36.754410, 33.926434>,  <27.394625, 36.788956, 34.067989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.203920, 36.754410, 33.926434>,  <26.886078, 36.696835, 33.690506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.203920, 36.754410, 33.926434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554585, -0.223248, 0.801621,
		0.247061, -0.964075, -0.097566,
		0.794604, 0.143940, 0.589818,
		27.442301, 36.797592, 34.103378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.807240, 36.122192, 34.248585>,  <26.886078, 36.696835, 33.690506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.807240, 36.122192, 34.248585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.086632, 36.365940, 34.398678>,  <27.254267, 36.512188, 34.488735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.086632, 36.365940, 34.398678>,  <26.807240, 36.122192, 34.248585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.086632, 36.365940, 34.398678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316820, -0.206849, 0.925656,
		0.641680, -0.765433, 0.048580,
		0.698479, 0.609365, 0.375235,
		27.296175, 36.548748, 34.511250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225550, 35.767624, 34.731998>,  <26.807240, 36.122192, 34.248585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.225550, 35.767624, 34.731998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.267227, 36.155266, 34.821423>,  <27.292234, 36.387852, 34.875076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.267227, 36.155266, 34.821423>,  <27.225550, 35.767624, 34.731998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.267227, 36.155266, 34.821423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178900, -0.202855, 0.962728,
		0.978335, -0.140306, 0.152236,
		0.104194, 0.969105, 0.223560,
		27.298485, 36.445999, 34.888489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.621635, 35.732857, 35.262661>,  <27.225550, 35.767624, 34.731998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.621635, 35.732857, 35.262661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.441877, 36.088989, 35.291943>,  <27.334023, 36.302670, 35.309513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.441877, 36.088989, 35.291943>,  <27.621635, 35.732857, 35.262661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.441877, 36.088989, 35.291943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158936, -0.160327, 0.974184,
		0.879080, 0.426160, 0.213556,
		-0.449397, 0.890328, 0.073208,
		27.307058, 36.356087, 35.313904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.873587, 35.919010, 35.932671>,  <27.621635, 35.732857, 35.262661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.873587, 35.919010, 35.932671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.577274, 36.167736, 35.831017>,  <27.399487, 36.316971, 35.770023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.577274, 36.167736, 35.831017>,  <27.873587, 35.919010, 35.932671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.577274, 36.167736, 35.831017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295807, 0.037706, 0.954504,
		0.603111, 0.782253, 0.156007,
		-0.740781, 0.621819, -0.254136,
		27.355040, 36.354282, 35.754776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911867, 36.503059, 36.432140>,  <27.873587, 35.919010, 35.932671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.911867, 36.503059, 36.432140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.538944, 36.515972, 36.288052>,  <27.315189, 36.523720, 36.201599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.538944, 36.515972, 36.288052>,  <27.911867, 36.503059, 36.432140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.538944, 36.515972, 36.288052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359512, 0.025796, 0.932784,
		0.039402, 0.999146, -0.012445,
		-0.932308, 0.032279, -0.360221,
		27.259253, 36.525658, 36.179985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.619635, 37.013264, 36.758057>,  <27.911867, 36.503059, 36.432140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.619635, 37.013264, 36.758057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.315287, 36.773743, 36.658047>,  <27.132679, 36.630028, 36.598042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.315287, 36.773743, 36.658047>,  <27.619635, 37.013264, 36.758057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315287, 36.773743, 36.658047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324323, 0.017201, 0.945790,
		-0.562045, 0.800709, -0.207294,
		-0.760868, -0.598807, -0.250021,
		27.087027, 36.594101, 36.583042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.715359, 37.429115, 37.369385>,  <27.619635, 37.013264, 36.758057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.715359, 37.429115, 37.369385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.914862, 37.115993, 37.518219>,  <28.034563, 36.928120, 37.607521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.914862, 37.115993, 37.518219>,  <27.715359, 37.429115, 37.369385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.914862, 37.115993, 37.518219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784699, 0.225509, -0.577402,
		0.368086, 0.579963, 0.726743,
		0.498759, -0.782808, 0.372090,
		28.064489, 36.881149, 37.629845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359455, 37.698189, 37.515244>,  <27.715359, 37.429115, 37.369385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.359455, 37.698189, 37.515244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.424519, 37.304142, 37.493000>,  <28.463556, 37.067715, 37.479656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.424519, 37.304142, 37.493000>,  <28.359455, 37.698189, 37.515244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.424519, 37.304142, 37.493000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873111, 0.169957, -0.456938,
		0.459587, 0.025776, 0.887759,
		0.162659, -0.985114, -0.055605,
		28.473316, 37.008606, 37.476318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.934742, 37.712772, 37.702702>,  <28.359455, 37.698189, 37.515244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.934742, 37.712772, 37.702702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.875721, 37.368576, 37.507645>,  <28.840309, 37.162060, 37.390610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.875721, 37.368576, 37.507645>,  <28.934742, 37.712772, 37.702702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.875721, 37.368576, 37.507645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907162, 0.078696, -0.413356,
		0.394062, -0.503358, 0.768990,
		-0.147550, -0.860487, -0.487639,
		28.831455, 37.110432, 37.361355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580315, 37.287167, 37.839733>,  <28.934742, 37.712772, 37.702702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580315, 37.287167, 37.839733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.401312, 37.112942, 37.527317>,  <29.293911, 37.008408, 37.339867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.401312, 37.112942, 37.527317>,  <29.580315, 37.287167, 37.839733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401312, 37.112942, 37.527317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894255, -0.211245, -0.394567,
		0.006871, -0.875018, 0.484041,
		-0.447505, -0.435567, -0.781038,
		29.267061, 36.982273, 37.293007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987669, 36.636330, 37.695259>,  <29.580315, 37.287167, 37.839733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987669, 36.636330, 37.695259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.787981, 36.711655, 37.356953>,  <29.668169, 36.756851, 37.153969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.787981, 36.711655, 37.356953>,  <29.987669, 36.636330, 37.695259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787981, 36.711655, 37.356953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752307, -0.390088, -0.530910,
		-0.429901, -0.901315, 0.053069,
		-0.499219, 0.188315, -0.845765,
		29.638216, 36.768150, 37.103222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227585, 36.100494, 37.289566>,  <29.987669, 36.636330, 37.695259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227585, 36.100494, 37.289566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.083181, 36.392258, 37.057140>,  <29.996540, 36.567318, 36.917686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.083181, 36.392258, 37.057140>,  <30.227585, 36.100494, 37.289566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083181, 36.392258, 37.057140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808815, -0.065260, -0.584431,
		-0.464210, -0.680957, -0.566398,
		-0.361009, 0.729410, -0.581063,
		29.974878, 36.611080, 36.882820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440928, 35.918301, 36.643730>,  <30.227585, 36.100494, 37.289566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440928, 35.918301, 36.643730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.332928, 36.296062, 36.568687>,  <30.268127, 36.522720, 36.523663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.332928, 36.296062, 36.568687>,  <30.440928, 35.918301, 36.643730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332928, 36.296062, 36.568687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723448, 0.070399, -0.686780,
		-0.635393, -0.321153, -0.702237,
		-0.269998, 0.944407, -0.187607,
		30.251928, 36.579384, 36.512405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466646, 36.013248, 35.879868>,  <30.440928, 35.918301, 36.643730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466646, 36.013248, 35.879868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.511805, 36.372200, 36.050495>,  <30.538898, 36.587570, 36.152874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.511805, 36.372200, 36.050495>,  <30.466646, 36.013248, 35.879868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.511805, 36.372200, 36.050495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655302, 0.255467, -0.710856,
		-0.746883, 0.359785, -0.559214,
		0.112895, 0.897380, 0.426572,
		30.545673, 36.641415, 36.178467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451206, 36.401028, 35.331696>,  <30.466646, 36.013248, 35.879868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451206, 36.401028, 35.331696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.604069, 36.638332, 35.615101>,  <30.695786, 36.780716, 35.785145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.604069, 36.638332, 35.615101>,  <30.451206, 36.401028, 35.331696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.604069, 36.638332, 35.615101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601393, 0.422468, -0.678120,
		-0.701630, 0.685244, -0.195337,
		0.382154, 0.593264, 0.708517,
		30.718716, 36.816311, 35.827656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421001, 37.054970, 35.114998>,  <30.451206, 36.401028, 35.331696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421001, 37.054970, 35.114998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.726860, 37.067295, 35.372482>,  <30.910376, 37.074688, 35.526974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.726860, 37.067295, 35.372482>,  <30.421001, 37.054970, 35.114998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726860, 37.067295, 35.372482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562166, 0.456490, -0.689627,
		-0.315097, 0.889195, 0.331733,
		0.764646, 0.030810, 0.643714,
		30.956253, 37.076538, 35.565598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720926, 37.796265, 35.183784>,  <30.421001, 37.054970, 35.114998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720926, 37.796265, 35.183784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.013515, 37.552097, 35.305332>,  <31.189070, 37.405598, 35.378262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.013515, 37.552097, 35.305332>,  <30.720926, 37.796265, 35.183784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013515, 37.552097, 35.305332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607249, 0.380461, -0.697495,
		0.310154, 0.694722, 0.648973,
		0.731474, -0.610418, 0.303868,
		31.232958, 37.368973, 35.396492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330385, 38.178253, 35.166286>,  <30.720926, 37.796265, 35.183784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330385, 38.178253, 35.166286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.461697, 37.801556, 35.195553>,  <31.540483, 37.575539, 35.213112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.461697, 37.801556, 35.195553>,  <31.330385, 38.178253, 35.166286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461697, 37.801556, 35.195553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734860, 0.205961, -0.646190,
		0.593475, 0.265897, 0.759662,
		0.328281, -0.941742, 0.073165,
		31.560181, 37.519032, 35.217503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070915, 38.198658, 35.381992>,  <31.330385, 38.178253, 35.166286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070915, 38.198658, 35.381992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.999420, 37.851360, 35.196865>,  <31.956522, 37.642982, 35.085789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.999420, 37.851360, 35.196865>,  <32.070915, 38.198658, 35.381992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999420, 37.851360, 35.196865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707620, 0.213392, -0.673600,
		0.683612, -0.447899, 0.576246,
		-0.178739, -0.868245, -0.462820,
		31.945799, 37.590885, 35.058018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675438, 37.990673, 35.044006>,  <32.070915, 38.198658, 35.381992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675438, 37.990673, 35.044006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.434872, 37.733452, 34.854362>,  <32.290531, 37.579117, 34.740578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.434872, 37.733452, 34.854362>,  <32.675438, 37.990673, 35.044006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434872, 37.733452, 34.854362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634667, -0.024090, -0.772411,
		0.485282, -0.765441, 0.422614,
		-0.601415, -0.643056, -0.474109,
		32.254448, 37.540535, 34.712132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107479, 37.415718, 34.799042>,  <32.675438, 37.990673, 35.044006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107479, 37.415718, 34.799042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.782959, 37.391369, 34.566460>,  <32.588245, 37.376759, 34.426910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.782959, 37.391369, 34.566460>,  <33.107479, 37.415718, 34.799042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782959, 37.391369, 34.566460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582280, 0.004942, -0.812973,
		0.052371, -0.998133, 0.031442,
		-0.811300, -0.060884, -0.581452,
		32.539570, 37.373104, 34.392025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192974, 36.816093, 34.337925>,  <33.107479, 37.415718, 34.799042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192974, 36.816093, 34.337925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.927914, 37.055508, 34.157860>,  <32.768875, 37.199154, 34.049820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.927914, 37.055508, 34.157860>,  <33.192974, 36.816093, 34.337925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927914, 37.055508, 34.157860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550234, -0.018687, -0.834801,
		-0.508067, -0.800881, -0.316950,
		-0.662654, 0.598532, -0.450166,
		32.729118, 37.235065, 34.022808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039879, 36.526173, 33.721256>,  <33.192974, 36.816093, 34.337925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039879, 36.526173, 33.721256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.934731, 36.907974, 33.664944>,  <32.871643, 37.137054, 33.631157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.934731, 36.907974, 33.664944>,  <33.039879, 36.526173, 33.721256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934731, 36.907974, 33.664944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449133, -0.008084, -0.893428,
		-0.853920, -0.298086, -0.426574,
		-0.262870, 0.954505, -0.140783,
		32.855869, 37.194324, 33.622707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577564, 36.566711, 33.142700>,  <33.039879, 36.526173, 33.721256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577564, 36.566711, 33.142700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.753300, 36.924923, 33.171028>,  <32.858742, 37.139851, 33.188023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.753300, 36.924923, 33.171028>,  <32.577564, 36.566711, 33.142700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753300, 36.924923, 33.171028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331971, -0.088600, -0.939119,
		-0.834730, 0.436103, -0.336214,
		0.439341, 0.895525, 0.070817,
		32.885101, 37.193581, 33.192272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534359, 36.803432, 32.475666>,  <32.577564, 36.566711, 33.142700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534359, 36.803432, 32.475666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.796345, 37.076077, 32.606163>,  <32.953537, 37.239662, 32.684460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.796345, 37.076077, 32.606163>,  <32.534359, 36.803432, 32.475666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796345, 37.076077, 32.606163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429737, 0.019155, -0.902751,
		-0.621573, 0.731465, -0.280368,
		0.654960, 0.681610, 0.326243,
		32.992832, 37.280560, 32.704037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615147, 37.278942, 31.953428>,  <32.534359, 36.803432, 32.475666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615147, 37.278942, 31.953428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.951160, 37.330833, 32.164143>,  <33.152771, 37.361969, 32.290573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.951160, 37.330833, 32.164143>,  <32.615147, 37.278942, 31.953428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951160, 37.330833, 32.164143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542335, -0.174992, -0.821736,
		-0.014420, 0.975986, -0.217357,
		0.840038, 0.129730, 0.526788,
		33.203171, 37.369751, 32.322178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974239, 37.751362, 31.601364>,  <32.615147, 37.278942, 31.953428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974239, 37.751362, 31.601364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.235027, 37.532890, 31.811741>,  <33.391502, 37.401806, 31.937967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.235027, 37.532890, 31.811741>,  <32.974239, 37.751362, 31.601364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235027, 37.532890, 31.811741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580720, -0.086313, -0.809515,
		0.487538, 0.833208, 0.260905,
		0.651975, -0.546182, 0.525941,
		33.430618, 37.369034, 31.969522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688366, 38.002377, 31.332682>,  <32.974239, 37.751362, 31.601364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688366, 38.002377, 31.332682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.749599, 37.660625, 31.531321>,  <33.786339, 37.455574, 31.650505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.749599, 37.660625, 31.531321>,  <33.688366, 38.002377, 31.332682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749599, 37.660625, 31.531321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778215, -0.205486, -0.593428,
		0.609054, 0.477306, 0.633430,
		0.153085, -0.854374, 0.496599,
		33.795525, 37.404312, 31.680300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.733940, 34.468655, 46.179054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.444546, 34.209156, 46.273445>,  <42.270908, 34.053455, 46.330082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.444546, 34.209156, 46.273445>,  <42.733940, 34.468655, 46.179054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.444546, 34.209156, 46.273445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260024, 0.060561, 0.963701,
		-0.639493, 0.758588, 0.124876,
		-0.723489, -0.648750, 0.235979,
		42.227497, 34.014530, 46.344238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.417049, 34.798714, 46.812225>,  <42.733940, 34.468655, 46.179054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.417049, 34.798714, 46.812225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.340820, 34.406055, 46.815285>,  <42.295082, 34.170460, 46.817120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.340820, 34.406055, 46.815285>,  <42.417049, 34.798714, 46.812225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.340820, 34.406055, 46.815285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371427, -0.064896, 0.926191,
		-0.908693, 0.179350, 0.376976,
		-0.190577, -0.981642, 0.007646,
		42.283646, 34.111561, 46.817577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097122, 34.645702, 47.516216>,  <42.417049, 34.798714, 46.812225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097122, 34.645702, 47.516216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.208706, 34.281784, 47.393288>,  <42.275658, 34.063431, 47.319530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.208706, 34.281784, 47.393288>,  <42.097122, 34.645702, 47.516216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208706, 34.281784, 47.393288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344359, -0.203967, 0.916414,
		-0.896436, -0.361472, 0.256399,
		0.278961, -0.909800, -0.307320,
		42.292393, 34.008842, 47.301090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.949562, 34.228455, 48.014591>,  <42.097122, 34.645702, 47.516216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.949562, 34.228455, 48.014591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.220078, 34.006218, 47.821121>,  <42.382389, 33.872875, 47.705040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.220078, 34.006218, 47.821121>,  <41.949562, 34.228455, 48.014591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.220078, 34.006218, 47.821121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506906, -0.125414, 0.852829,
		-0.534488, -0.821940, 0.196818,
		0.676290, -0.555595, -0.483679,
		42.422966, 33.839539, 47.676018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.970798, 33.498215, 48.312881>,  <41.949562, 34.228455, 48.014591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.970798, 33.498215, 48.312881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.319229, 33.585987, 48.137123>,  <42.528290, 33.638653, 48.031670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.319229, 33.585987, 48.137123>,  <41.970798, 33.498215, 48.312881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.319229, 33.585987, 48.137123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491107, -0.399883, 0.773891,
		-0.005888, -0.889911, -0.456096,
		0.871079, 0.219435, -0.439396,
		42.580551, 33.651817, 48.005302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.423107, 32.845539, 48.412212>,  <41.970798, 33.498215, 48.312881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.423107, 32.845539, 48.412212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.679825, 33.134781, 48.310059>,  <42.833855, 33.308327, 48.248768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.679825, 33.134781, 48.310059>,  <42.423107, 32.845539, 48.412212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.679825, 33.134781, 48.310059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583251, -0.244035, 0.774768,
		0.497917, -0.646192, -0.578372,
		0.641792, 0.723106, -0.255383,
		42.872364, 33.351711, 48.233444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.081955, 32.489822, 48.453358>,  <42.423107, 32.845539, 48.412212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.081955, 32.489822, 48.453358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.160240, 32.881096, 48.481247>,  <43.207211, 33.115860, 48.497982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.160240, 32.881096, 48.481247>,  <43.081955, 32.489822, 48.453358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.160240, 32.881096, 48.481247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661383, -0.184152, 0.727090,
		0.724065, -0.096184, -0.682992,
		0.195709, 0.978180, 0.069723,
		43.218952, 33.174549, 48.502163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.874123, 32.618988, 48.324577>,  <43.081955, 32.489822, 48.453358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.874123, 32.618988, 48.324577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.720112, 32.938221, 48.509972>,  <43.627705, 33.129761, 48.621208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.720112, 32.938221, 48.509972>,  <43.874123, 32.618988, 48.324577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.720112, 32.938221, 48.509972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785257, 0.019438, 0.618864,
		0.484896, 0.602233, -0.634185,
		-0.385028, 0.798083, 0.463483,
		43.604603, 33.177647, 48.649017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.475891, 33.092384, 48.467049>,  <43.874123, 32.618988, 48.324577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.475891, 33.092384, 48.467049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.174381, 33.177864, 48.715614>,  <43.993477, 33.229153, 48.864754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.174381, 33.177864, 48.715614>,  <44.475891, 33.092384, 48.467049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.174381, 33.177864, 48.715614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637229, 0.006706, 0.770645,
		0.160517, 0.976877, -0.141229,
		-0.753773, 0.213697, 0.621418,
		43.948250, 33.241974, 48.902039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.710613, 33.662857, 48.841721>,  <44.475891, 33.092384, 48.467049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.710613, 33.662857, 48.841721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.407688, 33.505829, 49.050472>,  <44.225933, 33.411610, 49.175724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.407688, 33.505829, 49.050472>,  <44.710613, 33.662857, 48.841721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.407688, 33.505829, 49.050472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541276, 0.069766, 0.837946,
		-0.365364, 0.917071, 0.159656,
		-0.757317, -0.392573, 0.521878,
		44.180492, 33.388058, 49.207035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.800159, 33.945522, 49.462082>,  <44.710613, 33.662857, 48.841721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.800159, 33.945522, 49.462082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.573734, 33.625320, 49.540840>,  <44.437878, 33.433201, 49.588097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.573734, 33.625320, 49.540840>,  <44.800159, 33.945522, 49.462082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.573734, 33.625320, 49.540840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462858, -0.110986, 0.879457,
		-0.682156, 0.588962, 0.433344,
		-0.566062, -0.800504, 0.196896,
		44.403915, 33.385170, 49.599911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.758907, 34.048550, 50.217270>,  <44.800159, 33.945522, 49.462082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.758907, 34.048550, 50.217270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.678871, 33.673733, 50.102787>,  <44.630848, 33.448841, 50.034096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.678871, 33.673733, 50.102787>,  <44.758907, 34.048550, 50.217270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.678871, 33.673733, 50.102787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661383, -0.344695, 0.666152,
		-0.722867, -0.056002, 0.688714,
		-0.200090, -0.937043, -0.286207,
		44.618843, 33.392620, 50.016926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.595219, 33.640236, 50.728172>,  <44.758907, 34.048550, 50.217270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.595219, 33.640236, 50.728172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.750885, 33.384140, 50.463249>,  <44.844284, 33.230484, 50.304295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.750885, 33.384140, 50.463249>,  <44.595219, 33.640236, 50.728172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.750885, 33.384140, 50.463249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703961, -0.257025, 0.662101,
		-0.594131, -0.723902, 0.350678,
		0.389163, -0.640238, -0.662305,
		44.867634, 33.192070, 50.264557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.029873, 34.015896, 51.130550>,  <44.595219, 33.640236, 50.728172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.029873, 34.015896, 51.130550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.700607, 34.015053, 51.357670>,  <43.503048, 34.014549, 51.493942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.700607, 34.015053, 51.357670>,  <44.029873, 34.015896, 51.130550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.700607, 34.015053, 51.357670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462473, 0.582647, -0.668312,
		-0.329418, -0.812722, -0.480589,
		-0.823166, -0.002106, 0.567797,
		43.453659, 34.014420, 51.528008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.444881, 33.919281, 50.712112>,  <44.029873, 34.015896, 51.130550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.444881, 33.919281, 50.712112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.330856, 34.120659, 51.038372>,  <43.262440, 34.241486, 51.234127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.330856, 34.120659, 51.038372>,  <43.444881, 33.919281, 50.712112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.330856, 34.120659, 51.038372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585638, 0.582169, -0.564010,
		-0.758793, -0.638453, 0.128882,
		-0.285063, 0.503445, 0.815648,
		43.245338, 34.271694, 51.283066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.720856, 34.029976, 50.650536>,  <43.444881, 33.919281, 50.712112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.720856, 34.029976, 50.650536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.858738, 34.318905, 50.890343>,  <42.941467, 34.492264, 51.034229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.858738, 34.318905, 50.890343>,  <42.720856, 34.029976, 50.650536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.858738, 34.318905, 50.890343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628088, 0.652116, -0.424559,
		-0.697626, -0.230202, 0.678473,
		0.344709, 0.722324, 0.599520,
		42.962151, 34.535603, 51.070198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.169518, 34.386547, 50.922791>,  <42.720856, 34.029976, 50.650536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.169518, 34.386547, 50.922791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.443813, 34.654922, 51.035652>,  <42.608391, 34.815948, 51.103367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.443813, 34.654922, 51.035652>,  <42.169518, 34.386547, 50.922791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.443813, 34.654922, 51.035652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622823, 0.741500, -0.249540,
		-0.376641, -0.004612, 0.926348,
		0.685736, 0.670938, 0.282152,
		42.649532, 34.856205, 51.120296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891800, 34.771938, 51.467724>,  <42.169518, 34.386547, 50.922791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.891800, 34.771938, 51.467724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.167290, 35.007336, 51.298336>,  <42.332584, 35.148575, 51.196701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.167290, 35.007336, 51.298336>,  <41.891800, 34.771938, 51.467724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.167290, 35.007336, 51.298336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713299, 0.654601, -0.250404,
		0.129844, 0.474523, 0.870614,
		0.688727, 0.588495, -0.423473,
		42.373909, 35.183884, 51.171295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774151, 35.466660, 51.716106>,  <41.891800, 34.771938, 51.467724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774151, 35.466660, 51.716106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.963505, 35.466431, 51.363766>,  <42.077118, 35.466293, 51.152359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.963505, 35.466431, 51.363766>,  <41.774151, 35.466660, 51.716106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963505, 35.466431, 51.363766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649917, 0.674764, -0.349716,
		0.594571, 0.738033, 0.319048,
		0.473385, -0.000577, -0.880856,
		42.105518, 35.466259, 51.099510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.698151, 36.162819, 51.474895>,  <41.774151, 35.466660, 51.716106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.698151, 36.162819, 51.474895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.837803, 35.971153, 51.152775>,  <41.921593, 35.856152, 50.959503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.837803, 35.971153, 51.152775>,  <41.698151, 36.162819, 51.474895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.837803, 35.971153, 51.152775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615551, 0.530693, -0.582635,
		0.706547, 0.699116, -0.109673,
		0.349127, -0.479168, -0.805300,
		41.942539, 35.827404, 50.911186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344242, 36.591953, 50.939949>,  <41.698151, 36.162819, 51.474895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344242, 36.591953, 50.939949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.463726, 36.264233, 50.744186>,  <41.535416, 36.067600, 50.626728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.463726, 36.264233, 50.744186>,  <41.344242, 36.591953, 50.939949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.463726, 36.264233, 50.744186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596999, 0.239672, -0.765604,
		0.744556, 0.520872, -0.417527,
		0.298713, -0.819298, -0.489409,
		41.553341, 36.018444, 50.597363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351860, 36.785927, 50.293724>,  <41.344242, 36.591953, 50.939949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.351860, 36.785927, 50.293724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.334862, 36.386520, 50.280159>,  <41.324661, 36.146877, 50.272018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.334862, 36.386520, 50.280159>,  <41.351860, 36.785927, 50.293724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334862, 36.386520, 50.280159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433529, 0.049012, -0.899806,
		0.900137, -0.023539, -0.434971,
		-0.042500, -0.998521, -0.033913,
		41.322113, 36.086964, 50.269985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618637, 36.595200, 49.631382>,  <41.351860, 36.785927, 50.293724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618637, 36.595200, 49.631382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.392265, 36.288643, 49.752945>,  <41.256443, 36.104710, 49.825882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.392265, 36.288643, 49.752945>,  <41.618637, 36.595200, 49.631382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392265, 36.288643, 49.752945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443532, -0.027715, -0.895830,
		0.694981, -0.641774, -0.324235,
		-0.565934, -0.766393, 0.303908,
		41.222485, 36.058723, 49.844116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487225, 36.143154, 49.035736>,  <41.618637, 36.595200, 49.631382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.487225, 36.143154, 49.035736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.204384, 36.042301, 49.299988>,  <41.034679, 35.981789, 49.458538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.204384, 36.042301, 49.299988>,  <41.487225, 36.143154, 49.035736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204384, 36.042301, 49.299988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691478, 0.051182, -0.720583,
		0.147874, -0.966337, -0.210539,
		-0.707101, -0.252139, 0.660632,
		40.992252, 35.966660, 49.498177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202370, 35.579777, 48.709244>,  <41.487225, 36.143154, 49.035736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202370, 35.579777, 48.709244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.918900, 35.746700, 48.936798>,  <40.748817, 35.846855, 49.073330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.918900, 35.746700, 48.936798>,  <41.202370, 35.579777, 48.709244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918900, 35.746700, 48.936798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668914, -0.141024, -0.729839,
		-0.224342, -0.897756, 0.379085,
		-0.708678, 0.417309, 0.568884,
		40.706295, 35.871891, 49.107464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583023, 35.222206, 48.637615>,  <41.202370, 35.579777, 48.709244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583023, 35.222206, 48.637615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.440933, 35.558018, 48.802055>,  <40.355679, 35.759506, 48.900719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.440933, 35.558018, 48.802055>,  <40.583023, 35.222206, 48.637615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440933, 35.558018, 48.802055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752260, 0.004323, -0.658852,
		-0.554905, -0.543293, 0.630011,
		-0.355226, 0.839532, 0.411096,
		40.334366, 35.809875, 48.925385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879200, 35.139751, 48.775314>,  <40.583023, 35.222206, 48.637615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879200, 35.139751, 48.775314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.941029, 35.530209, 48.714314>,  <39.978127, 35.764481, 48.677711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.941029, 35.530209, 48.714314>,  <39.879200, 35.139751, 48.775314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941029, 35.530209, 48.714314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702936, 0.000187, -0.711253,
		-0.694255, 0.217140, 0.686193,
		0.154570, 0.976140, -0.152506,
		39.987400, 35.823051, 48.668560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186958, 35.506561, 48.665558>,  <39.879200, 35.139751, 48.775314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186958, 35.506561, 48.665558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.454746, 35.765129, 48.519161>,  <39.615417, 35.920269, 48.431324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.454746, 35.765129, 48.519161>,  <39.186958, 35.506561, 48.665558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454746, 35.765129, 48.519161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709150, 0.409454, -0.573981,
		-0.221174, 0.643808, 0.732525,
		0.669469, 0.646420, -0.365996,
		39.655586, 35.959057, 48.409363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524063, 35.399639, 48.816822>,  <39.186958, 35.506561, 48.665558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524063, 35.399639, 48.816822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.133247, 35.319561, 48.845974>,  <37.898758, 35.271515, 48.863464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.133247, 35.319561, 48.845974>,  <38.524063, 35.399639, 48.816822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133247, 35.319561, 48.845974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178018, -0.579200, 0.795510,
		-0.117048, 0.790220, 0.601541,
		-0.977041, -0.200198, 0.072879,
		37.840134, 35.259502, 48.867836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202473, 35.630539, 49.503525>,  <38.524063, 35.399639, 48.816822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202473, 35.630539, 49.503525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.982510, 35.325623, 49.366985>,  <37.850533, 35.142673, 49.285061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.982510, 35.325623, 49.366985>,  <38.202473, 35.630539, 49.503525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982510, 35.325623, 49.366985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162335, -0.498437, 0.851591,
		-0.819300, 0.412882, 0.397839,
		-0.549905, -0.762292, -0.341345,
		37.817539, 35.096935, 49.264584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804550, 35.401669, 50.010963>,  <38.202473, 35.630539, 49.503525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804550, 35.401669, 50.010963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.807667, 35.078102, 49.775814>,  <37.809536, 34.883961, 49.634724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.807667, 35.078102, 49.775814>,  <37.804550, 35.401669, 50.010963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807667, 35.078102, 49.775814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262205, -0.565666, 0.781838,
		-0.964981, -0.160231, 0.207697,
		0.007788, -0.808918, -0.587870,
		37.810001, 34.835426, 49.599453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730621, 34.810207, 50.488518>,  <37.804550, 35.401669, 50.010963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730621, 34.810207, 50.488518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.859150, 34.639153, 50.150551>,  <37.936268, 34.536518, 49.947773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.859150, 34.639153, 50.150551>,  <37.730621, 34.810207, 50.488518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859150, 34.639153, 50.150551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619424, -0.579967, 0.529105,
		-0.716287, -0.693372, 0.078532,
		0.321321, -0.427636, -0.844914,
		37.955547, 34.510860, 49.897076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522415, 34.074272, 50.506893>,  <37.730621, 34.810207, 50.488518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522415, 34.074272, 50.506893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.834518, 34.116108, 50.260231>,  <38.021778, 34.141209, 50.112232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.834518, 34.116108, 50.260231>,  <37.522415, 34.074272, 50.506893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834518, 34.116108, 50.260231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530670, -0.632532, 0.564175,
		-0.331046, -0.767441, -0.549039,
		0.780256, 0.104591, -0.616654,
		38.068596, 34.147484, 50.075233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868244, 33.335030, 50.432758>,  <37.522415, 34.074272, 50.506893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868244, 33.335030, 50.432758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.151978, 33.587818, 50.307880>,  <38.322216, 33.739491, 50.232952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.151978, 33.587818, 50.307880>,  <37.868244, 33.335030, 50.432758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151978, 33.587818, 50.307880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704704, -0.626060, 0.333828,
		0.015515, -0.456801, -0.889434,
		0.709331, 0.631967, -0.312196,
		38.364777, 33.777409, 50.214222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464130, 32.811619, 50.156712>,  <37.868244, 33.335030, 50.432758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464130, 32.811619, 50.156712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.637726, 33.167862, 50.211086>,  <38.741882, 33.381607, 50.243713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.637726, 33.167862, 50.211086>,  <38.464130, 32.811619, 50.156712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637726, 33.167862, 50.211086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641507, -0.411431, 0.647451,
		0.632553, -0.193778, -0.749885,
		0.433988, 0.890603, 0.135942,
		38.767921, 33.435043, 50.251869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800785, 32.197968, 49.889187>,  <38.464130, 32.811619, 50.156712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800785, 32.197968, 49.889187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.552132, 31.924747, 50.042557>,  <38.402939, 31.760817, 50.134579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.552132, 31.924747, 50.042557>,  <38.800785, 32.197968, 49.889187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552132, 31.924747, 50.042557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692767, 0.250965, -0.676084,
		0.365573, -0.685900, -0.629203,
		-0.621635, -0.683050, 0.383423,
		38.365643, 31.719833, 50.157585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712097, 31.690203, 49.308533>,  <38.800785, 32.197968, 49.889187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712097, 31.690203, 49.308533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.409412, 31.645012, 49.566097>,  <38.227802, 31.617897, 49.720638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.409412, 31.645012, 49.566097>,  <38.712097, 31.690203, 49.308533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409412, 31.645012, 49.566097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653265, 0.092747, -0.751428,
		0.025168, -0.989260, -0.143982,
		-0.756711, -0.112970, 0.643915,
		38.182400, 31.611120, 49.759270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255737, 31.310436, 48.896809>,  <38.712097, 31.690203, 49.308533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255737, 31.310436, 48.896809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.037659, 31.441900, 49.205288>,  <37.906811, 31.520779, 49.390377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.037659, 31.441900, 49.205288>,  <38.255737, 31.310436, 48.896809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037659, 31.441900, 49.205288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776349, 0.149160, -0.612400,
		-0.316303, -0.932595, 0.173834,
		-0.545192, 0.328660, 0.771199,
		37.874100, 31.540499, 49.436649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535969, 31.137707, 48.694080>,  <38.255737, 31.310436, 48.896809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535969, 31.137707, 48.694080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.486599, 31.398596, 48.993244>,  <37.456978, 31.555130, 49.172745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.486599, 31.398596, 48.993244>,  <37.535969, 31.137707, 48.694080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486599, 31.398596, 48.993244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727414, 0.453194, -0.515251,
		-0.675008, -0.607635, 0.418502,
		-0.123422, 0.652223, 0.747912,
		37.449574, 31.594263, 49.217617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762535, 31.246521, 48.872566>,  <37.535969, 31.137707, 48.694080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762535, 31.246521, 48.872566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.922485, 31.589792, 49.001331>,  <37.018456, 31.795755, 49.078590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.922485, 31.589792, 49.001331>,  <36.762535, 31.246521, 48.872566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922485, 31.589792, 49.001331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636238, 0.512709, -0.576481,
		-0.659773, 0.025707, 0.751026,
		0.399877, 0.858177, 0.321916,
		37.042450, 31.847246, 49.097904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226818, 31.732231, 49.221184>,  <36.762535, 31.246521, 48.872566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226818, 31.732231, 49.221184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.532478, 31.974754, 49.133121>,  <36.715874, 32.120270, 49.080284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.532478, 31.974754, 49.133121>,  <36.226818, 31.732231, 49.221184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532478, 31.974754, 49.133121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625068, 0.611746, -0.484827,
		-0.159275, 0.508091, 0.846448,
		0.764147, 0.606309, -0.220156,
		36.761723, 32.156647, 49.067074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930935, 32.435280, 49.172523>,  <36.226818, 31.732231, 49.221184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930935, 32.435280, 49.172523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.270420, 32.489109, 48.967945>,  <36.474110, 32.521408, 48.845196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.270420, 32.489109, 48.967945>,  <35.930935, 32.435280, 49.172523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270420, 32.489109, 48.967945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468501, 0.639968, -0.609055,
		0.245349, 0.756525, 0.606196,
		0.848711, 0.134573, -0.511448,
		36.525032, 32.529480, 48.814510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<43.094307, 29.945499, 50.109978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.200161, 30.321859, 50.025433>,  <43.263672, 30.547676, 49.974705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.200161, 30.321859, 50.025433>,  <43.094307, 29.945499, 50.109978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.200161, 30.321859, 50.025433> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689084, 0.031163, -0.724011,
		-0.674636, 0.337246, 0.656606,
		0.264632, 0.940901, -0.211367,
		43.279549, 30.604130, 49.962021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416176, 30.344683, 49.916225>,  <43.094307, 29.945499, 50.109978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416176, 30.344683, 49.916225> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.716019, 30.548866, 49.747692>,  <42.895924, 30.671377, 49.646572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.716019, 30.548866, 49.747692>,  <42.416176, 30.344683, 49.916225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.716019, 30.548866, 49.747692> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561724, 0.153941, -0.812877,
		-0.350080, 0.846010, 0.402132,
		0.749607, 0.510459, -0.421332,
		42.940899, 30.702003, 49.621292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093590, 30.842773, 49.604858>,  <42.416176, 30.344683, 49.916225>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093590, 30.842773, 49.604858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.446419, 30.872570, 49.418781>,  <42.658115, 30.890448, 49.307137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.446419, 30.872570, 49.418781>,  <42.093590, 30.842773, 49.604858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446419, 30.872570, 49.418781> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469713, 0.215222, -0.856183,
		0.036341, 0.973720, 0.224830,
		0.882071, 0.074491, -0.465191,
		42.711040, 30.894917, 49.279224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.117039, 31.453928, 49.115669>,  <42.093590, 30.842773, 49.604858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.117039, 31.453928, 49.115669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.394009, 31.208139, 48.964424>,  <42.560192, 31.060665, 48.873676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.394009, 31.208139, 48.964424>,  <42.117039, 31.453928, 49.115669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.394009, 31.208139, 48.964424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345749, 0.177374, -0.921410,
		0.633249, 0.768740, -0.089635,
		0.692425, -0.614474, -0.378113,
		42.601738, 31.023798, 48.850990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335766, 31.729946, 48.526833>,  <42.117039, 31.453928, 49.115669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.335766, 31.729946, 48.526833> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.419804, 31.343908, 48.464283>,  <42.470226, 31.112286, 48.426754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.419804, 31.343908, 48.464283>,  <42.335766, 31.729946, 48.526833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.419804, 31.343908, 48.464283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349189, 0.075324, -0.934020,
		0.913197, 0.250834, -0.321176,
		0.210091, -0.965095, -0.156374,
		42.482830, 31.054380, 48.417370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.569393, 31.749292, 47.879066>,  <42.335766, 31.729946, 48.526833>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.569393, 31.749292, 47.879066> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.490242, 31.358416, 47.909901>,  <42.442749, 31.123890, 47.928402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.490242, 31.358416, 47.909901>,  <42.569393, 31.749292, 47.879066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.490242, 31.358416, 47.909901> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187850, -0.039375, -0.981408,
		0.962058, -0.208682, -0.175774,
		-0.197881, -0.977191, 0.077082,
		42.430878, 31.065258, 47.933025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.813759, 31.482935, 47.223099>,  <42.569393, 31.749292, 47.879066>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.813759, 31.482935, 47.223099> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.571697, 31.197184, 47.363644>,  <42.426460, 31.025734, 47.447971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.571697, 31.197184, 47.363644>,  <42.813759, 31.482935, 47.223099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.571697, 31.197184, 47.363644> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259668, -0.240087, -0.935377,
		0.752569, -0.657285, -0.040211,
		-0.605155, -0.714377, 0.351358,
		42.390152, 30.982870, 47.469051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.853184, 31.017944, 46.719166>,  <42.813759, 31.482935, 47.223099>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.853184, 31.017944, 46.719166> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.520298, 30.929287, 46.922455>,  <42.320568, 30.876093, 47.044430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.520298, 30.929287, 46.922455>,  <42.853184, 31.017944, 46.719166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520298, 30.929287, 46.922455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434106, -0.309754, -0.845934,
		0.344920, -0.924623, 0.161565,
		-0.832215, -0.221643, 0.508225,
		42.270634, 30.862795, 47.074921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633419, 30.354465, 46.518997>,  <42.853184, 31.017944, 46.719166>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.633419, 30.354465, 46.518997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.317963, 30.565365, 46.645523>,  <42.128689, 30.691904, 46.721439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.317963, 30.565365, 46.645523>,  <42.633419, 30.354465, 46.518997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.317963, 30.565365, 46.645523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498835, -0.247892, -0.830490,
		-0.359464, -0.812746, 0.458508,
		-0.788637, 0.527251, 0.316318,
		42.081371, 30.723539, 46.740417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068829, 29.959648, 46.215904>,  <42.633419, 30.354465, 46.518997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068829, 29.959648, 46.215904> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.910492, 30.309469, 46.327946>,  <41.815491, 30.519361, 46.395172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.910492, 30.309469, 46.327946>,  <42.068829, 29.959648, 46.215904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910492, 30.309469, 46.327946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614414, -0.025531, -0.788571,
		-0.682496, -0.484255, 0.547445,
		-0.395846, 0.874555, 0.280108,
		41.791737, 30.571836, 46.411980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368191, 29.895838, 46.333843>,  <42.068829, 29.959648, 46.215904>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368191, 29.895838, 46.333843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.437683, 30.278936, 46.242157>,  <41.479378, 30.508795, 46.187145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.437683, 30.278936, 46.242157>,  <41.368191, 29.895838, 46.333843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437683, 30.278936, 46.242157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700508, -0.043414, -0.712323,
		-0.692176, 0.284319, 0.663367,
		0.173727, 0.957747, -0.229218,
		41.489799, 30.566259, 46.173393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787338, 29.989748, 45.961098>,  <41.368191, 29.895838, 46.333843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787338, 29.989748, 45.961098> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.993057, 30.318886, 45.864410>,  <41.116489, 30.516369, 45.806400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.993057, 30.318886, 45.864410>,  <40.787338, 29.989748, 45.961098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993057, 30.318886, 45.864410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445724, 0.015667, -0.895033,
		-0.732686, 0.568051, 0.374819,
		0.514297, 0.822844, -0.241715,
		41.147346, 30.565739, 45.791897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214359, 30.105747, 46.437775>,  <40.787338, 29.989748, 45.961098>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214359, 30.105747, 46.437775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.893703, 29.881630, 46.521141>,  <39.701309, 29.747160, 46.571159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.893703, 29.881630, 46.521141>,  <40.214359, 30.105747, 46.437775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893703, 29.881630, 46.521141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368751, -0.189060, 0.910098,
		-0.470520, 0.806428, 0.358168,
		-0.801644, -0.560295, 0.208414,
		39.653210, 29.713541, 46.583664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061069, 30.333448, 47.018234>,  <40.214359, 30.105747, 46.437775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061069, 30.333448, 47.018234> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.882118, 29.976601, 46.993019>,  <39.774746, 29.762491, 46.977890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.882118, 29.976601, 46.993019>,  <40.061069, 30.333448, 47.018234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882118, 29.976601, 46.993019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277269, -0.205367, 0.938587,
		-0.850279, 0.402425, 0.339235,
		-0.447378, -0.892120, -0.063039,
		39.747906, 29.708965, 46.974106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692005, 30.288675, 47.667957>,  <40.061069, 30.333448, 47.018234>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692005, 30.288675, 47.667957> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.710964, 29.918509, 47.517570>,  <39.722340, 29.696407, 47.427338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.710964, 29.918509, 47.517570>,  <39.692005, 30.288675, 47.667957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710964, 29.918509, 47.517570> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322854, -0.341994, 0.882499,
		-0.945261, -0.163215, 0.282564,
		0.047402, -0.925419, -0.375968,
		39.725185, 29.640882, 47.404781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183365, 29.827868, 47.994999>,  <39.692005, 30.288675, 47.667957>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183365, 29.827868, 47.994999> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.485294, 29.605955, 47.855026>,  <39.666454, 29.472807, 47.771042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.485294, 29.605955, 47.855026>,  <39.183365, 29.827868, 47.994999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485294, 29.605955, 47.855026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303423, -0.177650, 0.936149,
		-0.581524, -0.812809, 0.034238,
		0.754828, -0.554782, -0.349932,
		39.711742, 29.439520, 47.750046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083847, 29.198185, 48.356915>,  <39.183365, 29.827868, 47.994999>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083847, 29.198185, 48.356915> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.461365, 29.189377, 48.224998>,  <39.687878, 29.184092, 48.145851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.461365, 29.189377, 48.224998>,  <39.083847, 29.198185, 48.356915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461365, 29.189377, 48.224998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308037, -0.303120, 0.901794,
		-0.119820, -0.952698, -0.279302,
		0.943799, -0.022018, -0.329786,
		39.744503, 29.182772, 48.126064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290657, 28.567417, 48.597832>,  <39.083847, 29.198185, 48.356915>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290657, 28.567417, 48.597832> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.623577, 28.773909, 48.517056>,  <39.823330, 28.897804, 48.468590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.623577, 28.773909, 48.517056>,  <39.290657, 28.567417, 48.597832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623577, 28.773909, 48.517056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367852, -0.241841, 0.897886,
		0.414678, -0.821596, -0.391181,
		0.832303, 0.516229, -0.201940,
		39.873268, 28.928778, 48.456474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685078, 28.260702, 48.989002>,  <39.290657, 28.567417, 48.597832>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685078, 28.260702, 48.989002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.910801, 28.576981, 48.894043>,  <40.046234, 28.766748, 48.837067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.910801, 28.576981, 48.894043>,  <39.685078, 28.260702, 48.989002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910801, 28.576981, 48.894043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384669, 0.002599, 0.923051,
		0.730470, -0.612204, -0.302689,
		0.564309, 0.790696, -0.237394,
		40.080093, 28.814190, 48.822826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434753, 28.081814, 49.140148>,  <39.685078, 28.260702, 48.989002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434753, 28.081814, 49.140148> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.418640, 28.481430, 49.146976>,  <40.408974, 28.721201, 49.151073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.418640, 28.481430, 49.146976>,  <40.434753, 28.081814, 49.140148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418640, 28.481430, 49.146976> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498392, 0.005285, 0.866936,
		0.866015, 0.043428, -0.498128,
		-0.040282, 0.999043, 0.017067,
		40.406555, 28.781143, 49.152096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036808, 28.338530, 49.399879>,  <40.434753, 28.081814, 49.140148>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.036808, 28.338530, 49.399879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.804676, 28.659809, 49.453678>,  <40.665398, 28.852577, 49.485958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.804676, 28.659809, 49.453678>,  <41.036808, 28.338530, 49.399879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804676, 28.659809, 49.453678> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412100, 0.147180, 0.899173,
		0.702418, 0.577245, -0.416411,
		-0.580330, 0.803198, 0.134501,
		40.630577, 28.900768, 49.494030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468739, 28.856199, 49.751884>,  <41.036808, 28.338530, 49.399879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468739, 28.856199, 49.751884> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.094234, 28.988064, 49.800438>,  <40.869530, 29.067183, 49.829571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.094234, 28.988064, 49.800438>,  <41.468739, 28.856199, 49.751884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094234, 28.988064, 49.800438> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249059, 0.379221, 0.891157,
		0.247748, 0.864590, -0.437156,
		-0.936264, 0.329660, 0.121383,
		40.813354, 29.086962, 49.836853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508442, 29.444641, 50.098003>,  <41.468739, 28.856199, 49.751884>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508442, 29.444641, 50.098003> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.136005, 29.337114, 50.196648>,  <40.912544, 29.272598, 50.255833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.136005, 29.337114, 50.196648>,  <41.508442, 29.444641, 50.098003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136005, 29.337114, 50.196648> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133273, 0.378621, 0.915906,
		-0.339582, 0.885654, -0.316703,
		-0.931087, -0.268817, 0.246607,
		40.856678, 29.256470, 50.270630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216984, 30.061943, 50.356110>,  <41.508442, 29.444641, 50.098003>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216984, 30.061943, 50.356110> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.029400, 29.740955, 50.503685>,  <40.916847, 29.548363, 50.592232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.029400, 29.740955, 50.503685>,  <41.216984, 30.061943, 50.356110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029400, 29.740955, 50.503685> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158694, 0.334365, 0.928987,
		-0.868844, 0.494208, -0.029457,
		-0.468962, -0.802470, 0.368939,
		40.888710, 29.500214, 50.614368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750050, 30.290644, 50.753372>,  <41.216984, 30.061943, 50.356110>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750050, 30.290644, 50.753372> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.828087, 29.920614, 50.883709>,  <40.874908, 29.698597, 50.961910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.828087, 29.920614, 50.883709>,  <40.750050, 30.290644, 50.753372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828087, 29.920614, 50.883709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234115, 0.366549, 0.900462,
		-0.952434, -0.099387, 0.288084,
		0.195091, -0.925075, 0.325846,
		40.886616, 29.643091, 50.981464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348404, 30.057720, 51.359142>,  <40.750050, 30.290644, 50.753372>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348404, 30.057720, 51.359142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.670612, 29.821730, 51.381279>,  <40.863937, 29.680136, 51.394562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.670612, 29.821730, 51.381279>,  <40.348404, 30.057720, 51.359142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670612, 29.821730, 51.381279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107536, 0.237390, 0.965444,
		-0.582729, -0.771733, 0.254666,
		0.805520, -0.589978, 0.055345,
		40.912270, 29.644737, 51.397881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980648, 29.445807, 51.588642>,  <40.348404, 30.057720, 51.359142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980648, 29.445807, 51.588642> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.025124, 29.788876, 51.789452>,  <40.051811, 29.994717, 51.909939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.025124, 29.788876, 51.789452>,  <39.980648, 29.445807, 51.588642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025124, 29.788876, 51.789452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760117, 0.398820, -0.512995,
		-0.640201, -0.324558, 0.696279,
		0.111193, 0.857674, 0.502028,
		40.058483, 30.046177, 51.940060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372688, 29.683649, 51.574505>,  <39.980648, 29.445807, 51.588642>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372688, 29.683649, 51.574505> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.600967, 30.002384, 51.653862>,  <39.737934, 30.193624, 51.701477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.600967, 30.002384, 51.653862>,  <39.372688, 29.683649, 51.574505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600967, 30.002384, 51.653862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683390, 0.594828, -0.423270,
		-0.455285, 0.105979, 0.884016,
		0.570695, 0.796836, 0.198391,
		39.772175, 30.241436, 51.713379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952068, 30.153481, 51.873829>,  <39.372688, 29.683649, 51.574505>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952068, 30.153481, 51.873829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.240894, 30.396711, 51.741852>,  <39.414192, 30.542650, 51.662666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.240894, 30.396711, 51.741852>,  <38.952068, 30.153481, 51.873829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240894, 30.396711, 51.741852> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691823, 0.635280, -0.343221,
		0.000900, 0.476089, 0.879397,
		0.722066, 0.608078, -0.329941,
		39.457516, 30.579134, 51.642868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757618, 30.852350, 52.064636>,  <38.952068, 30.153481, 51.873829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757618, 30.852350, 52.064636> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.004364, 30.896040, 51.752857>,  <39.152412, 30.922255, 51.565788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.004364, 30.896040, 51.752857>,  <38.757618, 30.852350, 52.064636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004364, 30.896040, 51.752857> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647462, 0.633503, -0.423636,
		0.447513, 0.765992, 0.461507,
		0.616868, 0.109225, -0.779451,
		39.189423, 30.928808, 51.519020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810608, 31.577385, 51.872623>,  <38.757618, 30.852350, 52.064636>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810608, 31.577385, 51.872623> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.913418, 31.374489, 51.543591>,  <38.975105, 31.252752, 51.346169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.913418, 31.374489, 51.543591>,  <38.810608, 31.577385, 51.872623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913418, 31.374489, 51.543591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601026, 0.582644, -0.547078,
		0.756773, 0.635009, -0.155109,
		0.257026, -0.507238, -0.822586,
		38.990524, 31.222317, 51.296814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757145, 32.072865, 51.319729>,  <38.810608, 31.577385, 51.872623>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757145, 32.072865, 51.319729> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.801357, 31.742506, 51.098579>,  <38.827885, 31.544291, 50.965889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.801357, 31.742506, 51.098579>,  <38.757145, 32.072865, 51.319729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801357, 31.742506, 51.098579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527888, 0.422545, -0.736743,
		0.842091, 0.373293, -0.389276,
		0.110534, -0.825898, -0.552879,
		38.834518, 31.494736, 50.932716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876106, 32.293541, 50.581608>,  <38.757145, 32.072865, 51.319729>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876106, 32.293541, 50.581608> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.733028, 31.920527, 50.561848>,  <38.647182, 31.696718, 50.549992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.733028, 31.920527, 50.561848>,  <38.876106, 32.293541, 50.581608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733028, 31.920527, 50.561848> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522999, 0.243871, -0.816700,
		0.773647, -0.266289, -0.574944,
		-0.357691, -0.932532, -0.049401,
		38.625721, 31.640766, 50.547028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167225, 32.785000, 50.059669>,  <38.876106, 32.293541, 50.581608>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167225, 32.785000, 50.059669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.145561, 33.105278, 50.298317>,  <39.132561, 33.297443, 50.441505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.145561, 33.105278, 50.298317>,  <39.167225, 32.785000, 50.059669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145561, 33.105278, 50.298317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672668, -0.412317, 0.614421,
		0.737959, 0.434605, -0.516270,
		-0.054164, 0.800696, 0.596618,
		39.129311, 33.345486, 50.477303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863716, 33.120586, 50.045765>,  <39.167225, 32.785000, 50.059669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863716, 33.120586, 50.045765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.647694, 33.220051, 50.367386>,  <39.518078, 33.279732, 50.560360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.647694, 33.220051, 50.367386>,  <39.863716, 33.120586, 50.045765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647694, 33.220051, 50.367386> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802216, -0.136835, 0.581142,
		0.254531, 0.958876, -0.125582,
		-0.540059, 0.248663, 0.804054,
		39.485676, 33.294651, 50.608601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286476, 33.538815, 50.404819>,  <39.863716, 33.120586, 50.045765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286476, 33.538815, 50.404819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.001732, 33.431446, 50.664421>,  <39.830887, 33.367023, 50.820183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.001732, 33.431446, 50.664421>,  <40.286476, 33.538815, 50.404819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001732, 33.431446, 50.664421> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678621, -0.024861, 0.734068,
		-0.180908, 0.962979, 0.199857,
		-0.711861, -0.268426, 0.649000,
		39.788174, 33.350918, 50.859119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346970, 33.985558, 50.921768>,  <40.286476, 33.538815, 50.404819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346970, 33.985558, 50.921768> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.189487, 33.643497, 51.056652>,  <40.094997, 33.438263, 51.137581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.189487, 33.643497, 51.056652>,  <40.346970, 33.985558, 50.921768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189487, 33.643497, 51.056652> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596307, 0.041585, 0.801679,
		-0.699580, 0.516708, 0.493560,
		-0.393709, -0.855151, 0.337208,
		40.071373, 33.386951, 51.157814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331608, 34.096550, 51.602573>,  <40.346970, 33.985558, 50.921768>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331608, 34.096550, 51.602573> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.272003, 33.701797, 51.577690>,  <40.236240, 33.464947, 51.562759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.272003, 33.701797, 51.577690>,  <40.331608, 34.096550, 51.602573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272003, 33.701797, 51.577690> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644252, -0.144617, 0.751016,
		-0.750157, 0.071831, 0.657347,
		-0.149010, -0.986877, -0.062208,
		40.227299, 33.405735, 51.559029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108009, 33.763115, 52.355949>,  <40.331608, 34.096550, 51.602573>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108009, 33.763115, 52.355949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.251652, 33.457836, 52.141071>,  <40.337837, 33.274670, 52.012146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.251652, 33.457836, 52.141071>,  <40.108009, 33.763115, 52.355949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251652, 33.457836, 52.141071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583526, -0.265611, 0.767430,
		-0.728384, -0.589052, 0.349963,
		0.359102, -0.763196, -0.537194,
		40.359383, 33.228878, 51.979912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085423, 33.190861, 52.790710>,  <40.108009, 33.763115, 52.355949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085423, 33.190861, 52.790710> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.352341, 33.093937, 52.508999>,  <40.512489, 33.035782, 52.339973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.352341, 33.093937, 52.508999>,  <40.085423, 33.190861, 52.790710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352341, 33.093937, 52.508999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653079, -0.264242, 0.709693,
		-0.358066, -0.933521, -0.018078,
		0.667290, -0.242311, -0.704279,
		40.552528, 33.021244, 52.297714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480244, 32.608997, 53.133492>,  <40.085423, 33.190861, 52.790710>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480244, 32.608997, 53.133492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.709507, 32.666172, 52.810738>,  <40.847065, 32.700478, 52.617085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.709507, 32.666172, 52.810738>,  <40.480244, 32.608997, 53.133492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709507, 32.666172, 52.810738> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791026, -0.353580, 0.499258,
		-0.213937, -0.924420, -0.315722,
		0.573157, 0.142934, -0.806884,
		40.881454, 32.709053, 52.568672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816101, 31.962086, 52.997189>,  <40.480244, 32.608997, 53.133492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816101, 31.962086, 52.997189> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.054100, 32.233326, 52.824604>,  <41.196899, 32.396069, 52.721054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.054100, 32.233326, 52.824604>,  <40.816101, 31.962086, 52.997189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054100, 32.233326, 52.824604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768455, -0.322679, 0.552589,
		0.235488, -0.660346, -0.713084,
		0.594997, 0.678101, -0.431459,
		41.232597, 32.436756, 52.695168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.931255, 36.209587, 39.349007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283051, 36.372974, 39.251308>,  <34.494129, 36.471004, 39.192692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283051, 36.372974, 39.251308>,  <33.931255, 36.209587, 39.349007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283051, 36.372974, 39.251308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255119, 0.028597, 0.966487,
		0.401761, -0.912326, -0.079056,
		0.879490, 0.408465, -0.244241,
		34.546898, 36.495514, 39.178036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452251, 35.874214, 39.715530>,  <33.931255, 36.209587, 39.349007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452251, 35.874214, 39.715530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.612370, 36.231731, 39.634644>,  <34.708439, 36.446243, 39.586113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.612370, 36.231731, 39.634644>,  <34.452251, 35.874214, 39.715530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612370, 36.231731, 39.634644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295781, 0.082838, 0.951657,
		0.867340, -0.440753, -0.231209,
		0.400293, 0.893798, -0.202215,
		34.732456, 36.499870, 39.573978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176136, 35.816933, 39.772015>,  <34.452251, 35.874214, 39.715530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176136, 35.816933, 39.772015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034843, 36.182449, 39.852222>,  <34.950069, 36.401760, 39.900349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034843, 36.182449, 39.852222>,  <35.176136, 35.816933, 39.772015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034843, 36.182449, 39.852222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440253, -0.026759, 0.897475,
		0.825473, 0.405295, -0.392849,
		-0.353230, 0.913794, 0.200522,
		34.928875, 36.456589, 39.912380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776447, 36.129745, 39.959011>,  <35.176136, 35.816933, 39.772015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776447, 36.129745, 39.959011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464050, 36.336628, 40.099041>,  <35.276611, 36.460758, 40.183060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464050, 36.336628, 40.099041>,  <35.776447, 36.129745, 39.959011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464050, 36.336628, 40.099041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360416, -0.084540, 0.928953,
		0.510052, 0.851678, -0.120383,
		-0.780991, 0.517202, 0.350078,
		35.229752, 36.491787, 40.204063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089272, 36.351227, 40.563911>,  <35.776447, 36.129745, 39.959011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089272, 36.351227, 40.563911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.711636, 36.474190, 40.611568>,  <35.485054, 36.547966, 40.640163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.711636, 36.474190, 40.611568>,  <36.089272, 36.351227, 40.563911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711636, 36.474190, 40.611568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131608, 0.020061, 0.991099,
		0.302281, 0.951367, -0.059396,
		-0.944090, 0.307407, 0.119143,
		35.428410, 36.566410, 40.647312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209644, 36.767643, 40.993538>,  <36.089272, 36.351227, 40.563911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209644, 36.767643, 40.993538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814880, 36.732121, 41.047390>,  <35.578022, 36.710808, 41.079700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814880, 36.732121, 41.047390>,  <36.209644, 36.767643, 40.993538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814880, 36.732121, 41.047390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131738, 0.037664, 0.990569,
		-0.093035, 0.995337, -0.025472,
		-0.986909, -0.088802, 0.134628,
		35.518806, 36.705479, 41.087780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946056, 37.357891, 41.441448>,  <36.209644, 36.767643, 40.993538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946056, 37.357891, 41.441448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673840, 37.065777, 41.465248>,  <35.510509, 36.890507, 41.479530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673840, 37.065777, 41.465248>,  <35.946056, 37.357891, 41.441448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673840, 37.065777, 41.465248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112985, -0.024355, 0.993298,
		-0.723945, 0.682705, 0.099086,
		-0.680543, -0.730288, 0.059504,
		35.469677, 36.846691, 41.483101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366440, 37.642193, 41.897141>,  <35.946056, 37.357891, 41.441448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366440, 37.642193, 41.897141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359673, 37.242313, 41.904167>,  <35.355614, 37.002384, 41.908382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359673, 37.242313, 41.904167>,  <35.366440, 37.642193, 41.897141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359673, 37.242313, 41.904167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022898, 0.017952, 0.999577,
		-0.999595, 0.016504, -0.023195,
		-0.016914, -0.999703, 0.017567,
		35.354599, 36.942402, 41.909439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861553, 37.468277, 42.377628>,  <35.366440, 37.642193, 41.897141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861553, 37.468277, 42.377628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077721, 37.134880, 42.331593>,  <35.207420, 36.934841, 42.303970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077721, 37.134880, 42.331593>,  <34.861553, 37.468277, 42.377628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077721, 37.134880, 42.331593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060736, -0.175069, 0.982681,
		-0.839202, -0.524068, -0.145233,
		0.540418, -0.833489, -0.115088,
		35.239845, 36.884834, 42.297066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641876, 37.112175, 42.857742>,  <34.861553, 37.468277, 42.377628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641876, 37.112175, 42.857742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976402, 36.910919, 42.770626>,  <35.177116, 36.790165, 42.718357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976402, 36.910919, 42.770626>,  <34.641876, 37.112175, 42.857742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976402, 36.910919, 42.770626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157920, -0.159342, 0.974511,
		-0.525017, -0.849389, -0.053803,
		0.836312, -0.503139, -0.217793,
		35.227295, 36.759979, 42.705288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622822, 36.536453, 43.297676>,  <34.641876, 37.112175, 42.857742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622822, 36.536453, 43.297676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008369, 36.572556, 43.197433>,  <35.239700, 36.594219, 43.137287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008369, 36.572556, 43.197433>,  <34.622822, 36.536453, 43.297676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008369, 36.572556, 43.197433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265949, -0.273805, 0.924285,
		0.014810, -0.957541, -0.287918,
		0.963874, 0.090260, -0.250602,
		35.297531, 36.599632, 43.122253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881851, 35.977875, 43.640957>,  <34.622822, 36.536453, 43.297676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881851, 35.977875, 43.640957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191208, 36.224121, 43.580444>,  <35.376820, 36.371868, 43.544136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191208, 36.224121, 43.580444>,  <34.881851, 35.977875, 43.640957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191208, 36.224121, 43.580444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282073, -0.120463, 0.951800,
		0.567718, -0.778786, -0.266814,
		0.773389, 0.615615, -0.151285,
		35.423225, 36.408806, 43.535057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883606, 35.270870, 43.497311>,  <34.881851, 35.977875, 43.640957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883606, 35.270870, 43.497311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576946, 35.047501, 43.624058>,  <34.392948, 34.913479, 43.700108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576946, 35.047501, 43.624058>,  <34.883606, 35.270870, 43.497311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576946, 35.047501, 43.624058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431785, 0.083165, -0.898134,
		0.475189, -0.825376, -0.304878,
		-0.766653, -0.558425, 0.316866,
		34.346951, 34.879974, 43.719116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785053, 34.821396, 42.963139>,  <34.883606, 35.270870, 43.497311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785053, 34.821396, 42.963139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438923, 34.818634, 43.163601>,  <34.231243, 34.816978, 43.283878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438923, 34.818634, 43.163601>,  <34.785053, 34.821396, 42.963139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438923, 34.818634, 43.163601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498999, 0.105593, -0.860145,
		-0.046983, -0.994385, -0.094816,
		-0.865328, -0.006901, 0.501159,
		34.179325, 34.816563, 43.313950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366684, 34.357525, 42.521385>,  <34.785053, 34.821396, 42.963139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366684, 34.357525, 42.521385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117451, 34.561024, 42.759022>,  <33.967911, 34.683125, 42.901604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117451, 34.561024, 42.759022>,  <34.366684, 34.357525, 42.521385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117451, 34.561024, 42.759022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644664, 0.096081, -0.758404,
		-0.442918, -0.855537, 0.268106,
		-0.623082, 0.508748, 0.594090,
		33.930527, 34.713650, 42.937248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680683, 34.083107, 42.387920>,  <34.366684, 34.357525, 42.521385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680683, 34.083107, 42.387920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590504, 34.435326, 42.554684>,  <33.536396, 34.646656, 42.654743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590504, 34.435326, 42.554684>,  <33.680683, 34.083107, 42.387920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590504, 34.435326, 42.554684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705151, 0.147798, -0.693482,
		-0.672261, -0.450329, 0.587597,
		-0.225450, 0.880545, 0.416908,
		33.522869, 34.699490, 42.679756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943501, 34.178322, 42.347729>,  <33.680683, 34.083107, 42.387920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943501, 34.178322, 42.347729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045193, 34.558395, 42.419857>,  <33.106209, 34.786438, 42.463135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045193, 34.558395, 42.419857>,  <32.943501, 34.178322, 42.347729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045193, 34.558395, 42.419857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831241, 0.309980, -0.461466,
		-0.494374, -0.032573, 0.868639,
		0.254229, 0.950185, 0.180322,
		33.121460, 34.843452, 42.473953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424145, 34.543911, 42.692463>,  <32.943501, 34.178322, 42.347729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424145, 34.543911, 42.692463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625679, 34.816574, 42.480236>,  <32.746597, 34.980171, 42.352901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625679, 34.816574, 42.480236>,  <32.424145, 34.543911, 42.692463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625679, 34.816574, 42.480236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859947, 0.337848, -0.382558,
		-0.081521, 0.649005, 0.756404,
		0.503831, 0.681654, -0.530567,
		32.776829, 35.021069, 42.321064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891117, 34.953693, 42.553864>,  <32.424145, 34.543911, 42.692463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891117, 34.953693, 42.553864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182384, 35.115383, 42.332458>,  <32.357143, 35.212399, 42.199615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182384, 35.115383, 42.332458>,  <31.891117, 34.953693, 42.553864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182384, 35.115383, 42.332458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685082, 0.404618, -0.605762,
		-0.020906, 0.820294, 0.571559,
		0.728166, 0.404229, -0.553510,
		32.400833, 35.236652, 42.166405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745117, 35.641209, 42.585567>,  <31.891117, 34.953693, 42.553864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745117, 35.641209, 42.585567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967791, 35.552166, 42.265430>,  <32.101395, 35.498741, 42.073349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967791, 35.552166, 42.265430>,  <31.745117, 35.641209, 42.585567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967791, 35.552166, 42.265430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719893, 0.351509, -0.598495,
		0.414559, 0.909333, 0.035424,
		0.556683, -0.222610, -0.800343,
		32.134796, 35.485382, 42.025326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619314, 36.236580, 42.091183>,  <31.745117, 35.641209, 42.585567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619314, 36.236580, 42.091183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776934, 35.947140, 41.864510>,  <31.871506, 35.773476, 41.728508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776934, 35.947140, 41.864510>,  <31.619314, 36.236580, 42.091183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776934, 35.947140, 41.864510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488049, 0.357716, -0.796145,
		0.778803, 0.590287, -0.212196,
		0.394048, -0.723602, -0.566679,
		31.895147, 35.730061, 41.694508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735050, 36.448574, 41.335091>,  <31.619314, 36.236580, 42.091183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735050, 36.448574, 41.335091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771292, 36.051723, 41.300503>,  <31.793037, 35.813614, 41.279751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771292, 36.051723, 41.300503>,  <31.735050, 36.448574, 41.335091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771292, 36.051723, 41.300503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316037, 0.053697, -0.947226,
		0.944411, 0.113152, -0.308683,
		0.090605, -0.992126, -0.086472,
		31.798473, 35.754086, 41.274563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.908575, 36.369156, 40.533966>,  <31.735050, 36.448574, 41.335091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.908575, 36.369156, 40.533966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826210, 35.998199, 40.658894>,  <31.776791, 35.775623, 40.733849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826210, 35.998199, 40.658894>,  <31.908575, 36.369156, 40.533966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826210, 35.998199, 40.658894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414120, -0.206584, -0.886469,
		0.886626, -0.311869, -0.341515,
		-0.205911, -0.927395, 0.312314,
		31.764437, 35.719982, 40.752586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986000, 35.905182, 39.894585>,  <31.908575, 36.369156, 40.533966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986000, 35.905182, 39.894585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736214, 35.723904, 40.149036>,  <31.586342, 35.615139, 40.301708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736214, 35.723904, 40.149036>,  <31.986000, 35.905182, 39.894585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736214, 35.723904, 40.149036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656977, -0.135684, -0.741601,
		0.422401, -0.881025, -0.213007,
		-0.624467, -0.453194, 0.636126,
		31.548874, 35.587944, 40.339874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893414, 35.280384, 39.650372>,  <31.986000, 35.905182, 39.894585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893414, 35.280384, 39.650372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563192, 35.334675, 39.869476>,  <31.365061, 35.367249, 40.000938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563192, 35.334675, 39.869476>,  <31.893414, 35.280384, 39.650372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563192, 35.334675, 39.869476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556708, -0.036903, -0.829888,
		-0.092433, -0.990057, 0.106031,
		-0.825549, 0.135737, 0.547762,
		31.315527, 35.375393, 40.033806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118252, 34.571011, 39.369137>,  <31.893414, 35.280384, 39.650372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118252, 34.571011, 39.369137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843700, 34.283466, 39.413189>,  <31.678970, 34.110939, 39.439621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843700, 34.283466, 39.413189>,  <32.118252, 34.571011, 39.369137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843700, 34.283466, 39.413189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662598, -0.555734, 0.502119,
		-0.299751, 0.417614, 0.857757,
		-0.686377, -0.718859, 0.110129,
		31.637787, 34.067810, 39.446228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996225, 34.480125, 40.071339>,  <32.118252, 34.571011, 39.369137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996225, 34.480125, 40.071339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905462, 34.132767, 39.894978>,  <31.851004, 33.924351, 39.789162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905462, 34.132767, 39.894978>,  <31.996225, 34.480125, 40.071339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905462, 34.132767, 39.894978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719903, -0.454460, 0.524601,
		-0.655936, -0.198373, 0.728283,
		-0.226909, -0.868398, -0.440906,
		31.837389, 33.872246, 39.762707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814621, 33.807457, 40.498329>,  <31.996225, 34.480125, 40.071339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814621, 33.807457, 40.498329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960901, 33.674702, 40.150509>,  <32.048668, 33.595051, 39.941818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960901, 33.674702, 40.150509>,  <31.814621, 33.807457, 40.498329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960901, 33.674702, 40.150509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687436, -0.533516, 0.492740,
		-0.627451, -0.777954, 0.033043,
		0.365701, -0.331886, -0.869549,
		32.070610, 33.575134, 39.889645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861526, 33.026173, 40.497051>,  <31.814621, 33.807457, 40.498329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861526, 33.026173, 40.497051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137070, 33.195824, 40.261902>,  <32.302395, 33.297615, 40.120811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137070, 33.195824, 40.261902>,  <31.861526, 33.026173, 40.497051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137070, 33.195824, 40.261902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698094, -0.606624, 0.380357,
		-0.195298, -0.672401, -0.713957,
		0.688857, 0.424126, -0.587872,
		32.343727, 33.323063, 40.085541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448902, 32.502216, 40.310188>,  <31.861526, 33.026173, 40.497051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448902, 32.502216, 40.310188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600197, 32.858681, 40.209965>,  <32.690971, 33.072559, 40.149830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600197, 32.858681, 40.209965>,  <32.448902, 32.502216, 40.310188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600197, 32.858681, 40.209965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836683, -0.213281, 0.504453,
		0.396109, -0.400435, -0.826287,
		0.378232, 0.891158, -0.250555,
		32.713665, 33.126030, 40.134800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135326, 32.379688, 39.947376>,  <32.448902, 32.502216, 40.310188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135326, 32.379688, 39.947376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128822, 32.749588, 40.099464>,  <33.124920, 32.971527, 40.190716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128822, 32.749588, 40.099464>,  <33.135326, 32.379688, 39.947376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128822, 32.749588, 40.099464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937614, -0.117979, 0.327048,
		0.347296, 0.361817, -0.865144,
		-0.016263, 0.924754, 0.380219,
		33.123943, 33.027016, 40.213531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763752, 32.721413, 39.709190>,  <33.135326, 32.379688, 39.947376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763752, 32.721413, 39.709190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626385, 32.865501, 40.056133>,  <33.543964, 32.951954, 40.264297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626385, 32.865501, 40.056133>,  <33.763752, 32.721413, 39.709190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626385, 32.865501, 40.056133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856783, -0.258114, 0.446430,
		0.384692, 0.896446, -0.219994,
		-0.343417, 0.360225, 0.867354,
		33.523361, 32.973568, 40.316338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365223, 32.879471, 40.027153>,  <33.763752, 32.721413, 39.709190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365223, 32.879471, 40.027153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100132, 32.933006, 40.321877>,  <33.941078, 32.965126, 40.498711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100132, 32.933006, 40.321877>,  <34.365223, 32.879471, 40.027153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100132, 32.933006, 40.321877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716065, -0.174738, 0.675809,
		0.219195, 0.975477, 0.019968,
		-0.662725, 0.133835, 0.736807,
		33.901314, 32.973156, 40.542919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599270, 33.402649, 40.389538>,  <34.365223, 32.879471, 40.027153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599270, 33.402649, 40.389538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376602, 33.191208, 40.645882>,  <34.243000, 33.064342, 40.799686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376602, 33.191208, 40.645882>,  <34.599270, 33.402649, 40.389538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376602, 33.191208, 40.645882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789623, -0.097001, 0.605877,
		-0.258103, 0.843310, 0.471393,
		-0.556668, -0.528601, 0.640861,
		34.209602, 33.032627, 40.838139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839485, 33.692978, 41.085697>,  <34.599270, 33.402649, 40.389538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839485, 33.692978, 41.085697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646812, 33.352371, 41.168552>,  <34.531208, 33.148006, 41.218266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646812, 33.352371, 41.168552>,  <34.839485, 33.692978, 41.085697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646812, 33.352371, 41.168552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758631, -0.286836, 0.584982,
		-0.438708, 0.438912, 0.784150,
		-0.481678, -0.851517, 0.207135,
		34.502308, 33.096916, 41.230694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989285, 33.542572, 41.771893>,  <34.839485, 33.692978, 41.085697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989285, 33.542572, 41.771893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883347, 33.183228, 41.631718>,  <34.819782, 32.967621, 41.547615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883347, 33.183228, 41.631718>,  <34.989285, 33.542572, 41.771893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883347, 33.183228, 41.631718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681628, -0.431467, 0.590948,
		-0.682086, -0.082356, 0.726620,
		-0.264845, -0.898362, -0.350434,
		34.803894, 32.913719, 41.526588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035202, 33.171364, 42.401863>,  <34.989285, 33.542572, 41.771893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035202, 33.171364, 42.401863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033863, 32.892120, 42.115467>,  <35.033058, 32.724575, 41.943630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033863, 32.892120, 42.115467>,  <35.035202, 33.171364, 42.401863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033863, 32.892120, 42.115467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596499, -0.576056, 0.558881,
		-0.802607, -0.425212, 0.418350,
		-0.003350, -0.698107, -0.715985,
		35.032860, 32.682690, 41.900673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829063, 32.564407, 42.688465>,  <35.035202, 33.171364, 42.401863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829063, 32.564407, 42.688465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065254, 32.499416, 42.372253>,  <35.206970, 32.460423, 42.182526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065254, 32.499416, 42.372253>,  <34.829063, 32.564407, 42.688465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065254, 32.499416, 42.372253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640212, -0.502104, 0.581396,
		-0.491392, -0.849407, -0.192461,
		0.590477, -0.162477, -0.790530,
		35.242397, 32.450672, 42.135094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898914, 31.870224, 42.729649>,  <34.829063, 32.564407, 42.688465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898914, 31.870224, 42.729649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193527, 32.037643, 42.517105>,  <35.370293, 32.138096, 42.389580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193527, 32.037643, 42.517105>,  <34.898914, 31.870224, 42.729649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193527, 32.037643, 42.517105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676112, -0.478732, 0.560079,
		-0.019957, -0.771771, -0.635587,
		0.736528, 0.418551, -0.531358,
		35.414486, 32.163208, 42.357697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340416, 31.347046, 42.681686>,  <34.898914, 31.870224, 42.729649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340416, 31.347046, 42.681686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605026, 31.629957, 42.581974>,  <35.763794, 31.799704, 42.522144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605026, 31.629957, 42.581974>,  <35.340416, 31.347046, 42.681686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605026, 31.629957, 42.581974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725511, -0.519480, 0.451412,
		0.189776, -0.479479, -0.856787,
		0.661527, 0.707277, -0.249283,
		35.803486, 31.842140, 42.507191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929516, 30.967323, 42.484715>,  <35.340416, 31.347046, 42.681686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929516, 30.967323, 42.484715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092167, 31.328196, 42.542297>,  <36.189758, 31.544720, 42.576847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092167, 31.328196, 42.542297>,  <35.929516, 30.967323, 42.484715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092167, 31.328196, 42.542297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720899, -0.413649, 0.556056,
		0.561211, -0.122330, -0.818583,
		0.406629, 0.902181, 0.143957,
		36.214157, 31.598850, 42.585484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571404, 30.765543, 42.625980>,  <35.929516, 30.967323, 42.484715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571404, 30.765543, 42.625980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598701, 31.152166, 42.724861>,  <36.615078, 31.384140, 42.784187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598701, 31.152166, 42.724861>,  <36.571404, 30.765543, 42.625980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598701, 31.152166, 42.724861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807381, -0.199059, 0.555439,
		0.586071, 0.161679, -0.793965,
		0.068243, 0.966559, 0.247199,
		36.619175, 31.442135, 42.799023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294140, 31.092148, 42.588055>,  <36.571404, 30.765543, 42.625980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294140, 31.092148, 42.588055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077499, 31.289282, 42.860458>,  <36.947514, 31.407562, 43.023899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077499, 31.289282, 42.860458>,  <37.294140, 31.092148, 42.588055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077499, 31.289282, 42.860458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711702, -0.162307, 0.683474,
		0.447373, 0.854850, -0.262847,
		-0.541606, 0.492836, 0.681011,
		36.915016, 31.437132, 43.064762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781487, 31.482080, 42.889080>,  <37.294140, 31.092148, 42.588055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781487, 31.482080, 42.889080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488728, 31.476938, 43.161598>,  <37.313072, 31.473854, 43.325111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488728, 31.476938, 43.161598>,  <37.781487, 31.482080, 42.889080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488728, 31.476938, 43.161598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665458, -0.228605, 0.710567,
		0.146615, 0.973434, 0.175868,
		-0.731894, -0.012853, 0.681297,
		37.269157, 31.473082, 43.365986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104877, 31.846439, 43.505470>,  <37.781487, 31.482080, 42.889080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104877, 31.846439, 43.505470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794640, 31.615458, 43.607456>,  <37.608498, 31.476870, 43.668648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794640, 31.615458, 43.607456>,  <38.104877, 31.846439, 43.505470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794640, 31.615458, 43.607456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518591, -0.352613, 0.778927,
		-0.359890, 0.736351, 0.572946,
		-0.775592, -0.577452, 0.254963,
		37.561962, 31.442223, 43.683945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059738, 31.900173, 44.281189>,  <38.104877, 31.846439, 43.505470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059738, 31.900173, 44.281189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865303, 31.570864, 44.163929>,  <37.748642, 31.373278, 44.093575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865303, 31.570864, 44.163929>,  <38.059738, 31.900173, 44.281189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865303, 31.570864, 44.163929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520508, -0.542201, 0.659613,
		-0.701987, 0.168046, 0.692080,
		-0.486092, -0.823273, -0.293149,
		37.719475, 31.323881, 44.075985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659271, 31.661926, 44.842445>,  <38.059738, 31.900173, 44.281189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659271, 31.661926, 44.842445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743458, 31.360268, 44.593616>,  <37.793968, 31.179272, 44.444321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743458, 31.360268, 44.593616>,  <37.659271, 31.661926, 44.842445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743458, 31.360268, 44.593616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558286, -0.429636, 0.709740,
		-0.802510, -0.496666, 0.330606,
		0.210463, -0.754146, -0.622069,
		37.806595, 31.134024, 44.406998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401363, 31.116032, 45.215538>,  <37.659271, 31.661926, 44.842445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401363, 31.116032, 45.215538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653141, 30.969610, 44.941368>,  <37.804207, 30.881758, 44.776867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653141, 30.969610, 44.941368>,  <37.401363, 31.116032, 45.215538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653141, 30.969610, 44.941368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450317, -0.547019, 0.705681,
		-0.633256, -0.752844, -0.179477,
		0.629445, -0.366055, -0.685422,
		37.841976, 30.859795, 44.735741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486172, 30.414314, 45.422123>,  <37.401363, 31.116032, 45.215538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486172, 30.414314, 45.422123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797009, 30.442106, 45.171909>,  <37.983513, 30.458782, 45.021782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797009, 30.442106, 45.171909>,  <37.486172, 30.414314, 45.422123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797009, 30.442106, 45.171909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540915, -0.581843, 0.607346,
		-0.321764, -0.810328, -0.489732,
		0.777096, 0.069481, -0.625534,
		38.030136, 30.462950, 44.984249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770844, 29.780674, 45.427021>,  <37.486172, 30.414314, 45.422123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770844, 29.780674, 45.427021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055004, 30.027800, 45.292187>,  <38.225502, 30.176075, 45.211285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055004, 30.027800, 45.292187>,  <37.770844, 29.780674, 45.427021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055004, 30.027800, 45.292187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670283, -0.447894, 0.591703,
		0.214583, -0.646294, -0.732297,
		0.710405, 0.617815, -0.337089,
		38.268127, 30.213144, 45.191059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273903, 29.328157, 45.253727>,  <37.770844, 29.780674, 45.427021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273903, 29.328157, 45.253727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447372, 29.683863, 45.311886>,  <38.551453, 29.897285, 45.346783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447372, 29.683863, 45.311886>,  <38.273903, 29.328157, 45.253727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447372, 29.683863, 45.311886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660382, -0.423450, 0.620149,
		0.613046, -0.172920, -0.770891,
		0.433670, 0.889263, 0.145401,
		38.577473, 29.950642, 45.355507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035046, 29.263687, 45.015129>,  <38.273903, 29.328157, 45.253727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035046, 29.263687, 45.015129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004292, 29.570465, 45.269966>,  <38.985840, 29.754532, 45.422867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004292, 29.570465, 45.269966>,  <39.035046, 29.263687, 45.015129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004292, 29.570465, 45.269966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633566, -0.455805, 0.625169,
		0.769859, 0.451704, -0.450866,
		-0.076884, 0.766945, 0.637090,
		38.981228, 29.800549, 45.461094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657230, 29.327797, 45.341320>,  <39.035046, 29.263687, 45.015129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657230, 29.327797, 45.341320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.442802, 29.578337, 45.567703>,  <39.314144, 29.728661, 45.703533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.442802, 29.578337, 45.567703>,  <39.657230, 29.327797, 45.341320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442802, 29.578337, 45.567703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445977, -0.359103, 0.819847,
		0.716749, 0.691904, -0.086832,
		-0.536074, 0.626350, 0.565960,
		39.281979, 29.766241, 45.737492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090504, 29.716288, 45.829468>,  <39.657230, 29.327797, 45.341320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090504, 29.716288, 45.829468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729076, 29.706406, 46.000561>,  <39.512218, 29.700478, 46.103218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729076, 29.706406, 46.000561>,  <40.090504, 29.716288, 45.829468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729076, 29.706406, 46.000561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411234, -0.330135, 0.849646,
		0.120221, 0.943611, 0.308458,
		-0.903567, -0.024703, 0.427733,
		39.458008, 29.698996, 46.128880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276711, 30.388968, 45.478374>,  <40.090504, 29.716288, 45.829468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276711, 30.388968, 45.478374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.633476, 30.558739, 45.415955>,  <40.847534, 30.660603, 45.378502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.633476, 30.558739, 45.415955>,  <40.276711, 30.388968, 45.478374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633476, 30.558739, 45.415955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298560, 0.293514, -0.908136,
		-0.339638, 0.856568, 0.388506,
		0.891913, 0.424430, -0.156048,
		40.901051, 30.686068, 45.369141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193375, 31.113716, 45.362194>,  <40.276711, 30.388968, 45.478374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193375, 31.113716, 45.362194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547077, 31.018354, 45.201569>,  <40.759300, 30.961138, 45.105194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547077, 31.018354, 45.201569>,  <40.193375, 31.113716, 45.362194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547077, 31.018354, 45.201569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206728, 0.571211, -0.794343,
		0.418755, 0.785417, 0.455812,
		0.884256, -0.238406, -0.401565,
		40.812355, 30.946833, 45.081100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334717, 31.694353, 44.834892>,  <40.193375, 31.113716, 45.362194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334717, 31.694353, 44.834892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.600319, 31.427082, 44.700645>,  <40.759678, 31.266720, 44.620098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.600319, 31.427082, 44.700645>,  <40.334717, 31.694353, 44.834892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600319, 31.427082, 44.700645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136215, 0.333249, -0.932947,
		0.735219, 0.665195, 0.130262,
		0.664001, -0.668177, -0.335621,
		40.799519, 31.226629, 44.599960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852325, 32.016094, 44.400928>,  <40.334717, 31.694353, 44.834892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852325, 32.016094, 44.400928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840702, 31.629446, 44.299103>,  <40.833729, 31.397457, 44.238007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840702, 31.629446, 44.299103>,  <40.852325, 32.016094, 44.400928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840702, 31.629446, 44.299103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106599, 0.256218, -0.960723,
		0.993877, -0.000783, -0.110487,
		-0.029061, -0.966619, -0.254565,
		40.831985, 31.339460, 44.222733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242298, 31.982754, 43.892082>,  <40.852325, 32.016094, 44.400928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242298, 31.982754, 43.892082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014565, 31.656099, 43.854221>,  <40.877922, 31.460106, 43.831505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014565, 31.656099, 43.854221>,  <41.242298, 31.982754, 43.892082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014565, 31.656099, 43.854221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246239, 0.279245, -0.928110,
		0.784361, -0.505100, -0.360072,
		-0.569337, -0.816637, -0.094653,
		40.843765, 31.411108, 43.825825>
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
