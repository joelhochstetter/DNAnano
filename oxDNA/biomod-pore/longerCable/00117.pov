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
	<23.943190, 34.993855, 35.514175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.197546, 35.010300, 35.205902>,  <24.350161, 35.020168, 35.020939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.197546, 35.010300, 35.205902>,  <23.943190, 34.993855, 35.514175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.197546, 35.010300, 35.205902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725360, -0.372924, 0.578602,
		-0.263616, -0.926950, -0.266963,
		0.635893, 0.041115, -0.770682,
		24.388313, 35.022633, 34.974697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.339071, 34.349129, 35.412468>,  <23.943190, 34.993855, 35.514175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.339071, 34.349129, 35.412468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.562105, 34.629730, 35.234936>,  <24.695927, 34.798092, 35.128418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.562105, 34.629730, 35.234936>,  <24.339071, 34.349129, 35.412468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.562105, 34.629730, 35.234936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813794, -0.356422, 0.459023,
		0.163817, -0.617131, -0.769619,
		0.557587, 0.701507, -0.443829,
		24.729382, 34.840183, 35.101788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.806368, 34.057701, 35.032650>,  <24.339071, 34.349129, 35.412468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.806368, 34.057701, 35.032650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.942242, 34.415230, 35.149746>,  <25.023766, 34.629745, 35.220005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.942242, 34.415230, 35.149746>,  <24.806368, 34.057701, 35.032650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.942242, 34.415230, 35.149746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792017, -0.439705, 0.423519,
		0.507271, 0.087994, -0.857283,
		0.339684, 0.893821, 0.292742,
		25.044147, 34.683376, 35.237568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.603237, 34.007420, 34.850456>,  <24.806368, 34.057701, 35.032650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.603237, 34.007420, 34.850456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600595, 34.320889, 35.098911>,  <25.599010, 34.508972, 35.247986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600595, 34.320889, 35.098911>,  <25.603237, 34.007420, 34.850456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.600595, 34.320889, 35.098911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874465, -0.296768, 0.383719,
		0.485044, 0.545696, -0.683336,
		-0.006602, 0.783674, 0.621137,
		25.598616, 34.555992, 35.285252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.258236, 34.360744, 34.772163>,  <25.603237, 34.007420, 34.850456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.258236, 34.360744, 34.772163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.087439, 34.455906, 35.121124>,  <25.984961, 34.513004, 35.330502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.087439, 34.455906, 35.121124>,  <26.258236, 34.360744, 34.772163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.087439, 34.455906, 35.121124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848290, -0.228752, 0.477574,
		0.313180, 0.943967, -0.104137,
		-0.426992, 0.237904, 0.872398,
		25.959341, 34.527279, 35.382843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.812441, 34.726601, 35.062820>,  <26.258236, 34.360744, 34.772163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.812441, 34.726601, 35.062820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.598772, 34.638401, 35.389267>,  <26.470570, 34.585484, 35.585133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.598772, 34.638401, 35.389267>,  <26.812441, 34.726601, 35.062820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.598772, 34.638401, 35.389267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840109, -0.246044, 0.483404,
		0.094211, 0.943846, 0.316670,
		-0.534173, -0.220495, 0.816113,
		26.438520, 34.572254, 35.634102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.010155, 35.156673, 35.580845>,  <26.812441, 34.726601, 35.062820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.010155, 35.156673, 35.580845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865217, 34.811642, 35.722076>,  <26.778255, 34.604622, 35.806816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865217, 34.811642, 35.722076>,  <27.010155, 35.156673, 35.580845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.865217, 34.811642, 35.722076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875237, -0.184665, 0.447057,
		-0.320421, 0.471014, 0.821874,
		-0.362342, -0.862580, 0.353078,
		26.756516, 34.552868, 35.827999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.303986, 35.190605, 36.334206>,  <27.010155, 35.156673, 35.580845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.303986, 35.190605, 36.334206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307783, 34.791809, 36.303421>,  <27.310062, 34.552532, 36.284950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307783, 34.791809, 36.303421>,  <27.303986, 35.190605, 36.334206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.307783, 34.791809, 36.303421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845211, -0.033128, 0.533405,
		-0.534349, -0.070116, 0.842351,
		0.009495, -0.996989, -0.076964,
		27.310631, 34.492714, 36.280331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610252, 34.975407, 36.903980>,  <27.303986, 35.190605, 36.334206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610252, 34.975407, 36.903980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.666008, 34.648388, 36.680481>,  <27.699461, 34.452179, 36.546383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.666008, 34.648388, 36.680481>,  <27.610252, 34.975407, 36.903980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.666008, 34.648388, 36.680481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793402, -0.245424, 0.557029,
		-0.592524, -0.520952, 0.614430,
		0.139390, -0.817543, -0.558744,
		27.707825, 34.403126, 36.512859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.942183, 34.591667, 37.347080>,  <27.610252, 34.975407, 36.903980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.942183, 34.591667, 37.347080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989632, 34.358181, 37.025784>,  <28.018101, 34.218090, 36.833004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989632, 34.358181, 37.025784>,  <27.942183, 34.591667, 37.347080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.989632, 34.358181, 37.025784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770077, -0.456596, 0.445535,
		-0.626825, -0.671411, 0.395345,
		0.118624, -0.583718, -0.803244,
		28.025219, 34.183067, 36.784809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.968027, 33.835670, 37.548550>,  <27.942183, 34.591667, 37.347080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.968027, 33.835670, 37.548550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200758, 33.916744, 37.233490>,  <28.340397, 33.965389, 37.044453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200758, 33.916744, 37.233490>,  <27.968027, 33.835670, 37.548550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200758, 33.916744, 37.233490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790734, -0.367585, 0.489511,
		-0.190312, -0.907634, -0.374141,
		0.581825, 0.202687, -0.787653,
		28.375305, 33.977551, 36.997192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453249, 33.294975, 37.362640>,  <27.968027, 33.835670, 37.548550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.453249, 33.294975, 37.362640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.604795, 33.645615, 37.243954>,  <28.695723, 33.855999, 37.172741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.604795, 33.645615, 37.243954>,  <28.453249, 33.294975, 37.362640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.604795, 33.645615, 37.243954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867768, -0.225075, 0.443080,
		0.321620, -0.425345, -0.845956,
		0.378866, 0.876597, -0.296712,
		28.718454, 33.908592, 37.154942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082132, 33.228733, 36.989517>,  <28.453249, 33.294975, 37.362640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082132, 33.228733, 36.989517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072498, 33.591732, 37.157261>,  <29.066717, 33.809532, 37.257908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072498, 33.591732, 37.157261>,  <29.082132, 33.228733, 36.989517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072498, 33.591732, 37.157261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942667, -0.119054, 0.311778,
		0.332865, 0.402826, -0.852603,
		-0.024086, 0.907500, 0.419360,
		29.065273, 33.863983, 37.283070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.968988, 32.766327, 36.514984>,  <29.082132, 33.228733, 36.989517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.968988, 32.766327, 36.514984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348288, 32.889919, 36.485703>,  <29.575867, 32.964073, 36.468132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348288, 32.889919, 36.485703>,  <28.968988, 32.766327, 36.514984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348288, 32.889919, 36.485703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092402, 0.047944, -0.994567,
		-0.303791, 0.949859, 0.074013,
		0.948247, 0.308980, -0.073204,
		29.632761, 32.982613, 36.463741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025700, 33.426826, 36.085102>,  <28.968988, 32.766327, 36.514984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025700, 33.426826, 36.085102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365232, 33.215374, 36.082802>,  <29.568953, 33.088501, 36.081421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365232, 33.215374, 36.082802>,  <29.025700, 33.426826, 36.085102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365232, 33.215374, 36.082802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047601, 0.087250, -0.995049,
		0.526518, 0.844354, 0.099224,
		0.848831, -0.528634, -0.005747,
		29.619883, 33.056786, 36.081078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.626759, 33.808434, 35.819767>,  <29.025700, 33.426826, 36.085102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.626759, 33.808434, 35.819767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580091, 33.424049, 35.719418>,  <29.552092, 33.193417, 35.659206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580091, 33.424049, 35.719418>,  <29.626759, 33.808434, 35.819767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580091, 33.424049, 35.719418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018763, 0.250424, -0.967955,
		0.992994, -0.117635, -0.011185,
		-0.116666, -0.960963, -0.250876,
		29.545092, 33.135761, 35.644154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959414, 34.235123, 35.867889>,  <29.626759, 33.808434, 35.819767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959414, 34.235123, 35.867889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772736, 34.128078, 36.205074>,  <28.660728, 34.063854, 36.407387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772736, 34.128078, 36.205074>,  <28.959414, 34.235123, 35.867889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772736, 34.128078, 36.205074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876167, 0.010002, -0.481903,
		0.120533, -0.963474, -0.239142,
		-0.466693, -0.267614, 0.842959,
		28.632727, 34.047798, 36.457962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.498190, 33.743355, 35.670769>,  <28.959414, 34.235123, 35.867889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.498190, 33.743355, 35.670769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.344585, 33.894310, 36.007843>,  <28.252422, 33.984882, 36.210087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.344585, 33.894310, 36.007843>,  <28.498190, 33.743355, 35.670769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.344585, 33.894310, 36.007843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876789, 0.137049, -0.460932,
		-0.289440, -0.915857, 0.278263,
		-0.384013, 0.377390, 0.842681,
		28.229382, 34.007526, 36.260647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831522, 33.416100, 35.753746>,  <28.498190, 33.743355, 35.670769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831522, 33.416100, 35.753746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.795046, 33.724312, 36.006084>,  <27.773161, 33.909237, 36.157490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.795046, 33.724312, 36.006084>,  <27.831522, 33.416100, 35.753746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.795046, 33.724312, 36.006084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986203, 0.018011, -0.164556,
		-0.138157, -0.637151, 0.758256,
		-0.091190, 0.770529, 0.630849,
		27.767689, 33.955471, 36.195339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279623, 33.193932, 36.196346>,  <27.831522, 33.416100, 35.753746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.279623, 33.193932, 36.196346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.301304, 33.592575, 36.171608>,  <27.314312, 33.831760, 36.156765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.301304, 33.592575, 36.171608>,  <27.279623, 33.193932, 36.196346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.301304, 33.592575, 36.171608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974677, 0.039349, -0.220129,
		-0.216950, 0.072214, 0.973508,
		0.054203, 0.996613, -0.061849,
		27.317564, 33.891560, 36.153053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.661772, 33.305279, 35.897793>,  <27.279623, 33.193932, 36.196346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.661772, 33.305279, 35.897793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.772152, 33.666180, 36.030338>,  <26.838379, 33.882721, 36.109867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.772152, 33.666180, 36.030338>,  <26.661772, 33.305279, 35.897793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.772152, 33.666180, 36.030338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901882, 0.362261, -0.235320,
		-0.332357, -0.233914, 0.913687,
		0.275949, 0.902248, 0.331363,
		26.854937, 33.936855, 36.129745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.145826, 33.570316, 36.359219>,  <26.661772, 33.305279, 35.897793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.145826, 33.570316, 36.359219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.346952, 33.886974, 36.220375>,  <26.467628, 34.076969, 36.137070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.346952, 33.886974, 36.220375>,  <26.145826, 33.570316, 36.359219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.346952, 33.886974, 36.220375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863832, 0.445721, -0.234790,
		-0.031157, 0.417897, 0.907960,
		0.502815, 0.791641, -0.347106,
		26.497797, 34.124466, 36.116245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.783545, 34.095993, 36.686031>,  <26.145826, 33.570316, 36.359219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.783545, 34.095993, 36.686031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.965527, 34.227974, 36.355179>,  <26.074715, 34.307163, 36.156666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.965527, 34.227974, 36.355179>,  <25.783545, 34.095993, 36.686031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.965527, 34.227974, 36.355179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869530, 0.365046, -0.332654,
		0.192183, 0.870560, 0.452980,
		0.454954, 0.329949, -0.827134,
		26.102013, 34.326958, 36.107040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.563696, 34.827145, 36.559952>,  <25.783545, 34.095993, 36.686031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.563696, 34.827145, 36.559952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.691362, 34.715679, 36.197632>,  <25.767963, 34.648800, 35.980240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.691362, 34.715679, 36.197632>,  <25.563696, 34.827145, 36.559952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.691362, 34.715679, 36.197632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747882, 0.512978, -0.421338,
		0.582069, 0.811911, -0.044683,
		0.319168, -0.278666, -0.905802,
		25.787113, 34.632080, 35.925892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.603151, 35.422352, 36.138657>,  <25.563696, 34.827145, 36.559952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.603151, 35.422352, 36.138657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561529, 35.126690, 35.872478>,  <25.536556, 34.949291, 35.712772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561529, 35.126690, 35.872478>,  <25.603151, 35.422352, 36.138657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.561529, 35.126690, 35.872478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673227, 0.544838, -0.499917,
		0.732078, 0.395977, -0.554314,
		-0.104055, -0.739157, -0.665446,
		25.530312, 34.904942, 35.672844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.635878, 35.799355, 35.419228>,  <25.603151, 35.422352, 36.138657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.635878, 35.799355, 35.419228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.440407, 35.451382, 35.392635>,  <25.323124, 35.242599, 35.376678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.440407, 35.451382, 35.392635>,  <25.635878, 35.799355, 35.419228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.440407, 35.451382, 35.392635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687627, 0.430928, -0.584355,
		0.536996, -0.239846, -0.808770,
		-0.488677, -0.869928, -0.066482,
		25.293804, 35.190403, 35.372692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.727772, 35.508080, 34.743763>,  <25.635878, 35.799355, 35.419228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.727772, 35.508080, 34.743763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.369808, 35.439026, 34.908363>,  <25.155029, 35.397594, 35.007126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.369808, 35.439026, 34.908363>,  <25.727772, 35.508080, 34.743763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.369808, 35.439026, 34.908363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434387, 0.548186, -0.714702,
		-0.102199, -0.818346, -0.565567,
		-0.894910, -0.172634, 0.411503,
		25.101336, 35.387238, 35.031815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.214401, 35.057072, 34.330009>,  <25.727772, 35.508080, 34.743763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.214401, 35.057072, 34.330009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.026100, 35.321358, 34.563881>,  <24.913118, 35.479931, 34.704205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.026100, 35.321358, 34.563881>,  <25.214401, 35.057072, 34.330009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.026100, 35.321358, 34.563881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520051, 0.327526, -0.788843,
		-0.712698, -0.675412, 0.189422,
		-0.470754, 0.660716, 0.584676,
		24.884874, 35.519573, 34.739285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.293131, 35.452133, 33.697281>,  <25.214401, 35.057072, 34.330009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.293131, 35.452133, 33.697281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.934700, 35.565449, 33.560581>,  <24.719641, 35.633438, 33.478561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.934700, 35.565449, 33.560581>,  <25.293131, 35.452133, 33.697281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.934700, 35.565449, 33.560581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429686, 0.746808, -0.507590,
		0.111421, -0.601683, -0.790925,
		-0.896078, 0.283294, -0.341745,
		24.665876, 35.650436, 33.458057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.244936, 35.529213, 32.942802>,  <25.293131, 35.452133, 33.697281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.244936, 35.529213, 32.942802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.989048, 35.783077, 33.116219>,  <24.835516, 35.935398, 33.220268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.989048, 35.783077, 33.116219>,  <25.244936, 35.529213, 32.942802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.989048, 35.783077, 33.116219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515524, 0.772671, -0.370425,
		-0.570083, -0.013465, -0.821477,
		-0.639719, 0.634664, 0.433545,
		24.797132, 35.973476, 33.246281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.107199, 36.206745, 32.626949>,  <25.244936, 35.529213, 32.942802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.107199, 36.206745, 32.626949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.054333, 36.256367, 33.020325>,  <25.022614, 36.286140, 33.256348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.054333, 36.256367, 33.020325>,  <25.107199, 36.206745, 32.626949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.054333, 36.256367, 33.020325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667502, 0.744596, -0.004216,
		-0.732785, 0.655887, -0.181215,
		-0.132167, 0.124051, 0.983434,
		25.014683, 36.293583, 33.315353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.102339, 36.877903, 32.751740>,  <25.107199, 36.206745, 32.626949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.102339, 36.877903, 32.751740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178577, 36.705750, 33.104656>,  <25.224321, 36.602459, 33.316406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178577, 36.705750, 33.104656>,  <25.102339, 36.877903, 32.751740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.178577, 36.705750, 33.104656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648481, 0.729948, 0.215981,
		-0.736984, 0.530986, 0.418221,
		0.190597, -0.430383, 0.882294,
		25.235756, 36.576633, 33.369343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.933109, 37.285931, 33.367081>,  <25.102339, 36.877903, 32.751740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.933109, 37.285931, 33.367081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.233183, 37.032425, 33.442516>,  <25.413227, 36.880322, 33.487778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.233183, 37.032425, 33.442516>,  <24.933109, 37.285931, 33.367081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.233183, 37.032425, 33.442516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604809, 0.772953, 0.191704,
		-0.267266, -0.029752, 0.963163,
		0.750183, -0.633766, 0.188590,
		25.458239, 36.842297, 33.499092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.243929, 37.480209, 34.051651>,  <24.933109, 37.285931, 33.367081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.243929, 37.480209, 34.051651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.514397, 37.298092, 33.819962>,  <25.676678, 37.188820, 33.680946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.514397, 37.298092, 33.819962>,  <25.243929, 37.480209, 34.051651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.514397, 37.298092, 33.819962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629592, 0.765400, 0.133327,
		0.382634, -0.454826, 0.804192,
		0.676169, -0.455298, -0.579223,
		25.717247, 37.161503, 33.646194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.922140, 37.511349, 34.371109>,  <25.243929, 37.480209, 34.051651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.922140, 37.511349, 34.371109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959433, 37.486885, 33.973602>,  <25.981808, 37.472206, 33.735100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959433, 37.486885, 33.973602>,  <25.922140, 37.511349, 34.371109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.959433, 37.486885, 33.973602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698235, 0.715547, 0.021469,
		0.709772, -0.695882, 0.109416,
		0.093232, -0.061159, -0.993764,
		25.987402, 37.468536, 33.675472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.341375, 38.105408, 34.749500>,  <25.922140, 37.511349, 34.371109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.341375, 38.105408, 34.749500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.693428, 38.028980, 34.575668>,  <26.904659, 37.983124, 34.471367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.693428, 38.028980, 34.575668>,  <26.341375, 38.105408, 34.749500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.693428, 38.028980, 34.575668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393201, -0.806347, -0.441811,
		-0.266008, 0.559730, -0.784820,
		0.880132, -0.191067, -0.434581,
		26.957468, 37.971661, 34.445293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.197329, 38.137436, 33.922016>,  <26.341375, 38.105408, 34.749500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.197329, 38.137436, 33.922016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.489517, 37.898766, 34.054916>,  <26.664831, 37.755566, 34.134655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.489517, 37.898766, 34.054916>,  <26.197329, 38.137436, 33.922016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.489517, 37.898766, 34.054916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420268, -0.776209, -0.469973,
		0.538316, 0.203669, -0.817762,
		0.730473, -0.596673, 0.332250,
		26.708660, 37.719765, 34.154591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.428719, 37.761303, 33.333443>,  <26.197329, 38.137436, 33.922016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.428719, 37.761303, 33.333443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.492096, 37.543148, 33.662670>,  <26.530123, 37.412254, 33.860207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.492096, 37.543148, 33.662670>,  <26.428719, 37.761303, 33.333443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.492096, 37.543148, 33.662670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446448, -0.783094, -0.432953,
		0.880670, -0.298861, -0.367563,
		0.158443, -0.545386, 0.823073,
		26.539629, 37.379532, 33.909592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.704086, 37.146130, 33.053150>,  <26.428719, 37.761303, 33.333443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.704086, 37.146130, 33.053150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536837, 37.084785, 33.411289>,  <26.436487, 37.047977, 33.626175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536837, 37.084785, 33.411289>,  <26.704086, 37.146130, 33.053150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.536837, 37.084785, 33.411289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646825, -0.641780, -0.411990,
		0.637802, -0.751398, 0.169145,
		-0.418122, -0.153361, 0.895352,
		26.411400, 37.038776, 33.679893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.584002, 36.481998, 33.130890>,  <26.704086, 37.146130, 33.053150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.584002, 36.481998, 33.130890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.318645, 36.688717, 33.347347>,  <26.159431, 36.812748, 33.477222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.318645, 36.688717, 33.347347>,  <26.584002, 36.481998, 33.130890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.318645, 36.688717, 33.347347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718301, -0.642454, -0.267015,
		0.209666, -0.565837, 0.797414,
		-0.663389, 0.516799, 0.541142,
		26.119629, 36.843758, 33.509689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.389088, 36.029396, 33.698608>,  <26.584002, 36.481998, 33.130890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.389088, 36.029396, 33.698608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105795, 36.293327, 33.598183>,  <25.935820, 36.451687, 33.537926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105795, 36.293327, 33.598183>,  <26.389088, 36.029396, 33.698608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.105795, 36.293327, 33.598183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666616, -0.742117, -0.069897,
		-0.232440, 0.117861, 0.965443,
		-0.708234, 0.659826, -0.251066,
		25.893324, 36.491276, 33.522861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.878897, 35.927994, 34.145790>,  <26.389088, 36.029396, 33.698608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.878897, 35.927994, 34.145790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.755886, 36.077980, 33.795971>,  <25.682079, 36.167973, 33.586079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.755886, 36.077980, 33.795971>,  <25.878897, 35.927994, 34.145790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.755886, 36.077980, 33.795971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611333, -0.782164, -0.120381,
		-0.729176, 0.497618, 0.469764,
		-0.307529, 0.374962, -0.874545,
		25.663628, 36.190468, 33.533607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.046850, 36.138565, 34.065620>,  <25.878897, 35.927994, 34.145790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.046850, 36.138565, 34.065620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203196, 36.049187, 33.708454>,  <25.297003, 35.995560, 33.494156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203196, 36.049187, 33.708454>,  <25.046850, 36.138565, 34.065620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.203196, 36.049187, 33.708454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578961, -0.813834, -0.049782,
		-0.715562, 0.536421, -0.447463,
		0.390865, -0.223442, -0.892916,
		25.320456, 35.982155, 33.440578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.455204, 36.752220, 34.342419>,  <25.046850, 36.138565, 34.065620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.455204, 36.752220, 34.342419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.804380, 36.634354, 34.186909>,  <26.013887, 36.563633, 34.093605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.804380, 36.634354, 34.186909>,  <25.455204, 36.752220, 34.342419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.804380, 36.634354, 34.186909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447975, 0.799697, 0.399753,
		0.193106, -0.523122, 0.830093,
		0.872942, -0.294666, -0.388772,
		26.066263, 36.545952, 34.070278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.968987, 36.711609, 34.863976>,  <25.455204, 36.752220, 34.342419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.968987, 36.711609, 34.863976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172930, 36.765377, 34.524097>,  <26.295296, 36.797638, 34.320171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172930, 36.765377, 34.524097>,  <25.968987, 36.711609, 34.863976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.172930, 36.765377, 34.524097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484817, 0.771021, 0.412891,
		0.710633, -0.622461, 0.327940,
		0.509857, 0.134423, -0.849692,
		26.325886, 36.805706, 34.269188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.632393, 36.784546, 35.096050>,  <25.968987, 36.711609, 34.863976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.632393, 36.784546, 35.096050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.598614, 36.967304, 34.741848>,  <26.578346, 37.076958, 34.529327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.598614, 36.967304, 34.741848>,  <26.632393, 36.784546, 35.096050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.598614, 36.967304, 34.741848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454357, 0.808570, 0.373866,
		0.886808, -0.370762, -0.275874,
		-0.084448, 0.456892, -0.885504,
		26.573278, 37.104370, 34.476196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.358473, 37.043018, 34.830112>,  <26.632393, 36.784546, 35.096050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.358473, 37.043018, 34.830112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.051546, 37.249348, 34.677719>,  <26.867390, 37.373146, 34.586281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.051546, 37.249348, 34.677719>,  <27.358473, 37.043018, 34.830112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.051546, 37.249348, 34.677719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379139, 0.844072, 0.379205,
		0.517184, 0.146524, -0.843239,
		-0.767317, 0.515823, -0.380987,
		26.821352, 37.404095, 34.563423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.675419, 37.671158, 34.609818>,  <27.358473, 37.043018, 34.830112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.675419, 37.671158, 34.609818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.291712, 37.764690, 34.673222>,  <27.061487, 37.820808, 34.711266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.291712, 37.764690, 34.673222>,  <27.675419, 37.671158, 34.609818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.291712, 37.764690, 34.673222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282487, 0.797127, 0.533657,
		-0.001567, 0.556697, -0.830714,
		-0.959270, 0.233829, 0.158509,
		27.003931, 37.834839, 34.720776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.390749, 37.561054, 34.778343>,  <27.675419, 37.671158, 34.609818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.390749, 37.561054, 34.778343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785519, 37.621746, 34.756596>,  <29.022381, 37.658161, 34.743546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785519, 37.621746, 34.756596>,  <28.390749, 37.561054, 34.778343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.785519, 37.621746, 34.756596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007742, 0.381583, 0.924302,
		0.160986, -0.911797, 0.377769,
		0.986926, 0.151725, -0.054371,
		29.081596, 37.667263, 34.740284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.717949, 37.312561, 35.395718>,  <28.390749, 37.561054, 34.778343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.717949, 37.312561, 35.395718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.981806, 37.571678, 35.243279>,  <29.140120, 37.727146, 35.151814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.981806, 37.571678, 35.243279>,  <28.717949, 37.312561, 35.395718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.981806, 37.571678, 35.243279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104963, 0.422694, 0.900174,
		0.744213, -0.633796, 0.210833,
		0.659644, 0.647791, -0.381099,
		29.179699, 37.766014, 35.128948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.167318, 37.455585, 35.936066>,  <28.717949, 37.312561, 35.395718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.167318, 37.455585, 35.936066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237150, 37.776752, 35.708084>,  <29.279049, 37.969452, 35.571293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237150, 37.776752, 35.708084>,  <29.167318, 37.455585, 35.936066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237150, 37.776752, 35.708084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173860, 0.544614, 0.820468,
		0.969172, -0.242328, -0.044518,
		0.174578, 0.802915, -0.569956,
		29.289524, 38.017628, 35.537098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.808905, 37.742905, 36.011532>,  <29.167318, 37.455585, 35.936066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.808905, 37.742905, 36.011532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587797, 38.048111, 35.877514>,  <29.455132, 38.231236, 35.797104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587797, 38.048111, 35.877514>,  <29.808905, 37.742905, 36.011532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587797, 38.048111, 35.877514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427635, 0.604804, 0.671818,
		0.715243, 0.228084, -0.660609,
		-0.552770, 0.763013, -0.335046,
		29.421967, 38.277016, 35.777000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295513, 38.320354, 36.102657>,  <29.808905, 37.742905, 36.011532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295513, 38.320354, 36.102657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.917831, 38.452084, 36.104572>,  <29.691221, 38.531120, 36.105721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.917831, 38.452084, 36.104572>,  <30.295513, 38.320354, 36.102657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.917831, 38.452084, 36.104572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215623, 0.607111, 0.764803,
		0.248959, 0.723163, -0.644247,
		-0.944207, 0.329319, 0.004785,
		29.634569, 38.550880, 36.106007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331106, 39.006062, 36.130600>,  <30.295513, 38.320354, 36.102657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331106, 39.006062, 36.130600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993422, 38.915031, 36.324718>,  <29.790812, 38.860413, 36.441189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993422, 38.915031, 36.324718>,  <30.331106, 39.006062, 36.130600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993422, 38.915031, 36.324718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241955, 0.646103, 0.723885,
		-0.478295, 0.728532, -0.490383,
		-0.844211, -0.227580, 0.485300,
		29.740158, 38.846756, 36.470310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869852, 39.649334, 36.383747>,  <30.331106, 39.006062, 36.130600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869852, 39.649334, 36.383747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.850351, 39.334686, 36.629951>,  <29.838652, 39.145897, 36.777676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.850351, 39.334686, 36.629951>,  <29.869852, 39.649334, 36.383747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.850351, 39.334686, 36.629951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476571, 0.523257, 0.706457,
		-0.877783, 0.327777, 0.349369,
		-0.048751, -0.786616, 0.615515,
		29.835726, 39.098701, 36.814606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.416401, 39.695362, 37.022545>,  <29.869852, 39.649334, 36.383747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.416401, 39.695362, 37.022545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.776331, 39.520981, 37.028919>,  <29.992289, 39.416351, 37.032745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.776331, 39.520981, 37.028919>,  <29.416401, 39.695362, 37.022545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.776331, 39.520981, 37.028919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366507, 0.775285, 0.514398,
		-0.236613, -0.457027, 0.857403,
		0.899826, -0.435958, 0.015939,
		30.046278, 39.390194, 37.033699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.514126, 39.823616, 37.810768>,  <29.416401, 39.695362, 37.022545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.514126, 39.823616, 37.810768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.212702, 39.561016, 37.824337>,  <29.031847, 39.403454, 37.832478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.212702, 39.561016, 37.824337>,  <29.514126, 39.823616, 37.810768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.212702, 39.561016, 37.824337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013120, -0.036570, -0.999245,
		0.657248, -0.753436, 0.018944,
		-0.753560, -0.656503, 0.033920,
		28.986633, 39.364063, 37.834515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711485, 39.148460, 37.523609>,  <29.514126, 39.823616, 37.810768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711485, 39.148460, 37.523609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317646, 39.215759, 37.504612>,  <29.081343, 39.256138, 37.493214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317646, 39.215759, 37.504612>,  <29.711485, 39.148460, 37.523609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.317646, 39.215759, 37.504612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021046, -0.155608, -0.987595,
		-0.173572, -0.973382, 0.149670,
		-0.984596, 0.168269, -0.047495,
		29.022266, 39.266235, 37.490364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341722, 38.553429, 37.256668>,  <29.711485, 39.148460, 37.523609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341722, 38.553429, 37.256668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.075508, 38.841854, 37.179592>,  <28.915779, 39.014912, 37.133347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.075508, 38.841854, 37.179592>,  <29.341722, 38.553429, 37.256668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075508, 38.841854, 37.179592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067773, -0.198713, -0.977711,
		-0.743284, -0.663760, 0.083382,
		-0.665534, 0.721066, -0.192686,
		28.875847, 39.058174, 37.121788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650900, 38.335274, 36.834347>,  <29.341722, 38.553429, 37.256668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650900, 38.335274, 36.834347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757504, 38.709660, 36.742313>,  <28.821465, 38.934292, 36.687092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757504, 38.709660, 36.742313>,  <28.650900, 38.335274, 36.834347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.757504, 38.709660, 36.742313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219139, -0.291309, -0.931191,
		-0.938591, 0.197748, -0.282743,
		0.266507, 0.935967, -0.230086,
		28.837456, 38.990448, 36.673286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.360073, 38.610500, 36.235367>,  <28.650900, 38.335274, 36.834347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.360073, 38.610500, 36.235367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.714584, 38.793167, 36.266266>,  <28.927290, 38.902767, 36.284805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.714584, 38.793167, 36.266266>,  <28.360073, 38.610500, 36.235367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.714584, 38.793167, 36.266266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211907, -0.251508, -0.944373,
		-0.411836, 0.853345, -0.319676,
		0.886277, 0.456668, 0.077250,
		28.980467, 38.930168, 36.289440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422606, 39.115398, 35.708080>,  <28.360073, 38.610500, 36.235367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422606, 39.115398, 35.708080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753019, 38.934795, 35.843021>,  <28.951267, 38.826435, 35.923985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753019, 38.934795, 35.843021>,  <28.422606, 39.115398, 35.708080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.753019, 38.934795, 35.843021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198621, -0.326956, -0.923931,
		0.527462, 0.830205, -0.180398,
		0.826034, -0.451508, 0.337354,
		29.000830, 38.799343, 35.944229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.805609, 39.163628, 35.194649>,  <28.422606, 39.115398, 35.708080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.805609, 39.163628, 35.194649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.057594, 38.928921, 35.398159>,  <29.208786, 38.788097, 35.520267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.057594, 38.928921, 35.398159>,  <28.805609, 39.163628, 35.194649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.057594, 38.928921, 35.398159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405625, -0.310071, -0.859840,
		0.662281, 0.748040, 0.042673,
		0.629963, -0.586765, 0.508777,
		29.246584, 38.752892, 35.550793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452332, 39.134312, 34.842785>,  <28.805609, 39.163628, 35.194649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.452332, 39.134312, 34.842785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.404264, 38.796379, 35.051327>,  <29.375423, 38.593620, 35.176453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.404264, 38.796379, 35.051327>,  <29.452332, 39.134312, 34.842785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404264, 38.796379, 35.051327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298969, -0.531579, -0.792490,
		0.946666, 0.060638, 0.316459,
		-0.120168, -0.844835, 0.521357,
		29.368214, 38.542927, 35.207733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978651, 38.713688, 34.608120>,  <29.452332, 39.134312, 34.842785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978651, 38.713688, 34.608120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729158, 38.441380, 34.761749>,  <29.579462, 38.277996, 34.853928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729158, 38.441380, 34.761749>,  <29.978651, 38.713688, 34.608120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729158, 38.441380, 34.761749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086994, -0.548779, -0.831428,
		0.776782, -0.485177, 0.401514,
		-0.623732, -0.680768, 0.384075,
		29.542038, 38.237148, 34.876972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207172, 37.995148, 34.611225>,  <29.978651, 38.713688, 34.608120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207172, 37.995148, 34.611225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809925, 37.948421, 34.607967>,  <29.571577, 37.920387, 34.606010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809925, 37.948421, 34.607967>,  <30.207172, 37.995148, 34.611225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.809925, 37.948421, 34.607967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092169, -0.736864, -0.669729,
		0.072231, -0.665872, 0.742561,
		-0.993120, -0.116816, -0.008149,
		29.511990, 37.913376, 34.605522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007732, 37.321301, 34.739502>,  <30.207172, 37.995148, 34.611225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007732, 37.321301, 34.739502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731655, 37.489834, 34.504177>,  <29.566010, 37.590954, 34.362980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731655, 37.489834, 34.504177>,  <30.007732, 37.321301, 34.739502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.731655, 37.489834, 34.504177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323194, -0.547929, -0.771569,
		-0.647442, -0.722671, 0.242004,
		-0.690192, 0.421332, -0.588315,
		29.524597, 37.616234, 34.327682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469158, 36.763252, 34.424042>,  <30.007732, 37.321301, 34.739502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469158, 36.763252, 34.424042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.530079, 37.061039, 34.164017>,  <29.566631, 37.239712, 34.008003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.530079, 37.061039, 34.164017>,  <29.469158, 36.763252, 34.424042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.530079, 37.061039, 34.164017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420805, -0.643981, -0.638915,
		-0.894275, -0.176241, -0.411353,
		0.152300, 0.744465, -0.650059,
		29.575769, 37.284378, 33.968998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145456, 36.658669, 33.656364>,  <29.469158, 36.763252, 34.424042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145456, 36.658669, 33.656364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459505, 36.906128, 33.644627>,  <29.647934, 37.054604, 33.637585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459505, 36.906128, 33.644627>,  <29.145456, 36.658669, 33.656364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459505, 36.906128, 33.644627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514849, -0.678268, -0.524293,
		-0.344257, 0.396524, -0.851032,
		0.785123, 0.618644, -0.029349,
		29.695042, 37.091721, 33.635822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.315540, 36.751530, 32.940498>,  <29.145456, 36.658669, 33.656364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.315540, 36.751530, 32.940498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.665337, 36.845135, 33.110443>,  <29.875214, 36.901299, 33.212410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.665337, 36.845135, 33.110443>,  <29.315540, 36.751530, 32.940498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.665337, 36.845135, 33.110443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470013, -0.625176, -0.623091,
		0.119802, 0.744577, -0.656699,
		0.874491, 0.234010, 0.424858,
		29.927685, 36.915337, 33.237900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759121, 36.954453, 32.454441>,  <29.315540, 36.751530, 32.940498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759121, 36.954453, 32.454441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.986631, 36.835201, 32.761066>,  <30.123138, 36.763649, 32.945042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.986631, 36.835201, 32.761066>,  <29.759121, 36.954453, 32.454441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.986631, 36.835201, 32.761066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436579, -0.680433, -0.588565,
		0.697060, 0.669426, -0.256858,
		0.568775, -0.298127, 0.766560,
		30.157265, 36.745762, 32.991035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155560, 36.588276, 32.054283>,  <29.759121, 36.954453, 32.454441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155560, 36.588276, 32.054283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284517, 36.489685, 32.419865>,  <30.361893, 36.430531, 32.639214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284517, 36.489685, 32.419865>,  <30.155560, 36.588276, 32.054283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284517, 36.489685, 32.419865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632539, -0.662211, -0.401710,
		0.704242, 0.707621, -0.057588,
		0.322394, -0.246474, 0.913955,
		30.381235, 36.415741, 32.694050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871941, 36.598969, 31.973156>,  <30.155560, 36.588276, 32.054283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871941, 36.598969, 31.973156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783810, 36.374577, 32.292343>,  <30.730930, 36.239941, 32.483856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783810, 36.374577, 32.292343>,  <30.871941, 36.598969, 31.973156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783810, 36.374577, 32.292343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595389, -0.725342, -0.345530,
		0.772636, 0.398972, 0.493817,
		-0.220329, -0.560982, 0.797969,
		30.717710, 36.206284, 32.531734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484966, 36.438900, 32.190865>,  <30.871941, 36.598969, 31.973156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484966, 36.438900, 32.190865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.227081, 36.164284, 32.325329>,  <31.072351, 35.999512, 32.406006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.227081, 36.164284, 32.325329>,  <31.484966, 36.438900, 32.190865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227081, 36.164284, 32.325329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494391, -0.709887, -0.501635,
		0.583031, -0.157215, 0.797094,
		-0.644711, -0.686545, 0.336161,
		31.033669, 35.958321, 32.426178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935537, 35.942429, 32.394924>,  <31.484966, 36.438900, 32.190865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935537, 35.942429, 32.394924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587395, 35.746277, 32.377007>,  <31.378510, 35.628586, 32.366257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587395, 35.746277, 32.377007>,  <31.935537, 35.942429, 32.394924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587395, 35.746277, 32.377007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473457, -0.808370, -0.349824,
		0.135331, -0.325682, 0.935744,
		-0.870359, -0.490376, -0.044799,
		31.326286, 35.599163, 32.363567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130928, 35.255497, 32.450832>,  <31.935537, 35.942429, 32.394924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130928, 35.255497, 32.450832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776800, 35.224724, 32.267406>,  <31.564323, 35.206261, 32.157349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776800, 35.224724, 32.267406>,  <32.130928, 35.255497, 32.450832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776800, 35.224724, 32.267406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327969, -0.802411, -0.498571,
		-0.329605, -0.591792, 0.735624,
		-0.885323, -0.076931, -0.458568,
		31.511204, 35.201645, 32.129837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978533, 34.622795, 32.505695>,  <32.130928, 35.255497, 32.450832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978533, 34.622795, 32.505695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716949, 34.715519, 32.217636>,  <31.559999, 34.771152, 32.044800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716949, 34.715519, 32.217636>,  <31.978533, 34.622795, 32.505695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716949, 34.715519, 32.217636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247892, -0.833693, -0.493463,
		-0.714766, -0.501221, 0.487737,
		-0.653957, 0.231805, -0.720144,
		31.520763, 34.785061, 32.001595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542334, 33.979580, 32.319710>,  <31.978533, 34.622795, 32.505695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542334, 33.979580, 32.319710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528576, 34.243092, 32.019089>,  <31.520321, 34.401199, 31.838717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528576, 34.243092, 32.019089>,  <31.542334, 33.979580, 32.319710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528576, 34.243092, 32.019089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270537, -0.717785, -0.641556,
		-0.962095, -0.225388, -0.153537,
		-0.034392, 0.658775, -0.751553,
		31.518259, 34.440723, 31.793623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297541, 33.636967, 31.796949>,  <31.542334, 33.979580, 32.319710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297541, 33.636967, 31.796949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444874, 33.946609, 31.591000>,  <31.533274, 34.132393, 31.467430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444874, 33.946609, 31.591000>,  <31.297541, 33.636967, 31.796949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444874, 33.946609, 31.591000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379684, -0.630770, -0.676733,
		-0.848630, 0.053772, -0.526247,
		0.368331, 0.774104, -0.514874,
		31.555372, 34.178841, 31.436537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052568, 33.384403, 31.176670>,  <31.297541, 33.636967, 31.796949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052568, 33.384403, 31.176670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321030, 33.665195, 31.081366>,  <31.482107, 33.833672, 31.024183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321030, 33.665195, 31.081366>,  <31.052568, 33.384403, 31.176670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321030, 33.665195, 31.081366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208605, -0.487256, -0.847977,
		-0.711361, 0.519422, -0.473462,
		0.671155, 0.701985, -0.238261,
		31.522377, 33.875790, 31.009888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838619, 33.424049, 30.412701>,  <31.052568, 33.384403, 31.176670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838619, 33.424049, 30.412701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212893, 33.530987, 30.504805>,  <31.437456, 33.595150, 30.560066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212893, 33.530987, 30.504805>,  <30.838619, 33.424049, 30.412701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212893, 33.530987, 30.504805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333064, -0.453854, -0.826490,
		-0.116455, 0.850025, -0.513708,
		0.935685, 0.267346, 0.230260,
		31.493599, 33.611191, 30.573883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082426, 33.668648, 29.822199>,  <30.838619, 33.424049, 30.412701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082426, 33.668648, 29.822199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423456, 33.610809, 30.023081>,  <31.628075, 33.576107, 30.143610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423456, 33.610809, 30.023081>,  <31.082426, 33.668648, 29.822199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423456, 33.610809, 30.023081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395620, -0.449323, -0.800996,
		0.341469, 0.881591, -0.325878,
		0.852575, -0.144592, 0.502205,
		31.679228, 33.567432, 30.173742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541573, 33.858913, 29.430279>,  <31.082426, 33.668648, 29.822199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541573, 33.858913, 29.430279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786272, 33.679237, 29.690737>,  <31.933092, 33.571430, 29.847012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786272, 33.679237, 29.690737>,  <31.541573, 33.858913, 29.430279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786272, 33.679237, 29.690737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662370, -0.159140, -0.732080,
		0.432466, 0.879149, 0.200176,
		0.611751, -0.449190, 0.651144,
		31.969797, 33.544479, 29.886080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163219, 34.077248, 29.226400>,  <31.541573, 33.858913, 29.430279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163219, 34.077248, 29.226400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241711, 33.740673, 29.427784>,  <32.288807, 33.538727, 29.548615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241711, 33.740673, 29.427784>,  <32.163219, 34.077248, 29.226400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241711, 33.740673, 29.427784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406654, -0.397374, -0.822634,
		0.892260, 0.366158, 0.264199,
		0.196228, -0.841440, 0.503461,
		32.300579, 33.488239, 29.578823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855656, 33.889709, 29.055470>,  <32.163219, 34.077248, 29.226400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855656, 33.889709, 29.055470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660610, 33.560379, 29.171652>,  <32.543583, 33.362782, 29.241362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660610, 33.560379, 29.171652>,  <32.855656, 33.889709, 29.055470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660610, 33.560379, 29.171652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324955, -0.479935, -0.814903,
		0.810331, -0.302974, 0.501568,
		-0.487615, -0.823328, 0.290454,
		32.514324, 33.313381, 29.258787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332691, 33.340168, 29.156897>,  <32.855656, 33.889709, 29.055470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332691, 33.340168, 29.156897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986862, 33.159920, 29.067942>,  <32.779366, 33.051769, 29.014568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986862, 33.159920, 29.067942>,  <33.332691, 33.340168, 29.156897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986862, 33.159920, 29.067942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419665, -0.404051, -0.812788,
		0.276407, -0.796040, 0.538442,
		-0.864569, -0.450625, -0.222388,
		32.727489, 33.024731, 29.001225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516605, 32.619953, 28.979155>,  <33.332691, 33.340168, 29.156897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516605, 32.619953, 28.979155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161381, 32.707272, 28.817320>,  <32.948246, 32.759663, 28.720219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161381, 32.707272, 28.817320>,  <33.516605, 32.619953, 28.979155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161381, 32.707272, 28.817320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262453, -0.481812, -0.836048,
		-0.377440, -0.848648, 0.370588,
		-0.888064, 0.218296, -0.404585,
		32.894962, 32.772762, 28.695944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247478, 31.921951, 28.668196>,  <33.516605, 32.619953, 28.979155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247478, 31.921951, 28.668196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002258, 32.189789, 28.500479>,  <32.855125, 32.350491, 28.399849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002258, 32.189789, 28.500479>,  <33.247478, 31.921951, 28.668196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002258, 32.189789, 28.500479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025155, -0.547000, -0.836755,
		-0.789640, -0.502429, 0.352184,
		-0.613055, 0.669594, -0.419294,
		32.818340, 32.390667, 28.374691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738960, 31.500551, 28.327686>,  <33.247478, 31.921951, 28.668196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738960, 31.500551, 28.327686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744263, 31.869038, 28.172157>,  <32.747444, 32.090130, 28.078840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744263, 31.869038, 28.172157>,  <32.738960, 31.500551, 28.327686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744263, 31.869038, 28.172157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011344, -0.388695, -0.921297,
		-0.999848, 0.016627, 0.005296,
		0.013260, 0.921217, -0.388824,
		32.748241, 32.145401, 28.055510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272377, 31.361193, 27.793097>,  <32.738960, 31.500551, 28.327686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272377, 31.361193, 27.793097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425381, 31.723707, 27.721170>,  <32.517181, 31.941216, 27.678015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425381, 31.723707, 27.721170>,  <32.272377, 31.361193, 27.793097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425381, 31.723707, 27.721170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101101, -0.234502, -0.966844,
		-0.918405, 0.351645, -0.181326,
		0.382507, 0.906286, -0.179816,
		32.540134, 31.995592, 27.667225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921972, 31.706778, 27.216486>,  <32.272377, 31.361193, 27.793097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921972, 31.706778, 27.216486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291355, 31.859238, 27.234161>,  <32.512985, 31.950714, 27.244766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291355, 31.859238, 27.234161>,  <31.921972, 31.706778, 27.216486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291355, 31.859238, 27.234161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196011, -0.369595, -0.908284,
		-0.329863, 0.847421, -0.416015,
		0.923456, 0.381152, 0.044188,
		32.568394, 31.973583, 27.247417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100132, 31.901369, 26.525291>,  <31.921972, 31.706778, 27.216486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100132, 31.901369, 26.525291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443485, 31.889914, 26.730173>,  <32.649498, 31.883041, 26.853102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443485, 31.889914, 26.730173>,  <32.100132, 31.901369, 26.525291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443485, 31.889914, 26.730173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464734, -0.379411, -0.800043,
		0.217247, 0.924785, -0.312373,
		0.858385, -0.028637, 0.512205,
		32.701000, 31.881323, 26.883835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460697, 32.251526, 26.142963>,  <32.100132, 31.901369, 26.525291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460697, 32.251526, 26.142963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709389, 32.027348, 26.361814>,  <32.858604, 31.892839, 26.493126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709389, 32.027348, 26.361814>,  <32.460697, 32.251526, 26.142963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709389, 32.027348, 26.361814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558062, -0.173158, -0.811531,
		0.549562, 0.809884, 0.205108,
		0.621730, -0.560450, 0.547127,
		32.895908, 31.859213, 26.525953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142658, 32.517246, 26.094385>,  <32.460697, 32.251526, 26.142963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142658, 32.517246, 26.094385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200508, 32.133785, 26.192421>,  <33.235218, 31.903709, 26.251242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200508, 32.133785, 26.192421>,  <33.142658, 32.517246, 26.094385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200508, 32.133785, 26.192421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705527, -0.073758, -0.704834,
		0.693768, 0.274857, 0.665687,
		0.144629, -0.958652, 0.245090,
		33.243896, 31.846189, 26.265947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941322, 32.352894, 26.194576>,  <33.142658, 32.517246, 26.094385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941322, 32.352894, 26.194576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783791, 31.988155, 26.148193>,  <33.689274, 31.769314, 26.120363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783791, 31.988155, 26.148193>,  <33.941322, 32.352894, 26.194576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783791, 31.988155, 26.148193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590493, -0.154297, -0.792155,
		0.704428, -0.380444, 0.599202,
		-0.393826, -0.911842, -0.115958,
		33.665642, 31.714603, 26.113405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459263, 31.865238, 26.161417>,  <33.941322, 32.352894, 26.194576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459263, 31.865238, 26.161417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146023, 31.694050, 25.980930>,  <33.958080, 31.591337, 25.872639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146023, 31.694050, 25.980930>,  <34.459263, 31.865238, 26.161417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146023, 31.694050, 25.980930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595682, -0.307768, -0.741918,
		0.178648, -0.849777, 0.495947,
		-0.783102, -0.427969, -0.451214,
		33.911091, 31.565659, 25.845566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725395, 31.189360, 25.907618>,  <34.459263, 31.865238, 26.161417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725395, 31.189360, 25.907618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402599, 31.307898, 25.703287>,  <34.208920, 31.379021, 25.580688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402599, 31.307898, 25.703287>,  <34.725395, 31.189360, 25.907618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402599, 31.307898, 25.703287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490964, -0.144055, -0.859187,
		-0.328203, -0.944154, -0.029243,
		-0.806993, 0.296345, -0.510825,
		34.160500, 31.396801, 25.550039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654121, 30.775087, 25.406689>,  <34.725395, 31.189360, 25.907618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654121, 30.775087, 25.406689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463196, 31.099115, 25.270481>,  <34.348640, 31.293533, 25.188757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463196, 31.099115, 25.270481>,  <34.654121, 30.775087, 25.406689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463196, 31.099115, 25.270481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533322, -0.040921, -0.844922,
		-0.698381, -0.584902, -0.412496,
		-0.477317, 0.810071, -0.340519,
		34.320000, 31.342136, 25.168325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429169, 30.565088, 24.682638>,  <34.654121, 30.775087, 25.406689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429169, 30.565088, 24.682638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405140, 30.964340, 24.687195>,  <34.390720, 31.203892, 24.689928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405140, 30.964340, 24.687195>,  <34.429169, 30.565088, 24.682638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405140, 30.964340, 24.687195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311913, 0.029611, -0.949649,
		-0.948210, -0.053497, -0.313109,
		-0.060074, 0.998129, 0.011391,
		34.387119, 31.263779, 24.690613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173962, 30.729118, 24.068110>,  <34.429169, 30.565088, 24.682638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173962, 30.729118, 24.068110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342175, 31.075298, 24.177025>,  <34.443104, 31.283007, 24.242374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342175, 31.075298, 24.177025>,  <34.173962, 30.729118, 24.068110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342175, 31.075298, 24.177025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523222, 0.013842, -0.852084,
		-0.741207, 0.500801, -0.447003,
		0.420537, 0.865452, 0.272290,
		34.468334, 31.334934, 24.258711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924393, 31.213297, 23.424114>,  <34.173962, 30.729118, 24.068110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924393, 31.213297, 23.424114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229801, 31.386292, 23.615944>,  <34.413048, 31.490088, 23.731041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229801, 31.386292, 23.615944>,  <33.924393, 31.213297, 23.424114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229801, 31.386292, 23.615944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434603, 0.205160, -0.876943,
		-0.477656, 0.877989, -0.031316,
		0.763521, 0.432487, 0.479573,
		34.458858, 31.516037, 23.759815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119637, 31.808556, 23.138714>,  <33.924393, 31.213297, 23.424114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119637, 31.808556, 23.138714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459698, 31.742838, 23.338816>,  <34.663734, 31.703407, 23.458876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459698, 31.742838, 23.338816>,  <34.119637, 31.808556, 23.138714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459698, 31.742838, 23.338816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525833, 0.215654, -0.822796,
		0.027301, 0.962549, 0.269731,
		0.850150, -0.164296, 0.500253,
		34.714741, 31.693548, 23.488892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442280, 32.427593, 23.059643>,  <34.119637, 31.808556, 23.138714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442280, 32.427593, 23.059643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716034, 32.147717, 23.141674>,  <34.880287, 31.979792, 23.190893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716034, 32.147717, 23.141674>,  <34.442280, 32.427593, 23.059643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716034, 32.147717, 23.141674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476424, 0.216217, -0.852215,
		0.551944, 0.680945, 0.481324,
		0.684381, -0.699689, 0.205079,
		34.921349, 31.937809, 23.203197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073101, 32.843868, 22.895359>,  <34.442280, 32.427593, 23.059643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073101, 32.843868, 22.895359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204643, 32.466133, 22.891729>,  <35.283569, 32.239494, 22.889551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204643, 32.466133, 22.891729>,  <35.073101, 32.843868, 22.895359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204643, 32.466133, 22.891729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649037, 0.232981, -0.724203,
		0.686005, 0.232271, 0.689527,
		0.328858, -0.944336, -0.009074,
		35.303299, 32.182831, 22.889008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753464, 32.984993, 22.778702>,  <35.073101, 32.843868, 22.895359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753464, 32.984993, 22.778702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705330, 32.598698, 22.686733>,  <35.676449, 32.366920, 22.631552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705330, 32.598698, 22.686733>,  <35.753464, 32.984993, 22.778702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705330, 32.598698, 22.686733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557045, 0.126021, -0.820865,
		0.821719, -0.226853, 0.522797,
		-0.120332, -0.965741, -0.229921,
		35.669231, 32.308975, 22.617758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418945, 32.673988, 22.636209>,  <35.753464, 32.984993, 22.778702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418945, 32.673988, 22.636209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137951, 32.450100, 22.460381>,  <35.969357, 32.315765, 22.354883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137951, 32.450100, 22.460381>,  <36.418945, 32.673988, 22.636209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137951, 32.450100, 22.460381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465999, 0.105085, -0.878523,
		0.537924, -0.821988, 0.187011,
		-0.702483, -0.559726, -0.439573,
		35.927204, 32.282181, 22.328508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723499, 32.063541, 22.336758>,  <36.418945, 32.673988, 22.636209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723499, 32.063541, 22.336758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375111, 32.113400, 22.146656>,  <36.166077, 32.143314, 22.032595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375111, 32.113400, 22.146656>,  <36.723499, 32.063541, 22.336758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375111, 32.113400, 22.146656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458273, -0.142703, -0.877281,
		-0.177174, -0.981885, 0.067167,
		-0.870974, 0.124650, -0.475254,
		36.113819, 32.150791, 22.004080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720303, 31.600483, 21.677685>,  <36.723499, 32.063541, 22.336758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720303, 31.600483, 21.677685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416035, 31.852747, 21.616161>,  <36.233475, 32.004105, 21.579247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416035, 31.852747, 21.616161>,  <36.720303, 31.600483, 21.677685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416035, 31.852747, 21.616161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319475, 0.157441, -0.934424,
		-0.565088, -0.759922, -0.321239,
		-0.760665, 0.630660, -0.153808,
		36.187836, 32.041946, 21.570019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541283, 31.378876, 21.036594>,  <36.720303, 31.600483, 21.677685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541283, 31.378876, 21.036594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393726, 31.747242, 21.086920>,  <36.305191, 31.968262, 21.117115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393726, 31.747242, 21.086920>,  <36.541283, 31.378876, 21.036594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393726, 31.747242, 21.086920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293002, 0.243676, -0.924538,
		-0.882082, -0.304192, -0.359721,
		-0.368892, 0.920918, 0.125813,
		36.283058, 32.023518, 21.124664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054050, 31.458473, 20.565393>,  <36.541283, 31.378876, 21.036594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054050, 31.458473, 20.565393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143192, 31.835724, 20.664059>,  <36.196678, 32.062077, 20.723257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143192, 31.835724, 20.664059>,  <36.054050, 31.458473, 20.565393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143192, 31.835724, 20.664059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130252, 0.221949, -0.966319,
		-0.966110, 0.247480, -0.073382,
		0.222857, 0.943129, 0.246662,
		36.210049, 32.118664, 20.738058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722038, 31.974613, 20.115814>,  <36.054050, 31.458473, 20.565393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722038, 31.974613, 20.115814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066402, 32.120007, 20.258200>,  <36.273022, 32.207241, 20.343632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066402, 32.120007, 20.258200>,  <35.722038, 31.974613, 20.115814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066402, 32.120007, 20.258200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273401, 0.259519, -0.926230,
		-0.429049, 0.894723, 0.124046,
		0.860911, 0.363484, 0.355965,
		36.324677, 32.229053, 20.364988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689228, 32.568764, 19.984447>,  <35.722038, 31.974613, 20.115814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689228, 32.568764, 19.984447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085007, 32.532219, 20.029436>,  <36.322475, 32.510292, 20.056429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085007, 32.532219, 20.029436>,  <35.689228, 32.568764, 19.984447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085007, 32.532219, 20.029436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141267, 0.435416, -0.889076,
		0.032259, 0.895581, 0.443727,
		0.989446, -0.091365, 0.112470,
		36.381840, 32.504810, 20.063177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871304, 33.237228, 19.737448>,  <35.689228, 32.568764, 19.984447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871304, 33.237228, 19.737448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114075, 33.508045, 19.570950>,  <36.259735, 33.670536, 19.471050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114075, 33.508045, 19.570950>,  <35.871304, 33.237228, 19.737448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114075, 33.508045, 19.570950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031918, -0.502550, -0.863959,
		-0.794118, 0.537644, -0.283400,
		0.606925, 0.677040, -0.416244,
		36.296154, 33.711159, 19.446075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607800, 33.404133, 19.115108>,  <35.871304, 33.237228, 19.737448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607800, 33.404133, 19.115108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980968, 33.538498, 19.063236>,  <36.204868, 33.619118, 19.032112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980968, 33.538498, 19.063236>,  <35.607800, 33.404133, 19.115108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980968, 33.538498, 19.063236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112300, -0.613623, -0.781573,
		-0.342114, 0.714584, -0.610186,
		0.932924, 0.335911, -0.129681,
		36.260845, 33.639271, 19.024332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816971, 33.709641, 18.384275>,  <35.607800, 33.404133, 19.115108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816971, 33.709641, 18.384275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129116, 33.536541, 18.564835>,  <36.316402, 33.432682, 18.673170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129116, 33.536541, 18.564835>,  <35.816971, 33.709641, 18.384275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129116, 33.536541, 18.564835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180026, -0.535821, -0.824916,
		0.598852, 0.724997, -0.340228,
		0.780363, -0.432753, 0.451396,
		36.363224, 33.406715, 18.700253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373753, 33.714893, 17.917620>,  <35.816971, 33.709641, 18.384275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373753, 33.714893, 17.917620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451839, 33.410786, 18.165451>,  <36.498692, 33.228321, 18.314150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451839, 33.410786, 18.165451>,  <36.373753, 33.714893, 17.917620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451839, 33.410786, 18.165451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168640, -0.596304, -0.784845,
		0.966153, 0.257700, 0.011804,
		0.195216, -0.760271, 0.619579,
		36.510403, 33.182705, 18.351324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999340, 33.277206, 17.754520>,  <36.373753, 33.714893, 17.917620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999340, 33.277206, 17.754520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737759, 33.031490, 17.931154>,  <36.580811, 32.884060, 18.037134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737759, 33.031490, 17.931154>,  <36.999340, 33.277206, 17.754520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737759, 33.031490, 17.931154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027411, -0.602548, -0.797612,
		0.756038, -0.509497, 0.410876,
		-0.653953, -0.614287, 0.441583,
		36.541573, 32.847202, 18.063629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400864, 33.663700, 18.176577>,  <36.999340, 33.277206, 17.754520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400864, 33.663700, 18.176577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022442, 33.686245, 18.304205>,  <36.795387, 33.699772, 18.380781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022442, 33.686245, 18.304205>,  <37.400864, 33.663700, 18.176577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022442, 33.686245, 18.304205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321724, 0.280164, 0.904435,
		-0.038418, 0.958296, -0.283183,
		-0.946054, 0.056360, 0.319070,
		36.738625, 33.703152, 18.399925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394356, 34.201031, 18.679436>,  <37.400864, 33.663700, 18.176577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394356, 34.201031, 18.679436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045406, 34.042625, 18.794081>,  <36.836037, 33.947582, 18.862867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045406, 34.042625, 18.794081>,  <37.394356, 34.201031, 18.679436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045406, 34.042625, 18.794081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154029, 0.333770, 0.929985,
		-0.463945, 0.855438, -0.230174,
		-0.872370, -0.396009, 0.286613,
		36.783695, 33.923824, 18.880064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078953, 34.664570, 18.962803>,  <37.394356, 34.201031, 18.679436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078953, 34.664570, 18.962803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840839, 34.377022, 19.106390>,  <36.697971, 34.204491, 19.192543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840839, 34.377022, 19.106390>,  <37.078953, 34.664570, 18.962803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840839, 34.377022, 19.106390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074769, 0.494367, 0.866032,
		-0.800029, 0.488695, -0.348038,
		-0.595284, -0.718873, 0.358968,
		36.662254, 34.161362, 19.214081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441486, 34.984898, 19.121994>,  <37.078953, 34.664570, 18.962803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441486, 34.984898, 19.121994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488720, 34.663616, 19.355549>,  <36.517059, 34.470848, 19.495682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488720, 34.663616, 19.355549>,  <36.441486, 34.984898, 19.121994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488720, 34.663616, 19.355549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226875, 0.550626, 0.803330,
		-0.966739, -0.227332, -0.117205,
		0.118086, -0.803201, 0.583888,
		36.524147, 34.422657, 19.530716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777935, 34.869652, 19.375317>,  <36.441486, 34.984898, 19.121994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777935, 34.869652, 19.375317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055447, 34.689800, 19.600351>,  <36.221954, 34.581890, 19.735373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055447, 34.689800, 19.600351>,  <35.777935, 34.869652, 19.375317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055447, 34.689800, 19.600351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387711, 0.425125, 0.817893,
		-0.606916, -0.785560, 0.120618,
		0.693782, -0.449627, 0.562586,
		36.263580, 34.554913, 19.769127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363544, 34.694279, 19.971205>,  <35.777935, 34.869652, 19.375317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363544, 34.694279, 19.971205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751526, 34.664356, 20.063808>,  <35.984314, 34.646404, 20.119370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751526, 34.664356, 20.063808>,  <35.363544, 34.694279, 19.971205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751526, 34.664356, 20.063808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183500, 0.399868, 0.898017,
		-0.159748, -0.913516, 0.374126,
		0.969953, -0.074804, 0.231508,
		36.042511, 34.641914, 20.133261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359341, 34.371040, 20.511950>,  <35.363544, 34.694279, 19.971205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359341, 34.371040, 20.511950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728580, 34.521408, 20.544386>,  <35.950123, 34.611629, 20.563847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728580, 34.521408, 20.544386>,  <35.359341, 34.371040, 20.511950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728580, 34.521408, 20.544386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229169, 0.368393, 0.900982,
		0.308823, -0.850278, 0.426211,
		0.923098, 0.375918, 0.081089,
		36.005508, 34.634182, 20.568712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665112, 34.174526, 21.105610>,  <35.359341, 34.371040, 20.511950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665112, 34.174526, 21.105610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852921, 34.520969, 21.037020>,  <35.965607, 34.728836, 20.995867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852921, 34.520969, 21.037020>,  <35.665112, 34.174526, 21.105610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852921, 34.520969, 21.037020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293445, 0.336251, 0.894888,
		0.832728, -0.369855, 0.412034,
		0.469526, 0.866108, -0.171474,
		35.993778, 34.780800, 20.985579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034428, 34.364960, 21.748594>,  <35.665112, 34.174526, 21.105610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034428, 34.364960, 21.748594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032265, 34.709496, 21.545393>,  <36.030968, 34.916218, 21.423473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032265, 34.709496, 21.545393>,  <36.034428, 34.364960, 21.748594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032265, 34.709496, 21.545393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137277, 0.502561, 0.853574,
		0.990518, 0.074352, 0.115525,
		-0.005406, 0.861339, -0.508002,
		36.030643, 34.967896, 21.392992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475571, 34.774742, 22.193020>,  <36.034428, 34.364960, 21.748594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475571, 34.774742, 22.193020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289234, 35.042839, 21.961931>,  <36.177433, 35.203697, 21.823278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289234, 35.042839, 21.961931>,  <36.475571, 34.774742, 22.193020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289234, 35.042839, 21.961931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017844, 0.659874, 0.751164,
		0.884689, 0.339614, -0.319356,
		-0.465841, 0.670245, -0.577723,
		36.149483, 35.243912, 21.788614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794659, 35.438526, 22.196886>,  <36.475571, 34.774742, 22.193020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794659, 35.438526, 22.196886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425575, 35.540203, 22.080959>,  <36.204124, 35.601212, 22.011404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425575, 35.540203, 22.080959>,  <36.794659, 35.438526, 22.196886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425575, 35.540203, 22.080959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117188, 0.531262, 0.839064,
		0.367254, 0.808175, -0.460411,
		-0.922709, 0.254195, -0.289816,
		36.148762, 35.616463, 21.994015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749214, 36.083157, 22.504219>,  <36.794659, 35.438526, 22.196886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749214, 36.083157, 22.504219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367535, 36.005352, 22.413292>,  <36.138527, 35.958668, 22.358736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367535, 36.005352, 22.413292>,  <36.749214, 36.083157, 22.504219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367535, 36.005352, 22.413292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292251, 0.443424, 0.847328,
		-0.064020, 0.874951, -0.479961,
		-0.954196, -0.194515, -0.227317,
		36.081276, 35.946999, 22.345097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291027, 36.746101, 22.545744>,  <36.749214, 36.083157, 22.504219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291027, 36.746101, 22.545744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060616, 36.424389, 22.604158>,  <35.922367, 36.231361, 22.639208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060616, 36.424389, 22.604158>,  <36.291027, 36.746101, 22.545744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060616, 36.424389, 22.604158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303417, 0.376267, 0.875421,
		-0.759030, 0.459959, -0.460772,
		-0.576031, -0.804277, 0.146038,
		35.887806, 36.183105, 22.647970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687801, 36.990807, 22.715891>,  <36.291027, 36.746101, 22.545744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687801, 36.990807, 22.715891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621555, 36.619656, 22.849531>,  <35.581810, 36.396965, 22.929714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621555, 36.619656, 22.849531>,  <35.687801, 36.990807, 22.715891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621555, 36.619656, 22.849531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535018, 0.369124, 0.759936,
		-0.828449, -0.052894, -0.557561,
		-0.165613, -0.927873, 0.334099,
		35.571873, 36.341293, 22.949760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004681, 36.976242, 22.951385>,  <35.687801, 36.990807, 22.715891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004681, 36.976242, 22.951385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156750, 36.650082, 23.126009>,  <35.247993, 36.454384, 23.230783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156750, 36.650082, 23.126009>,  <35.004681, 36.976242, 22.951385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156750, 36.650082, 23.126009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540509, 0.187147, 0.820260,
		-0.750543, -0.547807, -0.369584,
		0.380177, -0.815404, 0.436556,
		35.270802, 36.405460, 23.256975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505566, 36.710125, 23.398037>,  <35.004681, 36.976242, 22.951385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505566, 36.710125, 23.398037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847004, 36.567421, 23.549877>,  <35.051868, 36.481800, 23.640982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847004, 36.567421, 23.549877>,  <34.505566, 36.710125, 23.398037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847004, 36.567421, 23.549877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387224, 0.052918, 0.920466,
		-0.348475, -0.932696, -0.092976,
		0.853594, -0.356762, 0.379602,
		35.103081, 36.460392, 23.663757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313084, 36.197308, 23.747881>,  <34.505566, 36.710125, 23.398037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313084, 36.197308, 23.747881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660648, 36.317307, 23.905361>,  <34.869186, 36.389305, 23.999849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660648, 36.317307, 23.905361>,  <34.313084, 36.197308, 23.747881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660648, 36.317307, 23.905361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376498, -0.115762, 0.919156,
		0.321321, -0.946889, 0.012362,
		0.868908, 0.299999, 0.393699,
		34.921322, 36.407307, 24.023472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377739, 35.659920, 24.213629>,  <34.313084, 36.197308, 23.747881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377739, 35.659920, 24.213629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583599, 35.987671, 24.314634>,  <34.707115, 36.184322, 24.375237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583599, 35.987671, 24.314634>,  <34.377739, 35.659920, 24.213629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583599, 35.987671, 24.314634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411272, -0.022502, 0.911235,
		0.752324, -0.572817, 0.325405,
		0.514648, 0.819374, 0.252513,
		34.737995, 36.233482, 24.390388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436680, 35.545494, 24.955770>,  <34.377739, 35.659920, 24.213629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436680, 35.545494, 24.955770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519012, 35.928780, 24.876310>,  <34.568413, 36.158752, 24.828634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519012, 35.928780, 24.876310>,  <34.436680, 35.545494, 24.955770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519012, 35.928780, 24.876310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445192, 0.272465, 0.852975,
		0.871457, -0.087130, 0.482670,
		0.205831, 0.958213, -0.198652,
		34.580761, 36.216244, 24.816715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702385, 35.816734, 25.563114>,  <34.436680, 35.545494, 24.955770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702385, 35.816734, 25.563114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637215, 36.167255, 25.381762>,  <34.598114, 36.377567, 25.272949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637215, 36.167255, 25.381762>,  <34.702385, 35.816734, 25.563114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637215, 36.167255, 25.381762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347720, 0.379041, 0.857566,
		0.923335, 0.297366, 0.242953,
		-0.162922, 0.876300, -0.453382,
		34.588337, 36.430145, 25.245747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983654, 36.298435, 25.990856>,  <34.702385, 35.816734, 25.563114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983654, 36.298435, 25.990856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730095, 36.508675, 25.763905>,  <34.577961, 36.634819, 25.627733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730095, 36.508675, 25.763905>,  <34.983654, 36.298435, 25.990856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730095, 36.508675, 25.763905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399748, 0.405359, 0.822123,
		0.662100, 0.747949, -0.046849,
		-0.633897, 0.525600, -0.567380,
		34.539925, 36.666355, 25.593691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066586, 36.933517, 26.239098>,  <34.983654, 36.298435, 25.990856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066586, 36.933517, 26.239098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703335, 36.911366, 26.073092>,  <34.485386, 36.898075, 25.973488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703335, 36.911366, 26.073092>,  <35.066586, 36.933517, 26.239098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703335, 36.911366, 26.073092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376994, 0.539391, 0.752949,
		0.182153, 0.840232, -0.510715,
		-0.908128, -0.055384, -0.415014,
		34.430897, 36.894749, 25.948587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761459, 37.626022, 26.235144>,  <35.066586, 36.933517, 26.239098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761459, 37.626022, 26.235144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432449, 37.410568, 26.162117>,  <34.235043, 37.281296, 26.118301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432449, 37.410568, 26.162117>,  <34.761459, 37.626022, 26.235144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432449, 37.410568, 26.162117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515097, 0.569443, 0.640632,
		-0.241106, 0.620973, -0.745828,
		-0.822523, -0.538634, -0.182565,
		34.185692, 37.248978, 26.107347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281166, 38.055752, 26.201368>,  <34.761459, 37.626022, 26.235144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281166, 38.055752, 26.201368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104084, 37.706863, 26.284554>,  <33.997837, 37.497532, 26.334465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104084, 37.706863, 26.284554>,  <34.281166, 38.055752, 26.201368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104084, 37.706863, 26.284554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501185, 0.433015, 0.749207,
		-0.743523, 0.227449, -0.628840,
		-0.442703, -0.872218, 0.207963,
		33.971272, 37.445198, 26.346943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535980, 38.159321, 26.287163>,  <34.281166, 38.055752, 26.201368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535980, 38.159321, 26.287163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628014, 37.825878, 26.488022>,  <33.683235, 37.625813, 26.608538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628014, 37.825878, 26.488022>,  <33.535980, 38.159321, 26.287163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628014, 37.825878, 26.488022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457667, 0.362685, 0.811789,
		-0.858838, -0.416596, -0.298068,
		0.230083, -0.833611, 0.502150,
		33.697037, 37.575794, 26.638666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934185, 37.991455, 26.696383>,  <33.535980, 38.159321, 26.287163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934185, 37.991455, 26.696383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227844, 37.776108, 26.861885>,  <33.404037, 37.646900, 26.961185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227844, 37.776108, 26.861885>,  <32.934185, 37.991455, 26.696383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227844, 37.776108, 26.861885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261459, 0.338228, 0.904014,
		-0.626635, -0.771856, 0.107548,
		0.734145, -0.538367, 0.413754,
		33.448086, 37.614597, 26.986012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585072, 37.578640, 27.240662>,  <32.934185, 37.991455, 26.696383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585072, 37.578640, 27.240662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970676, 37.581036, 27.346975>,  <33.202042, 37.582474, 27.410763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970676, 37.581036, 27.346975>,  <32.585072, 37.578640, 27.240662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970676, 37.581036, 27.346975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265850, 0.026135, 0.963660,
		-0.001179, -0.999640, 0.026786,
		0.964014, 0.005984, 0.265785,
		33.259880, 37.582832, 27.426710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602539, 37.145466, 27.767509>,  <32.585072, 37.578640, 27.240662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602539, 37.145466, 27.767509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936337, 37.365337, 27.782904>,  <33.136616, 37.497261, 27.792141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936337, 37.365337, 27.782904>,  <32.602539, 37.145466, 27.767509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936337, 37.365337, 27.782904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106803, 0.092830, 0.989937,
		0.540574, -0.830203, 0.136172,
		0.834490, 0.549678, 0.038487,
		33.186684, 37.530239, 27.794449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848885, 36.931259, 28.365435>,  <32.602539, 37.145466, 27.767509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848885, 36.931259, 28.365435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023846, 37.282192, 28.286476>,  <33.128822, 37.492752, 28.239101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023846, 37.282192, 28.286476>,  <32.848885, 36.931259, 28.365435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023846, 37.282192, 28.286476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010040, 0.224261, 0.974478,
		0.899209, -0.424260, 0.106901,
		0.437405, 0.877332, -0.197398,
		33.155067, 37.545391, 28.227257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290970, 36.993874, 28.853312>,  <32.848885, 36.931259, 28.365435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290970, 36.993874, 28.853312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254272, 37.366280, 28.712006>,  <33.232254, 37.589722, 28.627222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254272, 37.366280, 28.712006>,  <33.290970, 36.993874, 28.853312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254272, 37.366280, 28.712006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061015, 0.359349, 0.931206,
		0.993912, 0.063875, -0.089773,
		-0.091741, 0.931015, -0.353264,
		33.226749, 37.645584, 28.606026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757244, 37.454849, 29.211969>,  <33.290970, 36.993874, 28.853312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757244, 37.454849, 29.211969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499123, 37.732330, 29.083998>,  <33.344250, 37.898819, 29.007214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499123, 37.732330, 29.083998>,  <33.757244, 37.454849, 29.211969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499123, 37.732330, 29.083998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184584, 0.264800, 0.946472,
		0.741291, 0.669816, -0.042829,
		-0.645304, 0.693705, -0.319931,
		33.305531, 37.940441, 28.988018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773808, 38.124962, 29.612278>,  <33.757244, 37.454849, 29.211969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773808, 38.124962, 29.612278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404144, 38.155972, 29.462652>,  <33.182346, 38.174580, 29.372877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404144, 38.155972, 29.462652>,  <33.773808, 38.124962, 29.612278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404144, 38.155972, 29.462652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335338, 0.304399, 0.891566,
		0.182985, 0.949384, -0.255315,
		-0.924156, 0.077527, -0.374065,
		33.126896, 38.179230, 29.350433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508823, 38.750252, 29.864607>,  <33.773808, 38.124962, 29.612278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508823, 38.750252, 29.864607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184464, 38.568584, 29.717003>,  <32.989845, 38.459583, 29.628441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184464, 38.568584, 29.717003>,  <33.508823, 38.750252, 29.864607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184464, 38.568584, 29.717003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507465, 0.231758, 0.829920,
		-0.291402, 0.860244, -0.418408,
		-0.810903, -0.454168, -0.369009,
		32.941193, 38.432335, 29.606300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957607, 39.227654, 29.866272>,  <33.508823, 38.750252, 29.864607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957607, 39.227654, 29.866272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760780, 38.879543, 29.857332>,  <32.642685, 38.670677, 29.851969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760780, 38.879543, 29.857332>,  <32.957607, 39.227654, 29.866272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760780, 38.879543, 29.857332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591606, 0.315450, 0.741952,
		-0.638651, 0.378309, -0.670080,
		-0.492064, -0.870272, -0.022348,
		32.613163, 38.618462, 29.850628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334072, 39.458401, 29.998940>,  <32.957607, 39.227654, 29.866272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334072, 39.458401, 29.998940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324944, 39.065189, 30.071747>,  <32.319466, 38.829262, 30.115431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324944, 39.065189, 30.071747>,  <32.334072, 39.458401, 29.998940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324944, 39.065189, 30.071747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594171, 0.159758, 0.788314,
		-0.804015, -0.090161, -0.587733,
		-0.022820, -0.983030, 0.182019,
		32.318096, 38.770279, 30.126352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655937, 39.242256, 29.917171>,  <32.334072, 39.458401, 29.998940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655937, 39.242256, 29.917171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825459, 38.979904, 30.167038>,  <31.927172, 38.822491, 30.316957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825459, 38.979904, 30.167038>,  <31.655937, 39.242256, 29.917171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825459, 38.979904, 30.167038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858737, -0.071642, 0.507383,
		-0.288032, -0.751455, -0.593593,
		0.423802, -0.655883, 0.624668,
		31.952599, 38.783138, 30.354439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011234, 38.977074, 30.240963>,  <31.655937, 39.242256, 29.917171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011234, 38.977074, 30.240963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323042, 38.837418, 30.448984>,  <31.510126, 38.753624, 30.573797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323042, 38.837418, 30.448984>,  <31.011234, 38.977074, 30.240963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323042, 38.837418, 30.448984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564482, -0.031691, 0.824837,
		-0.271504, -0.936534, -0.221788,
		0.779516, -0.349142, 0.520052,
		31.556896, 38.732674, 30.605000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649448, 38.610516, 30.788864>,  <31.011234, 38.977074, 30.240963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649448, 38.610516, 30.788864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.016436, 38.651306, 30.942673>,  <31.236628, 38.675781, 31.034958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.016436, 38.651306, 30.942673>,  <30.649448, 38.610516, 30.788864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.016436, 38.651306, 30.942673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349597, -0.254582, 0.901648,
		0.189837, -0.961660, -0.197920,
		0.917466, 0.101974, 0.384523,
		31.291676, 38.681900, 31.058029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840183, 38.017410, 31.038931>,  <30.649448, 38.610516, 30.788864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840183, 38.017410, 31.038931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052759, 38.283634, 31.248543>,  <31.180305, 38.443367, 31.374310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052759, 38.283634, 31.248543>,  <30.840183, 38.017410, 31.038931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052759, 38.283634, 31.248543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365624, -0.377805, 0.850636,
		0.764127, -0.643660, 0.042562,
		0.531440, 0.665556, 0.524029,
		31.212191, 38.483299, 31.405752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251358, 37.585697, 31.592697>,  <30.840183, 38.017410, 31.038931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251358, 37.585697, 31.592697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249907, 37.971588, 31.697992>,  <31.249035, 38.203121, 31.761169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249907, 37.971588, 31.697992>,  <31.251358, 37.585697, 31.592697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249907, 37.971588, 31.697992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420088, -0.240356, 0.875075,
		0.907476, -0.107407, 0.406141,
		-0.003629, 0.964724, 0.263238,
		31.248817, 38.261005, 31.776964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398628, 37.617359, 32.360477>,  <31.251358, 37.585697, 31.592697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398628, 37.617359, 32.360477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.229132, 37.966114, 32.262295>,  <31.127434, 38.175369, 32.203384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.229132, 37.966114, 32.262295>,  <31.398628, 37.617359, 32.360477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229132, 37.966114, 32.262295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507406, -0.004016, 0.861698,
		0.750321, 0.489684, 0.444105,
		-0.423743, 0.871891, -0.245455,
		31.102009, 38.227680, 32.188660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580534, 38.103790, 32.866604>,  <31.398628, 37.617359, 32.360477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580534, 38.103790, 32.866604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230284, 38.211311, 32.706093>,  <31.020134, 38.275826, 32.609787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230284, 38.211311, 32.706093>,  <31.580534, 38.103790, 32.866604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230284, 38.211311, 32.706093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368774, 0.164461, 0.914854,
		0.311911, 0.949051, -0.044879,
		-0.875624, 0.268803, -0.401282,
		30.967596, 38.291954, 32.585709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048851, 38.572556, 33.130211>,  <31.580534, 38.103790, 32.866604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048851, 38.572556, 33.130211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391701, 38.660332, 33.316620>,  <32.597412, 38.712997, 33.428467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391701, 38.660332, 33.316620>,  <32.048851, 38.572556, 33.130211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391701, 38.660332, 33.316620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484115, -0.034110, -0.874339,
		-0.175971, 0.975029, -0.135472,
		0.857127, 0.219443, 0.466024,
		32.648838, 38.726166, 33.456429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289738, 39.150738, 32.773888>,  <32.048851, 38.572556, 33.130211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289738, 39.150738, 32.773888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596138, 38.982056, 32.967960>,  <32.779980, 38.880844, 33.084404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596138, 38.982056, 32.967960>,  <32.289738, 39.150738, 32.773888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596138, 38.982056, 32.967960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571509, 0.101210, -0.814330,
		0.294304, 0.901066, 0.318537,
		0.766004, -0.421707, 0.485181,
		32.825939, 38.855545, 33.113514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855057, 39.575195, 32.567970>,  <32.289738, 39.150738, 32.773888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855057, 39.575195, 32.567970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008255, 39.231590, 32.703857>,  <33.100174, 39.025429, 32.785389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008255, 39.231590, 32.703857>,  <32.855057, 39.575195, 32.567970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008255, 39.231590, 32.703857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608838, -0.041843, -0.792190,
		0.694718, 0.510239, 0.506974,
		0.382993, -0.859014, 0.339722,
		33.123154, 38.973885, 32.805775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536045, 39.655388, 32.306179>,  <32.855057, 39.575195, 32.567970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536045, 39.655388, 32.306179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533825, 39.271606, 32.418907>,  <33.532494, 39.041340, 32.486542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533825, 39.271606, 32.418907>,  <33.536045, 39.655388, 32.306179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533825, 39.271606, 32.418907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634185, -0.221273, -0.740842,
		0.773161, 0.174615, 0.609697,
		-0.005547, -0.959452, 0.281818,
		33.532162, 38.983772, 32.503452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233688, 39.477398, 32.429787>,  <33.536045, 39.655388, 32.306179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233688, 39.477398, 32.429787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004696, 39.167976, 32.321060>,  <33.867302, 38.982323, 32.255825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004696, 39.167976, 32.321060>,  <34.233688, 39.477398, 32.429787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004696, 39.167976, 32.321060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605294, -0.175110, -0.776502,
		0.553069, -0.609058, 0.568474,
		-0.572480, -0.773553, -0.271812,
		33.832951, 38.935909, 32.239517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693043, 38.958969, 32.454388>,  <34.233688, 39.477398, 32.429787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693043, 38.958969, 32.454388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418365, 38.787750, 32.219364>,  <34.253559, 38.685017, 32.078350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418365, 38.787750, 32.219364>,  <34.693043, 38.958969, 32.454388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418365, 38.787750, 32.219364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726832, -0.389888, -0.565423,
		0.012947, -0.815329, 0.578854,
		-0.686693, -0.428050, -0.587559,
		34.212357, 38.659336, 32.043095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918987, 38.347317, 32.424961>,  <34.693043, 38.958969, 32.454388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918987, 38.347317, 32.424961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686836, 38.382217, 32.101097>,  <34.547546, 38.403156, 31.906778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686836, 38.382217, 32.101097>,  <34.918987, 38.347317, 32.424961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686836, 38.382217, 32.101097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738631, -0.362254, -0.568503,
		-0.342906, -0.927987, 0.145796,
		-0.580378, 0.087254, -0.809659,
		34.512722, 38.408394, 31.858200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166191, 37.812820, 31.934122>,  <34.918987, 38.347317, 32.424961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166191, 37.812820, 31.934122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957886, 38.057041, 31.695446>,  <34.832905, 38.203571, 31.552240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957886, 38.057041, 31.695446>,  <35.166191, 37.812820, 31.934122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957886, 38.057041, 31.695446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593723, -0.243214, -0.767033,
		-0.613434, -0.753709, -0.235840,
		-0.520760, 0.610548, -0.596691,
		34.801659, 38.240204, 31.516439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201111, 37.543758, 31.345436>,  <35.166191, 37.812820, 31.934122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201111, 37.543758, 31.345436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082493, 37.908436, 31.231682>,  <35.011322, 38.127243, 31.163429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082493, 37.908436, 31.231682>,  <35.201111, 37.543758, 31.345436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082493, 37.908436, 31.231682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540257, -0.085406, -0.837154,
		-0.787518, -0.401893, -0.467223,
		-0.296543, 0.911695, -0.284384,
		34.993530, 38.181946, 31.146366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069572, 37.564713, 30.625607>,  <35.201111, 37.543758, 31.345436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069572, 37.564713, 30.625607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094624, 37.959061, 30.687754>,  <35.109653, 38.195671, 30.725042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094624, 37.959061, 30.687754>,  <35.069572, 37.564713, 30.625607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094624, 37.959061, 30.687754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433006, 0.113419, -0.894227,
		-0.899213, 0.123277, -0.419785,
		0.062626, 0.985870, 0.155367,
		35.113411, 38.254822, 30.734364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680195, 37.893547, 30.088881>,  <35.069572, 37.564713, 30.625607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680195, 37.893547, 30.088881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957817, 38.141571, 30.235197>,  <35.124390, 38.290386, 30.322987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957817, 38.141571, 30.235197>,  <34.680195, 37.893547, 30.088881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957817, 38.141571, 30.235197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332276, 0.174835, -0.926836,
		-0.638651, 0.764823, -0.084687,
		0.694059, 0.620064, 0.365790,
		35.166035, 38.327591, 30.344934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733265, 38.465305, 29.683987>,  <34.680195, 37.893547, 30.088881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733265, 38.465305, 29.683987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081074, 38.507900, 29.876902>,  <35.289757, 38.533459, 29.992651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081074, 38.507900, 29.876902>,  <34.733265, 38.465305, 29.683987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081074, 38.507900, 29.876902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446393, 0.248430, -0.859660,
		-0.211356, 0.962779, 0.168480,
		0.869518, 0.106486, 0.482285,
		35.341930, 38.539845, 30.021587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020847, 39.031628, 29.432270>,  <34.733265, 38.465305, 29.683987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020847, 39.031628, 29.432270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333279, 38.809891, 29.547247>,  <35.520737, 38.676849, 29.616234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333279, 38.809891, 29.547247>,  <35.020847, 39.031628, 29.432270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333279, 38.809891, 29.547247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464685, 0.208518, -0.860574,
		0.417114, 0.805746, 0.420462,
		0.781078, -0.554340, 0.287442,
		35.567604, 38.643589, 29.633480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492977, 39.215332, 28.983995>,  <35.020847, 39.031628, 29.432270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492977, 39.215332, 28.983995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681686, 38.901810, 29.145529>,  <35.794910, 38.713696, 29.242449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681686, 38.901810, 29.145529>,  <35.492977, 39.215332, 28.983995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681686, 38.901810, 29.145529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662471, 0.012853, -0.748977,
		0.581862, 0.620873, 0.525312,
		0.471772, -0.783806, 0.403831,
		35.823219, 38.666668, 29.266678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239754, 39.333469, 28.914803>,  <35.492977, 39.215332, 28.983995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239754, 39.333469, 28.914803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195190, 38.942440, 28.986290>,  <36.168453, 38.707821, 29.029182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195190, 38.942440, 28.986290>,  <36.239754, 39.333469, 28.914803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195190, 38.942440, 28.986290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727216, -0.202764, -0.655776,
		0.677307, 0.056910, 0.733496,
		-0.111407, -0.977573, 0.178719,
		36.161770, 38.649170, 29.039906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918472, 38.972687, 28.850798>,  <36.239754, 39.333469, 28.914803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918472, 38.972687, 28.850798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635849, 38.701557, 28.769478>,  <36.466274, 38.538879, 28.720686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635849, 38.701557, 28.769478>,  <36.918472, 38.972687, 28.850798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635849, 38.701557, 28.769478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616575, -0.448684, -0.646930,
		0.347287, -0.582443, 0.734951,
		-0.706560, -0.677822, -0.203298,
		36.423882, 38.498211, 28.708488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250156, 38.398918, 28.669109>,  <36.918472, 38.972687, 28.850798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250156, 38.398918, 28.669109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892677, 38.296673, 28.521614>,  <36.678188, 38.235325, 28.433117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892677, 38.296673, 28.521614>,  <37.250156, 38.398918, 28.669109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892677, 38.296673, 28.521614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442712, -0.368880, -0.817272,
		0.072885, -0.893638, 0.442830,
		-0.893697, -0.255613, -0.368739,
		36.624569, 38.219990, 28.410992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279305, 37.644417, 28.298656>,  <37.250156, 38.398918, 28.669109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279305, 37.644417, 28.298656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928772, 37.784328, 28.166176>,  <36.718452, 37.868275, 28.086687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928772, 37.784328, 28.166176>,  <37.279305, 37.644417, 28.298656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928772, 37.784328, 28.166176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229429, -0.301493, -0.925453,
		-0.423560, -0.886993, 0.183959,
		-0.876333, 0.349779, -0.331203,
		36.665871, 37.889263, 28.066814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988388, 37.116676, 27.920191>,  <37.279305, 37.644417, 28.298656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988388, 37.116676, 27.920191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815296, 37.447155, 27.775892>,  <36.711441, 37.645443, 27.689312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815296, 37.447155, 27.775892>,  <36.988388, 37.116676, 27.920191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815296, 37.447155, 27.775892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089481, -0.358817, -0.929109,
		-0.897070, -0.434337, 0.081343,
		-0.432734, 0.826198, -0.360749,
		36.685474, 37.695015, 27.667667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485222, 36.874912, 27.402267>,  <36.988388, 37.116676, 27.920191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485222, 36.874912, 27.402267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557411, 37.254684, 27.299503>,  <36.600723, 37.482548, 27.237844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557411, 37.254684, 27.299503>,  <36.485222, 36.874912, 27.402267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557411, 37.254684, 27.299503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151816, -0.284958, -0.946441,
		-0.971793, 0.131803, -0.195566,
		0.180472, 0.949435, -0.256910,
		36.611553, 37.539516, 27.222429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017490, 37.114841, 26.825586>,  <36.485222, 36.874912, 27.402267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017490, 37.114841, 26.825586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343182, 37.347057, 26.824617>,  <36.538597, 37.486385, 26.824036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343182, 37.347057, 26.824617>,  <36.017490, 37.114841, 26.825586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343182, 37.347057, 26.824617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125766, -0.180462, -0.975508,
		-0.566757, 0.793983, -0.219949,
		0.814229, 0.580539, -0.002422,
		36.587452, 37.521217, 26.823891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078861, 37.709969, 26.272362>,  <36.017490, 37.114841, 26.825586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078861, 37.709969, 26.272362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425438, 37.550144, 26.392120>,  <36.633385, 37.454250, 26.463976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425438, 37.550144, 26.392120>,  <36.078861, 37.709969, 26.272362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425438, 37.550144, 26.392120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152057, -0.359998, -0.920478,
		0.475565, 0.843063, -0.251161,
		0.866439, -0.399556, 0.299397,
		36.685371, 37.430279, 26.481939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450539, 37.923962, 25.809610>,  <36.078861, 37.709969, 26.272362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450539, 37.923962, 25.809610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.674145, 37.620144, 25.942633>,  <36.808308, 37.437851, 26.022446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.674145, 37.620144, 25.942633>,  <36.450539, 37.923962, 25.809610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674145, 37.620144, 25.942633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231430, -0.242206, -0.942219,
		0.796207, 0.603675, 0.040386,
		0.559012, -0.759548, 0.332555,
		36.841850, 37.392281, 26.042398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004314, 37.970589, 25.375418>,  <36.450539, 37.923962, 25.809610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004314, 37.970589, 25.375418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049782, 37.610466, 25.543480>,  <37.077061, 37.394394, 25.644318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049782, 37.610466, 25.543480>,  <37.004314, 37.970589, 25.375418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049782, 37.610466, 25.543480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386295, -0.349573, -0.853566,
		0.915345, 0.259327, 0.308048,
		0.113667, -0.900305, 0.420156,
		37.083881, 37.340374, 25.669527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603821, 37.703766, 25.068274>,  <37.004314, 37.970589, 25.375418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603821, 37.703766, 25.068274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425762, 37.376968, 25.214899>,  <37.318928, 37.180889, 25.302874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425762, 37.376968, 25.214899>,  <37.603821, 37.703766, 25.068274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425762, 37.376968, 25.214899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401713, -0.548051, -0.733666,
		0.800296, -0.179334, 0.572159,
		-0.445144, -0.816994, 0.366562,
		37.292217, 37.131870, 25.324867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162621, 37.200596, 25.088642>,  <37.603821, 37.703766, 25.068274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162621, 37.200596, 25.088642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810154, 37.011501, 25.091589>,  <37.598675, 36.898045, 25.093357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810154, 37.011501, 25.091589>,  <38.162621, 37.200596, 25.088642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810154, 37.011501, 25.091589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338000, -0.640764, -0.689331,
		0.330596, -0.604928, 0.724409,
		-0.881171, -0.472741, 0.007368,
		37.545803, 36.869678, 25.093800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283070, 36.553024, 25.290617>,  <38.162621, 37.200596, 25.088642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283070, 36.553024, 25.290617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949154, 36.531605, 25.071432>,  <37.748806, 36.518753, 24.939922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949154, 36.531605, 25.071432>,  <38.283070, 36.553024, 25.290617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949154, 36.531605, 25.071432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407049, -0.730183, -0.548766,
		-0.370727, -0.681151, 0.631344,
		-0.834789, -0.053545, -0.547960,
		37.698719, 36.515541, 24.907043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220596, 35.827961, 25.154564>,  <38.283070, 36.553024, 25.290617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220596, 35.827961, 25.154564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989796, 35.998798, 24.876095>,  <37.851315, 36.101299, 24.709013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989796, 35.998798, 24.876095>,  <38.220596, 35.827961, 25.154564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989796, 35.998798, 24.876095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192575, -0.757204, -0.624145,
		-0.793713, -0.494200, 0.354663,
		-0.577005, 0.427093, -0.696173,
		37.816696, 36.126926, 24.667242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890289, 35.287964, 24.677874>,  <38.220596, 35.827961, 25.154564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890289, 35.287964, 24.677874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904972, 35.640747, 24.489918>,  <37.913780, 35.852417, 24.377144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904972, 35.640747, 24.489918>,  <37.890289, 35.287964, 24.677874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904972, 35.640747, 24.489918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344030, -0.452617, -0.822667,
		-0.938241, -0.131461, -0.320034,
		0.036704, 0.881962, -0.469890,
		37.915985, 35.905334, 24.348951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708511, 35.017979, 24.051321>,  <37.890289, 35.287964, 24.677874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708511, 35.017979, 24.051321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858601, 35.382538, 23.983721>,  <37.948654, 35.601273, 23.943161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858601, 35.382538, 23.983721>,  <37.708511, 35.017979, 24.051321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858601, 35.382538, 23.983721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345660, -0.306747, -0.886806,
		-0.860075, 0.274330, -0.430132,
		0.375219, 0.911400, -0.169001,
		37.971165, 35.655956, 23.933022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552715, 35.187103, 23.406557>,  <37.708511, 35.017979, 24.051321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552715, 35.187103, 23.406557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882935, 35.399315, 23.483513>,  <38.081066, 35.526642, 23.529686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882935, 35.399315, 23.483513>,  <37.552715, 35.187103, 23.406557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882935, 35.399315, 23.483513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409179, -0.327936, -0.851488,
		-0.388643, 0.781666, -0.487806,
		0.825548, 0.530525, 0.192391,
		38.130600, 35.558472, 23.541229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698196, 35.473854, 22.780260>,  <37.552715, 35.187103, 23.406557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698196, 35.473854, 22.780260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038574, 35.514336, 22.986425>,  <38.242802, 35.538624, 23.110125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038574, 35.514336, 22.986425>,  <37.698196, 35.473854, 22.780260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038574, 35.514336, 22.986425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513006, -0.370821, -0.774156,
		0.112779, 0.923174, -0.367466,
		0.850944, 0.101204, 0.515414,
		38.293858, 35.544697, 23.141050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234741, 35.750378, 22.336769>,  <37.698196, 35.473854, 22.780260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234741, 35.750378, 22.336769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439583, 35.562302, 22.624289>,  <38.562489, 35.449455, 22.796801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439583, 35.562302, 22.624289>,  <38.234741, 35.750378, 22.336769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439583, 35.562302, 22.624289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645155, -0.341900, -0.683286,
		0.567033, 0.813649, 0.128258,
		0.512103, -0.470192, 0.718798,
		38.593212, 35.421246, 22.839928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899784, 35.830368, 22.181068>,  <38.234741, 35.750378, 22.336769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899784, 35.830368, 22.181068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912605, 35.525372, 22.439550>,  <38.920300, 35.342373, 22.594639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912605, 35.525372, 22.439550>,  <38.899784, 35.830368, 22.181068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912605, 35.525372, 22.439550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641144, -0.480300, -0.598536,
		0.766750, 0.433498, 0.473470,
		0.032057, -0.762491, 0.646205,
		38.922222, 35.296623, 22.633411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487461, 35.591614, 22.126726>,  <38.899784, 35.830368, 22.181068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487461, 35.591614, 22.126726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334888, 35.277519, 22.321831>,  <39.243343, 35.089062, 22.438894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334888, 35.277519, 22.321831>,  <39.487461, 35.591614, 22.126726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334888, 35.277519, 22.321831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606738, -0.610759, -0.508766,
		0.697407, 0.101884, 0.709397,
		-0.381435, -0.785235, 0.487764,
		39.220459, 35.041950, 22.468161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015171, 35.247387, 22.239243>,  <39.487461, 35.591614, 22.126726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015171, 35.247387, 22.239243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717163, 34.984230, 22.283291>,  <39.538361, 34.826336, 22.309721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717163, 34.984230, 22.283291>,  <40.015171, 35.247387, 22.239243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717163, 34.984230, 22.283291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484484, -0.647169, -0.588598,
		0.458502, -0.385163, 0.800891,
		-0.745017, -0.657892, 0.110123,
		39.493656, 34.786861, 22.316328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362404, 34.635654, 22.243883>,  <40.015171, 35.247387, 22.239243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.362404, 34.635654, 22.243883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993462, 34.524891, 22.136116>,  <39.772099, 34.458431, 22.071455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993462, 34.524891, 22.136116>,  <40.362404, 34.635654, 22.243883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993462, 34.524891, 22.136116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377877, -0.501363, -0.778360,
		0.080459, -0.819730, 0.567071,
		-0.922353, -0.276909, -0.269418,
		39.716755, 34.441818, 22.055290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808815, 33.993137, 22.301640>,  <40.362404, 34.635654, 22.243883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808815, 33.993137, 22.301640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911583, 33.610607, 22.357410>,  <39.973244, 33.381088, 22.390873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911583, 33.610607, 22.357410>,  <39.808815, 33.993137, 22.301640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911583, 33.610607, 22.357410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169064, 0.186521, 0.967795,
		-0.951530, -0.225073, 0.209601,
		0.256920, -0.956322, 0.139429,
		39.988659, 33.323711, 22.399239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409206, 33.692070, 22.910038>,  <39.808815, 33.993137, 22.301640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409206, 33.692070, 22.910038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750343, 33.489548, 22.858944>,  <39.955025, 33.368034, 22.828287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750343, 33.489548, 22.858944>,  <39.409206, 33.692070, 22.910038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750343, 33.489548, 22.858944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250903, 0.182806, 0.950594,
		-0.457945, -0.842753, 0.282939,
		0.852839, -0.506310, -0.127735,
		40.006195, 33.337654, 22.820623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477692, 33.421913, 23.499884>,  <39.409206, 33.692070, 22.910038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477692, 33.421913, 23.499884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850452, 33.399620, 23.356518>,  <40.074108, 33.386242, 23.270498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850452, 33.399620, 23.356518>,  <39.477692, 33.421913, 23.499884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850452, 33.399620, 23.356518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362718, 0.147529, 0.920147,
		0.001590, -0.987486, 0.157699,
		0.931898, -0.055737, -0.358413,
		40.130020, 33.382900, 23.248993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811077, 32.919323, 24.000460>,  <39.477692, 33.421913, 23.499884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811077, 32.919323, 24.000460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105701, 33.111504, 23.810032>,  <40.282475, 33.226814, 23.695776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105701, 33.111504, 23.810032>,  <39.811077, 32.919323, 24.000460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105701, 33.111504, 23.810032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321373, 0.370732, 0.871365,
		0.595147, -0.794808, 0.118660,
		0.736559, 0.480456, -0.476070,
		40.326668, 33.255642, 23.667212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502403, 32.795792, 24.355686>,  <39.811077, 32.919323, 24.000460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502403, 32.795792, 24.355686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513554, 33.154045, 24.178120>,  <40.520245, 33.368996, 24.071579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513554, 33.154045, 24.178120>,  <40.502403, 32.795792, 24.355686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513554, 33.154045, 24.178120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180304, 0.432300, 0.883520,
		0.983216, -0.104669, -0.149436,
		0.027876, 0.895635, -0.443916,
		40.521915, 33.422737, 24.044945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863083, 33.138622, 24.837505>,  <40.502403, 32.795792, 24.355686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863083, 33.138622, 24.837505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743053, 33.441544, 24.605492>,  <40.671036, 33.623299, 24.466284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743053, 33.441544, 24.605492>,  <40.863083, 33.138622, 24.837505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743053, 33.441544, 24.605492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014383, 0.611580, 0.791052,
		0.953807, 0.229032, -0.194412,
		-0.300075, 0.757308, -0.580035,
		40.653030, 33.668736, 24.431480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370354, 33.708855, 24.994406>,  <40.863083, 33.138622, 24.837505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370354, 33.708855, 24.994406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046841, 33.886292, 24.839949>,  <40.852734, 33.992752, 24.747274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046841, 33.886292, 24.839949>,  <41.370354, 33.708855, 24.994406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046841, 33.886292, 24.839949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073041, 0.575732, 0.814370,
		0.583559, 0.686849, -0.433240,
		-0.808779, 0.443589, -0.386142,
		40.804207, 34.019367, 24.724106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508694, 34.459667, 25.021250>,  <41.370354, 33.708855, 24.994406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508694, 34.459667, 25.021250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.111282, 34.414265, 25.019697>,  <40.872833, 34.387024, 25.018766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.111282, 34.414265, 25.019697>,  <41.508694, 34.459667, 25.021250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111282, 34.414265, 25.019697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059031, 0.486917, 0.871451,
		-0.097023, 0.866042, -0.490467,
		-0.993530, -0.113503, -0.003881,
		40.813225, 34.380215, 25.018534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205925, 35.095230, 25.148266>,  <41.508694, 34.459667, 25.021250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205925, 35.095230, 25.148266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895359, 34.868950, 25.259377>,  <40.709019, 34.733181, 25.326044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895359, 34.868950, 25.259377>,  <41.205925, 35.095230, 25.148266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895359, 34.868950, 25.259377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049603, 0.494252, 0.867902,
		-0.628263, 0.660077, -0.411807,
		-0.776419, -0.565697, 0.277779,
		40.662434, 34.699242, 25.342710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.774605, 35.571899, 25.271461>,  <41.205925, 35.095230, 25.148266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.774605, 35.571899, 25.271461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622826, 35.249035, 25.452349>,  <40.531757, 35.055317, 25.560881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622826, 35.249035, 25.452349>,  <40.774605, 35.571899, 25.271461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622826, 35.249035, 25.452349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341689, 0.576473, 0.742245,
		-0.859805, 0.127130, -0.494543,
		-0.379452, -0.807166, 0.452216,
		40.508991, 35.006886, 25.588013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062073, 35.750305, 25.403852>,  <40.774605, 35.571899, 25.271461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062073, 35.750305, 25.403852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147942, 35.448761, 25.652241>,  <40.199463, 35.267834, 25.801273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147942, 35.448761, 25.652241>,  <40.062073, 35.750305, 25.403852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147942, 35.448761, 25.652241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423409, 0.501110, 0.754727,
		-0.880136, -0.424946, -0.211617,
		0.214675, -0.753863, 0.620971,
		40.212345, 35.222603, 25.838531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573738, 35.799534, 25.977745>,  <40.062073, 35.750305, 25.403852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573738, 35.799534, 25.977745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813423, 35.516544, 26.127636>,  <39.957233, 35.346748, 26.217569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813423, 35.516544, 26.127636>,  <39.573738, 35.799534, 25.977745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813423, 35.516544, 26.127636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257659, 0.272739, 0.926944,
		-0.757993, -0.651990, -0.018858,
		0.599215, -0.707476, 0.374725,
		39.993187, 35.304302, 26.240053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216789, 35.221687, 26.284492>,  <39.573738, 35.799534, 25.977745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216789, 35.221687, 26.284492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570675, 35.268192, 26.465054>,  <39.783005, 35.296097, 26.573391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570675, 35.268192, 26.465054>,  <39.216789, 35.221687, 26.284492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570675, 35.268192, 26.465054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465622, 0.265810, 0.844121,
		-0.021850, -0.956989, 0.289299,
		0.884714, 0.116260, 0.451403,
		39.836090, 35.303070, 26.600475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119095, 34.863438, 26.802214>,  <39.216789, 35.221687, 26.284492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119095, 34.863438, 26.802214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422329, 35.108021, 26.892931>,  <39.604267, 35.254768, 26.947361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422329, 35.108021, 26.892931>,  <39.119095, 34.863438, 26.802214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422329, 35.108021, 26.892931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453607, 0.244516, 0.857002,
		0.468564, -0.752552, 0.462724,
		0.758082, 0.611455, 0.226791,
		39.649754, 35.291458, 26.960968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043472, 34.929310, 27.443602>,  <39.119095, 34.863438, 26.802214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043472, 34.929310, 27.443602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307159, 35.219017, 27.362736>,  <39.465370, 35.392841, 27.314217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307159, 35.219017, 27.362736>,  <39.043472, 34.929310, 27.443602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307159, 35.219017, 27.362736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346960, 0.531495, 0.772743,
		0.667123, -0.439260, 0.601662,
		0.659216, 0.724267, -0.202167,
		39.504925, 35.436298, 27.302086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403717, 35.034092, 28.063869>,  <39.043472, 34.929310, 27.443602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403717, 35.034092, 28.063869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420597, 35.372967, 27.852024>,  <39.430725, 35.576290, 27.724916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420597, 35.372967, 27.852024>,  <39.403717, 35.034092, 28.063869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420597, 35.372967, 27.852024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391396, 0.501737, 0.771407,
		0.919254, 0.174733, 0.352761,
		0.042203, 0.847188, -0.529614,
		39.433258, 35.627125, 27.693140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600029, 35.523945, 28.582874>,  <39.403717, 35.034092, 28.063869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600029, 35.523945, 28.582874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.449020, 35.747150, 28.287281>,  <39.358418, 35.881073, 28.109924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.449020, 35.747150, 28.287281>,  <39.600029, 35.523945, 28.582874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449020, 35.747150, 28.287281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394657, 0.624973, 0.673540,
		0.837690, 0.545919, -0.015715,
		-0.377520, 0.558016, -0.738984,
		39.335766, 35.914555, 28.065586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757729, 36.132278, 28.734179>,  <39.600029, 35.523945, 28.582874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757729, 36.132278, 28.734179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450489, 36.198261, 28.486692>,  <39.266144, 36.237850, 28.338202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450489, 36.198261, 28.486692>,  <39.757729, 36.132278, 28.734179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450489, 36.198261, 28.486692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489038, 0.472621, 0.733124,
		0.413355, 0.865689, -0.282349,
		-0.768101, 0.164961, -0.618715,
		39.220058, 36.247749, 28.301079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578346, 36.862999, 28.718517>,  <39.757729, 36.132278, 28.734179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578346, 36.862999, 28.718517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240780, 36.683178, 28.601408>,  <39.038242, 36.575287, 28.531143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240780, 36.683178, 28.601408>,  <39.578346, 36.862999, 28.718517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240780, 36.683178, 28.601408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533610, 0.646996, 0.544662,
		-0.055431, 0.615873, -0.785893,
		-0.843912, -0.449552, -0.292772,
		38.987606, 36.548313, 28.513577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135120, 37.360928, 28.720341>,  <39.578346, 36.862999, 28.718517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135120, 37.360928, 28.720341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892883, 37.042652, 28.715654>,  <38.747540, 36.851688, 28.712843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892883, 37.042652, 28.715654>,  <39.135120, 37.360928, 28.720341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892883, 37.042652, 28.715654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691533, 0.518928, 0.502490,
		-0.393745, 0.312406, -0.864504,
		-0.605596, -0.795686, -0.011714,
		38.711205, 36.803947, 28.712141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552631, 37.673679, 28.650351>,  <39.135120, 37.360928, 28.720341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552631, 37.673679, 28.650351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477184, 37.305958, 28.788511>,  <38.431915, 37.085323, 28.871408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477184, 37.305958, 28.788511>,  <38.552631, 37.673679, 28.650351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477184, 37.305958, 28.788511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634666, 0.382510, 0.671480,
		-0.749414, -0.092559, -0.655600,
		-0.188622, -0.919304, 0.345402,
		38.420597, 37.030167, 28.892132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836010, 37.618408, 28.771820>,  <38.552631, 37.673679, 28.650351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836010, 37.618408, 28.771820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980370, 37.319790, 28.995399>,  <38.066986, 37.140621, 29.129547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980370, 37.319790, 28.995399>,  <37.836010, 37.618408, 28.771820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980370, 37.319790, 28.995399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639959, 0.237722, 0.730712,
		-0.678383, -0.621418, -0.391964,
		0.360899, -0.746544, 0.558949,
		38.088638, 37.095825, 29.163084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262211, 37.336346, 29.035629>,  <37.836010, 37.618408, 28.771820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262211, 37.336346, 29.035629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574139, 37.223701, 29.259264>,  <37.761295, 37.156116, 29.393446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574139, 37.223701, 29.259264>,  <37.262211, 37.336346, 29.035629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574139, 37.223701, 29.259264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509568, 0.233221, 0.828220,
		-0.363624, -0.930755, 0.038372,
		0.779819, -0.281607, 0.559088,
		37.808086, 37.139221, 29.426991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922874, 37.004181, 29.632593>,  <37.262211, 37.336346, 29.035629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922874, 37.004181, 29.632593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.298252, 37.112816, 29.717983>,  <37.523479, 37.177998, 29.769217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.298252, 37.112816, 29.717983>,  <36.922874, 37.004181, 29.632593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298252, 37.112816, 29.717983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292681, 0.296871, 0.908958,
		0.183483, -0.915483, 0.358083,
		0.938441, 0.271583, 0.213474,
		37.579784, 37.194290, 29.782024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975945, 36.757725, 30.282032>,  <36.922874, 37.004181, 29.632593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975945, 36.757725, 30.282032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262291, 37.029861, 30.219193>,  <37.434097, 37.193142, 30.181488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262291, 37.029861, 30.219193>,  <36.975945, 36.757725, 30.282032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262291, 37.029861, 30.219193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080551, 0.143023, 0.986436,
		0.693580, -0.718806, 0.047583,
		0.715862, 0.680339, -0.157098,
		37.477051, 37.233963, 30.172064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466167, 36.670380, 30.798698>,  <36.975945, 36.757725, 30.282032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466167, 36.670380, 30.798698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554810, 37.042198, 30.680830>,  <37.607994, 37.265289, 30.610109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554810, 37.042198, 30.680830>,  <37.466167, 36.670380, 30.798698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554810, 37.042198, 30.680830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155309, 0.264681, 0.951748,
		0.962689, -0.256678, -0.085712,
		0.221606, 0.929549, -0.294669,
		37.621292, 37.321064, 30.592430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901699, 36.898247, 31.340559>,  <37.466167, 36.670380, 30.798698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901699, 36.898247, 31.340559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795704, 37.246262, 31.174276>,  <37.732105, 37.455070, 31.074507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795704, 37.246262, 31.174276>,  <37.901699, 36.898247, 31.340559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795704, 37.246262, 31.174276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164950, 0.465667, 0.869452,
		0.950037, 0.161827, -0.266911,
		-0.264992, 0.870038, -0.415707,
		37.716206, 37.507275, 31.049564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483650, 37.260075, 31.502111>,  <37.901699, 36.898247, 31.340559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483650, 37.260075, 31.502111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178619, 37.502201, 31.410841>,  <37.995602, 37.647476, 31.356079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178619, 37.502201, 31.410841>,  <38.483650, 37.260075, 31.502111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178619, 37.502201, 31.410841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181500, 0.538764, 0.822673,
		0.620912, 0.585938, -0.520715,
		-0.762578, 0.605318, -0.228177,
		37.949844, 37.683796, 31.342388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626465, 37.966961, 31.505720>,  <38.483650, 37.260075, 31.502111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626465, 37.966961, 31.505720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231853, 37.964745, 31.571123>,  <37.995087, 37.963413, 31.610365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231853, 37.964745, 31.571123>,  <38.626465, 37.966961, 31.505720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231853, 37.964745, 31.571123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129365, 0.585403, 0.800355,
		-0.100154, 0.810723, -0.576799,
		-0.986526, -0.005541, 0.163510,
		37.935894, 37.963081, 31.620176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368740, 38.692070, 31.733170>,  <38.626465, 37.966961, 31.505720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368740, 38.692070, 31.733170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084660, 38.438709, 31.856077>,  <37.914211, 38.286694, 31.929821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084660, 38.438709, 31.856077>,  <38.368740, 38.692070, 31.733170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084660, 38.438709, 31.856077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132385, 0.548833, 0.825382,
		-0.691441, 0.545508, -0.473635,
		-0.710199, -0.633406, 0.307269,
		37.871601, 38.248688, 31.948257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910404, 39.079433, 31.940617>,  <38.368740, 38.692070, 31.733170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910404, 39.079433, 31.940617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815109, 38.742840, 32.134583>,  <37.757931, 38.540882, 32.250961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815109, 38.742840, 32.134583>,  <37.910404, 39.079433, 31.940617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815109, 38.742840, 32.134583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145971, 0.524645, 0.838713,
		-0.960174, 0.129030, -0.247824,
		-0.238239, -0.841486, 0.484916,
		37.743637, 38.490395, 32.280056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356419, 39.238602, 32.354618>,  <37.910404, 39.079433, 31.940617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356419, 39.238602, 32.354618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486534, 38.894829, 32.512383>,  <37.564602, 38.688564, 32.607040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486534, 38.894829, 32.512383>,  <37.356419, 39.238602, 32.354618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486534, 38.894829, 32.512383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132191, 0.371669, 0.918906,
		-0.936330, -0.351046, 0.007289,
		0.325287, -0.859435, 0.394410,
		37.584122, 38.636997, 32.630707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072109, 39.153828, 32.927746>,  <37.356419, 39.238602, 32.354618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072109, 39.153828, 32.927746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332954, 38.861149, 33.007111>,  <37.489464, 38.685543, 33.054729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332954, 38.861149, 33.007111>,  <37.072109, 39.153828, 32.927746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332954, 38.861149, 33.007111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184115, 0.101034, 0.977698,
		-0.735422, -0.674105, -0.068830,
		0.652117, -0.731693, 0.198416,
		37.528591, 38.641640, 33.066635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710823, 38.596165, 33.399536>,  <37.072109, 39.153828, 32.927746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710823, 38.596165, 33.399536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107563, 38.592583, 33.450367>,  <37.345608, 38.590435, 33.480865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107563, 38.592583, 33.450367>,  <36.710823, 38.596165, 33.399536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107563, 38.592583, 33.450367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122965, 0.193436, 0.973377,
		-0.033296, -0.981072, 0.190759,
		0.991852, -0.008953, 0.127078,
		37.405117, 38.589897, 33.488491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775948, 38.196426, 34.014107>,  <36.710823, 38.596165, 33.399536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775948, 38.196426, 34.014107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099445, 38.429146, 33.979614>,  <37.293545, 38.568779, 33.958920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099445, 38.429146, 33.979614>,  <36.775948, 38.196426, 34.014107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099445, 38.429146, 33.979614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007839, 0.135936, 0.990687,
		0.588102, -0.801892, 0.105377,
		0.808749, 0.581799, -0.086230,
		37.342072, 38.603683, 33.953747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283005, 37.959003, 34.417366>,  <36.775948, 38.196426, 34.014107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283005, 37.959003, 34.417366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415417, 38.332138, 34.360470>,  <37.494865, 38.556019, 34.326332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415417, 38.332138, 34.360470>,  <37.283005, 37.959003, 34.417366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415417, 38.332138, 34.360470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066777, 0.127206, 0.989626,
		0.941255, -0.337094, -0.020183,
		0.331029, 0.932838, -0.142243,
		37.514725, 38.611988, 34.317799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762852, 38.039684, 34.898705>,  <37.283005, 37.959003, 34.417366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762852, 38.039684, 34.898705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681499, 38.416931, 34.793503>,  <37.632690, 38.643280, 34.730381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681499, 38.416931, 34.793503>,  <37.762852, 38.039684, 34.898705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681499, 38.416931, 34.793503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092416, 0.285911, 0.953789,
		0.974730, 0.169672, -0.145306,
		-0.203376, 0.943115, -0.263006,
		37.620487, 38.699867, 34.714600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268349, 38.483265, 35.235413>,  <37.762852, 38.039684, 34.898705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268349, 38.483265, 35.235413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991707, 38.743877, 35.110714>,  <37.825722, 38.900246, 35.035896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991707, 38.743877, 35.110714>,  <38.268349, 38.483265, 35.235413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991707, 38.743877, 35.110714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045001, 0.469651, 0.881704,
		0.720871, 0.595764, -0.354134,
		-0.691607, 0.651531, -0.311748,
		37.784225, 38.939339, 35.017189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480988, 39.130108, 35.498768>,  <38.268349, 38.483265, 35.235413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480988, 39.130108, 35.498768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088913, 39.166695, 35.428478>,  <37.853668, 39.188648, 35.386307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088913, 39.166695, 35.428478>,  <38.480988, 39.130108, 35.498768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088913, 39.166695, 35.428478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094076, 0.565701, 0.819227,
		0.174337, 0.819522, -0.545885,
		-0.980182, 0.091467, -0.175720,
		37.794857, 39.194134, 35.375763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435936, 39.839024, 35.506836>,  <38.480988, 39.130108, 35.498768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435936, 39.839024, 35.506836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063953, 39.700794, 35.557053>,  <37.840763, 39.617859, 35.587185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063953, 39.700794, 35.557053>,  <38.435936, 39.839024, 35.506836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063953, 39.700794, 35.557053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050875, 0.459127, 0.886913,
		-0.364133, 0.818403, -0.444549,
		-0.929956, -0.345571, 0.125546,
		37.784966, 39.597122, 35.594715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048710, 40.428810, 35.609535>,  <38.435936, 39.839024, 35.506836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048710, 40.428810, 35.609535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841908, 40.136986, 35.788620>,  <37.717827, 39.961891, 35.896069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841908, 40.136986, 35.788620>,  <38.048710, 40.428810, 35.609535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841908, 40.136986, 35.788620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194264, 0.609393, 0.768702,
		-0.833646, 0.310451, -0.456788,
		-0.517007, -0.729562, 0.447708,
		37.686806, 39.918118, 35.922932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366348, 40.683189, 35.933563>,  <38.048710, 40.428810, 35.609535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366348, 40.683189, 35.933563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475929, 40.346420, 36.119514>,  <37.541679, 40.144360, 36.231087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475929, 40.346420, 36.119514>,  <37.366348, 40.683189, 35.933563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475929, 40.346420, 36.119514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113593, 0.451663, 0.884928,
		-0.955010, -0.295238, 0.028100,
		0.273956, -0.841923, 0.464880,
		37.558117, 40.093842, 36.258980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786331, 40.498531, 36.463799>,  <37.366348, 40.683189, 35.933563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786331, 40.498531, 36.463799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127785, 40.312141, 36.556900>,  <37.332657, 40.200306, 36.612762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127785, 40.312141, 36.556900>,  <36.786331, 40.498531, 36.463799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127785, 40.312141, 36.556900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039597, 0.387507, 0.921016,
		-0.519364, -0.795428, 0.312338,
		0.853635, -0.465975, 0.232754,
		37.383877, 40.172348, 36.626728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600063, 40.124359, 36.926590>,  <36.786331, 40.498531, 36.463799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600063, 40.124359, 36.926590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991295, 40.138344, 37.008709>,  <37.226032, 40.146732, 37.057980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991295, 40.138344, 37.008709>,  <36.600063, 40.124359, 36.926590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991295, 40.138344, 37.008709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208225, 0.148315, 0.966770,
		0.003348, -0.988322, 0.152343,
		0.978075, 0.034958, 0.205297,
		37.284718, 40.148830, 37.070297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618881, 39.792770, 37.544250>,  <36.600063, 40.124359, 36.926590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618881, 39.792770, 37.544250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988869, 39.944633, 37.537548>,  <37.210861, 40.035751, 37.533527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988869, 39.944633, 37.537548>,  <36.618881, 39.792770, 37.544250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988869, 39.944633, 37.537548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061674, 0.193466, 0.979167,
		0.374996, -0.904669, 0.202366,
		0.924973, 0.379664, -0.016755,
		37.266361, 40.058533, 37.532520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097015, 39.405910, 38.064339>,  <36.618881, 39.792770, 37.544250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097015, 39.405910, 38.064339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223293, 39.778946, 37.994343>,  <37.299061, 40.002766, 37.952347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223293, 39.778946, 37.994343>,  <37.097015, 39.405910, 38.064339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223293, 39.778946, 37.994343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051692, 0.201050, 0.978216,
		0.947451, -0.299774, 0.111678,
		0.315696, 0.932585, -0.174990,
		37.318001, 40.058720, 37.941845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426888, 39.549374, 38.628918>,  <37.097015, 39.405910, 38.064339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426888, 39.549374, 38.628918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397381, 39.924946, 38.494480>,  <37.379677, 40.150291, 38.413818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397381, 39.924946, 38.494480>,  <37.426888, 39.549374, 38.628918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397381, 39.924946, 38.494480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237787, 0.310734, 0.920272,
		0.968512, 0.147801, 0.200346,
		-0.073763, 0.938935, -0.336095,
		37.375252, 40.206627, 38.393650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054485, 39.978069, 38.869820>,  <37.426888, 39.549374, 38.628918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054485, 39.978069, 38.869820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725357, 40.187820, 38.782188>,  <37.527878, 40.313671, 38.729610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725357, 40.187820, 38.782188>,  <38.054485, 39.978069, 38.869820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725357, 40.187820, 38.782188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090272, 0.260005, 0.961378,
		0.561083, 0.810821, -0.166601,
		-0.822822, 0.524374, -0.219079,
		37.478512, 40.345131, 38.716465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180714, 40.614601, 39.207382>,  <38.054485, 39.978069, 38.869820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180714, 40.614601, 39.207382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794296, 40.544376, 39.131550>,  <37.562447, 40.502243, 39.086048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794296, 40.544376, 39.131550>,  <38.180714, 40.614601, 39.207382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794296, 40.544376, 39.131550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199805, 0.042332, 0.978921,
		-0.163832, 0.983558, -0.075971,
		-0.966042, -0.175558, -0.189585,
		37.504482, 40.491711, 39.074673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742611, 41.021561, 39.632656>,  <38.180714, 40.614601, 39.207382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742611, 41.021561, 39.632656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513695, 40.713562, 39.519814>,  <37.376343, 40.528763, 39.452110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513695, 40.713562, 39.519814>,  <37.742611, 41.021561, 39.632656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513695, 40.713562, 39.519814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338739, -0.091318, 0.936438,
		-0.746817, 0.631477, -0.208568,
		-0.572293, -0.769999, -0.282104,
		37.342007, 40.482563, 39.435181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016266, 41.192860, 39.870174>,  <37.742611, 41.021561, 39.632656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016266, 41.192860, 39.870174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075272, 40.801006, 39.815689>,  <37.110676, 40.565895, 39.782997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075272, 40.801006, 39.815689>,  <37.016266, 41.192860, 39.870174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075272, 40.801006, 39.815689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218672, -0.166614, 0.961469,
		-0.964584, -0.112043, -0.238796,
		0.147513, -0.979636, -0.136213,
		37.119526, 40.507114, 39.774826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428757, 40.822380, 39.989983>,  <37.016266, 41.192860, 39.870174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428757, 40.822380, 39.989983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753510, 40.605663, 40.076988>,  <36.948360, 40.475636, 40.129192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753510, 40.605663, 40.076988>,  <36.428757, 40.822380, 39.989983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753510, 40.605663, 40.076988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328237, -0.115494, 0.937508,
		-0.482810, -0.832542, -0.271603,
		0.811883, -0.541789, 0.217509,
		36.997074, 40.443127, 40.142242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214931, 40.118706, 40.131451>,  <36.428757, 40.822380, 39.989983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214931, 40.118706, 40.131451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543587, 40.254715, 40.314445>,  <36.740780, 40.336319, 40.424244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543587, 40.254715, 40.314445>,  <36.214931, 40.118706, 40.131451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543587, 40.254715, 40.314445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395694, -0.237470, 0.887150,
		0.410290, -0.909941, -0.060570,
		0.821638, 0.340021, 0.457490,
		36.790077, 40.356720, 40.451691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924450, 39.935165, 40.742245>,  <36.214931, 40.118706, 40.131451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924450, 39.935165, 40.742245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318863, 39.982922, 40.695801>,  <36.555511, 40.011574, 40.667934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318863, 39.982922, 40.695801>,  <35.924450, 39.935165, 40.742245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318863, 39.982922, 40.695801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162763, -0.543280, 0.823623,
		0.035257, -0.831019, -0.555126,
		0.986035, 0.119392, -0.116105,
		36.614674, 40.018738, 40.660969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046600, 39.539864, 41.374207>,  <35.924450, 39.935165, 40.742245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046600, 39.539864, 41.374207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424820, 39.614826, 41.267757>,  <36.651752, 39.659801, 41.203888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424820, 39.614826, 41.267757>,  <36.046600, 39.539864, 41.374207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424820, 39.614826, 41.267757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324657, -0.484765, 0.812158,
		0.023194, -0.854332, -0.519210,
		0.945547, 0.187402, -0.266122,
		36.708485, 39.671047, 41.187920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521111, 38.878746, 41.298824>,  <36.046600, 39.539864, 41.374207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521111, 38.878746, 41.298824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729408, 39.192108, 41.434528>,  <36.854389, 39.380127, 41.515949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729408, 39.192108, 41.434528>,  <36.521111, 38.878746, 41.298824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729408, 39.192108, 41.434528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311835, -0.544484, 0.778650,
		0.794720, -0.299687, -0.527833,
		0.520748, 0.783406, 0.339259,
		36.885632, 39.427132, 41.536304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970512, 38.596394, 41.622288>,  <36.521111, 38.878746, 41.298824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970512, 38.596394, 41.622288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970558, 38.964077, 41.779797>,  <36.970585, 39.184689, 41.874302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970558, 38.964077, 41.779797>,  <36.970512, 38.596394, 41.622288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970558, 38.964077, 41.779797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136398, -0.390107, 0.910611,
		0.990654, 0.053606, -0.125422,
		0.000114, 0.919208, 0.393773,
		36.970592, 39.239838, 41.897930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536854, 38.611286, 42.060925>,  <36.970512, 38.596394, 41.622288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536854, 38.611286, 42.060925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251152, 38.866673, 42.175606>,  <37.079731, 39.019905, 42.244415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251152, 38.866673, 42.175606>,  <37.536854, 38.611286, 42.060925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251152, 38.866673, 42.175606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000603, -0.409084, 0.912497,
		0.699885, 0.651929, 0.291805,
		-0.714255, 0.638467, 0.286705,
		37.036877, 39.058212, 42.261616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678474, 38.751755, 42.771896>,  <37.536854, 38.611286, 42.060925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678474, 38.751755, 42.771896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290714, 38.848534, 42.755325>,  <37.058056, 38.906601, 42.745380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290714, 38.848534, 42.755325>,  <37.678474, 38.751755, 42.771896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290714, 38.848534, 42.755325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156060, -0.477190, 0.864833,
		0.189471, 0.844839, 0.500348,
		-0.969405, 0.241945, -0.041431,
		36.999893, 38.921116, 42.742897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443527, 38.796398, 43.504063>,  <37.678474, 38.751755, 42.771896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443527, 38.796398, 43.504063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097340, 38.751972, 43.308666>,  <36.889626, 38.725315, 43.191429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097340, 38.751972, 43.308666>,  <37.443527, 38.796398, 43.504063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097340, 38.751972, 43.308666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359443, -0.541533, 0.759962,
		-0.348939, 0.833310, 0.428760,
		-0.865472, -0.111066, -0.488490,
		36.837696, 38.718651, 43.162121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757652, 39.099274, 43.841084>,  <37.443527, 38.796398, 43.504063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757652, 39.099274, 43.841084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695412, 38.769501, 43.623421>,  <36.658070, 38.571636, 43.492825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695412, 38.769501, 43.623421>,  <36.757652, 39.099274, 43.841084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695412, 38.769501, 43.623421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442572, -0.434301, 0.784547,
		-0.883130, 0.362902, -0.297293,
		-0.155599, -0.824430, -0.544154,
		36.648731, 38.522171, 43.460175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093937, 38.784538, 44.023430>,  <36.757652, 39.099274, 43.841084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093937, 38.784538, 44.023430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378010, 38.513096, 43.948452>,  <36.548454, 38.350231, 43.903465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378010, 38.513096, 43.948452>,  <36.093937, 38.784538, 44.023430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378010, 38.513096, 43.948452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071614, -0.334504, 0.939669,
		-0.700368, -0.653911, -0.286156,
		0.710181, -0.678607, -0.187447,
		36.591064, 38.309513, 43.892220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830021, 38.141724, 44.238487>,  <36.093937, 38.784538, 44.023430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830021, 38.141724, 44.238487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220554, 38.225266, 44.260937>,  <36.454876, 38.275391, 44.274406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220554, 38.225266, 44.260937>,  <35.830021, 38.141724, 44.238487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220554, 38.225266, 44.260937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005627, -0.234905, 0.972002,
		0.216194, -0.949315, -0.228171,
		0.976334, 0.208857, 0.056127,
		36.513454, 38.287922, 44.277775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009842, 37.644089, 44.649338>,  <35.830021, 38.141724, 44.238487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009842, 37.644089, 44.649338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275917, 37.941040, 44.681343>,  <36.435562, 38.119209, 44.700546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275917, 37.941040, 44.681343>,  <36.009842, 37.644089, 44.649338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275917, 37.941040, 44.681343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058616, -0.054908, 0.996769,
		0.744372, -0.667729, 0.006991,
		0.665188, 0.742377, 0.080012,
		36.475475, 38.163754, 44.705345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357800, 37.615940, 43.955593>,  <36.009842, 37.644089, 44.649338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357800, 37.615940, 43.955593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026150, 37.785099, 43.809326>,  <35.827160, 37.886597, 43.721565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026150, 37.785099, 43.809326>,  <36.357800, 37.615940, 43.955593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026150, 37.785099, 43.809326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557407, 0.675691, -0.482430,
		0.043057, -0.603818, -0.795959,
		-0.829122, 0.422901, -0.365665,
		35.777412, 37.911968, 43.699627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285168, 37.668705, 43.179428>,  <36.357800, 37.615940, 43.955593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285168, 37.668705, 43.179428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110569, 37.984425, 43.352158>,  <36.005810, 38.173859, 43.455795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110569, 37.984425, 43.352158>,  <36.285168, 37.668705, 43.179428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110569, 37.984425, 43.352158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648347, 0.608721, -0.457280,
		-0.623792, 0.080371, -0.777447,
		-0.436496, 0.789303, 0.431824,
		35.979622, 38.221214, 43.481705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992558, 38.065212, 42.629223>,  <36.285168, 37.668705, 43.179428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992558, 38.065212, 42.629223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100769, 38.290634, 42.941433>,  <36.165695, 38.425888, 43.128761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100769, 38.290634, 42.941433>,  <35.992558, 38.065212, 42.629223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100769, 38.290634, 42.941433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330447, 0.707146, -0.625100,
		-0.904223, 0.427030, 0.005079,
		0.270528, 0.563551, 0.780528,
		36.181927, 38.459698, 43.175591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691216, 38.748180, 42.566330>,  <35.992558, 38.065212, 42.629223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691216, 38.748180, 42.566330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041088, 38.758411, 42.759937>,  <36.251011, 38.764549, 42.876102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041088, 38.758411, 42.759937>,  <35.691216, 38.748180, 42.566330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041088, 38.758411, 42.759937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315656, 0.727757, -0.608877,
		-0.367821, 0.685358, 0.628484,
		0.874682, 0.025573, 0.484022,
		36.303493, 38.766083, 42.905144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762493, 39.456158, 42.676651>,  <35.691216, 38.748180, 42.566330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762493, 39.456158, 42.676651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127930, 39.294426, 42.693928>,  <36.347191, 39.197388, 42.704292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127930, 39.294426, 42.693928>,  <35.762493, 39.456158, 42.676651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127930, 39.294426, 42.693928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331703, 0.679608, -0.654297,
		0.235196, 0.612089, 0.755003,
		0.913595, -0.404326, 0.043191,
		36.402008, 39.173130, 42.706886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173298, 39.907593, 42.760464>,  <35.762493, 39.456158, 42.676651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173298, 39.907593, 42.760464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402115, 39.631599, 42.583065>,  <36.539406, 39.466003, 42.476627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402115, 39.631599, 42.583065>,  <36.173298, 39.907593, 42.760464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402115, 39.631599, 42.583065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349988, 0.694336, -0.628813,
		0.741808, 0.204488, 0.638675,
		0.572040, -0.689987, -0.443496,
		36.573727, 39.424603, 42.450016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774776, 40.277248, 42.665165>,  <36.173298, 39.907593, 42.760464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774776, 40.277248, 42.665165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761288, 39.973232, 42.405563>,  <36.753193, 39.790825, 42.249802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761288, 39.973232, 42.405563>,  <36.774776, 40.277248, 42.665165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761288, 39.973232, 42.405563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269565, 0.618389, -0.738193,
		0.962391, -0.199845, 0.184024,
		-0.033726, -0.760037, -0.649003,
		36.751171, 39.745220, 42.210861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185154, 40.541798, 42.168285>,  <36.774776, 40.277248, 42.665165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185154, 40.541798, 42.168285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066441, 40.201797, 41.994194>,  <36.995213, 39.997799, 41.889740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066441, 40.201797, 41.994194>,  <37.185154, 40.541798, 42.168285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066441, 40.201797, 41.994194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260950, 0.366230, -0.893185,
		0.918600, -0.378653, 0.113117,
		-0.296780, -0.849998, -0.435229,
		36.977406, 39.946796, 41.863625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338814, 40.825901, 41.575474>,  <37.185154, 40.541798, 42.168285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338814, 40.825901, 41.575474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220242, 40.452209, 41.496136>,  <37.149097, 40.227993, 41.448532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220242, 40.452209, 41.496136>,  <37.338814, 40.825901, 41.575474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220242, 40.452209, 41.496136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228062, 0.132427, -0.964599,
		0.927426, -0.331169, 0.173807,
		-0.296428, -0.934232, -0.198343,
		37.131313, 40.171940, 41.436634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781940, 40.627388, 40.946182>,  <37.338814, 40.825901, 41.575474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781940, 40.627388, 40.946182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472023, 40.374531, 40.942333>,  <37.286072, 40.222816, 40.940025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472023, 40.374531, 40.942333>,  <37.781940, 40.627388, 40.946182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472023, 40.374531, 40.942333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150680, 0.199415, -0.968261,
		0.613997, -0.748752, -0.249756,
		-0.774793, -0.632142, -0.009618,
		37.239586, 40.184887, 40.939449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947720, 40.001019, 40.465054>,  <37.781940, 40.627388, 40.946182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947720, 40.001019, 40.465054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551521, 40.023937, 40.515060>,  <37.313801, 40.037689, 40.545063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551521, 40.023937, 40.515060>,  <37.947720, 40.001019, 40.465054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551521, 40.023937, 40.515060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129104, -0.074260, -0.988847,
		-0.047357, -0.995593, 0.080950,
		-0.990500, 0.057279, 0.125018,
		37.254372, 40.041126, 40.552567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591290, 39.459522, 40.064316>,  <37.947720, 40.001019, 40.465054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591290, 39.459522, 40.064316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326511, 39.758526, 40.086430>,  <37.167645, 39.937927, 40.099697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326511, 39.758526, 40.086430>,  <37.591290, 39.459522, 40.064316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326511, 39.758526, 40.086430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101565, -0.016370, -0.994694,
		-0.742639, -0.664049, 0.086757,
		-0.661946, 0.747510, 0.055287,
		37.127926, 39.982780, 40.103016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087490, 39.224239, 39.564102>,  <37.591290, 39.459522, 40.064316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087490, 39.224239, 39.564102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095367, 39.622112, 39.604519>,  <37.100094, 39.860836, 39.628769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095367, 39.622112, 39.604519>,  <37.087490, 39.224239, 39.564102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095367, 39.622112, 39.604519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152624, 0.096890, -0.983523,
		-0.988088, 0.034790, -0.149905,
		0.019692, 0.994687, 0.101046,
		37.101276, 39.920517, 39.634834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718399, 39.431538, 39.073757>,  <37.087490, 39.224239, 39.564102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718399, 39.431538, 39.073757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896107, 39.776436, 39.171043>,  <37.002731, 39.983376, 39.229416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896107, 39.776436, 39.171043>,  <36.718399, 39.431538, 39.073757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896107, 39.776436, 39.171043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019497, 0.262107, -0.964842,
		-0.895683, 0.433389, 0.099634,
		0.444266, 0.862249, 0.243214,
		37.029388, 40.035110, 39.244007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406403, 40.091686, 39.303127>,  <36.718399, 39.431538, 39.073757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406403, 40.091686, 39.303127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669064, 40.390987, 39.340935>,  <36.826660, 40.570568, 39.363617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669064, 40.390987, 39.340935>,  <36.406403, 40.091686, 39.303127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669064, 40.390987, 39.340935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192818, -0.045402, -0.980184,
		-0.729129, 0.661864, -0.174089,
		0.656652, 0.748248, 0.094515,
		36.866058, 40.615463, 39.369289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238712, 40.609169, 38.775349>,  <36.406403, 40.091686, 39.303127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238712, 40.609169, 38.775349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623993, 40.630024, 38.880817>,  <36.855160, 40.642536, 38.944099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623993, 40.630024, 38.880817>,  <36.238712, 40.609169, 38.775349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623993, 40.630024, 38.880817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262391, 0.030180, -0.964490,
		-0.058243, 0.998184, 0.015389,
		0.963202, 0.052137, 0.263672,
		36.912952, 40.645664, 38.959919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485550, 41.147003, 38.409191>,  <36.238712, 40.609169, 38.775349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485550, 41.147003, 38.409191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786659, 40.901825, 38.505219>,  <36.967323, 40.754719, 38.562836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786659, 40.901825, 38.505219>,  <36.485550, 41.147003, 38.409191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786659, 40.901825, 38.505219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252450, -0.067997, -0.965218,
		0.607948, 0.787196, 0.103551,
		0.752774, -0.612943, 0.240066,
		37.012493, 40.717941, 38.577240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115234, 41.395618, 38.037842>,  <36.485550, 41.147003, 38.409191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115234, 41.395618, 38.037842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162247, 41.016674, 38.156971>,  <37.190453, 40.789307, 38.228447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162247, 41.016674, 38.156971>,  <37.115234, 41.395618, 38.037842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162247, 41.016674, 38.156971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285412, -0.255027, -0.923852,
		0.951172, 0.193582, 0.240414,
		0.117529, -0.947358, 0.297825,
		37.197506, 40.732468, 38.246319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846478, 41.288689, 37.808353>,  <37.115234, 41.395618, 38.037842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846478, 41.288689, 37.808353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698864, 40.919338, 37.850666>,  <37.610294, 40.697727, 37.876053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698864, 40.919338, 37.850666>,  <37.846478, 41.288689, 37.808353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698864, 40.919338, 37.850666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388874, -0.256779, -0.884784,
		0.844150, -0.285381, 0.453837,
		-0.369036, -0.923375, 0.105783,
		37.588154, 40.642326, 37.882401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230076, 40.936924, 37.343266>,  <37.846478, 41.288689, 37.808353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230076, 40.936924, 37.343266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965141, 40.647270, 37.420143>,  <37.806179, 40.473476, 37.466270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965141, 40.647270, 37.420143>,  <38.230076, 40.936924, 37.343266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965141, 40.647270, 37.420143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291545, -0.485424, -0.824236,
		0.690150, -0.489893, 0.532633,
		-0.662340, -0.724133, 0.192190,
		37.766438, 40.430031, 37.477798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609493, 40.211060, 37.259583>,  <38.230076, 40.936924, 37.343266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609493, 40.211060, 37.259583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213142, 40.183521, 37.213238>,  <37.975330, 40.167000, 37.185432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213142, 40.183521, 37.213238>,  <38.609493, 40.211060, 37.259583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213142, 40.183521, 37.213238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133373, -0.377267, -0.916450,
		0.019381, -0.923542, 0.383007,
		-0.990876, -0.068845, -0.115863,
		37.915878, 40.162868, 37.178478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513287, 39.532158, 36.917786>,  <38.609493, 40.211060, 37.259583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513287, 39.532158, 36.917786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159378, 39.709084, 36.859085>,  <37.947033, 39.815239, 36.823864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159378, 39.709084, 36.859085>,  <38.513287, 39.532158, 36.917786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159378, 39.709084, 36.859085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059104, -0.418859, -0.906126,
		-0.462260, -0.793042, 0.396737,
		-0.884773, 0.442314, -0.146749,
		37.893944, 39.841778, 36.815060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989124, 39.026196, 36.782501>,  <38.513287, 39.532158, 36.917786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989124, 39.026196, 36.782501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832642, 39.360294, 36.627934>,  <37.738750, 39.560753, 36.535194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832642, 39.360294, 36.627934>,  <37.989124, 39.026196, 36.782501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832642, 39.360294, 36.627934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036377, -0.433590, -0.900376,
		-0.919584, -0.338175, 0.200007,
		-0.391205, 0.835247, -0.386420,
		37.715279, 39.610870, 36.512009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560844, 38.995453, 36.266529>,  <37.989124, 39.026196, 36.782501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560844, 38.995453, 36.266529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899632, 38.933708, 36.063034>,  <39.102905, 38.896660, 35.940937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899632, 38.933708, 36.063034>,  <38.560844, 38.995453, 36.266529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899632, 38.933708, 36.063034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351609, -0.555114, 0.753803,
		-0.398765, -0.817326, -0.415890,
		0.846969, -0.154360, -0.508739,
		39.153721, 38.887402, 35.910412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639961, 38.304249, 36.173676>,  <38.560844, 38.995453, 36.266529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639961, 38.304249, 36.173676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994846, 38.488781, 36.172016>,  <39.207779, 38.599503, 36.171021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994846, 38.488781, 36.172016>,  <38.639961, 38.304249, 36.173676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994846, 38.488781, 36.172016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304646, -0.579078, 0.756214,
		0.346463, -0.672191, -0.654311,
		0.887217, 0.461333, -0.004151,
		39.261013, 38.627182, 36.170773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193207, 37.892654, 36.259342>,  <38.639961, 38.304249, 36.173676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193207, 37.892654, 36.259342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352272, 38.237030, 36.386242>,  <39.447712, 38.443657, 36.462379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352272, 38.237030, 36.386242>,  <39.193207, 37.892654, 36.259342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352272, 38.237030, 36.386242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329623, -0.456727, 0.826287,
		0.856279, -0.224011, -0.465409,
		0.397662, 0.860941, 0.317246,
		39.471569, 38.495312, 36.481415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946648, 37.756958, 36.478451>,  <39.193207, 37.892654, 36.259342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946648, 37.756958, 36.478451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.800304, 38.081749, 36.660370>,  <39.712498, 38.276623, 36.769520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.800304, 38.081749, 36.660370>,  <39.946648, 37.756958, 36.478451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800304, 38.081749, 36.660370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270447, -0.374832, 0.886769,
		0.890508, 0.447433, -0.082460,
		-0.365861, 0.811976, 0.454797,
		39.690544, 38.325340, 36.796810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503437, 37.508823, 36.072151>,  <39.946648, 37.756958, 36.478451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503437, 37.508823, 36.072151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155792, 37.458870, 35.880711>,  <39.947205, 37.428898, 35.765846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155792, 37.458870, 35.880711>,  <40.503437, 37.508823, 36.072151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155792, 37.458870, 35.880711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434508, -0.269561, 0.859383,
		-0.236332, 0.954851, 0.180016,
		-0.869108, -0.124882, -0.478597,
		39.895061, 37.421406, 35.737133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088600, 37.023071, 36.120201>,  <40.503437, 37.508823, 36.072151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088600, 37.023071, 36.120201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098400, 36.669788, 36.307541>,  <41.104279, 36.457821, 36.419945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098400, 36.669788, 36.307541>,  <41.088600, 37.023071, 36.120201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098400, 36.669788, 36.307541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941713, -0.136850, -0.307324,
		0.335523, 0.448579, 0.828373,
		0.024496, -0.883204, 0.468349,
		41.105747, 36.404827, 36.448044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700939, 36.985481, 36.523834>,  <41.088600, 37.023071, 36.120201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.700939, 36.985481, 36.523834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554340, 36.632076, 36.407150>,  <41.466381, 36.420033, 36.337139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554340, 36.632076, 36.407150>,  <41.700939, 36.985481, 36.523834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554340, 36.632076, 36.407150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908671, -0.272491, -0.316332,
		0.199994, -0.381001, 0.902685,
		-0.366497, -0.883508, -0.291708,
		41.444393, 36.367023, 36.319637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.082214, 36.344547, 36.992683>,  <41.700939, 36.985481, 36.523834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.082214, 36.344547, 36.992683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971420, 36.286335, 36.612766>,  <41.904942, 36.251408, 36.384815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971420, 36.286335, 36.612766>,  <42.082214, 36.344547, 36.992683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.971420, 36.286335, 36.612766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943942, -0.225956, -0.240660,
		-0.179587, -0.963205, 0.199962,
		-0.276988, -0.145533, -0.949789,
		41.888325, 36.242676, 36.327831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397114, 35.747929, 36.861378>,  <42.082214, 36.344547, 36.992683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397114, 35.747929, 36.861378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.319294, 35.959801, 36.531143>,  <42.272602, 36.086926, 36.333004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.319294, 35.959801, 36.531143>,  <42.397114, 35.747929, 36.861378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.319294, 35.959801, 36.531143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908474, -0.220096, -0.355292,
		-0.369900, -0.819143, -0.438382,
		-0.194549, 0.529682, -0.825583,
		42.260929, 36.118706, 36.283466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405193, 35.251896, 36.324459>,  <42.397114, 35.747929, 36.861378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.405193, 35.251896, 36.324459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536259, 35.613728, 36.215374>,  <42.614899, 35.830826, 36.149925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536259, 35.613728, 36.215374>,  <42.405193, 35.251896, 36.324459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.536259, 35.613728, 36.215374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788432, -0.420843, -0.448628,
		-0.520588, -0.068014, -0.851095,
		0.327664, 0.904580, -0.272710,
		42.634560, 35.885101, 36.133560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.525803, 35.425205, 35.611599>,  <42.405193, 35.251896, 36.324459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.525803, 35.425205, 35.611599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.793697, 35.623131, 35.833092>,  <42.954433, 35.741886, 35.965988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.793697, 35.623131, 35.833092>,  <42.525803, 35.425205, 35.611599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.793697, 35.623131, 35.833092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742221, -0.469860, -0.477849,
		0.023731, 0.731022, -0.681941,
		0.669734, 0.494811, 0.553731,
		42.994617, 35.771576, 35.999210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.110424, 35.748039, 35.206348>,  <42.525803, 35.425205, 35.611599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.110424, 35.748039, 35.206348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260361, 35.687935, 35.572281>,  <43.350323, 35.651871, 35.791840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260361, 35.687935, 35.572281>,  <43.110424, 35.748039, 35.206348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.260361, 35.687935, 35.572281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777226, -0.486989, -0.398449,
		0.505385, 0.860385, -0.065753,
		0.374841, -0.150265, 0.914830,
		43.372814, 35.642857, 35.846729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.814560, 35.967449, 35.216305>,  <43.110424, 35.748039, 35.206348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.814560, 35.967449, 35.216305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730877, 35.656956, 35.454193>,  <43.680668, 35.470661, 35.596928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730877, 35.656956, 35.454193>,  <43.814560, 35.967449, 35.216305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.730877, 35.656956, 35.454193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712313, -0.537648, -0.451159,
		0.669956, 0.329241, 0.665402,
		-0.209212, -0.776231, 0.594723,
		43.668114, 35.424088, 35.632610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.385567, 35.805126, 35.617207>,  <43.814560, 35.967449, 35.216305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.385567, 35.805126, 35.617207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.167160, 35.476597, 35.551121>,  <44.036114, 35.279480, 35.511467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.167160, 35.476597, 35.551121>,  <44.385567, 35.805126, 35.617207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.167160, 35.476597, 35.551121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810729, -0.468315, -0.351281,
		0.211140, -0.325753, 0.921577,
		-0.546020, -0.821319, -0.165217,
		44.003353, 35.230202, 35.501556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.864441, 35.364624, 35.400059>,  <44.385567, 35.805126, 35.617207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.864441, 35.364624, 35.400059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567120, 35.098125, 35.424099>,  <44.388725, 34.938225, 35.438522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567120, 35.098125, 35.424099>,  <44.864441, 35.364624, 35.400059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.567120, 35.098125, 35.424099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642047, -0.735751, -0.215514,
		0.187803, -0.121606, 0.974650,
		-0.743307, -0.666245, 0.060100,
		44.344128, 34.898251, 35.442127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.498287, 34.926804, 35.266529>,  <44.864441, 35.364624, 35.400059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.498287, 34.926804, 35.266529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.468994, 34.548969, 35.394524>,  <45.451416, 34.322269, 35.471321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.468994, 34.548969, 35.394524>,  <45.498287, 34.926804, 35.266529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.468994, 34.548969, 35.394524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469345, 0.250453, 0.846752,
		-0.879973, 0.212195, 0.424996,
		-0.073235, -0.944588, 0.319984,
		45.447025, 34.265594, 35.490520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.946865, 35.334274, 35.023632>,  <45.498287, 34.926804, 35.266529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.946865, 35.334274, 35.023632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.082642, 35.657860, 35.215614>,  <46.164108, 35.852009, 35.330803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.082642, 35.657860, 35.215614>,  <45.946865, 35.334274, 35.023632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.082642, 35.657860, 35.215614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938991, -0.261336, -0.223604,
		-0.055457, 0.526578, -0.848316,
		0.339441, 0.808962, 0.479959,
		46.184475, 35.900547, 35.359604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.510601, 35.642727, 34.666840>,  <45.946865, 35.334274, 35.023632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.510601, 35.642727, 34.666840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.541405, 35.713078, 35.059399>,  <46.559887, 35.755287, 35.294933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.541405, 35.713078, 35.059399>,  <46.510601, 35.642727, 34.666840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.541405, 35.713078, 35.059399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887872, -0.459913, 0.012751,
		0.453599, 0.870372, -0.191574,
		0.077010, 0.175877, 0.981395,
		46.564507, 35.765842, 35.353817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.166718, 35.919010, 34.872746>,  <46.510601, 35.642727, 34.666840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.166718, 35.919010, 34.872746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.993496, 35.645603, 35.107784>,  <46.889565, 35.481560, 35.248810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.993496, 35.645603, 35.107784>,  <47.166718, 35.919010, 34.872746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.993496, 35.645603, 35.107784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730994, -0.647720, -0.214723,
		0.527367, 0.336545, 0.780142,
		-0.433050, -0.683517, 0.587599,
		46.863583, 35.440548, 35.284065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.710377, 35.604866, 35.096638>,  <47.166718, 35.919010, 34.872746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.710377, 35.604866, 35.096638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.404736, 35.346897, 35.102528>,  <47.221352, 35.192116, 35.106060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.404736, 35.346897, 35.102528>,  <47.710377, 35.604866, 35.096638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.404736, 35.346897, 35.102528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593860, -0.712157, -0.374383,
		0.251934, -0.277324, 0.927157,
		-0.764107, -0.644922, 0.014725,
		47.175503, 35.153419, 35.106945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.954548, 34.963909, 35.416306>,  <47.710377, 35.604866, 35.096638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.954548, 34.963909, 35.416306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.662292, 34.916832, 35.147285>,  <47.486938, 34.888588, 34.985874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.662292, 34.916832, 35.147285>,  <47.954548, 34.963909, 35.416306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.662292, 34.916832, 35.147285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463425, -0.808864, -0.361906,
		-0.501409, -0.576097, 0.645524,
		-0.730634, -0.117689, -0.672550,
		47.443104, 34.881527, 34.945522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.603962, 31.959204, 29.220175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.231724, 31.922087, 29.078539>,  <36.008381, 31.899817, 28.993557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.231724, 31.922087, 29.078539>,  <36.603962, 31.959204, 29.220175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231724, 31.922087, 29.078539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348071, 0.523749, 0.777518,
		0.113306, 0.846804, -0.519697,
		-0.930596, -0.092794, -0.354092,
		35.952545, 31.894249, 28.972311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391468, 32.547691, 29.351227>,  <36.603962, 31.959204, 29.220175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391468, 32.547691, 29.351227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.045559, 32.350136, 29.314915>,  <35.838013, 32.231602, 29.293127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.045559, 32.350136, 29.314915>,  <36.391468, 32.547691, 29.351227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045559, 32.350136, 29.314915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398705, 0.565390, 0.722059,
		-0.305290, 0.660612, -0.685850,
		-0.864773, -0.493889, -0.090782,
		35.786125, 32.201969, 29.287680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792473, 33.010841, 29.389620>,  <36.391468, 32.547691, 29.351227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792473, 33.010841, 29.389620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.607201, 32.661892, 29.452135>,  <35.496037, 32.452522, 29.489645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.607201, 32.661892, 29.452135>,  <35.792473, 33.010841, 29.389620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607201, 32.661892, 29.452135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589351, 0.434885, 0.680838,
		-0.661914, 0.223242, -0.715565,
		-0.463180, -0.872375, 0.156288,
		35.468246, 32.400181, 29.499022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077587, 33.147430, 29.491753>,  <35.792473, 33.010841, 29.389620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077587, 33.147430, 29.491753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.126915, 32.790134, 29.664686>,  <35.156513, 32.575756, 29.768446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.126915, 32.790134, 29.664686>,  <35.077587, 33.147430, 29.491753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126915, 32.790134, 29.664686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773508, 0.186400, 0.605756,
		-0.621672, -0.409118, -0.667941,
		0.123321, -0.893240, 0.432336,
		35.163910, 32.522163, 29.794388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439781, 32.919811, 29.635395>,  <35.077587, 33.147430, 29.491753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439781, 32.919811, 29.635395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.661674, 32.664612, 29.849024>,  <34.794811, 32.511494, 29.977201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.661674, 32.664612, 29.849024>,  <34.439781, 32.919811, 29.635395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661674, 32.664612, 29.849024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670993, 0.036511, 0.740564,
		-0.491977, -0.769174, -0.407836,
		0.554732, -0.637996, 0.534073,
		34.828094, 32.473213, 30.009245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933788, 32.430275, 29.986637>,  <34.439781, 32.919811, 29.635395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933788, 32.430275, 29.986637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.279308, 32.484798, 30.180656>,  <34.486622, 32.517513, 30.297068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.279308, 32.484798, 30.180656>,  <33.933788, 32.430275, 29.986637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279308, 32.484798, 30.180656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503477, 0.197275, 0.841186,
		0.018969, -0.970826, 0.239032,
		0.863800, 0.136304, 0.485047,
		34.538448, 32.525692, 30.326170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841114, 32.125977, 30.636129>,  <33.933788, 32.430275, 29.986637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841114, 32.125977, 30.636129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.152847, 32.369110, 30.697023>,  <34.339890, 32.514988, 30.733561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.152847, 32.369110, 30.697023>,  <33.841114, 32.125977, 30.636129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152847, 32.369110, 30.697023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337824, 0.202958, 0.919066,
		0.527740, -0.767691, 0.363513,
		0.779337, 0.607831, 0.152235,
		34.386650, 32.551460, 30.742695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997974, 32.048275, 31.316868>,  <33.841114, 32.125977, 30.636129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997974, 32.048275, 31.316868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.194916, 32.388561, 31.243259>,  <34.313080, 32.592731, 31.199095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.194916, 32.388561, 31.243259>,  <33.997974, 32.048275, 31.316868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194916, 32.388561, 31.243259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412471, 0.414227, 0.811347,
		0.766454, -0.323568, 0.554843,
		0.492357, 0.850717, -0.184024,
		34.342625, 32.643776, 31.188053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193260, 32.237869, 31.916395>,  <33.997974, 32.048275, 31.316868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193260, 32.237869, 31.916395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.187866, 32.577320, 31.704868>,  <34.184631, 32.780991, 31.577951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.187866, 32.577320, 31.704868>,  <34.193260, 32.237869, 31.916395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187866, 32.577320, 31.704868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470758, 0.461201, 0.752118,
		0.882160, 0.259085, 0.393280,
		-0.013481, 0.848628, -0.528819,
		34.183823, 32.831909, 31.546223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658356, 32.723263, 32.207920>,  <34.193260, 32.237869, 31.916395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658356, 32.723263, 32.207920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.380398, 32.933666, 32.011784>,  <34.213623, 33.059910, 31.894100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.380398, 32.933666, 32.011784>,  <34.658356, 32.723263, 32.207920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380398, 32.933666, 32.011784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213394, 0.500327, 0.839128,
		0.686722, 0.687741, -0.235427,
		-0.694893, 0.526009, -0.490345,
		34.171928, 33.091469, 31.864679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717350, 33.393654, 32.528431>,  <34.658356, 32.723263, 32.207920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717350, 33.393654, 32.528431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.372536, 33.407299, 32.326153>,  <34.165646, 33.415485, 32.204784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.372536, 33.407299, 32.326153>,  <34.717350, 33.393654, 32.528431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372536, 33.407299, 32.326153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384012, 0.607223, 0.695568,
		0.330801, 0.793798, -0.510347,
		-0.862036, 0.034115, -0.505698,
		34.113926, 33.417534, 32.174442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554413, 34.126156, 32.497448>,  <34.717350, 33.393654, 32.528431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554413, 34.126156, 32.497448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.221512, 33.922180, 32.410435>,  <34.021770, 33.799793, 32.358227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.221512, 33.922180, 32.410435>,  <34.554413, 34.126156, 32.497448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221512, 33.922180, 32.410435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506202, 0.538925, 0.673290,
		-0.226103, 0.670462, -0.706653,
		-0.832248, -0.509942, -0.217537,
		33.971836, 33.769196, 32.345173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002232, 34.568741, 32.537182>,  <34.554413, 34.126156, 32.497448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002232, 34.568741, 32.537182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.796726, 34.226490, 32.562336>,  <33.673424, 34.021141, 32.577431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.796726, 34.226490, 32.562336>,  <34.002232, 34.568741, 32.537182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796726, 34.226490, 32.562336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688667, 0.455004, 0.564543,
		-0.511652, 0.246731, -0.823004,
		-0.513761, -0.855626, 0.062888,
		33.642597, 33.969803, 32.581203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197643, 34.709660, 32.471306>,  <34.002232, 34.568741, 32.537182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197643, 34.709660, 32.471306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.304432, 34.373051, 32.659161>,  <33.368504, 34.171085, 32.771873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.304432, 34.373051, 32.659161>,  <33.197643, 34.709660, 32.471306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304432, 34.373051, 32.659161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413013, 0.340393, 0.844720,
		-0.870716, -0.419483, -0.256686,
		0.266971, -0.841527, 0.469638,
		33.384521, 34.120594, 32.800053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702682, 34.656651, 32.842598>,  <33.197643, 34.709660, 32.471306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702682, 34.656651, 32.842598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.969879, 34.419159, 33.022049>,  <33.130199, 34.276665, 33.129719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.969879, 34.419159, 33.022049>,  <32.702682, 34.656651, 32.842598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969879, 34.419159, 33.022049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286477, 0.351224, 0.891388,
		-0.686814, -0.723963, 0.064525,
		0.667995, -0.593733, 0.448624,
		33.170277, 34.241039, 33.156635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299370, 34.464619, 33.356628>,  <32.702682, 34.656651, 32.842598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299370, 34.464619, 33.356628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.663288, 34.383118, 33.501270>,  <32.881638, 34.334217, 33.588055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.663288, 34.383118, 33.501270>,  <32.299370, 34.464619, 33.356628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663288, 34.383118, 33.501270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219022, 0.504375, 0.835245,
		-0.352570, -0.839101, 0.414251,
		0.909793, -0.203752, 0.361609,
		32.936226, 34.321991, 33.609753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220207, 34.208214, 34.008652>,  <32.299370, 34.464619, 33.356628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220207, 34.208214, 34.008652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.600792, 34.330082, 34.026058>,  <32.829144, 34.403206, 34.036503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.600792, 34.330082, 34.026058>,  <32.220207, 34.208214, 34.008652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600792, 34.330082, 34.026058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172354, 0.410337, 0.895498,
		0.254979, -0.859533, 0.442932,
		0.951462, 0.304675, 0.043517,
		32.886230, 34.421486, 34.039112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406654, 34.130066, 34.688694>,  <32.220207, 34.208214, 34.008652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406654, 34.130066, 34.688694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.680481, 34.387440, 34.551662>,  <32.844776, 34.541866, 34.469444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.680481, 34.387440, 34.551662>,  <32.406654, 34.130066, 34.688694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680481, 34.387440, 34.551662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130879, 0.570815, 0.810580,
		0.717107, -0.510058, 0.474972,
		0.684565, 0.643436, -0.342579,
		32.885849, 34.580471, 34.448887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908119, 34.333065, 35.272511>,  <32.406654, 34.130066, 34.688694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908119, 34.333065, 35.272511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.952080, 34.627232, 35.005051>,  <32.978455, 34.803730, 34.844574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.952080, 34.627232, 35.005051>,  <32.908119, 34.333065, 35.272511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952080, 34.627232, 35.005051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065725, 0.676625, 0.733388,
		0.991767, -0.036654, 0.122697,
		0.109901, 0.735415, -0.668646,
		32.985050, 34.847855, 34.804459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383713, 34.708530, 35.612907>,  <32.908119, 34.333065, 35.272511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383713, 34.708530, 35.612907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.226768, 34.967033, 35.351097>,  <33.132603, 35.122135, 35.194012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.226768, 34.967033, 35.351097>,  <33.383713, 34.708530, 35.612907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226768, 34.967033, 35.351097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010860, 0.708279, 0.705850,
		0.919748, 0.284055, -0.270882,
		-0.392360, 0.646262, -0.654522,
		33.109062, 35.160912, 35.154739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493164, 35.277481, 35.947964>,  <33.383713, 34.708530, 35.612907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493164, 35.277481, 35.947964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.228855, 35.378990, 35.665413>,  <33.070271, 35.439896, 35.495880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.228855, 35.378990, 35.665413>,  <33.493164, 35.277481, 35.947964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228855, 35.378990, 35.665413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317466, 0.758292, 0.569393,
		0.680140, 0.600493, -0.420496,
		-0.660775, 0.253774, -0.706381,
		33.030624, 35.455124, 35.453499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697544, 35.943947, 35.741222>,  <33.493164, 35.277481, 35.947964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697544, 35.943947, 35.741222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.304832, 35.899872, 35.679302>,  <33.069206, 35.873428, 35.642151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.304832, 35.899872, 35.679302>,  <33.697544, 35.943947, 35.741222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304832, 35.899872, 35.679302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183788, 0.757516, 0.626412,
		0.048244, 0.643451, -0.763966,
		-0.981781, -0.110187, -0.154804,
		33.010300, 35.866817, 35.632862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409782, 36.165165, 35.758003>,  <33.697544, 35.943947, 35.741222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409782, 36.165165, 35.758003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.757908, 36.310562, 35.890923>,  <34.966785, 36.397800, 35.970676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.757908, 36.310562, 35.890923>,  <34.409782, 36.165165, 35.758003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757908, 36.310562, 35.890923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292963, 0.160266, -0.942596,
		-0.395884, 0.917708, 0.032992,
		0.870315, 0.363493, 0.332301,
		35.019001, 36.419609, 35.990612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705139, 36.540413, 35.236725>,  <34.409782, 36.165165, 35.758003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705139, 36.540413, 35.236725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.049404, 36.517395, 35.439087>,  <35.255962, 36.503586, 35.560505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.049404, 36.517395, 35.439087>,  <34.705139, 36.540413, 35.236725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049404, 36.517395, 35.439087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505843, -0.016734, -0.862463,
		0.058096, 0.998203, 0.014706,
		0.860667, -0.057545, 0.505906,
		35.307606, 36.500130, 35.590858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172394, 36.844250, 34.803902>,  <34.705139, 36.540413, 35.236725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172394, 36.844250, 34.803902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.411221, 36.628651, 35.041557>,  <35.554516, 36.499290, 35.184151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.411221, 36.628651, 35.041557>,  <35.172394, 36.844250, 34.803902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411221, 36.628651, 35.041557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709659, 0.009568, -0.704481,
		0.374027, 0.842255, 0.388215,
		0.597066, -0.538995, 0.594135,
		35.590340, 36.466953, 35.219799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824402, 37.141613, 34.642899>,  <35.172394, 36.844250, 34.803902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824402, 37.141613, 34.642899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.889400, 36.784889, 34.811783>,  <35.928398, 36.570854, 34.913113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.889400, 36.784889, 34.811783>,  <35.824402, 37.141613, 34.642899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889400, 36.784889, 34.811783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671754, -0.213435, -0.709360,
		0.722732, 0.398892, 0.564397,
		0.162496, -0.891813, 0.422214,
		35.938148, 36.517345, 34.938446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486725, 36.999229, 34.510506>,  <35.824402, 37.141613, 34.642899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486725, 36.999229, 34.510506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.342300, 36.632607, 34.579277>,  <36.255646, 36.412632, 34.620541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.342300, 36.632607, 34.579277>,  <36.486725, 36.999229, 34.510506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342300, 36.632607, 34.579277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512980, -0.349177, -0.784173,
		0.778773, -0.194936, 0.596249,
		-0.361059, -0.916556, 0.171931,
		36.233982, 36.357639, 34.630856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042805, 36.534302, 34.509083>,  <36.486725, 36.999229, 34.510506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042805, 36.534302, 34.509083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.688267, 36.380573, 34.405792>,  <36.475544, 36.288334, 34.343819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.688267, 36.380573, 34.405792>,  <37.042805, 36.534302, 34.509083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688267, 36.380573, 34.405792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408863, -0.387928, -0.826041,
		0.217294, -0.837740, 0.500975,
		-0.886349, -0.384323, -0.258227,
		36.422363, 36.265278, 34.328323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234707, 35.940159, 34.162556>,  <37.042805, 36.534302, 34.509083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234707, 35.940159, 34.162556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.846287, 35.958397, 34.068760>,  <36.613235, 35.969341, 34.012482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.846287, 35.958397, 34.068760>,  <37.234707, 35.940159, 34.162556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846287, 35.958397, 34.068760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172185, -0.546811, -0.819360,
		-0.165579, -0.836014, 0.523129,
		-0.971049, 0.045594, -0.234490,
		36.554974, 35.972076, 33.998413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965515, 35.289074, 34.089233>,  <37.234707, 35.940159, 34.162556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965515, 35.289074, 34.089233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.694420, 35.492775, 33.877068>,  <36.531765, 35.614994, 33.749767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.694420, 35.492775, 33.877068>,  <36.965515, 35.289074, 34.089233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694420, 35.492775, 33.877068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119435, -0.635529, -0.762783,
		-0.725539, -0.580317, 0.369900,
		-0.677738, 0.509250, -0.530412,
		36.491100, 35.645550, 33.717945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639500, 34.744095, 33.747402>,  <36.965515, 35.289074, 34.089233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639500, 34.744095, 33.747402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.552940, 35.083286, 33.553864>,  <36.501007, 35.286800, 33.437740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.552940, 35.083286, 33.553864>,  <36.639500, 34.744095, 33.747402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552940, 35.083286, 33.553864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042755, -0.486880, -0.872422,
		-0.975369, -0.209476, 0.069104,
		-0.216397, 0.847979, -0.483843,
		36.488022, 35.337681, 33.408710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250565, 34.460209, 33.120068>,  <36.639500, 34.744095, 33.747402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250565, 34.460209, 33.120068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.349899, 34.835762, 33.024719>,  <36.409500, 35.061096, 32.967510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.349899, 34.835762, 33.024719>,  <36.250565, 34.460209, 33.120068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349899, 34.835762, 33.024719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014458, -0.249641, -0.968230,
		-0.968566, 0.237001, -0.075570,
		0.248337, 0.938888, -0.238367,
		36.424400, 35.117428, 32.953209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925201, 34.579430, 32.539459>,  <36.250565, 34.460209, 33.120068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925201, 34.579430, 32.539459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.234619, 34.832916, 32.541687>,  <36.420269, 34.985008, 32.543026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.234619, 34.832916, 32.541687>,  <35.925201, 34.579430, 32.539459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234619, 34.832916, 32.541687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204792, -0.241637, -0.948510,
		-0.599741, 0.734856, -0.316697,
		0.773544, 0.633718, 0.005572,
		36.466682, 35.023033, 32.543358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732571, 35.050224, 32.080086>,  <35.925201, 34.579430, 32.539459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732571, 35.050224, 32.080086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.131931, 35.032761, 32.094391>,  <36.371548, 35.022282, 32.102974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.131931, 35.032761, 32.094391>,  <35.732571, 35.050224, 32.080086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131931, 35.032761, 32.094391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022508, -0.273060, -0.961733,
		0.051753, 0.961006, -0.271642,
		0.998406, -0.043659, 0.035762,
		36.431454, 35.019665, 32.105118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868530, 35.221512, 31.332668>,  <35.732571, 35.050224, 32.080086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868530, 35.221512, 31.332668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.218533, 35.109081, 31.490334>,  <36.428535, 35.041622, 31.584932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.218533, 35.109081, 31.490334>,  <35.868530, 35.221512, 31.332668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218533, 35.109081, 31.490334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317544, -0.281341, -0.905545,
		0.365419, 0.917521, -0.156922,
		0.875006, -0.281074, 0.394161,
		36.481033, 35.024757, 31.608582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439060, 35.536938, 30.905273>,  <35.868530, 35.221512, 31.332668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439060, 35.536938, 30.905273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.571064, 35.216385, 31.104828>,  <36.650265, 35.024055, 31.224560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.571064, 35.216385, 31.104828>,  <36.439060, 35.536938, 30.905273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571064, 35.216385, 31.104828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334202, -0.395078, -0.855700,
		0.882839, 0.449115, 0.137444,
		0.330007, -0.801379, 0.498886,
		36.670067, 34.975971, 31.254494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074120, 35.505783, 30.636293>,  <36.439060, 35.536938, 30.905273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074120, 35.505783, 30.636293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.968941, 35.147694, 30.780201>,  <36.905834, 34.932838, 30.866547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.968941, 35.147694, 30.780201>,  <37.074120, 35.505783, 30.636293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968941, 35.147694, 30.780201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297760, -0.429987, -0.852320,
		0.917714, -0.116988, 0.379625,
		-0.262945, -0.895223, 0.359771,
		36.890057, 34.879128, 30.888132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630856, 35.253017, 30.343973>,  <37.074120, 35.505783, 30.636293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630856, 35.253017, 30.343973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.375488, 34.957306, 30.429659>,  <37.222267, 34.779881, 30.481070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.375488, 34.957306, 30.429659>,  <37.630856, 35.253017, 30.343973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375488, 34.957306, 30.429659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330719, -0.514786, -0.790962,
		0.695016, -0.434121, 0.573143,
		-0.638419, -0.739280, 0.214212,
		37.183964, 34.735523, 30.493923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030010, 34.603634, 30.352766>,  <37.630856, 35.253017, 30.343973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030010, 34.603634, 30.352766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.645630, 34.511414, 30.291546>,  <37.415001, 34.456081, 30.254814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.645630, 34.511414, 30.291546>,  <38.030010, 34.603634, 30.352766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645630, 34.511414, 30.291546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271371, -0.676803, -0.684321,
		0.054184, -0.699131, 0.712937,
		-0.960948, -0.230550, -0.153052,
		37.357346, 34.442249, 30.245630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155857, 33.936970, 30.203964>,  <38.030010, 34.603634, 30.352766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155857, 33.936970, 30.203964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.785187, 34.016609, 30.076450>,  <37.562782, 34.064392, 29.999943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.785187, 34.016609, 30.076450>,  <38.155857, 33.936970, 30.203964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785187, 34.016609, 30.076450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115134, -0.657021, -0.745028,
		-0.357781, -0.727107, 0.585926,
		-0.926681, 0.199096, -0.318784,
		37.507183, 34.076340, 29.980814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.810654, 33.197666, 30.153358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.597134, 33.461647, 29.941881>,  <37.469021, 33.620037, 29.814995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.597134, 33.461647, 29.941881>,  <37.810654, 33.197666, 30.153358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597134, 33.461647, 29.941881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258460, -0.467966, -0.845107,
		-0.805140, -0.587769, 0.079232,
		-0.533805, 0.659951, -0.528693,
		37.436993, 33.659634, 29.783274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520184, 32.814827, 29.616261>,  <37.810654, 33.197666, 30.153358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520184, 32.814827, 29.616261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.456951, 33.179214, 29.463865>,  <37.419010, 33.397846, 29.372429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.456951, 33.179214, 29.463865>,  <37.520184, 32.814827, 29.616261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456951, 33.179214, 29.463865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088060, -0.371297, -0.924329,
		-0.983492, -0.179668, -0.021525,
		-0.158080, 0.910966, -0.380989,
		37.409527, 33.452503, 29.349569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083183, 32.710972, 29.128138>,  <37.520184, 32.814827, 29.616261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083183, 32.710972, 29.128138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.219074, 33.064899, 29.000582>,  <37.300610, 33.277256, 28.924049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.219074, 33.064899, 29.000582>,  <37.083183, 32.710972, 29.128138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219074, 33.064899, 29.000582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144510, -0.384133, -0.911898,
		-0.929357, 0.263712, -0.258364,
		0.339725, 0.884815, -0.318888,
		37.320992, 33.330345, 28.904915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784405, 32.933563, 28.487591>,  <37.083183, 32.710972, 29.128138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784405, 32.933563, 28.487591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.121777, 33.148121, 28.499615>,  <37.324200, 33.276855, 28.506830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.121777, 33.148121, 28.499615>,  <36.784405, 32.933563, 28.487591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121777, 33.148121, 28.499615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140978, -0.166985, -0.975828,
		-0.518410, 0.827282, -0.216461,
		0.843431, 0.536395, 0.030061,
		37.374805, 33.309040, 28.508633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946121, 33.193897, 27.734066>,  <36.784405, 32.933563, 28.487591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946121, 33.193897, 27.734066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.295975, 33.234402, 27.923702>,  <37.505886, 33.258705, 28.037485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.295975, 33.234402, 27.923702>,  <36.946121, 33.193897, 27.734066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295975, 33.234402, 27.923702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484731, -0.197405, -0.852096,
		0.007302, 0.975078, -0.221743,
		0.874633, 0.101264, 0.474091,
		37.558365, 33.264782, 28.065929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352486, 33.605057, 27.256935>,  <36.946121, 33.193897, 27.734066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352486, 33.605057, 27.256935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.587154, 33.400124, 27.507799>,  <37.727955, 33.277164, 27.658318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.587154, 33.400124, 27.507799>,  <37.352486, 33.605057, 27.256935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587154, 33.400124, 27.507799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572768, -0.284968, -0.768590,
		0.572493, 0.810129, 0.126263,
		0.586676, -0.512331, 0.627158,
		37.763157, 33.246426, 27.695946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126446, 33.650803, 26.916096>,  <37.352486, 33.605057, 27.256935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126446, 33.650803, 26.916096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.102741, 33.331264, 27.155540>,  <38.088520, 33.139542, 27.299208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.102741, 33.331264, 27.155540>,  <38.126446, 33.650803, 26.916096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102741, 33.331264, 27.155540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498837, -0.543124, -0.675410,
		0.864668, 0.258587, 0.430677,
		-0.059259, -0.798843, 0.598614,
		38.084965, 33.091610, 27.335125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812664, 33.318241, 26.873510>,  <38.126446, 33.650803, 26.916096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812664, 33.318241, 26.873510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.543808, 33.038792, 26.971622>,  <38.382496, 32.871124, 27.030489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.543808, 33.038792, 26.971622>,  <38.812664, 33.318241, 26.873510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543808, 33.038792, 26.971622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483888, -0.665195, -0.568655,
		0.560433, -0.263526, 0.785156,
		-0.672137, -0.698620, 0.245280,
		38.342167, 32.829205, 27.045206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183372, 32.759480, 27.163988>,  <38.812664, 33.318241, 26.873510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183372, 32.759480, 27.163988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.830070, 32.622849, 27.035500>,  <38.618088, 32.540871, 26.958406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.830070, 32.622849, 27.035500>,  <39.183372, 32.759480, 27.163988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830070, 32.622849, 27.035500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464652, -0.729547, -0.501856,
		-0.062923, -0.592523, 0.803092,
		-0.883255, -0.341580, -0.321222,
		38.565094, 32.520374, 26.939133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223389, 32.140667, 27.252296>,  <39.183372, 32.759480, 27.163988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223389, 32.140667, 27.252296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.916172, 32.143261, 26.996149>,  <38.731842, 32.144817, 26.842461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.916172, 32.143261, 26.996149>,  <39.223389, 32.140667, 27.252296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916172, 32.143261, 26.996149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451946, -0.702966, -0.549167,
		-0.453717, -0.711194, 0.536976,
		-0.768040, 0.006482, -0.640369,
		38.685760, 32.145206, 26.804039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071537, 31.363382, 27.014679>,  <39.223389, 32.140667, 27.252296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071537, 31.363382, 27.014679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.920376, 31.605095, 26.734098>,  <38.829678, 31.750122, 26.565750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.920376, 31.605095, 26.734098>,  <39.071537, 31.363382, 27.014679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920376, 31.605095, 26.734098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335810, -0.616578, -0.712084,
		-0.862798, -0.504653, 0.030083,
		-0.377903, 0.604282, -0.701450,
		38.807003, 31.786379, 26.523663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842861, 30.908504, 26.496508>,  <39.071537, 31.363382, 27.014679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842861, 30.908504, 26.496508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.836536, 31.257786, 26.301666>,  <38.832741, 31.467354, 26.184761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.836536, 31.257786, 26.301666>,  <38.842861, 30.908504, 26.496508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836536, 31.257786, 26.301666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249194, -0.468352, -0.847673,
		-0.968325, -0.134783, -0.210192,
		-0.015808, 0.873201, -0.487104,
		38.831795, 31.519747, 26.155535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490883, 30.747450, 25.770430>,  <38.842861, 30.908504, 26.496508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490883, 30.747450, 25.770430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.692783, 31.088263, 25.714907>,  <38.813923, 31.292749, 25.681593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.692783, 31.088263, 25.714907>,  <38.490883, 30.747450, 25.770430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692783, 31.088263, 25.714907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130162, -0.234074, -0.963466,
		-0.853394, 0.468246, -0.229052,
		0.504754, 0.852030, -0.138809,
		38.844208, 31.343872, 25.673264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209023, 31.105471, 25.144287>,  <38.490883, 30.747450, 25.770430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209023, 31.105471, 25.144287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.560410, 31.289656, 25.195301>,  <38.771244, 31.400166, 25.225908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.560410, 31.289656, 25.195301>,  <38.209023, 31.105471, 25.144287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560410, 31.289656, 25.195301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224283, -0.161718, -0.961012,
		-0.421884, 0.872824, -0.245339,
		0.878471, 0.460461, 0.127534,
		38.823952, 31.427794, 25.233561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256409, 31.561096, 24.516104>,  <38.209023, 31.105471, 25.144287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256409, 31.561096, 24.516104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.608727, 31.462885, 24.678049>,  <38.820118, 31.403957, 24.775217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.608727, 31.462885, 24.678049>,  <38.256409, 31.561096, 24.516104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608727, 31.462885, 24.678049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364385, -0.194532, -0.910704,
		0.302364, 0.949670, -0.081876,
		0.880795, -0.245530, 0.404865,
		38.872967, 31.389227, 24.799509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690834, 32.011433, 24.181055>,  <38.256409, 31.561096, 24.516104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690834, 32.011433, 24.181055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.919250, 31.710310, 24.312019>,  <39.056301, 31.529636, 24.390598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.919250, 31.710310, 24.312019>,  <38.690834, 32.011433, 24.181055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919250, 31.710310, 24.312019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411475, -0.082640, -0.907667,
		0.710355, 0.653033, 0.262571,
		0.571038, -0.752807, 0.327411,
		39.090561, 31.484468, 24.410242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324104, 32.173607, 24.060745>,  <38.690834, 32.011433, 24.181055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324104, 32.173607, 24.060745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.320763, 31.774446, 24.086412>,  <39.318756, 31.534950, 24.101812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.320763, 31.774446, 24.086412>,  <39.324104, 32.173607, 24.060745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320763, 31.774446, 24.086412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364494, -0.062796, -0.929086,
		0.931168, 0.015626, 0.364254,
		-0.008356, -0.997904, 0.064169,
		39.318256, 31.475075, 24.105663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900665, 31.921328, 23.728125>,  <39.324104, 32.173607, 24.060745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900665, 31.921328, 23.728125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.721123, 31.563887, 23.728376>,  <39.613396, 31.349422, 23.728527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.721123, 31.563887, 23.728376>,  <39.900665, 31.921328, 23.728125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721123, 31.563887, 23.728376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418462, -0.210812, -0.883430,
		0.789569, -0.396269, 0.468563,
		-0.448855, -0.893605, 0.000627,
		39.586468, 31.295805, 23.728565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373856, 31.499468, 23.313358>,  <39.900665, 31.921328, 23.728125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373856, 31.499468, 23.313358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.045368, 31.271360, 23.321266>,  <39.848274, 31.134495, 23.326010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.045368, 31.271360, 23.321266>,  <40.373856, 31.499468, 23.313358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045368, 31.271360, 23.321266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250511, -0.391443, -0.885447,
		0.512682, -0.722194, 0.464319,
		-0.821220, -0.570270, 0.019768,
		39.799004, 31.100279, 23.327196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588375, 30.813263, 23.208628>,  <40.373856, 31.499468, 23.313358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588375, 30.813263, 23.208628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.203552, 30.790918, 23.101795>,  <39.972660, 30.777512, 23.037697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.203552, 30.790918, 23.101795>,  <40.588375, 30.813263, 23.208628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203552, 30.790918, 23.101795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260560, -0.478656, -0.838449,
		-0.081001, -0.876224, 0.475048,
		-0.962054, -0.055863, -0.267080,
		39.914936, 30.774160, 23.021671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494350, 30.075567, 22.988209>,  <40.588375, 30.813263, 23.208628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.494350, 30.075567, 22.988209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.213009, 30.303589, 22.818344>,  <40.044205, 30.440401, 22.716425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.213009, 30.303589, 22.818344>,  <40.494350, 30.075567, 22.988209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213009, 30.303589, 22.818344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145688, -0.469123, -0.871033,
		-0.695755, -0.674509, 0.246907,
		-0.703349, 0.570054, -0.424662,
		40.002003, 30.474606, 22.690945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167336, 29.652113, 22.602541>,  <40.494350, 30.075567, 22.988209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167336, 29.652113, 22.602541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.037777, 29.997080, 22.446934>,  <39.960041, 30.204060, 22.353569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.037777, 29.997080, 22.446934>,  <40.167336, 29.652113, 22.602541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037777, 29.997080, 22.446934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382075, -0.256928, -0.887698,
		-0.865513, -0.436152, -0.246290,
		-0.323892, 0.862415, -0.389017,
		39.940609, 30.255804, 22.330229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628937, 29.580500, 22.068289>,  <40.167336, 29.652113, 22.602541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628937, 29.580500, 22.068289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.836971, 29.910536, 21.979990>,  <39.961792, 30.108559, 21.927010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.836971, 29.910536, 21.979990>,  <39.628937, 29.580500, 22.068289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836971, 29.910536, 21.979990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146739, -0.340928, -0.928567,
		-0.841413, 0.450545, -0.298386,
		0.520089, 0.825092, -0.220748,
		39.992996, 30.158064, 21.913765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261467, 30.060810, 21.541689>,  <39.628937, 29.580500, 22.068289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261467, 30.060810, 21.541689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.661190, 30.070007, 21.553349>,  <39.901024, 30.075525, 21.560345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.661190, 30.070007, 21.553349>,  <39.261467, 30.060810, 21.541689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661190, 30.070007, 21.553349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035572, -0.368203, -0.929065,
		-0.010628, 0.929461, -0.368767,
		0.999311, 0.022992, 0.029150,
		39.960983, 30.076904, 21.562094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882084, 29.644447, 21.806631>,  <39.261467, 30.060810, 21.541689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882084, 29.644447, 21.806631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.538868, 29.464008, 21.708426>,  <38.332939, 29.355745, 21.649502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.538868, 29.464008, 21.708426>,  <38.882084, 29.644447, 21.806631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538868, 29.464008, 21.708426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422262, 0.347528, 0.837209,
		-0.292341, 0.822031, -0.488674,
		-0.858040, -0.451099, -0.245515,
		38.281456, 29.328678, 21.634771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360340, 30.127089, 21.689783>,  <38.882084, 29.644447, 21.806631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360340, 30.127089, 21.689783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.192699, 29.789974, 21.824877>,  <38.092113, 29.587706, 21.905933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.192699, 29.789974, 21.824877>,  <38.360340, 30.127089, 21.689783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192699, 29.789974, 21.824877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420462, 0.509845, 0.750513,
		-0.804714, 0.172539, -0.568037,
		-0.419104, -0.842786, 0.337733,
		38.066967, 29.537138, 21.926197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902592, 30.449907, 22.216492>,  <38.360340, 30.127089, 21.689783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902592, 30.449907, 22.216492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.848820, 30.054066, 22.236958>,  <37.816559, 29.816561, 22.249237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.848820, 30.054066, 22.236958>,  <37.902592, 30.449907, 22.216492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848820, 30.054066, 22.236958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465095, 0.108600, 0.878574,
		-0.874995, 0.094307, -0.474857,
		-0.134425, -0.989602, 0.051163,
		37.808491, 29.757185, 22.252306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205242, 30.458485, 22.476583>,  <37.902592, 30.449907, 22.216492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205242, 30.458485, 22.476583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.338890, 30.089153, 22.552298>,  <37.419079, 29.867556, 22.597727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.338890, 30.089153, 22.552298>,  <37.205242, 30.458485, 22.476583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338890, 30.089153, 22.552298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444497, 0.022732, 0.895492,
		-0.831135, -0.383341, -0.402821,
		0.334122, -0.923327, 0.189287,
		37.439125, 29.812155, 22.609083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652813, 29.958496, 22.579180>,  <37.205242, 30.458485, 22.476583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652813, 29.958496, 22.579180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.978031, 29.830770, 22.773911>,  <37.173161, 29.754135, 22.890749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.978031, 29.830770, 22.773911>,  <36.652813, 29.958496, 22.579180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978031, 29.830770, 22.773911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495771, 0.058677, 0.866469,
		-0.305241, -0.945831, -0.110599,
		0.813043, -0.319314, 0.486826,
		37.221943, 29.734976, 22.919958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382530, 29.455263, 23.150116>,  <36.652813, 29.958496, 22.579180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382530, 29.455263, 23.150116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.748253, 29.587809, 23.243280>,  <36.967686, 29.667336, 23.299179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.748253, 29.587809, 23.243280>,  <36.382530, 29.455263, 23.150116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748253, 29.587809, 23.243280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286792, 0.123596, 0.949986,
		0.286003, -0.935373, 0.208036,
		0.914304, 0.331362, 0.232909,
		37.022545, 29.687218, 23.313152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343262, 29.221664, 23.745325>,  <36.382530, 29.455263, 23.150116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343262, 29.221664, 23.745325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.647724, 29.481062, 23.749140>,  <36.830402, 29.636702, 23.751429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.647724, 29.481062, 23.749140>,  <36.343262, 29.221664, 23.745325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647724, 29.481062, 23.749140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263493, 0.295766, 0.918202,
		0.592629, -0.701410, 0.395999,
		0.761158, 0.648496, 0.009537,
		36.876072, 29.675611, 23.752001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599197, 29.266596, 24.478840>,  <36.343262, 29.221664, 23.745325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599197, 29.266596, 24.478840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.728718, 29.596281, 24.293013>,  <36.806431, 29.794092, 24.181517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.728718, 29.596281, 24.293013>,  <36.599197, 29.266596, 24.478840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728718, 29.596281, 24.293013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231405, 0.545101, 0.805802,
		0.917388, -0.153420, 0.367234,
		0.323805, 0.824213, -0.464567,
		36.825859, 29.843546, 24.153643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105591, 29.493753, 24.942245>,  <36.599197, 29.266596, 24.478840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105591, 29.493753, 24.942245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.982719, 29.792858, 24.706789>,  <36.908997, 29.972321, 24.565516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.982719, 29.792858, 24.706789>,  <37.105591, 29.493753, 24.942245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982719, 29.792858, 24.706789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070952, 0.598829, 0.797728,
		0.949004, 0.286809, -0.130891,
		-0.307177, 0.747760, -0.588640,
		36.890568, 30.017185, 24.530197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611740, 30.029505, 24.999825>,  <37.105591, 29.493753, 24.942245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611740, 30.029505, 24.999825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.247650, 30.178213, 24.926861>,  <37.029198, 30.267439, 24.883081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.247650, 30.178213, 24.926861>,  <37.611740, 30.029505, 24.999825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247650, 30.178213, 24.926861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041376, 0.519929, 0.853207,
		0.412040, 0.769064, -0.488635,
		-0.910226, 0.371773, -0.182411,
		36.974583, 30.289745, 24.872137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634953, 30.667042, 25.451462>,  <37.611740, 30.029505, 24.999825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634953, 30.667042, 25.451462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.258587, 30.643723, 25.318026>,  <37.032768, 30.629730, 25.237963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.258587, 30.643723, 25.318026>,  <37.634953, 30.667042, 25.451462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258587, 30.643723, 25.318026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318231, 0.489076, 0.812117,
		0.115806, 0.870291, -0.478731,
		-0.940913, -0.058299, -0.333592,
		36.976315, 30.626232, 25.217949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346245, 31.409863, 25.412903>,  <37.634953, 30.667042, 25.451462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346245, 31.409863, 25.412903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.045914, 31.147253, 25.441866>,  <36.865715, 30.989687, 25.459244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.045914, 31.147253, 25.441866>,  <37.346245, 31.409863, 25.412903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045914, 31.147253, 25.441866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345035, 0.483331, 0.804576,
		-0.563218, 0.579111, -0.589419,
		-0.750823, -0.656522, 0.072407,
		36.820667, 30.950296, 25.463589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790611, 31.814743, 25.504137>,  <37.346245, 31.409863, 25.412903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790611, 31.814743, 25.504137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.676758, 31.450310, 25.623409>,  <36.608448, 31.231649, 25.694973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.676758, 31.450310, 25.623409>,  <36.790611, 31.814743, 25.504137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676758, 31.450310, 25.623409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298802, 0.379867, 0.875453,
		-0.910880, 0.160085, -0.380356,
		-0.284631, -0.911084, 0.298180,
		36.591370, 31.176985, 25.712864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175484, 31.926548, 25.790962>,  <36.790611, 31.814743, 25.504137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175484, 31.926548, 25.790962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.287807, 31.577126, 25.949984>,  <36.355202, 31.367472, 26.045397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.287807, 31.577126, 25.949984>,  <36.175484, 31.926548, 25.790962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287807, 31.577126, 25.949984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394815, 0.272407, 0.877448,
		-0.874795, -0.403357, -0.268397,
		0.280811, -0.873555, 0.397552,
		36.372051, 31.315060, 26.069248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578430, 31.527279, 26.086708>,  <36.175484, 31.926548, 25.790962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578430, 31.527279, 26.086708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.892616, 31.372849, 26.280199>,  <36.081127, 31.280190, 26.396294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.892616, 31.372849, 26.280199>,  <35.578430, 31.527279, 26.086708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892616, 31.372849, 26.280199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374421, 0.325909, 0.868097,
		-0.492804, -0.862976, 0.111434,
		0.785463, -0.386078, 0.483726,
		36.128254, 31.257025, 26.425316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332855, 31.298616, 26.744854>,  <35.578430, 31.527279, 26.086708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332855, 31.298616, 26.744854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.721432, 31.277309, 26.837343>,  <35.954578, 31.264526, 26.892836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.721432, 31.277309, 26.837343>,  <35.332855, 31.298616, 26.744854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721432, 31.277309, 26.837343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200085, 0.339899, 0.918931,
		-0.127540, -0.938952, 0.319534,
		0.971441, -0.053267, 0.231221,
		36.012863, 31.261330, 26.906710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357933, 30.931469, 27.313808>,  <35.332855, 31.298616, 26.744854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357933, 30.931469, 27.313808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.694809, 31.147093, 27.318472>,  <35.896935, 31.276466, 27.321270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.694809, 31.147093, 27.318472>,  <35.357933, 30.931469, 27.313808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694809, 31.147093, 27.318472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140553, 0.198613, 0.969947,
		0.520545, -0.818515, 0.243036,
		0.842187, 0.539061, 0.011657,
		35.947464, 31.308811, 27.321970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605530, 30.660879, 27.990221>,  <35.357933, 30.931469, 27.313808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605530, 30.660879, 27.990221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.808270, 30.990906, 27.890322>,  <35.929913, 31.188921, 27.830381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.808270, 30.990906, 27.890322>,  <35.605530, 30.660879, 27.990221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808270, 30.990906, 27.890322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049886, 0.261161, 0.964005,
		0.860592, -0.501061, 0.091210,
		0.506846, 0.825065, -0.249749,
		35.960323, 31.238426, 27.815397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095444, 30.673397, 28.491346>,  <35.605530, 30.660879, 27.990221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095444, 30.673397, 28.491346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.031845, 31.036484, 28.336031>,  <35.993687, 31.254337, 28.242842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.031845, 31.036484, 28.336031>,  <36.095444, 30.673397, 28.491346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031845, 31.036484, 28.336031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160997, 0.364188, 0.917305,
		0.974064, 0.208359, 0.088236,
		-0.158995, 0.907719, -0.388287,
		35.984146, 31.308800, 28.219545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287300, 31.091663, 29.089224>,  <36.095444, 30.673397, 28.491346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287300, 31.091663, 29.089224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.118473, 31.354446, 28.839338>,  <36.017178, 31.512115, 28.689407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.118473, 31.354446, 28.839338>,  <36.287300, 31.091663, 29.089224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118473, 31.354446, 28.839338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259781, 0.572556, 0.777620,
		0.868546, 0.490497, -0.070992,
		-0.422067, 0.656957, -0.624714,
		35.991852, 31.551533, 28.651924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.627907, 35.310425, 32.316864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.248844, 35.237019, 32.212345>,  <37.021408, 35.192974, 32.149635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.248844, 35.237019, 32.212345>,  <37.627907, 35.310425, 32.316864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248844, 35.237019, 32.212345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319000, 0.508616, 0.799718,
		-0.013861, 0.841208, -0.540533,
		-0.947653, -0.183515, -0.261295,
		36.964550, 35.181965, 32.133957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396248, 35.878513, 32.595661>,  <37.627907, 35.310425, 32.316864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396248, 35.878513, 32.595661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.080711, 35.637089, 32.549278>,  <36.891392, 35.492233, 32.521450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.080711, 35.637089, 32.549278>,  <37.396248, 35.878513, 32.595661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080711, 35.637089, 32.549278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467267, 0.466402, 0.751086,
		-0.399246, 0.646667, -0.649941,
		-0.788837, -0.603565, -0.115957,
		36.844059, 35.456020, 32.514492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766312, 36.298428, 32.635521>,  <37.396248, 35.878513, 32.595661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766312, 36.298428, 32.635521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.680962, 35.923306, 32.745052>,  <36.629753, 35.698231, 32.810772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.680962, 35.923306, 32.745052>,  <36.766312, 36.298428, 32.635521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680962, 35.923306, 32.745052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605437, 0.346908, 0.716311,
		-0.766758, -0.012945, -0.641806,
		-0.213375, -0.937810, 0.273832,
		36.616951, 35.641964, 32.827202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125626, 36.394367, 32.764164>,  <36.766312, 36.298428, 32.635521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125626, 36.394367, 32.764164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.227825, 36.058479, 32.955830>,  <36.289146, 35.856949, 33.070827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.227825, 36.058479, 32.955830>,  <36.125626, 36.394367, 32.764164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227825, 36.058479, 32.955830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348419, 0.382336, 0.855817,
		-0.901844, -0.385611, -0.194886,
		0.255500, -0.839716, 0.479162,
		36.304474, 35.806564, 33.099579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534233, 36.232365, 33.186005>,  <36.125626, 36.394367, 32.764164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534233, 36.232365, 33.186005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.859272, 36.058453, 33.341263>,  <36.054295, 35.954105, 33.434418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.859272, 36.058453, 33.341263>,  <35.534233, 36.232365, 33.186005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859272, 36.058453, 33.341263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221753, 0.385239, 0.895777,
		-0.538993, -0.813977, 0.216630,
		0.812596, -0.434779, 0.388142,
		36.103050, 35.928020, 33.457706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270859, 35.860584, 33.750042>,  <35.534233, 36.232365, 33.186005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270859, 35.860584, 33.750042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.659580, 35.925835, 33.818153>,  <35.892811, 35.964985, 33.859020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.659580, 35.925835, 33.818153>,  <35.270859, 35.860584, 33.750042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659580, 35.925835, 33.818153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196509, 0.161078, 0.967180,
		0.130344, -0.973367, 0.188592,
		0.971800, 0.163126, 0.170279,
		35.951118, 35.974770, 33.869236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402912, 35.436684, 34.204865>,  <35.270859, 35.860584, 33.750042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402912, 35.436684, 34.204865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.734890, 35.653851, 34.256157>,  <35.934074, 35.784149, 34.286934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.734890, 35.653851, 34.256157>,  <35.402912, 35.436684, 34.204865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734890, 35.653851, 34.256157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193077, 0.063900, 0.979101,
		0.523373, -0.837354, 0.157857,
		0.829941, 0.542913, 0.128231,
		35.983871, 35.816723, 34.294624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766727, 35.184822, 34.762218>,  <35.402912, 35.436684, 34.204865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766727, 35.184822, 34.762218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.895031, 35.562309, 34.729919>,  <35.972012, 35.788799, 34.710541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.895031, 35.562309, 34.729919>,  <35.766727, 35.184822, 34.762218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895031, 35.562309, 34.729919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138466, 0.131055, 0.981658,
		0.936986, -0.303691, 0.172709,
		0.320755, 0.943714, -0.080746,
		35.991257, 35.845425, 34.705696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107964, 35.308559, 35.314861>,  <35.766727, 35.184822, 34.762218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107964, 35.308559, 35.314861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.053120, 35.686359, 35.195454>,  <36.020214, 35.913040, 35.123810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.053120, 35.686359, 35.195454>,  <36.107964, 35.308559, 35.314861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053120, 35.686359, 35.195454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113399, 0.284420, 0.951969,
		0.984043, 0.164377, 0.068109,
		-0.137111, 0.944503, -0.298522,
		36.011986, 35.969711, 35.105896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451759, 35.701431, 35.734722>,  <36.107964, 35.308559, 35.314861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451759, 35.701431, 35.734722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.182396, 35.951187, 35.576397>,  <36.020779, 36.101040, 35.481400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.182396, 35.951187, 35.576397>,  <36.451759, 35.701431, 35.734722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182396, 35.951187, 35.576397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215067, 0.346793, 0.912952,
		0.707300, 0.699912, -0.099247,
		-0.673404, 0.624386, -0.395815,
		35.980373, 36.138504, 35.457653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466255, 36.388416, 36.131363>,  <36.451759, 35.701431, 35.734722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466255, 36.388416, 36.131363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.095242, 36.411583, 35.983673>,  <35.872635, 36.425484, 35.895061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.095242, 36.411583, 35.983673>,  <36.466255, 36.388416, 36.131363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095242, 36.411583, 35.983673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334107, 0.314231, 0.888612,
		0.167486, 0.947578, -0.272110,
		-0.927535, 0.057916, -0.369222,
		35.816982, 36.428959, 35.872906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185867, 36.936592, 36.430180>,  <36.466255, 36.388416, 36.131363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185867, 36.936592, 36.430180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.848255, 36.767246, 36.298496>,  <35.645687, 36.665638, 36.219486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.848255, 36.767246, 36.298496>,  <36.185867, 36.936592, 36.430180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848255, 36.767246, 36.298496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468413, 0.283041, 0.836945,
		-0.261154, 0.860611, -0.437205,
		-0.844031, -0.423364, -0.329204,
		35.595047, 36.640236, 36.199734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008995, 37.219902, 36.302784>,  <36.185867, 36.936592, 36.430180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008995, 37.219902, 36.302784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.109711, 36.959457, 36.016384>,  <37.170139, 36.803192, 35.844543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.109711, 36.959457, 36.016384>,  <37.008995, 37.219902, 36.302784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109711, 36.959457, 36.016384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415837, -0.740847, 0.527470,
		-0.873889, 0.164929, -0.457292,
		0.251788, -0.651109, -0.716002,
		37.185246, 36.764126, 35.801582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160210, 38.035172, 36.413006>,  <37.008995, 37.219902, 36.302784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160210, 38.035172, 36.413006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.480080, 37.813988, 36.319408>,  <37.672001, 37.681278, 36.263252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.480080, 37.813988, 36.319408>,  <37.160210, 38.035172, 36.413006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480080, 37.813988, 36.319408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501778, 0.829476, -0.245333,
		0.329748, 0.078776, 0.940777,
		0.799678, -0.552959, -0.233990,
		37.719982, 37.648102, 36.249210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181004, 38.830982, 36.380535>,  <37.160210, 38.035172, 36.413006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181004, 38.830982, 36.380535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.298412, 39.184174, 36.234005>,  <37.368858, 39.396088, 36.146088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.298412, 39.184174, 36.234005>,  <37.181004, 38.830982, 36.380535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298412, 39.184174, 36.234005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074045, -0.403051, -0.912177,
		-0.953081, 0.240618, -0.183683,
		0.293520, 0.882979, -0.366324,
		37.386467, 39.449066, 36.124107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701382, 38.892895, 35.836353>,  <37.181004, 38.830982, 36.380535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701382, 38.892895, 35.836353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.026226, 39.115330, 35.765648>,  <37.221130, 39.248791, 35.723225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.026226, 39.115330, 35.765648>,  <36.701382, 38.892895, 35.836353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026226, 39.115330, 35.765648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017706, -0.326279, -0.945108,
		-0.583239, 0.764400, -0.274819,
		0.812108, 0.556089, -0.176764,
		37.269859, 39.282158, 35.712620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538441, 39.286106, 35.165649>,  <36.701382, 38.892895, 35.836353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538441, 39.286106, 35.165649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.932625, 39.275120, 35.232723>,  <37.169136, 39.268528, 35.272968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.932625, 39.275120, 35.232723>,  <36.538441, 39.286106, 35.165649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932625, 39.275120, 35.232723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146020, -0.367795, -0.918371,
		0.086894, 0.929501, -0.358436,
		0.985458, -0.027462, 0.167685,
		37.228264, 39.266880, 35.283028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809967, 39.781467, 34.708584>,  <36.538441, 39.286106, 35.165649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809967, 39.781467, 34.708584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.094589, 39.514019, 34.794968>,  <37.265362, 39.353550, 34.846798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.094589, 39.514019, 34.794968>,  <36.809967, 39.781467, 34.708584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094589, 39.514019, 34.794968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177186, -0.126670, -0.975992,
		0.679925, 0.732734, 0.028338,
		0.711552, -0.668623, 0.215956,
		37.308056, 39.313431, 34.859753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439083, 39.942188, 34.318954>,  <36.809967, 39.781467, 34.708584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439083, 39.942188, 34.318954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.507816, 39.570396, 34.449516>,  <37.549057, 39.347321, 34.527855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.507816, 39.570396, 34.449516>,  <37.439083, 39.942188, 34.318954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507816, 39.570396, 34.449516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330793, -0.257658, -0.907848,
		0.927927, 0.263974, 0.263190,
		0.171835, -0.929479, 0.326408,
		37.559368, 39.291553, 34.547440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020531, 39.741367, 34.032364>,  <37.439083, 39.942188, 34.318954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020531, 39.741367, 34.032364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.853680, 39.391438, 34.130901>,  <37.753567, 39.181480, 34.190022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.853680, 39.391438, 34.130901>,  <38.020531, 39.741367, 34.032364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853680, 39.391438, 34.130901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307708, -0.390983, -0.867438,
		0.855171, -0.286034, 0.432282,
		-0.417132, -0.874824, 0.246342,
		37.728539, 39.128990, 34.204803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494335, 39.224899, 33.936817>,  <38.020531, 39.741367, 34.032364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494335, 39.224899, 33.936817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.146362, 39.028717, 33.916103>,  <37.937580, 38.911007, 33.903675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.146362, 39.028717, 33.916103>,  <38.494335, 39.224899, 33.936817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146362, 39.028717, 33.916103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323590, -0.488399, -0.810405,
		0.372176, -0.721750, 0.583578,
		-0.869928, -0.490453, -0.051780,
		37.885384, 38.881580, 33.900570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665051, 38.571129, 33.795979>,  <38.494335, 39.224899, 33.936817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665051, 38.571129, 33.795979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.280346, 38.610409, 33.693703>,  <38.049522, 38.633976, 33.632336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.280346, 38.610409, 33.693703>,  <38.665051, 38.571129, 33.795979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280346, 38.610409, 33.693703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203448, -0.368890, -0.906934,
		-0.183382, -0.924271, 0.334804,
		-0.961759, 0.098200, -0.255689,
		37.991817, 38.639870, 33.616997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611309, 38.027473, 33.384655>,  <38.665051, 38.571129, 33.795979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611309, 38.027473, 33.384655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.266472, 38.205399, 33.287556>,  <38.059570, 38.312153, 33.229298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.266472, 38.205399, 33.287556>,  <38.611309, 38.027473, 33.384655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266472, 38.205399, 33.287556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074561, -0.362472, -0.929007,
		-0.501227, -0.818994, 0.279320,
		-0.862097, 0.444817, -0.242746,
		38.007843, 38.338844, 33.214733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125790, 37.542801, 33.027370>,  <38.611309, 38.027473, 33.384655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125790, 37.542801, 33.027370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.959373, 37.885574, 32.905670>,  <37.859524, 38.091240, 32.832649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.959373, 37.885574, 32.905670>,  <38.125790, 37.542801, 33.027370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959373, 37.885574, 32.905670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309405, -0.448024, -0.838775,
		-0.855089, -0.254828, 0.451537,
		-0.416043, 0.856935, -0.304255,
		37.834560, 38.142654, 32.814392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527603, 37.317909, 32.752281>,  <38.125790, 37.542801, 33.027370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527603, 37.317909, 32.752281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.592266, 37.689110, 32.618008>,  <37.631062, 37.911831, 32.537441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.592266, 37.689110, 32.618008>,  <37.527603, 37.317909, 32.752281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592266, 37.689110, 32.618008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239527, -0.293091, -0.925594,
		-0.957338, 0.230031, 0.174902,
		0.161653, 0.928000, -0.335686,
		37.640762, 37.967510, 32.517303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938000, 37.449135, 32.329716>,  <37.527603, 37.317909, 32.752281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938000, 37.449135, 32.329716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.228767, 37.703636, 32.226357>,  <37.403229, 37.856335, 32.164341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.228767, 37.703636, 32.226357>,  <36.938000, 37.449135, 32.329716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228767, 37.703636, 32.226357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149587, -0.220541, -0.963839,
		-0.670230, 0.739289, -0.065142,
		0.726922, 0.636249, -0.258401,
		37.446842, 37.894512, 32.148834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672642, 37.927349, 31.713884>,  <36.938000, 37.449135, 32.329716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672642, 37.927349, 31.713884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.071331, 37.934124, 31.682264>,  <37.310547, 37.938187, 31.663292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.071331, 37.934124, 31.682264>,  <36.672642, 37.927349, 31.713884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071331, 37.934124, 31.682264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076560, -0.116289, -0.990260,
		-0.025961, 0.993071, -0.114612,
		0.996727, 0.016934, -0.079049,
		37.370350, 37.939205, 31.658550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854366, 38.472492, 31.271635>,  <36.672642, 37.927349, 31.713884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854366, 38.472492, 31.271635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.144718, 38.197582, 31.260679>,  <37.318928, 38.032635, 31.254105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.144718, 38.197582, 31.260679>,  <36.854366, 38.472492, 31.271635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144718, 38.197582, 31.260679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094168, -0.059850, -0.993756,
		0.681345, 0.723927, -0.108164,
		0.725880, -0.687276, -0.027392,
		37.362484, 37.991398, 31.252462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468338, 38.753345, 30.604734>,  <36.854366, 38.472492, 31.271635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468338, 38.753345, 30.604734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.118736, 38.693813, 30.419704>,  <35.908978, 38.658096, 30.308687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.118736, 38.693813, 30.419704>,  <36.468338, 38.753345, 30.604734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118736, 38.693813, 30.419704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462979, -0.034039, 0.885715,
		-0.147563, 0.988278, -0.039153,
		-0.874000, -0.148826, -0.462575,
		35.856537, 38.649166, 30.280931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922115, 39.316147, 30.767023>,  <36.468338, 38.753345, 30.604734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922115, 39.316147, 30.767023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.716438, 38.989994, 30.660620>,  <35.593033, 38.794304, 30.596777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.716438, 38.989994, 30.660620>,  <35.922115, 39.316147, 30.767023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716438, 38.989994, 30.660620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546330, 0.072298, 0.834444,
		-0.661155, 0.574397, -0.482641,
		-0.514196, -0.815378, -0.266010,
		35.562180, 38.745380, 30.580816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363636, 39.510849, 31.083822>,  <35.922115, 39.316147, 30.767023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363636, 39.510849, 31.083822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.310711, 39.129536, 30.975204>,  <35.278954, 38.900745, 30.910034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.310711, 39.129536, 30.975204>,  <35.363636, 39.510849, 31.083822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310711, 39.129536, 30.975204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731783, -0.090834, 0.675458,
		-0.668571, 0.288086, -0.685580,
		-0.132316, -0.953287, -0.271546,
		35.271015, 38.843548, 30.893742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675297, 39.472439, 31.066755>,  <35.363636, 39.510849, 31.083822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675297, 39.472439, 31.066755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.772274, 39.084469, 31.075424>,  <34.830460, 38.851688, 31.080626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.772274, 39.084469, 31.075424>,  <34.675297, 39.472439, 31.066755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772274, 39.084469, 31.075424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790379, -0.184513, 0.584170,
		-0.562602, -0.158756, -0.811342,
		0.242444, -0.969923, 0.021670,
		34.845009, 38.793491, 31.081924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119759, 39.075302, 30.824871>,  <34.675297, 39.472439, 31.066755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119759, 39.075302, 30.824871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.328819, 38.802982, 31.030140>,  <34.454254, 38.639591, 31.153301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.328819, 38.802982, 31.030140>,  <34.119759, 39.075302, 30.824871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328819, 38.802982, 31.030140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809620, -0.207758, 0.548955,
		-0.267113, -0.702388, -0.659774,
		0.522652, -0.680799, 0.513173,
		34.485615, 38.598743, 31.184092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667461, 38.503365, 30.866404>,  <34.119759, 39.075302, 30.824871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667461, 38.503365, 30.866404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.928822, 38.493176, 31.169035>,  <34.085640, 38.487064, 31.350615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.928822, 38.493176, 31.169035>,  <33.667461, 38.503365, 30.866404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928822, 38.493176, 31.169035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756328, 0.020405, 0.653874,
		-0.032096, -0.999467, -0.005934,
		0.653405, -0.025475, 0.756580,
		34.124844, 38.485535, 31.396009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387875, 37.968781, 31.271151>,  <33.667461, 38.503365, 30.866404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387875, 37.968781, 31.271151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.619785, 38.191906, 31.508705>,  <33.758934, 38.325783, 31.651237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.619785, 38.191906, 31.508705>,  <33.387875, 37.968781, 31.271151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619785, 38.191906, 31.508705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725812, 0.022406, 0.687529,
		0.370206, -0.829664, 0.417858,
		0.579780, 0.557813, 0.593885,
		33.793720, 38.359249, 31.686871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238491, 37.785370, 31.947760>,  <33.387875, 37.968781, 31.271151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238491, 37.785370, 31.947760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.428917, 38.119183, 32.058693>,  <33.543171, 38.319469, 32.125252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.428917, 38.119183, 32.058693>,  <33.238491, 37.785370, 31.947760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428917, 38.119183, 32.058693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572515, 0.054738, 0.818065,
		0.667523, -0.548229, 0.503843,
		0.476066, 0.834535, 0.277331,
		33.571735, 38.369541, 32.141891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341778, 37.690582, 32.703354>,  <33.238491, 37.785370, 31.947760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341778, 37.690582, 32.703354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.394562, 38.079849, 32.627945>,  <33.426231, 38.313408, 32.582699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.394562, 38.079849, 32.627945>,  <33.341778, 37.690582, 32.703354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394562, 38.079849, 32.627945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371215, 0.224859, 0.900910,
		0.919122, -0.048905, 0.390925,
		0.131962, 0.973163, -0.188519,
		33.434151, 38.371799, 32.571388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720528, 37.919201, 33.258934>,  <33.341778, 37.690582, 32.703354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720528, 37.919201, 33.258934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.553318, 38.260181, 33.133343>,  <33.452991, 38.464771, 33.057987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.553318, 38.260181, 33.133343>,  <33.720528, 37.919201, 33.258934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553318, 38.260181, 33.133343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384457, 0.147136, 0.911342,
		0.823073, 0.501673, 0.266225,
		-0.418024, 0.852453, -0.313975,
		33.427910, 38.515919, 33.039150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848305, 38.354282, 33.774334>,  <33.720528, 37.919201, 33.258934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848305, 38.354282, 33.774334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.541000, 38.509666, 33.570816>,  <33.356617, 38.602898, 33.448704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.541000, 38.509666, 33.570816>,  <33.848305, 38.354282, 33.774334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541000, 38.509666, 33.570816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409321, 0.312990, 0.857026,
		0.492172, 0.866679, -0.081451,
		-0.768260, 0.388465, -0.508794,
		33.310524, 38.626205, 33.418179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727665, 38.934242, 34.172234>,  <33.848305, 38.354282, 33.774334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727665, 38.934242, 34.172234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.405033, 38.885391, 33.940884>,  <33.211452, 38.856083, 33.802074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.405033, 38.885391, 33.940884>,  <33.727665, 38.934242, 34.172234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405033, 38.885391, 33.940884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589542, 0.094576, 0.802182,
		-0.043265, 0.987998, -0.148279,
		-0.806578, -0.122123, -0.578375,
		33.163059, 38.848755, 33.767372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.624668, 38.340881, 26.846701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322250, 38.079632, 26.829628>,  <37.140800, 37.922882, 26.819384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322250, 38.079632, 26.829628>,  <37.624668, 38.340881, 26.846701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322250, 38.079632, 26.829628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404446, 0.414920, 0.815024,
		-0.514603, 0.633459, -0.577853,
		-0.756047, -0.653124, -0.042681,
		37.095436, 37.883694, 26.816824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872696, 38.751759, 26.962284>,  <37.624668, 38.340881, 26.846701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872696, 38.751759, 26.962284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817204, 38.366516, 27.054533>,  <36.783909, 38.135372, 27.109882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817204, 38.366516, 27.054533>,  <36.872696, 38.751759, 26.962284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817204, 38.366516, 27.054533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455457, 0.268832, 0.848698,
		-0.879382, 0.012699, -0.475947,
		-0.138727, -0.963103, 0.230622,
		36.775585, 38.077583, 27.123720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156799, 38.761631, 27.165844>,  <36.872696, 38.751759, 26.962284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156799, 38.761631, 27.165844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321598, 38.430710, 27.318598>,  <36.420475, 38.232159, 27.410250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321598, 38.430710, 27.318598>,  <36.156799, 38.761631, 27.165844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321598, 38.430710, 27.318598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453596, 0.177273, 0.873399,
		-0.790261, -0.533056, -0.302225,
		0.411994, -0.827300, 0.381884,
		36.445198, 38.182518, 27.433163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669464, 38.389297, 27.448479>,  <36.156799, 38.761631, 27.165844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669464, 38.389297, 27.448479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982788, 38.263859, 27.663168>,  <36.170784, 38.188595, 27.791983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982788, 38.263859, 27.663168>,  <35.669464, 38.389297, 27.448479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982788, 38.263859, 27.663168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526172, 0.125263, 0.841102,
		-0.331001, -0.941257, -0.066886,
		0.783314, -0.313599, 0.536725,
		36.217781, 38.169781, 27.824186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472355, 37.936836, 27.989391>,  <35.669464, 38.389297, 27.448479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472355, 37.936836, 27.989391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835121, 38.007545, 28.142368>,  <36.052780, 38.049973, 28.234154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835121, 38.007545, 28.142368>,  <35.472355, 37.936836, 27.989391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835121, 38.007545, 28.142368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411929, 0.181471, 0.892963,
		0.088446, -0.967378, 0.237394,
		0.906913, 0.176769, 0.382441,
		36.107197, 38.060577, 28.257101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476475, 37.578159, 28.568260>,  <35.472355, 37.936836, 27.989391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476475, 37.578159, 28.568260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770981, 37.844055, 28.618923>,  <35.947685, 38.003593, 28.649321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770981, 37.844055, 28.618923>,  <35.476475, 37.578159, 28.568260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770981, 37.844055, 28.618923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298254, 0.150766, 0.942504,
		0.607424, -0.731705, 0.309264,
		0.736261, 0.664739, 0.126655,
		35.991859, 38.043476, 28.656919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933994, 37.324196, 29.072157>,  <35.476475, 37.578159, 28.568260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933994, 37.324196, 29.072157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980076, 37.721401, 29.061975>,  <36.007725, 37.959724, 29.055866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980076, 37.721401, 29.061975>,  <35.933994, 37.324196, 29.072157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980076, 37.721401, 29.061975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303831, 0.059622, 0.950858,
		0.945735, -0.101809, 0.308577,
		0.115204, 0.993016, -0.025454,
		36.014637, 38.019306, 29.054338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259136, 37.534534, 29.723610>,  <35.933994, 37.324196, 29.072157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259136, 37.534534, 29.723610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123215, 37.889767, 29.599775>,  <36.041660, 38.102905, 29.525475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123215, 37.889767, 29.599775>,  <36.259136, 37.534534, 29.723610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123215, 37.889767, 29.599775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399314, 0.161797, 0.902424,
		0.851517, 0.430269, 0.299645,
		-0.339804, 0.888082, -0.309585,
		36.021275, 38.156193, 29.506899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549591, 38.126495, 30.209322>,  <36.259136, 37.534534, 29.723610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549591, 38.126495, 30.209322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231194, 38.265274, 30.010923>,  <36.040154, 38.348541, 29.891884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231194, 38.265274, 30.010923>,  <36.549591, 38.126495, 30.209322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231194, 38.265274, 30.010923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461842, 0.181554, 0.868182,
		0.391265, 0.920143, 0.015718,
		-0.795999, 0.346949, -0.495997,
		35.992393, 38.369358, 29.862123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153339, 38.478474, 30.495790>,  <36.549591, 38.126495, 30.209322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153339, 38.478474, 30.495790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362598, 38.180588, 30.661543>,  <37.488155, 38.001858, 30.760994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362598, 38.180588, 30.661543>,  <37.153339, 38.478474, 30.495790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362598, 38.180588, 30.661543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216090, -0.354427, -0.909773,
		0.824389, 0.565493, -0.024494,
		0.523152, -0.744714, 0.414383,
		37.519543, 37.957172, 30.785858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839931, 38.533775, 30.264589>,  <37.153339, 38.478474, 30.495790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839931, 38.533775, 30.264589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785381, 38.153156, 30.374836>,  <37.752651, 37.924786, 30.440983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785381, 38.153156, 30.374836>,  <37.839931, 38.533775, 30.264589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785381, 38.153156, 30.374836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357057, -0.306728, -0.882286,
		0.924073, -0.021914, 0.381587,
		-0.136378, -0.951545, 0.275615,
		37.744469, 37.867691, 30.457520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453079, 38.079468, 30.061243>,  <37.839931, 38.533775, 30.264589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453079, 38.079468, 30.061243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153957, 37.815575, 30.091015>,  <37.974483, 37.657238, 30.108877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153957, 37.815575, 30.091015>,  <38.453079, 38.079468, 30.061243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153957, 37.815575, 30.091015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354164, -0.491223, -0.795781,
		0.561564, -0.568730, 0.600993,
		-0.747806, -0.659732, 0.074429,
		37.929615, 37.617657, 30.113344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791264, 37.445744, 30.132481>,  <38.453079, 38.079468, 30.061243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791264, 37.445744, 30.132481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415962, 37.391441, 30.005199>,  <38.190781, 37.358860, 29.928831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415962, 37.391441, 30.005199>,  <38.791264, 37.445744, 30.132481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415962, 37.391441, 30.005199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315254, -0.714314, -0.624796,
		-0.142477, -0.686531, 0.713004,
		-0.938251, -0.135759, -0.318205,
		38.134487, 37.350716, 29.909739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816212, 36.699879, 30.172398>,  <38.791264, 37.445744, 30.132481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816212, 36.699879, 30.172398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523075, 36.860073, 29.952377>,  <38.347195, 36.956188, 29.820364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523075, 36.860073, 29.952377>,  <38.816212, 36.699879, 30.172398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523075, 36.860073, 29.952377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306892, -0.526961, -0.792546,
		-0.607260, -0.749616, 0.263271,
		-0.732839, 0.400486, -0.550053,
		38.303223, 36.980217, 29.787361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559586, 36.132175, 29.829723>,  <38.816212, 36.699879, 30.172398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559586, 36.132175, 29.829723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436256, 36.463818, 29.643169>,  <38.362259, 36.662804, 29.531237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436256, 36.463818, 29.643169>,  <38.559586, 36.132175, 29.829723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436256, 36.463818, 29.643169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250152, -0.402350, -0.880646,
		-0.917803, -0.388189, -0.083350,
		-0.308322, 0.829110, -0.466385,
		38.343761, 36.712551, 29.503254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951218, 35.981705, 29.445797>,  <38.559586, 36.132175, 29.829723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951218, 35.981705, 29.445797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149513, 36.285069, 29.276535>,  <38.268490, 36.467087, 29.174978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149513, 36.285069, 29.276535>,  <37.951218, 35.981705, 29.445797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149513, 36.285069, 29.276535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277270, -0.599958, -0.750448,
		-0.823019, 0.254700, -0.507708,
		0.495743, 0.758405, -0.423156,
		38.298237, 36.512589, 29.149588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871582, 35.817902, 28.766369>,  <37.951218, 35.981705, 29.445797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871582, 35.817902, 28.766369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139088, 36.114811, 28.749451>,  <38.299591, 36.292957, 28.739300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139088, 36.114811, 28.749451>,  <37.871582, 35.817902, 28.766369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139088, 36.114811, 28.749451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357935, -0.371309, -0.856745,
		-0.651640, 0.557822, -0.514003,
		0.668765, 0.742270, -0.042296,
		38.339718, 36.337490, 28.736761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907894, 35.968182, 28.080898>,  <37.871582, 35.817902, 28.766369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907894, 35.968182, 28.080898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240204, 36.148903, 28.210938>,  <38.439590, 36.257336, 28.288961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240204, 36.148903, 28.210938>,  <37.907894, 35.968182, 28.080898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240204, 36.148903, 28.210938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469931, -0.256327, -0.844666,
		-0.298288, 0.854502, -0.425265,
		0.830776, 0.451799, 0.325098,
		38.489437, 36.284443, 28.308466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199013, 36.462605, 27.535728>,  <37.907894, 35.968182, 28.080898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199013, 36.462605, 27.535728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511932, 36.366222, 27.765493>,  <38.699684, 36.308395, 27.903353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511932, 36.366222, 27.765493>,  <38.199013, 36.462605, 27.535728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511932, 36.366222, 27.765493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541880, -0.191537, -0.818339,
		0.307203, 0.951449, -0.019271,
		0.782299, -0.240954, 0.574412,
		38.746620, 36.293938, 27.937817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743237, 36.689140, 27.139828>,  <38.199013, 36.462605, 27.535728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743237, 36.689140, 27.139828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915249, 36.430744, 27.392105>,  <39.018456, 36.275707, 27.543470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915249, 36.430744, 27.392105>,  <38.743237, 36.689140, 27.139828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915249, 36.430744, 27.392105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585964, -0.331741, -0.739320,
		0.686818, 0.687493, 0.235867,
		0.430031, -0.645988, 0.630692,
		39.044258, 36.236946, 27.581312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442005, 36.715244, 27.032780>,  <38.743237, 36.689140, 27.139828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442005, 36.715244, 27.032780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424782, 36.359783, 27.215403>,  <39.414448, 36.146507, 27.324976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424782, 36.359783, 27.215403>,  <39.442005, 36.715244, 27.032780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424782, 36.359783, 27.215403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757679, -0.326911, -0.564847,
		0.651205, 0.321605, 0.687388,
		-0.043057, -0.888650, 0.456559,
		39.411865, 36.093189, 27.352371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109974, 36.512283, 27.040335>,  <39.442005, 36.715244, 27.032780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109974, 36.512283, 27.040335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935089, 36.166191, 27.138489>,  <39.830158, 35.958534, 27.197382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935089, 36.166191, 27.138489>,  <40.109974, 36.512283, 27.040335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935089, 36.166191, 27.138489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744972, -0.501278, -0.440156,
		0.503844, -0.009638, 0.863741,
		-0.437217, -0.865233, 0.245386,
		39.803925, 35.906620, 27.212105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635929, 36.067913, 27.324509>,  <40.109974, 36.512283, 27.040335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635929, 36.067913, 27.324509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324314, 35.859142, 27.185543>,  <40.137344, 35.733879, 27.102163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324314, 35.859142, 27.185543>,  <40.635929, 36.067913, 27.324509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324314, 35.859142, 27.185543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621490, -0.569673, -0.537794,
		0.082777, -0.634875, 0.768168,
		-0.779036, -0.521926, -0.347413,
		40.090603, 35.702564, 27.081320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.133419, 30.565281, 25.994644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.297482, 30.929237, 26.019526>,  <33.395920, 31.147612, 26.034454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.297482, 30.929237, 26.019526>,  <33.133419, 30.565281, 25.994644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297482, 30.929237, 26.019526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405451, 0.120820, 0.906097,
		0.816936, -0.396858, 0.418472,
		0.410152, 0.909894, 0.062204,
		33.420528, 31.202206, 26.038187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378292, 30.663797, 26.680996>,  <33.133419, 30.565281, 25.994644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378292, 30.663797, 26.680996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.347153, 31.038998, 26.545885>,  <33.328468, 31.264118, 26.464819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.347153, 31.038998, 26.545885>,  <33.378292, 30.663797, 26.680996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347153, 31.038998, 26.545885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420673, 0.276261, 0.864126,
		0.903866, 0.209363, 0.373085,
		-0.077847, 0.938001, -0.337776,
		33.323799, 31.320398, 26.444551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623470, 31.034616, 27.231718>,  <33.378292, 30.663797, 26.680996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623470, 31.034616, 27.231718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.398235, 31.283566, 27.014248>,  <33.263092, 31.432936, 26.883766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.398235, 31.283566, 27.014248>,  <33.623470, 31.034616, 27.231718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398235, 31.283566, 27.014248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444121, 0.326899, 0.834202,
		0.696910, 0.711189, 0.092335,
		-0.563092, 0.622372, -0.543673,
		33.229309, 31.470278, 26.851147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806618, 31.616396, 27.486467>,  <33.623470, 31.034616, 27.231718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806618, 31.616396, 27.486467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.459698, 31.687746, 27.300577>,  <33.251545, 31.730556, 27.189043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.459698, 31.687746, 27.300577>,  <33.806618, 31.616396, 27.486467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459698, 31.687746, 27.300577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212280, 0.711910, 0.669419,
		0.450251, 0.679241, -0.579575,
		-0.867302, 0.178374, -0.464726,
		33.199509, 31.741259, 27.161160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770519, 32.351780, 27.285929>,  <33.806618, 31.616396, 27.486467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770519, 32.351780, 27.285929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.399845, 32.208351, 27.330973>,  <33.177441, 32.122295, 27.358000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.399845, 32.208351, 27.330973>,  <33.770519, 32.351780, 27.285929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399845, 32.208351, 27.330973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230086, 0.778162, 0.584401,
		-0.297179, 0.515646, -0.803613,
		-0.926685, -0.358572, 0.112610,
		33.121841, 32.100780, 27.364756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385376, 32.944263, 27.436529>,  <33.770519, 32.351780, 27.285929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385376, 32.944263, 27.436529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.128960, 32.651440, 27.528759>,  <32.975109, 32.475746, 27.584097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.128960, 32.651440, 27.528759>,  <33.385376, 32.944263, 27.436529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128960, 32.651440, 27.528759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457552, 0.605701, 0.650978,
		-0.616212, 0.311801, -0.723231,
		-0.641038, -0.732056, 0.230575,
		32.936649, 32.431824, 27.597931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766674, 33.323723, 27.487783>,  <33.385376, 32.944263, 27.436529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766674, 33.323723, 27.487783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.740646, 32.965096, 27.663019>,  <32.725029, 32.749920, 27.768162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.740646, 32.965096, 27.663019>,  <32.766674, 33.323723, 27.487783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740646, 32.965096, 27.663019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420012, 0.422847, 0.802988,
		-0.905183, -0.131752, -0.404087,
		-0.065072, -0.896572, 0.438091,
		32.721127, 32.696125, 27.794447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080425, 33.285999, 27.809847>,  <32.766674, 33.323723, 27.487783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080425, 33.285999, 27.809847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.307945, 33.012627, 27.992882>,  <32.444458, 32.848602, 28.102703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.307945, 33.012627, 27.992882>,  <32.080425, 33.285999, 27.809847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307945, 33.012627, 27.992882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293658, 0.350929, 0.889164,
		-0.768262, -0.640135, -0.001085,
		0.568804, -0.683430, 0.457587,
		32.478588, 32.807598, 28.130157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638803, 32.937866, 28.369810>,  <32.080425, 33.285999, 27.809847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638803, 32.937866, 28.369810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.024956, 32.882874, 28.458483>,  <32.256645, 32.849880, 28.511686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.024956, 32.882874, 28.458483>,  <31.638803, 32.937866, 28.369810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024956, 32.882874, 28.458483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186931, 0.228131, 0.955517,
		-0.181936, -0.963876, 0.194534,
		0.965379, -0.137479, 0.221683,
		32.314568, 32.841629, 28.524988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590733, 32.469021, 28.858377>,  <31.638803, 32.937866, 28.369810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590733, 32.469021, 28.858377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.937595, 32.665668, 28.890247>,  <32.145714, 32.783657, 28.909370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.937595, 32.665668, 28.890247>,  <31.590733, 32.469021, 28.858377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937595, 32.665668, 28.890247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157582, 0.119081, 0.980300,
		0.472448, -0.862629, 0.180733,
		0.867157, 0.491621, 0.079675,
		32.197742, 32.813156, 28.914150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819670, 32.277950, 29.563997>,  <31.590733, 32.469021, 28.858377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819670, 32.277950, 29.563997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.033924, 32.603222, 29.472935>,  <32.162476, 32.798386, 29.418297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.033924, 32.603222, 29.472935>,  <31.819670, 32.277950, 29.563997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033924, 32.603222, 29.472935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173730, 0.369943, 0.912667,
		0.826386, -0.449305, 0.339428,
		0.535635, 0.813184, -0.227658,
		32.194614, 32.847176, 29.404636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144688, 32.380043, 30.234186>,  <31.819670, 32.277950, 29.563997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144688, 32.380043, 30.234186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.202457, 32.714718, 30.022871>,  <32.237122, 32.915524, 29.896082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.202457, 32.714718, 30.022871>,  <32.144688, 32.380043, 30.234186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202457, 32.714718, 30.022871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089122, 0.542715, 0.835175,
		0.985494, -0.073540, 0.152951,
		0.144427, 0.836691, -0.528288,
		32.245785, 32.965725, 29.864384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634155, 32.771858, 30.672729>,  <32.144688, 32.380043, 30.234186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634155, 32.771858, 30.672729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.419472, 32.999073, 30.423162>,  <32.290661, 33.135403, 30.273422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.419472, 32.999073, 30.423162>,  <32.634155, 32.771858, 30.672729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419472, 32.999073, 30.423162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336081, 0.534338, 0.775586,
		0.773944, 0.625953, -0.095879,
		-0.536712, 0.568037, -0.623918,
		32.258457, 33.169483, 30.235987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837440, 33.455414, 30.756136>,  <32.634155, 32.771858, 30.672729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837440, 33.455414, 30.756136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.477180, 33.482754, 30.584478>,  <32.261024, 33.499157, 30.481483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.477180, 33.482754, 30.584478>,  <32.837440, 33.455414, 30.756136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477180, 33.482754, 30.584478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265013, 0.696258, 0.667078,
		0.344390, 0.714530, -0.608968,
		-0.900646, 0.068350, -0.429144,
		32.206985, 33.503258, 30.455734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530514, 33.789173, 31.064945>,  <32.837440, 33.455414, 30.756136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530514, 33.789173, 31.064945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.743587, 33.570293, 31.323195>,  <33.871433, 33.438965, 31.478144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.743587, 33.570293, 31.323195>,  <33.530514, 33.789173, 31.064945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743587, 33.570293, 31.323195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647217, -0.228147, -0.727365,
		0.545307, 0.805311, 0.232624,
		0.532683, -0.547195, 0.645621,
		33.903393, 33.406136, 31.516880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218445, 33.962837, 30.941860>,  <33.530514, 33.789173, 31.064945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218445, 33.962837, 30.941860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.232803, 33.615322, 31.139412>,  <34.241417, 33.406815, 31.257942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.232803, 33.615322, 31.139412>,  <34.218445, 33.962837, 30.941860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232803, 33.615322, 31.139412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677457, -0.342162, -0.651135,
		0.734686, 0.357954, 0.576286,
		0.035894, -0.868789, 0.493880,
		34.243572, 33.354687, 31.287577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880840, 33.800346, 30.959253>,  <34.218445, 33.962837, 30.941860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880840, 33.800346, 30.959253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.714561, 33.441910, 31.021490>,  <34.614796, 33.226849, 31.058832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.714561, 33.441910, 31.021490>,  <34.880840, 33.800346, 30.959253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714561, 33.441910, 31.021490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642576, -0.410434, -0.647024,
		0.643655, -0.168988, 0.746426,
		-0.415698, -0.896095, 0.155590,
		34.589851, 33.173080, 31.068167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384415, 33.381176, 30.848377>,  <34.880840, 33.800346, 30.959253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384415, 33.381176, 30.848377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.090088, 33.110424, 30.840385>,  <34.913490, 32.947971, 30.835590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.090088, 33.110424, 30.840385>,  <35.384415, 33.381176, 30.848377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090088, 33.110424, 30.840385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585774, -0.621421, -0.520293,
		0.339761, -0.394546, 0.853754,
		-0.735820, -0.676882, -0.019981,
		34.869343, 32.907360, 30.834391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739792, 32.776417, 30.754166>,  <35.384415, 33.381176, 30.848377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739792, 32.776417, 30.754166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.371803, 32.673065, 30.636250>,  <35.151012, 32.611053, 30.565500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.371803, 32.673065, 30.636250>,  <35.739792, 32.776417, 30.754166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371803, 32.673065, 30.636250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391652, -0.637310, -0.663660,
		-0.016397, -0.726001, 0.687499,
		-0.919967, -0.258378, -0.294790,
		35.095814, 32.595551, 30.547813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759911, 32.036755, 30.798149>,  <35.739792, 32.776417, 30.754166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759911, 32.036755, 30.798149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.468369, 32.162895, 30.555063>,  <35.293442, 32.238579, 30.409212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.468369, 32.162895, 30.555063>,  <35.759911, 32.036755, 30.798149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468369, 32.162895, 30.555063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398966, -0.525718, -0.751297,
		-0.556410, -0.790046, 0.257360,
		-0.728858, 0.315351, -0.607716,
		35.249710, 32.257500, 30.372747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564476, 31.471430, 30.403984>,  <35.759911, 32.036755, 30.798149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564476, 31.471430, 30.403984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.404694, 31.782946, 30.210522>,  <35.308823, 31.969854, 30.094444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.404694, 31.782946, 30.210522>,  <35.564476, 31.471430, 30.403984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404694, 31.782946, 30.210522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353154, -0.356136, -0.865130,
		-0.846000, -0.516387, -0.132771,
		-0.399457, 0.778788, -0.483656,
		35.284855, 32.016582, 30.065426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065430, 31.246710, 29.806938>,  <35.564476, 31.471430, 30.403984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065430, 31.246710, 29.806938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.187485, 31.614777, 29.708805>,  <35.260715, 31.835617, 29.649925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.187485, 31.614777, 29.708805>,  <35.065430, 31.246710, 29.806938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187485, 31.614777, 29.708805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255166, -0.327200, -0.909852,
		-0.917487, 0.215027, -0.334635,
		0.305136, 0.920165, -0.245334,
		35.279026, 31.890825, 29.635204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741432, 31.391785, 29.203678>,  <35.065430, 31.246710, 29.806938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741432, 31.391785, 29.203678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.061913, 31.628969, 29.235853>,  <35.254200, 31.771280, 29.255159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.061913, 31.628969, 29.235853>,  <34.741432, 31.391785, 29.203678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061913, 31.628969, 29.235853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242506, -0.198859, -0.949550,
		-0.547052, 0.780288, -0.303124,
		0.801202, 0.592963, 0.080438,
		35.302273, 31.806858, 29.259985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749409, 31.809334, 28.510668>,  <34.741432, 31.391785, 29.203678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749409, 31.809334, 28.510668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.119942, 31.851181, 28.655420>,  <35.342262, 31.876289, 28.742271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.119942, 31.851181, 28.655420>,  <34.749409, 31.809334, 28.510668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119942, 31.851181, 28.655420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373988, -0.370513, -0.850207,
		0.045135, 0.922916, -0.382345,
		0.926335, 0.104618, 0.361883,
		35.397842, 31.882566, 28.763985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137447, 32.287037, 27.977972>,  <34.749409, 31.809334, 28.510668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137447, 32.287037, 27.977972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.421654, 32.086571, 28.175554>,  <35.592178, 31.966290, 28.294104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.421654, 32.086571, 28.175554>,  <35.137447, 32.287037, 27.977972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421654, 32.086571, 28.175554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449331, -0.217088, -0.866588,
		0.541539, 0.837677, 0.070946,
		0.710519, -0.501169, 0.493956,
		35.634808, 31.936220, 28.323742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808868, 32.530628, 27.799637>,  <35.137447, 32.287037, 27.977972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808868, 32.530628, 27.799637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.886333, 32.153358, 27.907648>,  <35.932812, 31.926996, 27.972454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.886333, 32.153358, 27.907648>,  <35.808868, 32.530628, 27.799637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886333, 32.153358, 27.907648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331957, -0.196006, -0.922706,
		0.923200, 0.268333, 0.275134,
		0.193664, -0.943175, 0.270028,
		35.944431, 31.870405, 27.988657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572578, 32.393040, 27.678728>,  <35.808868, 32.530628, 27.799637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572578, 32.393040, 27.678728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.376339, 32.045101, 27.699446>,  <36.258595, 31.836338, 27.711876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.376339, 32.045101, 27.699446>,  <36.572578, 32.393040, 27.678728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376339, 32.045101, 27.699446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411420, -0.283621, -0.866194,
		0.768145, -0.403645, 0.497016,
		-0.490599, -0.869845, 0.051794,
		36.229160, 31.784147, 27.714985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008091, 31.977695, 27.333265>,  <36.572578, 32.393040, 27.678728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008091, 31.977695, 27.333265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.688072, 31.738186, 27.348244>,  <36.496063, 31.594481, 27.357231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.688072, 31.738186, 27.348244>,  <37.008091, 31.977695, 27.333265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688072, 31.738186, 27.348244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240976, -0.377885, -0.893943,
		0.549419, -0.706169, 0.446614,
		-0.800043, -0.598772, 0.037448,
		36.448059, 31.558554, 27.359478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724697, 31.814899, 27.543221>,  <37.008091, 31.977695, 27.333265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724697, 31.814899, 27.543221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.908535, 32.130573, 27.380270>,  <38.018837, 32.319977, 27.282499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.908535, 32.130573, 27.380270>,  <37.724697, 31.814899, 27.543221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908535, 32.130573, 27.380270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265011, 0.559656, 0.785210,
		0.847667, -0.252921, 0.466359,
		0.459597, 0.789187, -0.407375,
		38.046413, 32.367329, 27.258057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046249, 32.036247, 28.062061>,  <37.724697, 31.814899, 27.543221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046249, 32.036247, 28.062061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.077576, 32.374100, 27.850225>,  <38.096371, 32.576813, 27.723124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.077576, 32.374100, 27.850225>,  <38.046249, 32.036247, 28.062061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077576, 32.374100, 27.850225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357011, 0.519751, 0.776146,
		0.930812, 0.128285, 0.342247,
		0.078315, 0.844631, -0.529589,
		38.101070, 32.627491, 27.691349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347893, 32.494293, 28.538744>,  <38.046249, 32.036247, 28.062061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347893, 32.494293, 28.538744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.185963, 32.731728, 28.260529>,  <38.088802, 32.874187, 28.093599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.185963, 32.731728, 28.260529>,  <38.347893, 32.494293, 28.538744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185963, 32.731728, 28.260529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116034, 0.721159, 0.682984,
		0.907000, 0.357199, -0.223071,
		-0.404830, 0.593582, -0.695538,
		38.064514, 32.909801, 28.051867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715370, 33.162910, 28.613438>,  <38.347893, 32.494293, 28.538744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715370, 33.162910, 28.613438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.348526, 33.199921, 28.458338>,  <38.128422, 33.222126, 28.365276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.348526, 33.199921, 28.458338>,  <38.715370, 33.162910, 28.613438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348526, 33.199921, 28.458338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260553, 0.597031, 0.758726,
		0.301703, 0.796864, -0.523433,
		-0.917108, 0.092528, -0.387752,
		38.073395, 33.227680, 28.342012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514359, 33.863285, 28.645313>,  <38.715370, 33.162910, 28.613438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514359, 33.863285, 28.645313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.157619, 33.693409, 28.583042>,  <37.943577, 33.591484, 28.545679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.157619, 33.693409, 28.583042>,  <38.514359, 33.863285, 28.645313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157619, 33.693409, 28.583042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398963, 0.576396, 0.713159,
		-0.213141, 0.698143, -0.683497,
		-0.891852, -0.424693, -0.155680,
		37.890064, 33.566002, 28.536339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026112, 34.392212, 28.647112>,  <38.514359, 33.863285, 28.645313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026112, 34.392212, 28.647112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.788506, 34.077152, 28.712547>,  <37.645943, 33.888119, 28.751808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.788506, 34.077152, 28.712547>,  <38.026112, 34.392212, 28.647112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788506, 34.077152, 28.712547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398056, 0.464498, 0.791071,
		-0.699071, 0.404788, -0.589445,
		-0.594012, -0.787647, 0.163589,
		37.610302, 33.840858, 28.761623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420074, 34.698162, 28.827475>,  <38.026112, 34.392212, 28.647112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420074, 34.698162, 28.827475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.387943, 34.325768, 28.969919>,  <37.368664, 34.102333, 29.055386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.387943, 34.325768, 28.969919>,  <37.420074, 34.698162, 28.827475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387943, 34.325768, 28.969919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345835, 0.361104, 0.866027,
		-0.934851, -0.053587, -0.350974,
		-0.080330, -0.930985, 0.356111,
		37.363846, 34.046471, 29.076752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706539, 34.536098, 29.056852>,  <37.420074, 34.698162, 28.827475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706539, 34.536098, 29.056852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.915901, 34.279064, 29.280684>,  <37.041519, 34.124844, 29.414982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.915901, 34.279064, 29.280684>,  <36.706539, 34.536098, 29.056852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915901, 34.279064, 29.280684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449062, 0.350094, 0.822057,
		-0.724151, -0.681551, -0.105324,
		0.523400, -0.642590, 0.559580,
		37.072922, 34.086288, 29.448557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278965, 34.363640, 29.554541>,  <36.706539, 34.536098, 29.056852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278965, 34.363640, 29.554541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.640305, 34.265823, 29.695490>,  <36.857109, 34.207134, 29.780060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.640305, 34.265823, 29.695490>,  <36.278965, 34.363640, 29.554541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640305, 34.265823, 29.695490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281629, 0.281456, 0.917316,
		-0.323501, -0.927891, 0.185381,
		0.903345, -0.244544, 0.352372,
		36.911308, 34.192459, 29.801201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098953, 34.126263, 30.220259>,  <36.278965, 34.363640, 29.554541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098953, 34.126263, 30.220259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.487347, 34.221371, 30.210041>,  <36.720383, 34.278435, 30.203911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.487347, 34.221371, 30.210041>,  <36.098953, 34.126263, 30.220259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487347, 34.221371, 30.210041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066835, 0.372379, 0.925671,
		0.229604, -0.897107, 0.377466,
		0.970987, 0.237765, -0.025542,
		36.778641, 34.292702, 30.202379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282734, 33.861759, 30.763235>,  <36.098953, 34.126263, 30.220259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282734, 33.861759, 30.763235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.561401, 34.140320, 30.694324>,  <36.728600, 34.307457, 30.652979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.561401, 34.140320, 30.694324>,  <36.282734, 33.861759, 30.763235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561401, 34.140320, 30.694324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075031, 0.309552, 0.947918,
		0.713461, -0.647456, 0.267906,
		0.696666, 0.696404, -0.172275,
		36.770401, 34.349239, 30.642643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796844, 33.624702, 31.206650>,  <36.282734, 33.861759, 30.763235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796844, 33.624702, 31.206650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.859985, 34.013103, 31.134838>,  <36.897869, 34.246143, 31.091751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.859985, 34.013103, 31.134838>,  <36.796844, 33.624702, 31.206650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859985, 34.013103, 31.134838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120554, 0.199400, 0.972474,
		0.980077, -0.131859, 0.148534,
		0.157847, 0.971006, -0.179531,
		36.907341, 34.304405, 31.080978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065670, 33.919380, 31.799622>,  <36.796844, 33.624702, 31.206650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065670, 33.919380, 31.799622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.943710, 34.260414, 31.629852>,  <36.870533, 34.465034, 31.527990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.943710, 34.260414, 31.629852>,  <37.065670, 33.919380, 31.799622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943710, 34.260414, 31.629852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162217, 0.392640, 0.905273,
		0.938469, 0.344864, 0.018588,
		-0.304898, 0.852586, -0.424423,
		36.852242, 34.516190, 31.502525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506859, 34.439758, 32.026619>,  <37.065670, 33.919380, 31.799622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506859, 34.439758, 32.026619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.157070, 34.604473, 31.924067>,  <36.947197, 34.703300, 31.862535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.157070, 34.604473, 31.924067>,  <37.506859, 34.439758, 32.026619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157070, 34.604473, 31.924067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002317, 0.524982, 0.851110,
		0.485069, 0.744867, -0.458128,
		-0.874473, 0.411786, -0.256378,
		36.894730, 34.728008, 31.847153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.867207, 35.153004, 27.302681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.563263, 35.263500, 27.067289>,  <40.380898, 35.329800, 26.926054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.563263, 35.263500, 27.067289>,  <40.867207, 35.153004, 27.302681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563263, 35.263500, 27.067289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284322, -0.672841, -0.682968,
		-0.584617, -0.686276, 0.432722,
		-0.759858, 0.276242, -0.588477,
		40.335304, 35.346375, 26.890745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925060, 34.696026, 26.767838>,  <40.867207, 35.153004, 27.302681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.925060, 34.696026, 26.767838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.636963, 34.908260, 26.589077>,  <40.464104, 35.035603, 26.481821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.636963, 34.908260, 26.589077>,  <40.925060, 34.696026, 26.767838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.636963, 34.908260, 26.589077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093890, -0.563727, -0.820607,
		-0.687340, -0.632995, 0.356203,
		-0.720242, 0.530592, -0.446904,
		40.420891, 35.067436, 26.455006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428349, 34.171997, 26.583546>,  <40.925060, 34.696026, 26.767838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428349, 34.171997, 26.583546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.359417, 34.491745, 26.353306>,  <40.318058, 34.683594, 26.215162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.359417, 34.491745, 26.353306>,  <40.428349, 34.171997, 26.583546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359417, 34.491745, 26.353306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132472, -0.560227, -0.817677,
		-0.976091, -0.217159, -0.009351,
		-0.172328, 0.799367, -0.575601,
		40.307720, 34.731556, 26.180626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972500, 33.941559, 26.070433>,  <40.428349, 34.171997, 26.583546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972500, 33.941559, 26.070433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.131485, 34.272026, 25.910700>,  <40.226875, 34.470306, 25.814859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.131485, 34.272026, 25.910700>,  <39.972500, 33.941559, 26.070433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131485, 34.272026, 25.910700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047630, -0.416023, -0.908106,
		-0.916380, 0.379961, -0.126005,
		0.397466, 0.826168, -0.399333,
		40.250725, 34.519878, 25.790899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584305, 34.052567, 25.494133>,  <39.972500, 33.941559, 26.070433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584305, 34.052567, 25.494133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.941113, 34.222458, 25.432287>,  <40.155197, 34.324394, 25.395180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.941113, 34.222458, 25.432287>,  <39.584305, 34.052567, 25.494133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941113, 34.222458, 25.432287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050727, -0.433979, -0.899494,
		-0.449139, 0.794524, -0.408663,
		0.892021, 0.424728, -0.154613,
		40.208717, 34.349876, 25.385904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491745, 34.333973, 24.900059>,  <39.584305, 34.052567, 25.494133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491745, 34.333973, 24.900059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.889973, 34.335594, 24.937639>,  <40.128910, 34.336567, 24.960188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.889973, 34.335594, 24.937639>,  <39.491745, 34.333973, 24.900059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889973, 34.335594, 24.937639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091164, -0.286657, -0.953686,
		0.023070, 0.958025, -0.285756,
		0.995569, 0.004049, 0.093951,
		40.188644, 34.336807, 24.965824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754570, 34.556507, 24.215290>,  <39.491745, 34.333973, 24.900059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754570, 34.556507, 24.215290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.086246, 34.402512, 24.377384>,  <40.285252, 34.310112, 24.474640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.086246, 34.402512, 24.377384>,  <39.754570, 34.556507, 24.215290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086246, 34.402512, 24.377384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239920, -0.409661, -0.880123,
		0.504851, 0.827018, -0.247322,
		0.829195, -0.384993, 0.405235,
		40.335007, 34.287014, 24.498955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199356, 34.653561, 23.758232>,  <39.754570, 34.556507, 24.215290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199356, 34.653561, 23.758232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.360401, 34.352100, 23.966047>,  <40.457027, 34.171227, 24.090736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.360401, 34.352100, 23.966047>,  <40.199356, 34.653561, 23.758232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360401, 34.352100, 23.966047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263116, -0.448340, -0.854261,
		0.876741, 0.480633, 0.017790,
		0.402610, -0.753647, 0.519540,
		40.481186, 34.126007, 24.121910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814659, 34.508633, 23.462709>,  <40.199356, 34.653561, 23.758232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814659, 34.508633, 23.462709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.751373, 34.151138, 23.630615>,  <40.713402, 33.936642, 23.731359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.751373, 34.151138, 23.630615>,  <40.814659, 34.508633, 23.462709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751373, 34.151138, 23.630615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168617, -0.443328, -0.880357,
		0.972901, -0.068504, 0.220839,
		-0.158212, -0.893738, 0.419764,
		40.703911, 33.883018, 23.756544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225117, 33.986919, 23.125784>,  <40.814659, 34.508633, 23.462709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225117, 33.986919, 23.125784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.929615, 33.769924, 23.285759>,  <40.752312, 33.639729, 23.381744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.929615, 33.769924, 23.285759>,  <41.225117, 33.986919, 23.125784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929615, 33.769924, 23.285759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060394, -0.537728, -0.840952,
		0.671261, -0.645412, 0.364487,
		-0.738756, -0.542486, 0.399936,
		40.707989, 33.607178, 23.405739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377083, 33.263073, 22.893665>,  <41.225117, 33.986919, 23.125784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377083, 33.263073, 22.893665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.989094, 33.266762, 22.990873>,  <40.756298, 33.268974, 23.049198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.989094, 33.266762, 22.990873>,  <41.377083, 33.263073, 22.893665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.989094, 33.266762, 22.990873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221529, -0.445800, -0.867287,
		0.100345, -0.895085, 0.434458,
		-0.969977, 0.009217, 0.243021,
		40.698101, 33.269527, 23.063780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077206, 32.607433, 22.848028>,  <41.377083, 33.263073, 22.893665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077206, 32.607433, 22.848028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.757305, 32.843098, 22.801918>,  <40.565365, 32.984497, 22.774252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.757305, 32.843098, 22.801918>,  <41.077206, 32.607433, 22.848028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757305, 32.843098, 22.801918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240169, -0.489981, -0.837996,
		-0.550197, -0.642503, 0.533361,
		-0.799752, 0.589160, -0.115277,
		40.517380, 33.019844, 22.767336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488918, 32.144321, 22.705173>,  <41.077206, 32.607433, 22.848028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488918, 32.144321, 22.705173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.404732, 32.511532, 22.570753>,  <40.354221, 32.731857, 22.490101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.404732, 32.511532, 22.570753>,  <40.488918, 32.144321, 22.705173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404732, 32.511532, 22.570753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162444, -0.371814, -0.913984,
		-0.964010, -0.137773, 0.227382,
		-0.210466, 0.918027, -0.336052,
		40.341591, 32.786942, 22.469938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311985, 31.680498, 22.183060>,  <40.488918, 32.144321, 22.705173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311985, 31.680498, 22.183060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.479263, 31.382370, 21.975367>,  <40.579632, 31.203493, 21.850750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.479263, 31.382370, 21.975367>,  <40.311985, 31.680498, 22.183060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.479263, 31.382370, 21.975367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345393, 0.398209, -0.849784,
		0.840127, 0.534718, -0.090899,
		0.418198, -0.745323, -0.519234,
		40.604721, 31.158773, 21.819595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579494, 31.483263, 21.909256>,  <40.311985, 31.680498, 22.183060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579494, 31.483263, 21.909256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.671982, 31.108667, 22.014729>,  <39.727474, 30.883911, 22.078012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.671982, 31.108667, 22.014729>,  <39.579494, 31.483263, 21.909256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671982, 31.108667, 22.014729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308037, 0.186613, 0.932892,
		-0.922849, -0.296928, -0.245324,
		0.231221, -0.936488, 0.263681,
		39.741348, 30.827721, 22.093832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020226, 31.229929, 22.205175>,  <39.579494, 31.483263, 21.909256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020226, 31.229929, 22.205175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.318012, 31.011723, 22.359156>,  <39.496685, 30.880798, 22.451544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.318012, 31.011723, 22.359156>,  <39.020226, 31.229929, 22.205175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318012, 31.011723, 22.359156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342324, 0.183146, 0.921559,
		-0.573227, -0.817845, -0.050397,
		0.744463, -0.545515, 0.384952,
		39.541351, 30.848068, 22.474642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668266, 30.683111, 22.612150>,  <39.020226, 31.229929, 22.205175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668266, 30.683111, 22.612150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.038467, 30.719076, 22.759310>,  <39.260590, 30.740656, 22.847607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.038467, 30.719076, 22.759310>,  <38.668266, 30.683111, 22.612150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038467, 30.719076, 22.759310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378728, 0.217147, 0.899673,
		0.001004, -0.971989, 0.235024,
		0.925507, 0.089913, 0.367901,
		39.316120, 30.746050, 22.869680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676064, 30.441013, 23.290316>,  <38.668266, 30.683111, 22.612150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676064, 30.441013, 23.290316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.021988, 30.640947, 23.309357>,  <39.229542, 30.760908, 23.320782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.021988, 30.640947, 23.309357>,  <38.676064, 30.441013, 23.290316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021988, 30.640947, 23.309357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184266, 0.227759, 0.956124,
		0.467062, -0.835638, 0.289071,
		0.864812, 0.499835, 0.047602,
		39.281433, 30.790897, 23.323637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091690, 30.125454, 23.761124>,  <38.676064, 30.441013, 23.290316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091690, 30.125454, 23.761124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.242828, 30.495779, 23.765287>,  <39.333511, 30.717974, 23.767786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.242828, 30.495779, 23.765287>,  <39.091690, 30.125454, 23.761124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242828, 30.495779, 23.765287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222127, 0.079731, 0.971752,
		0.898829, -0.369483, 0.235774,
		0.377845, 0.925811, 0.010408,
		39.356182, 30.773521, 23.768410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463341, 30.242718, 24.434772>,  <39.091690, 30.125454, 23.761124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463341, 30.242718, 24.434772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.379040, 30.615643, 24.317215>,  <39.328457, 30.839397, 24.246681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.379040, 30.615643, 24.317215>,  <39.463341, 30.242718, 24.434772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379040, 30.615643, 24.317215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154487, 0.265101, 0.951764,
		0.965254, 0.245991, 0.088159,
		-0.210755, 0.932314, -0.293892,
		39.315815, 30.895336, 24.229048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707493, 30.517202, 25.043133>,  <39.463341, 30.242718, 24.434772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707493, 30.517202, 25.043133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.533642, 30.809757, 24.832924>,  <39.429333, 30.985291, 24.706799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.533642, 30.809757, 24.832924>,  <39.707493, 30.517202, 25.043133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533642, 30.809757, 24.832924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335186, 0.410234, 0.848150,
		0.835914, 0.544774, 0.066853,
		-0.434625, 0.731388, -0.525521,
		39.403255, 31.029173, 24.675268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017231, 31.117489, 25.353184>,  <39.707493, 30.517202, 25.043133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017231, 31.117489, 25.353184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.664299, 31.185406, 25.177612>,  <39.452538, 31.226156, 25.072269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.664299, 31.185406, 25.177612>,  <40.017231, 31.117489, 25.353184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664299, 31.185406, 25.177612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310003, 0.492045, 0.813505,
		0.354101, 0.853851, -0.381511,
		-0.882333, 0.169793, -0.438930,
		39.399601, 31.236343, 25.045933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993992, 31.771889, 25.518541>,  <40.017231, 31.117489, 25.353184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993992, 31.771889, 25.518541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.629108, 31.627941, 25.440195>,  <39.410179, 31.541573, 25.393187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.629108, 31.627941, 25.440195>,  <39.993992, 31.771889, 25.518541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629108, 31.627941, 25.440195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371113, 0.523145, 0.767199,
		-0.173625, 0.772536, -0.610771,
		-0.912211, -0.359871, -0.195867,
		39.355446, 31.519979, 25.381435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613678, 32.353325, 25.493650>,  <39.993992, 31.771889, 25.518541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613678, 32.353325, 25.493650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.375919, 32.039848, 25.565777>,  <39.233265, 31.851761, 25.609053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.375919, 32.039848, 25.565777>,  <39.613678, 32.353325, 25.493650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375919, 32.039848, 25.565777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395657, 0.480211, 0.782849,
		-0.700106, 0.393979, -0.595510,
		-0.594397, -0.783695, 0.180318,
		39.197601, 31.804739, 25.619873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907295, 32.606655, 25.562664>,  <39.613678, 32.353325, 25.493650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907295, 32.606655, 25.562664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.919598, 32.251297, 25.745880>,  <38.926979, 32.038082, 25.855810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.919598, 32.251297, 25.745880>,  <38.907295, 32.606655, 25.562664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919598, 32.251297, 25.745880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556882, 0.365316, 0.745940,
		-0.830022, -0.278016, -0.483499,
		0.030753, -0.888398, 0.458042,
		38.928825, 31.984777, 25.883293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137478, 32.441166, 25.665848>,  <38.907295, 32.606655, 25.562664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137478, 32.441166, 25.665848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.343048, 32.227886, 25.934647>,  <38.466393, 32.099918, 26.095926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.343048, 32.227886, 25.934647>,  <38.137478, 32.441166, 25.665848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343048, 32.227886, 25.934647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568335, 0.375138, 0.732303,
		-0.642552, -0.758271, -0.110240,
		0.513929, -0.533195, 0.671997,
		38.497227, 32.067928, 26.136246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630402, 32.138897, 26.022644>,  <38.137478, 32.441166, 25.665848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630402, 32.138897, 26.022644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.946449, 32.138386, 26.267824>,  <38.136078, 32.138077, 26.414932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.946449, 32.138386, 26.267824>,  <37.630402, 32.138897, 26.022644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946449, 32.138386, 26.267824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555260, 0.422044, 0.716635,
		-0.259611, -0.906575, 0.332753,
		0.790119, -0.001281, 0.612952,
		38.183487, 32.138000, 26.451710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412731, 32.019733, 26.728085>,  <37.630402, 32.138897, 26.022644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412731, 32.019733, 26.728085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.780022, 32.173325, 26.766911>,  <38.000397, 32.265480, 26.790207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.780022, 32.173325, 26.766911>,  <37.412731, 32.019733, 26.728085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780022, 32.173325, 26.766911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290658, 0.486846, 0.823710,
		0.269026, -0.784567, 0.558641,
		0.918228, 0.383973, 0.097066,
		38.055489, 32.288517, 26.796030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310131, 31.350531, 27.077408>,  <37.412731, 32.019733, 26.728085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310131, 31.350531, 27.077408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.914551, 31.316317, 27.028986>,  <36.677200, 31.295788, 26.999933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.914551, 31.316317, 27.028986>,  <37.310131, 31.350531, 27.077408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914551, 31.316317, 27.028986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147965, -0.521436, -0.840363,
		0.008759, -0.848992, 0.528333,
		-0.988954, -0.085536, -0.121054,
		36.617867, 31.290655, 26.992670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172222, 30.662546, 27.011175>,  <37.310131, 31.350531, 27.077408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172222, 30.662546, 27.011175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.870609, 30.858675, 26.836351>,  <36.689644, 30.976353, 26.731457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.870609, 30.858675, 26.836351>,  <37.172222, 30.662546, 27.011175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870609, 30.858675, 26.836351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130574, -0.540225, -0.831329,
		-0.643730, -0.683915, 0.343323,
		-0.754030, 0.490323, -0.437060,
		36.644402, 31.005772, 26.705233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740921, 30.150852, 26.548950>,  <37.172222, 30.662546, 27.011175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740921, 30.150852, 26.548950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.643673, 30.508381, 26.398232>,  <36.585323, 30.722898, 26.307800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.643673, 30.508381, 26.398232>,  <36.740921, 30.150852, 26.548950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643673, 30.508381, 26.398232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075771, -0.404766, -0.911275,
		-0.967031, -0.193003, 0.166135,
		-0.243124, 0.893820, -0.376798,
		36.570736, 30.776527, 26.285192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139305, 30.060797, 26.204708>,  <36.740921, 30.150852, 26.548950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139305, 30.060797, 26.204708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.322018, 30.379345, 26.046143>,  <36.431644, 30.570475, 25.951004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.322018, 30.379345, 26.046143>,  <36.139305, 30.060797, 26.204708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322018, 30.379345, 26.046143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055214, -0.419379, -0.906131,
		-0.887864, 0.435790, -0.147593,
		0.456780, 0.796372, -0.396414,
		36.459053, 30.618256, 25.927219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812344, 30.149059, 25.630621>,  <36.139305, 30.060797, 26.204708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812344, 30.149059, 25.630621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.140068, 30.367538, 25.560877>,  <36.336700, 30.498625, 25.519030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.140068, 30.367538, 25.560877>,  <35.812344, 30.149059, 25.630621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140068, 30.367538, 25.560877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044395, -0.242762, -0.969070,
		-0.571631, 0.801708, -0.174648,
		0.819309, 0.546197, -0.174362,
		36.385860, 30.531397, 25.508568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718636, 30.469555, 24.992638>,  <35.812344, 30.149059, 25.630621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718636, 30.469555, 24.992638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.111229, 30.529652, 25.040150>,  <36.346786, 30.565710, 25.068657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.111229, 30.529652, 25.040150>,  <35.718636, 30.469555, 24.992638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111229, 30.529652, 25.040150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152705, -0.239561, -0.958797,
		-0.115598, 0.959185, -0.258070,
		0.981488, 0.150244, 0.118780,
		36.405674, 30.574724, 25.075783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961613, 30.982695, 24.375998>,  <35.718636, 30.469555, 24.992638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961613, 30.982695, 24.375998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.269573, 30.764860, 24.509073>,  <36.454350, 30.634159, 24.588919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.269573, 30.764860, 24.509073>,  <35.961613, 30.982695, 24.375998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269573, 30.764860, 24.509073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244869, -0.229319, -0.942047,
		0.589319, 0.806744, -0.043200,
		0.769897, -0.544588, 0.332689,
		36.500542, 30.601484, 24.608879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885044, 31.633566, 24.078098>,  <35.961613, 30.982695, 24.375998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885044, 31.633566, 24.078098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.523983, 31.647915, 23.906553>,  <35.307346, 31.656525, 23.803627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.523983, 31.647915, 23.906553>,  <35.885044, 31.633566, 24.078098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523983, 31.647915, 23.906553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415934, 0.183136, 0.890764,
		0.110495, 0.982433, -0.150388,
		-0.902657, 0.035873, -0.428863,
		35.253185, 31.658676, 23.777895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485573, 32.015846, 24.526632>,  <35.885044, 31.633566, 24.078098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485573, 32.015846, 24.526632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.191338, 31.861292, 24.304058>,  <35.014797, 31.768559, 24.170513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.191338, 31.861292, 24.304058>,  <35.485573, 32.015846, 24.526632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191338, 31.861292, 24.304058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647922, 0.161482, 0.744393,
		-0.197771, 0.908090, -0.369134,
		-0.735584, -0.386389, -0.556435,
		34.970661, 31.745375, 24.137127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909397, 32.506042, 24.551924>,  <35.485573, 32.015846, 24.526632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909397, 32.506042, 24.551924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.790359, 32.130798, 24.481049>,  <34.718937, 31.905653, 24.438524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.790359, 32.130798, 24.481049>,  <34.909397, 32.506042, 24.551924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790359, 32.130798, 24.481049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646485, 0.061451, 0.760448,
		-0.702493, 0.340853, -0.624759,
		-0.297593, -0.938106, -0.177187,
		34.701080, 31.849367, 24.427893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204308, 32.574657, 24.585102>,  <34.909397, 32.506042, 24.551924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204308, 32.574657, 24.585102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.291672, 32.187027, 24.631035>,  <34.344090, 31.954449, 24.658594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.291672, 32.187027, 24.631035>,  <34.204308, 32.574657, 24.585102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291672, 32.187027, 24.631035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670506, -0.063528, 0.739180,
		-0.709028, -0.238438, -0.663647,
		0.218408, -0.969078, 0.114831,
		34.357193, 31.896303, 24.665483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596973, 32.301414, 24.662821>,  <34.204308, 32.574657, 24.585102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596973, 32.301414, 24.662821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.820877, 32.003670, 24.808475>,  <33.955219, 31.825022, 24.895868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.820877, 32.003670, 24.808475>,  <33.596973, 32.301414, 24.662821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820877, 32.003670, 24.808475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694493, -0.181688, 0.696181,
		-0.452053, -0.642582, -0.618657,
		0.559756, -0.744364, 0.364136,
		33.988804, 31.780361, 24.917717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150475, 31.800211, 24.756493>,  <33.596973, 32.301414, 24.662821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150475, 31.800211, 24.756493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.458317, 31.691729, 24.987717>,  <33.643021, 31.626638, 25.126451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.458317, 31.691729, 24.987717>,  <33.150475, 31.800211, 24.756493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458317, 31.691729, 24.987717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635698, -0.240437, 0.733538,
		-0.059953, -0.932007, -0.357447,
		0.769606, -0.271206, 0.578060,
		33.689198, 31.610367, 25.161135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873806, 31.211771, 25.190779>,  <33.150475, 31.800211, 24.756493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873806, 31.211771, 25.190779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.202419, 31.322906, 25.389935>,  <33.399586, 31.389587, 25.509428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.202419, 31.322906, 25.389935>,  <32.873806, 31.211771, 25.190779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202419, 31.322906, 25.389935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473496, -0.154021, 0.867225,
		0.317635, -0.948200, 0.005023,
		0.821529, 0.277839, 0.497891,
		33.448879, 31.406258, 25.539303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.704437, 34.584000, 21.295944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.033417, 34.413254, 21.446339>,  <39.230804, 34.310806, 21.536575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.033417, 34.413254, 21.446339>,  <38.704437, 34.584000, 21.295944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033417, 34.413254, 21.446339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245515, 0.329864, 0.911544,
		-0.513129, -0.842009, 0.166495,
		0.822448, -0.426862, 0.375989,
		39.280151, 34.285194, 21.559135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492149, 34.192039, 21.745773>,  <38.704437, 34.584000, 21.295944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492149, 34.192039, 21.745773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.872318, 34.250252, 21.855700>,  <39.100418, 34.285179, 21.921656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.872318, 34.250252, 21.855700>,  <38.492149, 34.192039, 21.745773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872318, 34.250252, 21.855700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310910, 0.427523, 0.848857,
		0.006042, -0.892214, 0.451573,
		0.950420, 0.145528, 0.274815,
		39.157444, 34.293911, 21.938145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404533, 34.108154, 22.446655>,  <38.492149, 34.192039, 21.745773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404533, 34.108154, 22.446655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.753017, 34.301014, 22.409716>,  <38.962109, 34.416729, 22.387552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.753017, 34.301014, 22.409716>,  <38.404533, 34.108154, 22.446655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753017, 34.301014, 22.409716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163770, 0.462791, 0.871209,
		0.462791, -0.743880, 0.482148,
		-0.871209, -0.482148, 0.092350,
		39.014381, 34.445660, 22.382011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710503, 34.063511, 23.153095>,  <38.404533, 34.108154, 22.446655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710503, 34.063511, 23.153095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.860500, 34.364399, 22.936377>,  <38.950500, 34.544933, 22.806345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.860500, 34.364399, 22.936377>,  <38.710503, 34.063511, 23.153095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860500, 34.364399, 22.936377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193628, 0.635111, 0.747758,
		0.906579, -0.175499, 0.383815,
		0.374996, 0.752219, -0.541797,
		38.973000, 34.590065, 22.773838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159767, 34.446667, 23.544956>,  <38.710503, 34.063511, 23.153095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159767, 34.446667, 23.544956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.037792, 34.692421, 23.253876>,  <38.964607, 34.839874, 23.079227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.037792, 34.692421, 23.253876>,  <39.159767, 34.446667, 23.544956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037792, 34.692421, 23.253876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348771, 0.638971, 0.685620,
		0.886214, 0.462869, 0.019436,
		-0.304933, 0.614384, -0.727700,
		38.946312, 34.876736, 23.035566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208069, 35.035538, 23.909531>,  <39.159767, 34.446667, 23.544956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208069, 35.035538, 23.909531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.040001, 35.161030, 23.568935>,  <38.939159, 35.236324, 23.364578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.040001, 35.161030, 23.568935>,  <39.208069, 35.035538, 23.909531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040001, 35.161030, 23.568935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412293, 0.769895, 0.487111,
		0.808377, 0.555732, -0.194137,
		-0.420168, 0.313728, -0.851489,
		38.913952, 35.255150, 23.313488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386623, 35.754131, 23.723440>,  <39.208069, 35.035538, 23.909531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386623, 35.754131, 23.723440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.034737, 35.678703, 23.548834>,  <38.823605, 35.633446, 23.444071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.034737, 35.678703, 23.548834>,  <39.386623, 35.754131, 23.723440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034737, 35.678703, 23.548834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419597, 0.739733, 0.526055,
		0.223704, 0.645938, -0.729877,
		-0.879713, -0.188574, -0.436515,
		38.770824, 35.622131, 23.417879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008518, 36.457489, 23.563892>,  <39.386623, 35.754131, 23.723440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008518, 36.457489, 23.563892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.747776, 36.154449, 23.577337>,  <38.591331, 35.972626, 23.585403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.747776, 36.154449, 23.577337>,  <39.008518, 36.457489, 23.563892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747776, 36.154449, 23.577337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541472, 0.496009, 0.678810,
		-0.530937, 0.424286, -0.733544,
		-0.651854, -0.757599, 0.033611,
		38.552219, 35.927170, 23.587421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552715, 36.798553, 24.043583>,  <39.008518, 36.457489, 23.563892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552715, 36.798553, 24.043583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.371868, 36.453812, 23.951668>,  <38.263359, 36.246967, 23.896519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.371868, 36.453812, 23.951668>,  <38.552715, 36.798553, 24.043583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371868, 36.453812, 23.951668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829302, 0.311318, 0.464046,
		-0.328401, 0.400368, -0.855487,
		-0.452118, -0.861851, -0.229789,
		38.236233, 36.195255, 23.882730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951298, 36.995220, 23.616323>,  <38.552715, 36.798553, 24.043583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951298, 36.995220, 23.616323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.900414, 36.637661, 23.788260>,  <37.869884, 36.423126, 23.891420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.900414, 36.637661, 23.788260>,  <37.951298, 36.995220, 23.616323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900414, 36.637661, 23.788260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835606, 0.330065, 0.439114,
		-0.534398, -0.303316, -0.788935,
		-0.127209, -0.893900, 0.429839,
		37.862251, 36.369492, 23.917212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174080, 36.833809, 23.758474>,  <37.951298, 36.995220, 23.616323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174080, 36.833809, 23.758474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.365646, 36.601952, 24.022186>,  <37.480587, 36.462837, 24.180414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.365646, 36.601952, 24.022186>,  <37.174080, 36.833809, 23.758474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365646, 36.601952, 24.022186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683102, 0.225628, 0.694596,
		-0.551371, -0.783010, -0.287899,
		0.478918, -0.579645, 0.659280,
		37.509323, 36.428059, 24.219971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683117, 36.437557, 24.165688>,  <37.174080, 36.833809, 23.758474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683117, 36.437557, 24.165688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.007225, 36.444237, 24.400013>,  <37.201691, 36.448246, 24.540607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.007225, 36.444237, 24.400013>,  <36.683117, 36.437557, 24.165688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007225, 36.444237, 24.400013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571781, 0.241779, 0.783970,
		-0.128543, -0.970188, 0.205457,
		0.810273, 0.016703, 0.585814,
		37.250309, 36.449249, 24.575758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159164, 36.025059, 24.173393>,  <36.683117, 36.437557, 24.165688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159164, 36.025059, 24.173393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.805958, 36.127003, 24.015751>,  <35.594032, 36.188171, 23.921165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.805958, 36.127003, 24.015751>,  <36.159164, 36.025059, 24.173393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805958, 36.127003, 24.015751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265095, -0.422093, -0.866927,
		-0.387292, -0.869991, 0.305156,
		-0.883023, 0.254858, -0.394104,
		35.541050, 36.203461, 23.897520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902485, 35.442039, 23.829063>,  <36.159164, 36.025059, 24.173393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902485, 35.442039, 23.829063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.719353, 35.748581, 23.648796>,  <35.609474, 35.932507, 23.540636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.719353, 35.748581, 23.648796>,  <35.902485, 35.442039, 23.829063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719353, 35.748581, 23.648796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182271, -0.415238, -0.891266,
		-0.870156, -0.490190, 0.050425,
		-0.457828, 0.766349, -0.450669,
		35.582005, 35.978485, 23.513596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514179, 35.060295, 23.200027>,  <35.902485, 35.442039, 23.829063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514179, 35.060295, 23.200027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.506443, 35.453953, 23.129494>,  <35.501801, 35.690147, 23.087173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.506443, 35.453953, 23.129494>,  <35.514179, 35.060295, 23.200027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506443, 35.453953, 23.129494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263551, -0.165112, -0.950410,
		-0.964451, -0.064858, -0.256177,
		-0.019344, 0.984140, -0.176336,
		35.500641, 35.749195, 23.076593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948128, 35.285789, 22.806677>,  <35.514179, 35.060295, 23.200027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948128, 35.285789, 22.806677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.244644, 35.545132, 22.737251>,  <35.422554, 35.700737, 22.695597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.244644, 35.545132, 22.737251>,  <34.948128, 35.285789, 22.806677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244644, 35.545132, 22.737251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008506, -0.267647, -0.963480,
		-0.671133, 0.712740, -0.203919,
		0.741288, 0.648358, -0.173564,
		35.467030, 35.739639, 22.685183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838074, 35.541779, 22.185303>,  <34.948128, 35.285789, 22.806677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838074, 35.541779, 22.185303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.215958, 35.664284, 22.232176>,  <35.442688, 35.737785, 22.260300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.215958, 35.664284, 22.232176>,  <34.838074, 35.541779, 22.185303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215958, 35.664284, 22.232176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161251, -0.122719, -0.979254,
		-0.285528, 0.944004, -0.165318,
		0.944708, 0.306262, 0.117182,
		35.499371, 35.756161, 22.267330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964733, 35.953579, 21.573277>,  <34.838074, 35.541779, 22.185303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964733, 35.953579, 21.573277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.323277, 35.838158, 21.707899>,  <35.538403, 35.768906, 21.788673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.323277, 35.838158, 21.707899>,  <34.964733, 35.953579, 21.573277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323277, 35.838158, 21.707899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327266, -0.081415, -0.941419,
		0.299054, 0.953995, 0.021458,
		0.896362, -0.288557, 0.336557,
		35.592186, 35.751591, 21.808867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438377, 36.100861, 21.073248>,  <34.964733, 35.953579, 21.573277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438377, 36.100861, 21.073248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.664112, 35.857986, 21.296982>,  <35.799553, 35.712261, 21.431223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.664112, 35.857986, 21.296982>,  <35.438377, 36.100861, 21.073248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664112, 35.857986, 21.296982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468127, -0.322710, -0.822627,
		0.679990, 0.726075, 0.102124,
		0.564332, -0.607185, 0.559334,
		35.833412, 35.675831, 21.464783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072796, 36.112774, 20.821104>,  <35.438377, 36.100861, 21.073248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072796, 36.112774, 20.821104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.070869, 35.757301, 21.004501>,  <36.069714, 35.544018, 21.114540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.070869, 35.757301, 21.004501>,  <36.072796, 36.112774, 20.821104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070869, 35.757301, 21.004501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481802, -0.403832, -0.777680,
		0.876267, 0.217159, 0.430114,
		-0.004814, -0.888685, 0.458492,
		36.069424, 35.490696, 21.142050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707207, 35.826870, 20.760643>,  <36.072796, 36.112774, 20.821104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707207, 35.826870, 20.760643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.490055, 35.497257, 20.825466>,  <36.359764, 35.299492, 20.864359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.490055, 35.497257, 20.825466>,  <36.707207, 35.826870, 20.760643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490055, 35.497257, 20.825466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559091, -0.498607, -0.662426,
		0.626661, -0.269011, 0.731389,
		-0.542876, -0.824029, 0.162056,
		36.327194, 35.250050, 20.874083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163677, 35.191982, 20.718353>,  <36.707207, 35.826870, 20.760643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163677, 35.191982, 20.718353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.798721, 35.032063, 20.683228>,  <36.579750, 34.936111, 20.662151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.798721, 35.032063, 20.683228>,  <37.163677, 35.191982, 20.718353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798721, 35.032063, 20.683228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294589, -0.492401, -0.818999,
		0.284193, -0.773113, 0.567036,
		-0.912388, -0.399796, -0.087814,
		36.525005, 34.912125, 20.656883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217968, 34.411861, 20.613091>,  <37.163677, 35.191982, 20.718353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217968, 34.411861, 20.613091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.854141, 34.473217, 20.458609>,  <36.635845, 34.510029, 20.365919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.854141, 34.473217, 20.458609>,  <37.217968, 34.411861, 20.613091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854141, 34.473217, 20.458609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235138, -0.576305, -0.782677,
		-0.342622, -0.802711, 0.488124,
		-0.909572, 0.153386, -0.386203,
		36.581268, 34.519234, 20.342749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963444, 33.787407, 20.531065>,  <37.217968, 34.411861, 20.613091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963444, 33.787407, 20.531065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.776844, 34.051575, 20.295700>,  <36.664883, 34.210075, 20.154482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.776844, 34.051575, 20.295700>,  <36.963444, 33.787407, 20.531065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776844, 34.051575, 20.295700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112102, -0.615725, -0.779946,
		-0.877388, -0.429808, 0.213203,
		-0.466502, 0.660415, -0.588412,
		36.636894, 34.249699, 20.119177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550842, 33.269180, 20.216358>,  <36.963444, 33.787407, 20.531065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550842, 33.269180, 20.216358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.546917, 33.614414, 20.014370>,  <36.544563, 33.821552, 19.893177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.546917, 33.614414, 20.014370>,  <36.550842, 33.269180, 20.216358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546917, 33.614414, 20.014370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172544, -0.498882, -0.849320,
		-0.984953, 0.078798, 0.153814,
		-0.009810, 0.863080, -0.504971,
		36.543976, 33.873337, 19.862879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458874, 33.384750, 20.967136>,  <36.550842, 33.269180, 20.216358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458874, 33.384750, 20.967136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.382095, 33.000843, 20.885170>,  <36.336029, 32.770496, 20.835989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.382095, 33.000843, 20.885170>,  <36.458874, 33.384750, 20.967136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382095, 33.000843, 20.885170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385362, -0.118320, 0.915148,
		-0.902581, 0.254630, -0.347148,
		-0.191950, -0.959773, -0.204918,
		36.324509, 32.712910, 20.823694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812241, 33.226673, 21.316076>,  <36.458874, 33.384750, 20.967136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812241, 33.226673, 21.316076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.952961, 32.861240, 21.234484>,  <36.037395, 32.641983, 21.185528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.952961, 32.861240, 21.234484>,  <35.812241, 33.226673, 21.316076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952961, 32.861240, 21.234484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579644, -0.383720, 0.718869,
		-0.735015, -0.134663, -0.664544,
		0.351803, -0.913578, -0.203984,
		36.058502, 32.587166, 21.173288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207878, 32.777344, 21.245991>,  <35.812241, 33.226673, 21.316076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207878, 32.777344, 21.245991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.519230, 32.548252, 21.348843>,  <35.706039, 32.410797, 21.410555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.519230, 32.548252, 21.348843>,  <35.207878, 32.777344, 21.245991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519230, 32.548252, 21.348843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556853, -0.440712, 0.704051,
		-0.289908, -0.691200, -0.661964,
		0.778375, -0.572726, 0.257131,
		35.752743, 32.376434, 21.425982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867416, 32.040154, 21.397995>,  <35.207878, 32.777344, 21.245991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867416, 32.040154, 21.397995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.224102, 32.098171, 21.569489>,  <35.438114, 32.132984, 21.672384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.224102, 32.098171, 21.569489>,  <34.867416, 32.040154, 21.397995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224102, 32.098171, 21.569489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386121, -0.250423, 0.887805,
		0.236139, -0.957209, -0.167299,
		0.891711, 0.145048, 0.428734,
		35.491615, 32.141685, 21.698109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052044, 31.479296, 21.744144>,  <34.867416, 32.040154, 21.397995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052044, 31.479296, 21.744144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.295219, 31.739061, 21.926867>,  <35.441124, 31.894920, 22.036501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.295219, 31.739061, 21.926867>,  <35.052044, 31.479296, 21.744144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295219, 31.739061, 21.926867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286120, -0.357492, 0.889008,
		0.740637, -0.671165, -0.031524,
		0.607940, 0.649413, 0.456806,
		35.477600, 31.933886, 22.063908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393330, 31.083130, 22.236807>,  <35.052044, 31.479296, 21.744144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393330, 31.083130, 22.236807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.463951, 31.456329, 22.362244>,  <35.506325, 31.680248, 22.437506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.463951, 31.456329, 22.362244>,  <35.393330, 31.083130, 22.236807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463951, 31.456329, 22.362244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190527, -0.280178, 0.940851,
		0.965674, -0.225862, 0.128294,
		0.176557, 0.932999, 0.313593,
		35.516918, 31.736229, 22.456322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731548, 31.016026, 22.819405>,  <35.393330, 31.083130, 22.236807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731548, 31.016026, 22.819405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.571411, 31.381222, 22.850826>,  <35.475330, 31.600340, 22.869678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.571411, 31.381222, 22.850826>,  <35.731548, 31.016026, 22.819405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571411, 31.381222, 22.850826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254790, -0.193244, 0.947491,
		0.880232, 0.359307, 0.309985,
		-0.400343, 0.912993, 0.078552,
		35.451309, 31.655119, 22.874392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712376, 31.039829, 23.548199>,  <35.731548, 31.016026, 22.819405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712376, 31.039829, 23.548199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.484615, 31.347269, 23.431559>,  <35.347958, 31.531734, 23.361574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.484615, 31.347269, 23.431559>,  <35.712376, 31.039829, 23.548199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484615, 31.347269, 23.431559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535082, -0.077241, 0.841262,
		0.624072, 0.635047, 0.455247,
		-0.569405, 0.768602, -0.291598,
		35.313793, 31.577850, 23.344080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393364, 31.026648, 23.789391>,  <35.712376, 31.039829, 23.548199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393364, 31.026648, 23.789391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.552254, 30.725304, 23.999023>,  <36.647587, 30.544498, 24.124804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.552254, 30.725304, 23.999023>,  <36.393364, 31.026648, 23.789391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552254, 30.725304, 23.999023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360667, -0.396968, -0.844000,
		0.843878, 0.524279, 0.114025,
		0.397228, -0.753358, 0.524083,
		36.671421, 30.499296, 24.156248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163845, 30.967474, 23.615429>,  <36.393364, 31.026648, 23.789391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163845, 30.967474, 23.615429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.040363, 30.622971, 23.776890>,  <36.966274, 30.416269, 23.873766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.040363, 30.622971, 23.776890>,  <37.163845, 30.967474, 23.615429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040363, 30.622971, 23.776890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436762, -0.505349, -0.744219,
		0.844950, -0.053443, 0.532168,
		-0.308704, -0.861259, 0.403653,
		36.947754, 30.364594, 23.897985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784801, 30.563223, 23.719122>,  <37.163845, 30.967474, 23.615429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784801, 30.563223, 23.719122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.498917, 30.283667, 23.708277>,  <37.327385, 30.115932, 23.701769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.498917, 30.283667, 23.708277>,  <37.784801, 30.563223, 23.719122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498917, 30.283667, 23.708277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505356, -0.489221, -0.710829,
		0.483528, -0.521742, 0.702842,
		-0.714714, -0.698891, -0.027113,
		37.284504, 30.073999, 23.700142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193695, 29.956600, 23.713652>,  <37.784801, 30.563223, 23.719122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193695, 29.956600, 23.713652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.819908, 29.892778, 23.586330>,  <37.595638, 29.854485, 23.509937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.819908, 29.892778, 23.586330>,  <38.193695, 29.956600, 23.713652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819908, 29.892778, 23.586330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355996, -0.434747, -0.827201,
		-0.006396, -0.886305, 0.463057,
		-0.934465, -0.159556, -0.318302,
		37.539570, 29.844912, 23.490839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241478, 29.269375, 23.529421>,  <38.193695, 29.956600, 23.713652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241478, 29.269375, 23.529421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.920654, 29.420208, 23.344158>,  <37.728161, 29.510708, 23.233000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.920654, 29.420208, 23.344158>,  <38.241478, 29.269375, 23.529421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920654, 29.420208, 23.344158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290538, -0.431203, -0.854197,
		-0.521819, -0.819677, 0.236291,
		-0.802055, 0.377085, -0.463157,
		37.680038, 29.533333, 23.205212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130878, 28.820814, 23.076679>,  <38.241478, 29.269375, 23.529421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130878, 28.820814, 23.076679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.902130, 29.107920, 22.917795>,  <37.764881, 29.280184, 22.822464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.902130, 29.107920, 22.917795>,  <38.130878, 28.820814, 23.076679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902130, 29.107920, 22.917795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394342, -0.184061, -0.900342,
		-0.719344, -0.671519, -0.177784,
		-0.571873, 0.717763, -0.397211,
		37.730568, 29.323248, 22.798632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695534, 28.534424, 22.501377>,  <38.130878, 28.820814, 23.076679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695534, 28.534424, 22.501377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.739487, 28.927399, 22.441055>,  <37.765858, 29.163183, 22.404861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.739487, 28.927399, 22.441055>,  <37.695534, 28.534424, 22.501377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739487, 28.927399, 22.441055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187531, -0.169490, -0.967525,
		-0.976093, 0.078034, -0.202861,
		0.109883, 0.982438, -0.150804,
		37.772453, 29.222130, 22.395813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335258, 28.511183, 21.954369>,  <37.695534, 28.534424, 22.501377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335258, 28.511183, 21.954369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.527817, 28.861614, 21.943457>,  <37.643353, 29.071873, 21.936909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.527817, 28.861614, 21.943457>,  <37.335258, 28.511183, 21.954369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527817, 28.861614, 21.943457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200569, -0.140401, -0.969567,
		-0.853248, 0.461271, -0.243303,
		0.481393, 0.876080, -0.027281,
		37.672234, 29.124439, 21.935272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038727, 29.023005, 21.440500>,  <37.335258, 28.511183, 21.954369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038727, 29.023005, 21.440500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.432312, 29.068939, 21.495085>,  <37.668465, 29.096500, 21.527836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.432312, 29.068939, 21.495085>,  <37.038727, 29.023005, 21.440500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432312, 29.068939, 21.495085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155086, -0.173073, -0.972622,
		-0.088075, 0.978191, -0.188107,
		0.983967, 0.114836, 0.136460,
		37.727501, 29.103390, 21.536022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<31.767790, 35.715961, 35.280491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.141491, 35.774895, 35.410393>,  <32.365711, 35.810257, 35.488335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.141491, 35.774895, 35.410393>,  <31.767790, 35.715961, 35.280491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141491, 35.774895, 35.410393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354380, -0.485321, -0.799298,
		0.039843, 0.861832, -0.505626,
		0.934252, 0.147337, 0.324753,
		32.421768, 35.819096, 35.507820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078556, 35.985840, 34.716129>,  <31.767790, 35.715961, 35.280491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078556, 35.985840, 34.716129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.364445, 35.830036, 34.948494>,  <32.535976, 35.736553, 35.087914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.364445, 35.830036, 34.948494>,  <32.078556, 35.985840, 34.716129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364445, 35.830036, 34.948494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339539, -0.532906, -0.775064,
		0.611465, 0.751196, -0.248626,
		0.714720, -0.389506, 0.580913,
		32.578861, 35.713184, 35.122768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578087, 36.049652, 34.168243>,  <32.078556, 35.985840, 34.716129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578087, 36.049652, 34.168243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.709080, 35.784508, 34.437576>,  <32.787674, 35.625423, 34.599174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.709080, 35.784508, 34.437576>,  <32.578087, 36.049652, 34.168243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709080, 35.784508, 34.437576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372862, -0.564131, -0.736703,
		0.868175, 0.492317, 0.062411,
		0.327484, -0.662858, 0.673331,
		32.807323, 35.585651, 34.639576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061584, 35.687160, 33.861595>,  <32.578087, 36.049652, 34.168243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061584, 35.687160, 33.861595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.044708, 35.448734, 34.182327>,  <33.034580, 35.305679, 34.374767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.044708, 35.448734, 34.182327>,  <33.061584, 35.687160, 33.861595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044708, 35.448734, 34.182327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371529, -0.754350, -0.541223,
		0.927462, 0.275066, 0.253284,
		-0.042193, -0.596066, 0.801826,
		33.032051, 35.269913, 34.422874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743576, 35.428440, 33.971558>,  <33.061584, 35.687160, 33.861595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743576, 35.428440, 33.971558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.469040, 35.174015, 34.112617>,  <33.304317, 35.021358, 34.197254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.469040, 35.174015, 34.112617>,  <33.743576, 35.428440, 33.971558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469040, 35.174015, 34.112617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376730, -0.725696, -0.575708,
		0.622105, -0.262276, 0.737697,
		-0.686338, -0.636063, 0.352652,
		33.263138, 34.983196, 34.218414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138847, 34.810143, 34.057011>,  <33.743576, 35.428440, 33.971558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138847, 34.810143, 34.057011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.756123, 34.696354, 34.033035>,  <33.526489, 34.628082, 34.018650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.756123, 34.696354, 34.033035>,  <34.138847, 34.810143, 34.057011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756123, 34.696354, 34.033035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274516, -0.816228, -0.508344,
		0.095683, -0.502843, 0.859066,
		-0.956810, -0.284467, -0.059939,
		33.469078, 34.611015, 34.015053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098194, 34.088989, 34.145748>,  <34.138847, 34.810143, 34.057011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098194, 34.088989, 34.145748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.751453, 34.165665, 33.961651>,  <33.543407, 34.211670, 33.851192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.751453, 34.165665, 33.961651>,  <34.098194, 34.088989, 34.145748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751453, 34.165665, 33.961651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236399, -0.654728, -0.717946,
		-0.438957, -0.731153, 0.522237,
		-0.866852, 0.191691, -0.460242,
		33.491398, 34.223171, 33.823578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712749, 33.435585, 33.973145>,  <34.098194, 34.088989, 34.145748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712749, 33.435585, 33.973145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.591560, 33.705128, 33.703587>,  <33.518848, 33.866852, 33.541851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.591560, 33.705128, 33.703587>,  <33.712749, 33.435585, 33.973145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591560, 33.705128, 33.703587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054706, -0.693662, -0.718221,
		-0.951429, -0.254464, 0.173294,
		-0.302969, 0.673856, -0.673890,
		33.500668, 33.907284, 33.501419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580826, 32.955425, 33.317268>,  <33.712749, 33.435585, 33.973145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580826, 32.955425, 33.317268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.528969, 33.325100, 33.173561>,  <33.497856, 33.546906, 33.087337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.528969, 33.325100, 33.173561>,  <33.580826, 32.955425, 33.317268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528969, 33.325100, 33.173561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156620, -0.338692, -0.927770,
		-0.979113, -0.176547, -0.100837,
		-0.129642, 0.924185, -0.359269,
		33.490074, 33.602356, 33.065781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999939, 32.878914, 32.734589>,  <33.580826, 32.955425, 33.317268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999939, 32.878914, 32.734589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.207592, 33.218369, 32.693954>,  <33.332184, 33.422039, 32.669575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.207592, 33.218369, 32.693954>,  <32.999939, 32.878914, 32.734589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207592, 33.218369, 32.693954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231938, -0.254277, -0.938908,
		-0.822622, 0.463856, -0.328834,
		0.519133, 0.848635, -0.101588,
		33.363331, 33.472958, 32.663479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796013, 33.142738, 32.128990>,  <32.999939, 32.878914, 32.734589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796013, 33.142738, 32.128990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.158054, 33.295769, 32.203197>,  <33.375278, 33.387589, 32.247723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.158054, 33.295769, 32.203197>,  <32.796013, 33.142738, 32.128990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158054, 33.295769, 32.203197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314610, -0.309111, -0.897480,
		-0.286008, 0.870682, -0.400140,
		0.905108, 0.382575, 0.185517,
		33.429588, 33.410542, 32.258854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985935, 33.529896, 31.469294>,  <32.796013, 33.142738, 32.128990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985935, 33.529896, 31.469294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.329124, 33.485134, 31.669834>,  <33.535038, 33.458279, 31.790157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.329124, 33.485134, 31.669834>,  <32.985935, 33.529896, 31.469294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329124, 33.485134, 31.669834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470255, -0.221660, -0.854241,
		0.206723, 0.968682, -0.137555,
		0.857978, -0.111906, 0.501349,
		33.586517, 33.451561, 31.820238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604954, 34.088058, 31.094217>,  <32.985935, 33.529896, 31.469294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604954, 34.088058, 31.094217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.281837, 33.939644, 30.911001>,  <32.087967, 33.850597, 30.801071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.281837, 33.939644, 30.911001>,  <32.604954, 34.088058, 31.094217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281837, 33.939644, 30.911001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573932, 0.672262, 0.467618,
		0.134421, 0.640623, -0.755998,
		-0.807795, -0.371033, -0.458041,
		32.039497, 33.828335, 30.773588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510159, 34.632671, 30.723845>,  <32.604954, 34.088058, 31.094217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510159, 34.632671, 30.723845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.184994, 34.424011, 30.827423>,  <31.989895, 34.298817, 30.889570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.184994, 34.424011, 30.827423>,  <32.510159, 34.632671, 30.723845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184994, 34.424011, 30.827423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286707, 0.745481, 0.601712,
		-0.506922, 0.414898, -0.755572,
		-0.812914, -0.521649, 0.258947,
		31.941120, 34.267517, 30.905107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997206, 35.112465, 30.715496>,  <32.510159, 34.632671, 30.723845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997206, 35.112465, 30.715496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.849602, 34.811279, 30.933443>,  <31.761040, 34.630569, 31.064211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.849602, 34.811279, 30.933443>,  <31.997206, 35.112465, 30.715496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849602, 34.811279, 30.933443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624700, 0.635003, 0.454445,
		-0.688173, -0.172685, -0.704697,
		-0.369009, -0.752962, 0.544868,
		31.738899, 34.585392, 31.096903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403324, 35.326733, 30.832624>,  <31.997206, 35.112465, 30.715496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403324, 35.326733, 30.832624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.423141, 35.038494, 31.109257>,  <31.435032, 34.865551, 31.275236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.423141, 35.038494, 31.109257>,  <31.403324, 35.326733, 30.832624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423141, 35.038494, 31.109257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559592, 0.553518, 0.616827,
		-0.827286, -0.417562, -0.375818,
		0.049541, -0.720597, 0.691582,
		31.438004, 34.822315, 31.316730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748007, 35.311069, 31.100639>,  <31.403324, 35.326733, 30.832624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.748007, 35.311069, 31.100639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.988188, 35.144073, 31.373449>,  <31.132296, 35.043877, 31.537134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.988188, 35.144073, 31.373449>,  <30.748007, 35.311069, 31.100639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988188, 35.144073, 31.373449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413350, 0.568066, 0.711648,
		-0.684542, -0.709225, 0.168526,
		0.600453, -0.417493, 0.682024,
		31.168324, 35.018826, 31.578056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354803, 35.070396, 31.614668>,  <30.748007, 35.311069, 31.100639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354803, 35.070396, 31.614668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.718348, 35.104263, 31.778034>,  <30.936474, 35.124584, 31.876053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.718348, 35.104263, 31.778034>,  <30.354803, 35.070396, 31.614668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718348, 35.104263, 31.778034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391238, 0.512480, 0.764393,
		-0.144581, -0.854515, 0.498900,
		0.908861, 0.084671, 0.408414,
		30.991007, 35.129665, 31.900558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151716, 35.092155, 32.281639>,  <30.354803, 35.070396, 31.614668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151716, 35.092155, 32.281639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.519514, 35.247734, 32.304428>,  <30.740192, 35.341080, 32.318100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.519514, 35.247734, 32.304428>,  <30.151716, 35.092155, 32.281639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519514, 35.247734, 32.304428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294419, 0.585374, 0.755417,
		0.260467, -0.711377, 0.652763,
		0.919497, 0.388947, 0.056973,
		30.795362, 35.364418, 32.321518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.292648, 35.105770, 33.015648>,  <30.151716, 35.092155, 32.281639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.292648, 35.105770, 33.015648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.525909, 35.369480, 32.825787>,  <30.665867, 35.527706, 32.711872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.525909, 35.369480, 32.825787>,  <30.292648, 35.105770, 33.015648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525909, 35.369480, 32.825787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336298, 0.727784, 0.597691,
		0.739482, -0.188924, 0.646122,
		0.583155, 0.659271, -0.474648,
		30.700855, 35.567261, 32.683392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540941, 35.378101, 33.542278>,  <30.292648, 35.105770, 33.015648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540941, 35.378101, 33.542278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.588228, 35.624935, 33.231091>,  <30.616600, 35.773033, 33.044376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.588228, 35.624935, 33.231091>,  <30.540941, 35.378101, 33.542278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588228, 35.624935, 33.231091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217554, 0.780524, 0.586049,
		0.968863, 0.099968, 0.226521,
		0.118219, 0.617081, -0.777969,
		30.623693, 35.810059, 32.997700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816938, 36.016769, 33.790524>,  <30.540941, 35.378101, 33.542278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816938, 36.016769, 33.790524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.690395, 36.172359, 33.444431>,  <30.614470, 36.265713, 33.236778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.690395, 36.172359, 33.444431>,  <30.816938, 36.016769, 33.790524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690395, 36.172359, 33.444431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255629, 0.843378, 0.472618,
		0.913549, 0.370693, -0.167375,
		-0.316357, 0.388974, -0.865227,
		30.595488, 36.289051, 33.184864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160822, 36.594120, 33.841152>,  <30.816938, 36.016769, 33.790524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160822, 36.594120, 33.841152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.840706, 36.612179, 33.601986>,  <30.648636, 36.623013, 33.458488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.840706, 36.612179, 33.601986>,  <31.160822, 36.594120, 33.841152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840706, 36.612179, 33.601986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421746, 0.666435, 0.614812,
		0.426224, 0.744195, -0.514302,
		-0.800289, 0.045143, -0.597912,
		30.600618, 36.625721, 33.422611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999960, 37.251869, 33.949951>,  <31.160822, 36.594120, 33.841152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999960, 37.251869, 33.949951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.687841, 37.138863, 33.726768>,  <30.500570, 37.071056, 33.592857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.687841, 37.138863, 33.726768>,  <30.999960, 37.251869, 33.949951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687841, 37.138863, 33.726768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527694, 0.776253, 0.344921,
		0.335672, 0.563573, -0.754790,
		-0.780297, -0.282518, -0.557961,
		30.453753, 37.054108, 33.559380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740072, 37.887287, 33.522007>,  <30.999960, 37.251869, 33.949951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740072, 37.887287, 33.522007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.432829, 37.638329, 33.582176>,  <30.248482, 37.488953, 33.618279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.432829, 37.638329, 33.582176>,  <30.740072, 37.887287, 33.522007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432829, 37.638329, 33.582176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540708, 0.756303, 0.368294,
		-0.342988, 0.201557, -0.917460,
		-0.768110, -0.622399, 0.150420,
		30.202396, 37.451611, 33.627300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124228, 38.228043, 33.264481>,  <30.740072, 37.887287, 33.522007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124228, 38.228043, 33.264481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.975950, 37.967106, 33.528915>,  <29.886984, 37.810543, 33.687576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.975950, 37.967106, 33.528915>,  <30.124228, 38.228043, 33.264481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975950, 37.967106, 33.528915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636886, 0.696626, 0.330286,
		-0.675991, -0.298604, -0.673700,
		-0.370693, -0.652340, 0.661089,
		29.864742, 37.771404, 33.727242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438990, 38.004189, 33.012474>,  <30.124228, 38.228043, 33.264481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.438990, 38.004189, 33.012474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.476000, 37.993057, 33.410603>,  <29.498205, 37.986378, 33.649479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.476000, 37.993057, 33.410603>,  <29.438990, 38.004189, 33.012474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476000, 37.993057, 33.410603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774849, 0.625774, 0.089529,
		-0.625338, -0.779508, 0.036331,
		0.092524, -0.027834, 0.995321,
		29.503757, 37.984707, 33.709198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.724091, 38.437489, 32.505066>,  <29.438990, 38.004189, 33.012474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.724091, 38.437489, 32.505066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.093292, 38.538239, 32.621426>,  <30.314814, 38.598686, 32.691242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.093292, 38.538239, 32.621426>,  <29.724091, 38.437489, 32.505066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093292, 38.538239, 32.621426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300916, -0.001304, -0.953650,
		-0.239819, 0.967760, -0.076996,
		0.923004, 0.251872, 0.290902,
		30.370193, 38.613800, 32.708694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968306, 38.812286, 31.951439>,  <29.724091, 38.437489, 32.505066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.968306, 38.812286, 31.951439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.286221, 38.684853, 32.158058>,  <30.476969, 38.608391, 32.282028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.286221, 38.684853, 32.158058>,  <29.968306, 38.812286, 31.951439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.286221, 38.684853, 32.158058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549572, 0.016736, -0.835279,
		0.257462, 0.947747, 0.188387,
		0.794785, -0.318585, 0.516546,
		30.524656, 38.589275, 32.313023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477837, 39.312572, 31.894848>,  <29.968306, 38.812286, 31.951439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477837, 39.312572, 31.894848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.672405, 38.977604, 31.994541>,  <30.789146, 38.776623, 32.054356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.672405, 38.977604, 31.994541>,  <30.477837, 39.312572, 31.894848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672405, 38.977604, 31.994541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581775, 0.097609, -0.807471,
		0.651869, 0.537767, 0.534671,
		0.486420, -0.837424, 0.249232,
		30.818331, 38.726376, 32.069309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188311, 39.533138, 32.131168>,  <30.477837, 39.312572, 31.894848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188311, 39.533138, 32.131168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.206318, 39.146637, 32.029713>,  <31.217123, 38.914738, 31.968838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.206318, 39.146637, 32.029713>,  <31.188311, 39.533138, 32.131168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206318, 39.146637, 32.029713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717748, 0.207886, -0.664546,
		0.694846, -0.152133, 0.702883,
		0.045020, -0.966250, -0.253642,
		31.219824, 38.856762, 31.953621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899065, 39.381279, 32.056293>,  <31.188311, 39.533138, 32.131168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899065, 39.381279, 32.056293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.713392, 39.095276, 31.847181>,  <31.601990, 38.923672, 31.721714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.713392, 39.095276, 31.847181>,  <31.899065, 39.381279, 32.056293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713392, 39.095276, 31.847181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708313, 0.054729, -0.703774,
		0.531817, -0.696967, 0.481047,
		-0.464180, -0.715011, -0.522777,
		31.574139, 38.880772, 31.690348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419411, 38.999882, 31.656578>,  <31.899065, 39.381279, 32.056293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419411, 38.999882, 31.656578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.084286, 38.880726, 31.473568>,  <31.883211, 38.809231, 31.363762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.084286, 38.880726, 31.473568>,  <32.419411, 38.999882, 31.656578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084286, 38.880726, 31.473568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506638, -0.111953, -0.854859,
		0.203437, -0.948011, 0.244721,
		-0.837813, -0.297895, -0.457523,
		31.832941, 38.791359, 31.336311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411201, 38.352936, 31.502523>,  <32.419411, 38.999882, 31.656578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411201, 38.352936, 31.502523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.163071, 38.482525, 31.216799>,  <32.014191, 38.560276, 31.045364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.163071, 38.482525, 31.216799>,  <32.411201, 38.352936, 31.502523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163071, 38.482525, 31.216799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562789, -0.450491, -0.693056,
		-0.546319, -0.831926, 0.097126,
		-0.620326, 0.323969, -0.714311,
		31.976973, 38.579716, 31.002506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474876, 37.833847, 31.032154>,  <32.411201, 38.352936, 31.502523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474876, 37.833847, 31.032154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.302105, 38.120625, 30.813274>,  <32.198441, 38.292690, 30.681946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.302105, 38.120625, 30.813274>,  <32.474876, 37.833847, 31.032154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302105, 38.120625, 30.813274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528887, -0.290105, -0.797570,
		-0.730559, -0.633900, -0.253878,
		-0.431928, 0.716944, -0.547201,
		32.172527, 38.335709, 30.649115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221634, 37.522820, 30.451263>,  <32.474876, 37.833847, 31.032154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221634, 37.522820, 30.451263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.224419, 37.908638, 30.345728>,  <32.226089, 38.140129, 30.282408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.224419, 37.908638, 30.345728>,  <32.221634, 37.522820, 30.451263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224419, 37.908638, 30.345728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462536, -0.237030, -0.854329,
		-0.886573, -0.116084, -0.447786,
		0.006965, 0.964542, -0.263837,
		32.226509, 38.198002, 30.266577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998358, 37.491150, 29.769148>,  <32.221634, 37.522820, 30.451263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998358, 37.491150, 29.769148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.177658, 37.847069, 29.803419>,  <32.285236, 38.060619, 29.823982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.177658, 37.847069, 29.803419>,  <31.998358, 37.491150, 29.769148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177658, 37.847069, 29.803419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455265, -0.144758, -0.878509,
		-0.769290, 0.432796, -0.469979,
		0.448249, 0.889794, 0.085676,
		32.312134, 38.114006, 29.829123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850893, 37.846588, 29.206167>,  <31.998358, 37.491150, 29.769148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850893, 37.846588, 29.206167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.176220, 38.035282, 29.342388>,  <32.371418, 38.148499, 29.424122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.176220, 38.035282, 29.342388>,  <31.850893, 37.846588, 29.206167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176220, 38.035282, 29.342388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323237, 0.120324, -0.938637,
		-0.483768, 0.873490, -0.054622,
		0.813318, 0.471739, 0.340554,
		32.420216, 38.176804, 29.444553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954508, 38.379219, 28.841059>,  <31.850893, 37.846588, 29.206167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954508, 38.379219, 28.841059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.320599, 38.322071, 28.991762>,  <32.540253, 38.287781, 29.082184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.320599, 38.322071, 28.991762>,  <31.954508, 38.379219, 28.841059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320599, 38.322071, 28.991762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384100, 0.026789, -0.922903,
		0.121761, 0.989379, 0.079394,
		0.915228, -0.142869, 0.376758,
		32.595165, 38.279209, 29.104790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422894, 38.755733, 28.437784>,  <31.954508, 38.379219, 28.841059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422894, 38.755733, 28.437784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.693729, 38.535461, 28.633049>,  <32.856232, 38.403297, 28.750208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.693729, 38.535461, 28.633049>,  <32.422894, 38.755733, 28.437784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693729, 38.535461, 28.633049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577594, -0.013366, -0.816214,
		0.455998, 0.834609, 0.309020,
		0.677090, -0.550680, 0.488160,
		32.896858, 38.370258, 28.779497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118546, 38.871948, 28.196665>,  <32.422894, 38.755733, 28.437784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118546, 38.871948, 28.196665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.151619, 38.495514, 28.327831>,  <33.171463, 38.269653, 28.406530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.151619, 38.495514, 28.327831>,  <33.118546, 38.871948, 28.196665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151619, 38.495514, 28.327831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473026, -0.252553, -0.844076,
		0.877160, 0.224905, 0.424274,
		0.082685, -0.941082, 0.327915,
		33.176426, 38.213188, 28.426207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792084, 38.673767, 27.979603>,  <33.118546, 38.871948, 28.196665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792084, 38.673767, 27.979603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.593372, 38.333656, 28.049160>,  <33.474148, 38.129589, 28.090895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.593372, 38.333656, 28.049160>,  <33.792084, 38.673767, 27.979603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593372, 38.333656, 28.049160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426952, -0.413875, -0.804002,
		0.755596, -0.325164, 0.568632,
		-0.496776, -0.850279, 0.173893,
		33.444340, 38.078571, 28.101328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213478, 38.236904, 27.871729>,  <33.792084, 38.673767, 27.979603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213478, 38.236904, 27.871729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.872093, 38.034687, 27.821085>,  <33.667263, 37.913357, 27.790699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.872093, 38.034687, 27.821085>,  <34.213478, 38.236904, 27.871729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872093, 38.034687, 27.821085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408373, -0.497792, -0.765137,
		0.323784, -0.704719, 0.631297,
		-0.853460, -0.505544, -0.126611,
		33.616055, 37.883022, 27.783102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522511, 37.681446, 27.711016>,  <34.213478, 38.236904, 27.871729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522511, 37.681446, 27.711016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.134346, 37.628395, 27.630310>,  <33.901447, 37.596565, 27.581886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.134346, 37.628395, 27.630310>,  <34.522511, 37.681446, 27.711016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134346, 37.628395, 27.630310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241057, -0.484587, -0.840873,
		0.013748, -0.864631, 0.502219,
		-0.970413, -0.132623, -0.201763,
		33.843224, 37.588608, 27.569780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431458, 36.989254, 27.568581>,  <34.522511, 37.681446, 27.711016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431458, 36.989254, 27.568581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.130672, 37.178352, 27.384815>,  <33.950199, 37.291813, 27.274555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.130672, 37.178352, 27.384815>,  <34.431458, 36.989254, 27.568581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130672, 37.178352, 27.384815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196941, -0.503984, -0.840961,
		-0.629098, -0.722849, 0.285874,
		-0.751964, 0.472746, -0.459414,
		33.905083, 37.320175, 27.246990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911633, 36.430607, 27.195934>,  <34.431458, 36.989254, 27.568581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911633, 36.430607, 27.195934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.846928, 36.782894, 27.017872>,  <33.808105, 36.994267, 26.911034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.846928, 36.782894, 27.017872>,  <33.911633, 36.430607, 27.195934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846928, 36.782894, 27.017872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059180, -0.441628, -0.895244,
		-0.985053, -0.171162, 0.019318,
		-0.161764, 0.880720, -0.445157,
		33.798397, 37.047112, 26.884325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384857, 36.320946, 26.612404>,  <33.911633, 36.430607, 27.195934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384857, 36.320946, 26.612404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.584034, 36.661079, 26.544304>,  <33.703541, 36.865162, 26.503443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.584034, 36.661079, 26.544304>,  <33.384857, 36.320946, 26.612404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584034, 36.661079, 26.544304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208854, -0.308129, -0.928136,
		-0.841687, 0.426598, -0.331025,
		0.497939, 0.850336, -0.170252,
		33.733418, 36.916180, 26.493229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194012, 36.441071, 25.998360>,  <33.384857, 36.320946, 26.612404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194012, 36.441071, 25.998360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.507233, 36.685162, 26.046446>,  <33.695164, 36.831615, 26.075298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.507233, 36.685162, 26.046446>,  <33.194012, 36.441071, 25.998360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507233, 36.685162, 26.046446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319961, -0.229491, -0.919216,
		-0.533340, 0.758261, -0.374952,
		0.783054, 0.610225, 0.120218,
		33.742149, 36.868229, 26.082512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279984, 36.760567, 25.328655>,  <33.194012, 36.441071, 25.998360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279984, 36.760567, 25.328655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.626183, 36.824532, 25.518539>,  <33.833900, 36.862911, 25.632469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.626183, 36.824532, 25.518539>,  <33.279984, 36.760567, 25.328655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626183, 36.824532, 25.518539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499144, -0.195629, -0.844147,
		-0.042120, 0.967553, -0.249133,
		0.865495, 0.159909, 0.474709,
		33.885830, 36.872505, 25.660952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589947, 37.247856, 24.951950>,  <33.279984, 36.760567, 25.328655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589947, 37.247856, 24.951950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.881275, 37.059467, 25.151037>,  <34.056072, 36.946434, 25.270491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.881275, 37.059467, 25.151037>,  <33.589947, 37.247856, 24.951950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881275, 37.059467, 25.151037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413205, -0.277567, -0.867305,
		0.546629, 0.837341, -0.007550,
		0.728325, -0.470974, 0.497720,
		34.099773, 36.918175, 25.300354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192753, 37.395000, 24.571413>,  <33.589947, 37.247856, 24.951950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192753, 37.395000, 24.571413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.309105, 37.079391, 24.787870>,  <34.378914, 36.890026, 24.917744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.309105, 37.079391, 24.787870>,  <34.192753, 37.395000, 24.571413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309105, 37.079391, 24.787870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608922, -0.283590, -0.740804,
		0.737973, 0.544996, 0.397964,
		0.290877, -0.789022, 0.541142,
		34.396366, 36.842686, 24.950212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918484, 37.539433, 24.644817>,  <34.192753, 37.395000, 24.571413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918484, 37.539433, 24.644817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.816341, 37.153351, 24.667366>,  <34.755058, 36.921703, 24.680895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.816341, 37.153351, 24.667366>,  <34.918484, 37.539433, 24.644817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816341, 37.153351, 24.667366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718567, -0.228465, -0.656860,
		0.646882, -0.127223, 0.751903,
		-0.255351, -0.965204, 0.056371,
		34.739735, 36.863789, 24.684277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571217, 37.239040, 24.746033>,  <34.918484, 37.539433, 24.644817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571217, 37.239040, 24.746033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.309216, 36.962757, 24.623461>,  <35.152016, 36.796986, 24.549917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.309216, 36.962757, 24.623461>,  <35.571217, 37.239040, 24.746033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309216, 36.962757, 24.623461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667497, -0.338829, -0.663055,
		0.354150, -0.638842, 0.682978,
		-0.655000, -0.690707, -0.306429,
		35.112717, 36.755547, 24.531532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039337, 36.727612, 24.464268>,  <35.571217, 37.239040, 24.746033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039337, 36.727612, 24.464268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.674667, 36.637428, 24.326857>,  <35.455864, 36.583317, 24.244410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.674667, 36.637428, 24.326857>,  <36.039337, 36.727612, 24.464268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674667, 36.637428, 24.326857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408026, -0.397964, -0.821669,
		0.048542, -0.889266, 0.454808,
		-0.911679, -0.225459, -0.343525,
		35.401165, 36.569790, 24.223799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409283, 36.303291, 24.980038>,  <36.039337, 36.727612, 24.464268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409283, 36.303291, 24.980038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.771038, 36.470604, 25.013794>,  <36.988091, 36.570992, 25.034048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.771038, 36.470604, 25.013794>,  <36.409283, 36.303291, 24.980038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771038, 36.470604, 25.013794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222592, 0.293724, 0.929612,
		0.364050, -0.859516, 0.358747,
		0.904389, 0.418280, 0.084391,
		37.042355, 36.596088, 25.039112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650528, 36.084877, 25.717894>,  <36.409283, 36.303291, 24.980038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650528, 36.084877, 25.717894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.852283, 36.408630, 25.597570>,  <36.973339, 36.602882, 25.525377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.852283, 36.408630, 25.597570>,  <36.650528, 36.084877, 25.717894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852283, 36.408630, 25.597570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156097, 0.428099, 0.890149,
		0.849247, -0.402030, 0.342273,
		0.504393, 0.809384, -0.300806,
		37.003601, 36.651447, 25.507328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222271, 36.132362, 26.124807>,  <36.650528, 36.084877, 25.717894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222271, 36.132362, 26.124807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.178036, 36.505966, 25.988930>,  <37.151493, 36.730129, 25.907404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.178036, 36.505966, 25.988930>,  <37.222271, 36.132362, 26.124807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178036, 36.505966, 25.988930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026540, 0.338892, 0.940451,
		0.993512, 0.113020, -0.012689,
		-0.110590, 0.934012, -0.339693,
		37.144859, 36.786171, 25.887022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576466, 36.452415, 26.553238>,  <37.222271, 36.132362, 26.124807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576466, 36.452415, 26.553238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.365189, 36.752735, 26.394588>,  <37.238422, 36.932926, 26.299398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.365189, 36.752735, 26.394588>,  <37.576466, 36.452415, 26.553238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365189, 36.752735, 26.394588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108686, 0.403477, 0.908512,
		0.842141, 0.522975, -0.131511,
		-0.528191, 0.750801, -0.396625,
		37.206730, 36.977974, 26.275600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803936, 37.068413, 26.882587>,  <37.576466, 36.452415, 26.553238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803936, 37.068413, 26.882587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.440941, 37.156765, 26.739664>,  <37.223145, 37.209778, 26.653910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.440941, 37.156765, 26.739664>,  <37.803936, 37.068413, 26.882587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440941, 37.156765, 26.739664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264505, 0.360325, 0.894541,
		0.326336, 0.906299, -0.268567,
		-0.907492, 0.220883, -0.357307,
		37.168694, 37.223030, 26.632471>
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
