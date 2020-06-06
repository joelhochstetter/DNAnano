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
	<24.360323, 35.412437, 34.826324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.373011, 35.013939, 34.858551>,  <24.380623, 34.774841, 34.877888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.373011, 35.013939, 34.858551>,  <24.360323, 35.412437, 34.826324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.373011, 35.013939, 34.858551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440064, -0.058451, -0.896062,
		0.897406, 0.063878, 0.436557,
		0.031721, -0.996244, 0.080565,
		24.382526, 34.715065, 34.882721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.963514, 35.215294, 34.623363>,  <24.360323, 35.412437, 34.826324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.963514, 35.215294, 34.623363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.715689, 34.907780, 34.559975>,  <24.566994, 34.723270, 34.521942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.715689, 34.907780, 34.559975>,  <24.963514, 35.215294, 34.623363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.715689, 34.907780, 34.559975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256222, -0.007247, -0.966591,
		0.741950, -0.639468, 0.201469,
		-0.619564, -0.768783, -0.158469,
		24.529819, 34.677143, 34.512436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.253357, 34.660034, 34.283031>,  <24.963514, 35.215294, 34.623363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.253357, 34.660034, 34.283031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.870649, 34.699890, 34.173729>,  <24.641026, 34.723804, 34.108147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.870649, 34.699890, 34.173729>,  <25.253357, 34.660034, 34.283031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.870649, 34.699890, 34.173729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284318, 0.122345, -0.950892,
		-0.061314, -0.987473, -0.145385,
		-0.956767, 0.099639, -0.273255,
		24.583618, 34.729782, 34.091751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.842564, 35.012466, 34.155174>,  <25.253357, 34.660034, 34.283031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.842564, 35.012466, 34.155174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.543655, 35.276608, 34.184906>,  <25.364311, 35.435093, 34.202744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.543655, 35.276608, 34.184906>,  <25.842564, 35.012466, 34.155174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.543655, 35.276608, 34.184906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302152, 0.437265, -0.847055,
		-0.591854, -0.610522, -0.526282,
		-0.747270, 0.660350, 0.074327,
		25.319475, 35.474712, 34.207203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604528, 34.804356, 34.278851>,  <25.842564, 35.012466, 34.155174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.604528, 34.804356, 34.278851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963091, 34.881729, 34.438370>,  <27.178228, 34.928154, 34.534081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963091, 34.881729, 34.438370>,  <26.604528, 34.804356, 34.278851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963091, 34.881729, 34.438370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027984, 0.873250, -0.486467,
		-0.442351, 0.447232, 0.777373,
		0.896405, 0.193435, 0.398799,
		27.232012, 34.939758, 34.558010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.702324, 35.544804, 34.689888>,  <26.604528, 34.804356, 34.278851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.702324, 35.544804, 34.689888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.024080, 35.421165, 34.486942>,  <27.217134, 35.346981, 34.365173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.024080, 35.421165, 34.486942>,  <26.702324, 35.544804, 34.689888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.024080, 35.421165, 34.486942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029060, 0.832508, -0.553250,
		0.593392, 0.459772, 0.660678,
		0.804389, -0.309095, -0.507365,
		27.265396, 35.328438, 34.334732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.226185, 36.126400, 34.687931>,  <26.702324, 35.544804, 34.689888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.226185, 36.126400, 34.687931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.322216, 35.901325, 34.371513>,  <27.379835, 35.766281, 34.181664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.322216, 35.901325, 34.371513>,  <27.226185, 36.126400, 34.687931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.322216, 35.901325, 34.371513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261742, 0.822217, -0.505422,
		0.934801, -0.085707, 0.344676,
		0.240080, -0.562685, -0.791042,
		27.394239, 35.732521, 34.134201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.840523, 36.404957, 34.381912>,  <27.226185, 36.126400, 34.687931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.840523, 36.404957, 34.381912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.740734, 36.169964, 34.073982>,  <27.680861, 36.028969, 33.889225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.740734, 36.169964, 34.073982>,  <27.840523, 36.404957, 34.381912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.740734, 36.169964, 34.073982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150888, 0.761670, -0.630152,
		0.956555, -0.273362, -0.101370,
		-0.249470, -0.587480, -0.769826,
		27.665894, 35.993721, 33.843033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249435, 36.610153, 33.937813>,  <27.840523, 36.404957, 34.381912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.249435, 36.610153, 33.937813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.990297, 36.429546, 33.692398>,  <27.834814, 36.321182, 33.545151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.990297, 36.429546, 33.692398>,  <28.249435, 36.610153, 33.937813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990297, 36.429546, 33.692398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044922, 0.781358, -0.622465,
		0.760441, -0.430826, -0.485921,
		-0.647852, -0.451519, -0.613530,
		27.795942, 36.294090, 33.508339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.550732, 36.854321, 33.341923>,  <28.249435, 36.610153, 33.937813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.550732, 36.854321, 33.341923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169685, 36.749161, 33.280731>,  <27.941057, 36.686066, 33.244019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169685, 36.749161, 33.280731>,  <28.550732, 36.854321, 33.341923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.169685, 36.749161, 33.280731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064325, 0.665678, -0.743461,
		0.297291, -0.698394, -0.651048,
		-0.952618, -0.262903, -0.152976,
		27.883900, 36.670288, 33.234837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.482927, 36.882374, 32.695225>,  <28.550732, 36.854321, 33.341923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.482927, 36.882374, 32.695225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093910, 36.914989, 32.782410>,  <27.860500, 36.934559, 32.834721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093910, 36.914989, 32.782410>,  <28.482927, 36.882374, 32.695225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093910, 36.914989, 32.782410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121430, 0.621200, -0.774187,
		-0.198523, -0.779399, -0.594244,
		-0.972545, 0.081535, 0.217964,
		27.802147, 36.939449, 32.847797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.188131, 36.869122, 32.063145>,  <28.482927, 36.882374, 32.695225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.188131, 36.869122, 32.063145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934843, 37.049549, 32.314720>,  <27.782869, 37.157806, 32.465668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934843, 37.049549, 32.314720>,  <28.188131, 36.869122, 32.063145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.934843, 37.049549, 32.314720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324167, 0.583338, -0.744737,
		-0.702812, -0.675466, -0.223161,
		-0.633223, 0.451069, 0.628941,
		27.744877, 37.184868, 32.503403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490534, 36.756092, 31.852316>,  <28.188131, 36.869122, 32.063145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490534, 36.756092, 31.852316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507820, 37.108559, 32.040646>,  <27.518192, 37.320038, 32.153645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507820, 37.108559, 32.040646>,  <27.490534, 36.756092, 31.852316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.507820, 37.108559, 32.040646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389498, 0.448833, -0.804264,
		-0.920013, -0.148628, 0.362610,
		0.043216, 0.881169, 0.470822,
		27.520784, 37.372910, 32.181892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.009468, 37.135857, 31.485506>,  <27.490534, 36.756092, 31.852316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.009468, 37.135857, 31.485506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188110, 37.422997, 31.699135>,  <27.295296, 37.595280, 31.827312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188110, 37.422997, 31.699135>,  <27.009468, 37.135857, 31.485506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.188110, 37.422997, 31.699135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335326, 0.687688, -0.643927,
		-0.829519, 0.108493, 0.547839,
		0.446604, 0.717854, 0.534070,
		27.322092, 37.638351, 31.859356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515341, 37.591167, 31.617785>,  <27.009468, 37.135857, 31.485506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515341, 37.591167, 31.617785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.868223, 37.779385, 31.624756>,  <27.079952, 37.892315, 31.628939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.868223, 37.779385, 31.624756>,  <26.515341, 37.591167, 31.617785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.868223, 37.779385, 31.624756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305758, 0.600619, -0.738762,
		-0.358087, 0.646410, 0.673742,
		0.882205, 0.470543, 0.017429,
		27.132885, 37.920547, 31.629984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.365280, 38.250988, 31.292744>,  <26.515341, 37.591167, 31.617785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.365280, 38.250988, 31.292744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.764568, 38.229961, 31.304035>,  <27.004141, 38.217346, 31.310810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.764568, 38.229961, 31.304035>,  <26.365280, 38.250988, 31.292744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.764568, 38.229961, 31.304035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055128, 0.631640, -0.773299,
		0.022817, 0.773478, 0.633413,
		0.998218, -0.052563, 0.028228,
		27.064034, 38.214191, 31.312504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.659199, 38.948502, 31.323326>,  <26.365280, 38.250988, 31.292744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.659199, 38.948502, 31.323326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.952713, 38.724461, 31.169525>,  <27.128822, 38.590034, 31.077244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.952713, 38.724461, 31.169525>,  <26.659199, 38.948502, 31.323326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.952713, 38.724461, 31.169525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191570, 0.713580, -0.673872,
		0.651811, 0.420820, 0.630915,
		0.733787, -0.560102, -0.384503,
		27.172850, 38.556431, 31.054174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246622, 39.308674, 31.293633>,  <26.659199, 38.948502, 31.323326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.246622, 39.308674, 31.293633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.322311, 39.022373, 31.024740>,  <27.367725, 38.850594, 30.863405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.322311, 39.022373, 31.024740>,  <27.246622, 39.308674, 31.293633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.322311, 39.022373, 31.024740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366031, 0.686674, -0.628093,
		0.911162, -0.127208, 0.391922,
		0.189224, -0.715750, -0.672233,
		27.379078, 38.807648, 30.823071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.943249, 39.455429, 31.178452>,  <27.246622, 39.308674, 31.293633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.943249, 39.455429, 31.178452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783466, 39.234505, 30.885771>,  <27.687597, 39.101952, 30.710163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783466, 39.234505, 30.885771>,  <27.943249, 39.455429, 31.178452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.783466, 39.234505, 30.885771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306967, 0.671489, -0.674444,
		0.863832, -0.494019, -0.098690,
		-0.399457, -0.552312, -0.731701,
		27.663630, 39.068810, 30.666260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.459795, 39.429047, 30.645380>,  <27.943249, 39.455429, 31.178452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.459795, 39.429047, 30.645380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116283, 39.324314, 30.469223>,  <27.910177, 39.261475, 30.363529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116283, 39.324314, 30.469223>,  <28.459795, 39.429047, 30.645380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.116283, 39.324314, 30.469223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182484, 0.646879, -0.740437,
		0.478747, -0.716237, -0.507746,
		-0.858779, -0.261826, -0.440393,
		27.858650, 39.245766, 30.337105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632324, 39.375973, 29.880354>,  <28.459795, 39.429047, 30.645380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632324, 39.375973, 29.880354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236366, 39.409401, 29.926188>,  <27.998793, 39.429459, 29.953688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236366, 39.409401, 29.926188>,  <28.632324, 39.375973, 29.880354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.236366, 39.409401, 29.926188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038054, 0.621804, -0.782248,
		-0.136619, -0.778702, -0.612339,
		-0.989892, 0.083568, 0.114583,
		27.939398, 39.434471, 29.960562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.503544, 39.524166, 29.134174>,  <28.632324, 39.375973, 29.880354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.503544, 39.524166, 29.134174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.159056, 39.586670, 29.327620>,  <27.952362, 39.624172, 29.443687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.159056, 39.586670, 29.327620>,  <28.503544, 39.524166, 29.134174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.159056, 39.586670, 29.327620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251597, 0.695702, -0.672828,
		-0.441584, -0.701129, -0.559840,
		-0.861221, 0.156256, 0.483613,
		27.900690, 39.633545, 29.472704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.836359, 39.346134, 28.738846>,  <28.503544, 39.524166, 29.134174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.836359, 39.346134, 28.738846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750374, 39.626945, 29.010416>,  <27.698784, 39.795433, 29.173359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750374, 39.626945, 29.010416>,  <27.836359, 39.346134, 28.738846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.750374, 39.626945, 29.010416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112580, 0.672732, -0.731271,
		-0.970112, -0.233629, -0.065577,
		-0.214961, 0.702033, 0.678927,
		27.685884, 39.837555, 29.214094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.251120, 39.759613, 28.503063>,  <27.836359, 39.346134, 28.738846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.251120, 39.759613, 28.503063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434723, 39.999908, 28.764879>,  <27.544884, 40.144085, 28.921968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434723, 39.999908, 28.764879>,  <27.251120, 39.759613, 28.503063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.434723, 39.999908, 28.764879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120282, 0.771972, -0.624172,
		-0.880253, 0.207769, 0.426599,
		0.459006, 0.600742, 0.654540,
		27.572424, 40.180130, 28.961241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.897312, 40.346550, 28.640753>,  <27.251120, 39.759613, 28.503063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.897312, 40.346550, 28.640753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.285789, 40.418217, 28.703596>,  <27.518875, 40.461216, 28.741302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.285789, 40.418217, 28.703596>,  <26.897312, 40.346550, 28.640753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.285789, 40.418217, 28.703596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078533, 0.863121, -0.498854,
		-0.224980, 0.472145, 0.852328,
		0.971193, 0.179168, 0.157106,
		27.577148, 40.471966, 28.750729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036276, 41.068565, 28.813618>,  <26.897312, 40.346550, 28.640753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.036276, 41.068565, 28.813618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363865, 40.931156, 28.629761>,  <27.560419, 40.848709, 28.519445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363865, 40.931156, 28.629761>,  <27.036276, 41.068565, 28.813618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363865, 40.931156, 28.629761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030115, 0.825635, -0.563400,
		0.573040, 0.447568, 0.686519,
		0.818974, -0.343525, -0.459643,
		27.609556, 40.828098, 28.491867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494986, 41.494514, 28.762817>,  <27.036276, 41.068565, 28.813618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.494986, 41.494514, 28.762817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.622787, 41.272312, 28.455746>,  <27.699469, 41.138992, 28.271503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.622787, 41.272312, 28.455746>,  <27.494986, 41.494514, 28.762817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.622787, 41.272312, 28.455746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131350, 0.828284, -0.544696,
		0.938437, 0.073199, 0.337606,
		0.319505, -0.555507, -0.767677,
		27.718639, 41.105659, 28.225443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190828, 41.326633, 28.556574>,  <27.494986, 41.494514, 28.762817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190828, 41.326633, 28.556574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982639, 41.330379, 28.215042>,  <27.857725, 41.332626, 28.010124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982639, 41.330379, 28.215042>,  <28.190828, 41.326633, 28.556574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.982639, 41.330379, 28.215042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448053, 0.854216, -0.263749,
		0.726882, -0.519834, -0.448793,
		-0.520472, 0.009369, -0.853827,
		27.826498, 41.333191, 27.958895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603325, 41.318100, 27.984442>,  <28.190828, 41.326633, 28.556574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603325, 41.318100, 27.984442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263720, 41.517071, 27.913177>,  <28.059956, 41.636452, 27.870419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263720, 41.517071, 27.913177>,  <28.603325, 41.318100, 27.984442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263720, 41.517071, 27.913177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522885, 0.742548, -0.418586,
		-0.075922, -0.448544, -0.890531,
		-0.849016, 0.497425, -0.178161,
		28.009014, 41.666298, 27.859730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456223, 41.523964, 27.181671>,  <28.603325, 41.318100, 27.984442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456223, 41.523964, 27.181671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.332708, 41.786591, 27.456940>,  <28.258600, 41.944164, 27.622101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.332708, 41.786591, 27.456940>,  <28.456223, 41.523964, 27.181671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.332708, 41.786591, 27.456940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609503, 0.692039, -0.386767,
		-0.730177, 0.300015, -0.613866,
		-0.308784, 0.656562, 0.688171,
		28.240074, 41.983559, 27.663391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055649, 40.906513, 27.464497>,  <28.456223, 41.523964, 27.181671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055649, 40.906513, 27.464497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.142792, 40.542900, 27.322397>,  <28.195078, 40.324734, 27.237137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.142792, 40.542900, 27.322397>,  <28.055649, 40.906513, 27.464497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.142792, 40.542900, 27.322397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953298, 0.276215, -0.122181,
		0.209191, -0.312040, 0.926752,
		0.217858, -0.909030, -0.355249,
		28.208149, 40.270191, 27.215822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.577728, 40.515293, 27.867159>,  <28.055649, 40.906513, 27.464497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.577728, 40.515293, 27.867159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.617342, 40.400276, 27.486105>,  <28.641109, 40.331264, 27.257473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.617342, 40.400276, 27.486105>,  <28.577728, 40.515293, 27.867159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.617342, 40.400276, 27.486105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950911, 0.309416, 0.005460,
		0.293190, -0.906411, 0.304069,
		0.099033, -0.287542, -0.952634,
		28.647053, 40.314014, 27.200315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055540, 39.928970, 27.817497>,  <28.577728, 40.515293, 27.867159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.055540, 39.928970, 27.817497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.027277, 40.161613, 27.493341>,  <29.010319, 40.301201, 27.298847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.027277, 40.161613, 27.493341>,  <29.055540, 39.928970, 27.817497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.027277, 40.161613, 27.493341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977596, 0.201866, 0.059642,
		0.198280, -0.788021, -0.582845,
		-0.070657, 0.581612, -0.810392,
		29.006081, 40.336098, 27.250223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571566, 39.714413, 27.456535>,  <29.055540, 39.928970, 27.817497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.571566, 39.714413, 27.456535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492069, 40.090370, 27.345467>,  <29.444372, 40.315945, 27.278826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492069, 40.090370, 27.345467>,  <29.571566, 39.714413, 27.456535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.492069, 40.090370, 27.345467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969560, 0.229904, 0.084249,
		0.143023, -0.252475, -0.956975,
		-0.198741, 0.939894, -0.277671,
		29.432447, 40.372337, 27.262165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211887, 39.311115, 27.574770>,  <29.571566, 39.714413, 27.456535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211887, 39.311115, 27.574770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.332001, 39.535614, 27.883270>,  <30.404070, 39.670315, 28.068371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.332001, 39.535614, 27.883270>,  <30.211887, 39.311115, 27.574770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332001, 39.535614, 27.883270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323836, -0.820529, 0.471022,
		0.897195, 0.108319, -0.428144,
		0.300284, 0.561247, 0.771253,
		30.422087, 39.703987, 28.114647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856297, 39.024467, 27.990921>,  <30.211887, 39.311115, 27.574770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856297, 39.024467, 27.990921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690268, 39.231075, 28.290499>,  <30.590651, 39.355042, 28.470245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690268, 39.231075, 28.290499>,  <30.856297, 39.024467, 27.990921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690268, 39.231075, 28.290499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152644, -0.772002, 0.617019,
		0.896891, 0.370430, 0.241594,
		-0.415074, 0.516521, 0.748946,
		30.565746, 39.386032, 28.515182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315737, 38.928478, 28.513411>,  <30.856297, 39.024467, 27.990921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315737, 38.928478, 28.513411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964563, 39.029945, 28.675833>,  <30.753859, 39.090824, 28.773287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964563, 39.029945, 28.675833>,  <31.315737, 38.928478, 28.513411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.964563, 39.029945, 28.675833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030300, -0.816971, 0.575882,
		0.477820, 0.517891, 0.709561,
		-0.877935, 0.253668, 0.406057,
		30.701183, 39.106045, 28.797649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361259, 39.076813, 29.246431>,  <31.315737, 38.928478, 28.513411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361259, 39.076813, 29.246431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996542, 38.949356, 29.142813>,  <30.777712, 38.872883, 29.080641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996542, 38.949356, 29.142813>,  <31.361259, 39.076813, 29.246431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996542, 38.949356, 29.142813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017512, -0.660414, 0.750698,
		-0.410280, 0.679943, 0.607740,
		-0.911791, -0.318639, -0.259047,
		30.723005, 38.853764, 29.065098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946693, 38.955002, 29.948639>,  <31.361259, 39.076813, 29.246431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946693, 38.955002, 29.948639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779602, 38.747253, 29.650442>,  <30.679348, 38.622604, 29.471523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779602, 38.747253, 29.650442>,  <30.946693, 38.955002, 29.948639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.779602, 38.747253, 29.650442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071382, -0.799213, 0.596794,
		-0.905763, 0.302513, 0.296781,
		-0.417729, -0.519370, -0.745491,
		30.654284, 38.591442, 29.426794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393356, 38.661980, 30.242832>,  <30.946693, 38.955002, 29.948639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393356, 38.661980, 30.242832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438343, 38.439636, 29.913380>,  <30.465334, 38.306229, 29.715708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438343, 38.439636, 29.913380>,  <30.393356, 38.661980, 30.242832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438343, 38.439636, 29.913380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104241, -0.830917, 0.546545,
		-0.988173, 0.024388, -0.151393,
		0.112466, -0.555862, -0.823631,
		30.472082, 38.272877, 29.666290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818722, 38.183121, 30.278524>,  <30.393356, 38.661980, 30.242832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818722, 38.183121, 30.278524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075394, 38.009232, 30.025776>,  <30.229397, 37.904900, 29.874126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075394, 38.009232, 30.025776>,  <29.818722, 38.183121, 30.278524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075394, 38.009232, 30.025776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209614, -0.891890, 0.400743,
		-0.737772, -0.124699, -0.663432,
		0.641681, -0.434722, -0.631873,
		30.267899, 37.878815, 29.836214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444666, 37.553493, 30.142759>,  <29.818722, 38.183121, 30.278524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444666, 37.553493, 30.142759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831802, 37.503494, 30.055437>,  <30.064085, 37.473495, 30.003044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831802, 37.503494, 30.055437>,  <29.444666, 37.553493, 30.142759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831802, 37.503494, 30.055437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025116, -0.911491, 0.410551,
		-0.250302, -0.391866, -0.885319,
		0.967842, -0.124998, -0.218306,
		30.122154, 37.465996, 29.989944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497547, 36.874161, 29.814062>,  <29.444666, 37.553493, 30.142759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497547, 36.874161, 29.814062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868069, 36.937775, 29.950689>,  <30.090382, 36.975941, 30.032665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868069, 36.937775, 29.950689>,  <29.497547, 36.874161, 29.814062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868069, 36.937775, 29.950689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058071, -0.955985, 0.287613,
		0.372273, -0.246582, -0.894768,
		0.926305, 0.159031, 0.341568,
		30.145960, 36.985485, 30.053160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809673, 36.187195, 29.720577>,  <29.497547, 36.874161, 29.814062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.809673, 36.187195, 29.720577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040071, 36.402576, 29.966599>,  <30.178310, 36.531807, 30.114212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040071, 36.402576, 29.966599>,  <29.809673, 36.187195, 29.720577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040071, 36.402576, 29.966599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147890, -0.808629, 0.569427,
		0.803963, -0.237028, -0.545400,
		0.575997, 0.538458, 0.615054,
		30.212870, 36.564114, 30.151115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428869, 35.784164, 29.793291>,  <29.809673, 36.187195, 29.720577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428869, 35.784164, 29.793291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393528, 36.038471, 30.100016>,  <30.372324, 36.191055, 30.284050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393528, 36.038471, 30.100016>,  <30.428869, 35.784164, 29.793291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393528, 36.038471, 30.100016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161073, -0.750570, 0.640859,
		0.982980, 0.180134, -0.036088,
		-0.088354, 0.635764, 0.766810,
		30.367022, 36.229202, 30.330059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089701, 35.671139, 30.264486>,  <30.428869, 35.784164, 29.793291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089701, 35.671139, 30.264486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788935, 35.828827, 30.475849>,  <30.608475, 35.923439, 30.602667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788935, 35.828827, 30.475849>,  <31.089701, 35.671139, 30.264486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788935, 35.828827, 30.475849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197367, -0.630147, 0.750974,
		0.629020, 0.668960, 0.396012,
		-0.751917, 0.394218, 0.528406,
		30.563360, 35.947094, 30.634371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318598, 35.581825, 30.923512>,  <31.089701, 35.671139, 30.264486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318598, 35.581825, 30.923512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926474, 35.641975, 30.974701>,  <30.691198, 35.678066, 31.005415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926474, 35.641975, 30.974701>,  <31.318598, 35.581825, 30.923512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926474, 35.641975, 30.974701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010860, -0.606073, 0.795335,
		0.197158, 0.781065, 0.592508,
		-0.980312, 0.150372, 0.127974,
		30.632380, 35.687088, 31.013094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324844, 35.670353, 31.649965>,  <31.318598, 35.581825, 30.923512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324844, 35.670353, 31.649965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969870, 35.541893, 31.517714>,  <30.756884, 35.464817, 31.438362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969870, 35.541893, 31.517714>,  <31.324844, 35.670353, 31.649965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969870, 35.541893, 31.517714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115647, -0.539230, 0.834180,
		-0.446182, 0.778520, 0.441393,
		-0.887439, -0.321150, -0.330629,
		30.703638, 35.445549, 31.418526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878990, 35.630192, 32.222393>,  <31.324844, 35.670353, 31.649965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878990, 35.630192, 32.222393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657743, 35.402592, 31.978985>,  <30.524996, 35.266033, 31.832939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657743, 35.402592, 31.978985>,  <30.878990, 35.630192, 32.222393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657743, 35.402592, 31.978985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352265, -0.502184, 0.789760,
		-0.754964, 0.651191, 0.077328,
		-0.553118, -0.569000, -0.608522,
		30.491808, 35.231892, 31.796429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165003, 35.718266, 32.508968>,  <30.878990, 35.630192, 32.222393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165003, 35.718266, 32.508968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.202856, 35.382103, 32.295517>,  <30.225569, 35.180405, 32.167446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.202856, 35.382103, 32.295517>,  <30.165003, 35.718266, 32.508968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.202856, 35.382103, 32.295517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622109, -0.468399, 0.627361,
		-0.777190, 0.272603, -0.567154,
		0.094634, -0.840411, -0.533624,
		30.231247, 35.129978, 32.135429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633226, 35.361309, 32.613358>,  <30.165003, 35.718266, 32.508968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633226, 35.361309, 32.613358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832090, 35.060535, 32.440189>,  <29.951408, 34.880070, 32.336288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832090, 35.060535, 32.440189>,  <29.633226, 35.361309, 32.613358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832090, 35.060535, 32.440189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335680, -0.626790, 0.703173,
		-0.800095, -0.204264, -0.564025,
		0.497158, -0.751937, -0.432924,
		29.981237, 34.834953, 32.310310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133358, 34.858532, 32.548489>,  <29.633226, 35.361309, 32.613358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133358, 34.858532, 32.548489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.494343, 34.686428, 32.556908>,  <29.710934, 34.583164, 32.561958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.494343, 34.686428, 32.556908>,  <29.133358, 34.858532, 32.548489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.494343, 34.686428, 32.556908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259790, -0.504630, 0.823321,
		-0.343618, -0.748484, -0.567185,
		0.902461, -0.430257, 0.021049,
		29.765081, 34.557350, 32.563221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.969194, 34.149185, 32.591824>,  <29.133358, 34.858532, 32.548489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.969194, 34.149185, 32.591824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352058, 34.184547, 32.702114>,  <29.581778, 34.205765, 32.768288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352058, 34.184547, 32.702114>,  <28.969194, 34.149185, 32.591824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.352058, 34.184547, 32.702114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180408, -0.562755, 0.806697,
		0.226482, -0.821883, -0.522699,
		0.957162, 0.088403, 0.275728,
		29.639208, 34.211067, 32.784832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004280, 33.585030, 33.010120>,  <28.969194, 34.149185, 32.591824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004280, 33.585030, 33.010120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334732, 33.785858, 33.112442>,  <29.533003, 33.906357, 33.173836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334732, 33.785858, 33.112442>,  <29.004280, 33.585030, 33.010120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334732, 33.785858, 33.112442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030535, -0.413416, 0.910030,
		0.562653, -0.759614, -0.326204,
		0.826129, 0.502070, 0.255804,
		29.582571, 33.936478, 33.189182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592522, 33.141571, 33.145073>,  <29.004280, 33.585030, 33.010120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592522, 33.141571, 33.145073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633936, 33.478958, 33.355915>,  <29.658785, 33.681393, 33.482422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633936, 33.478958, 33.355915>,  <29.592522, 33.141571, 33.145073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633936, 33.478958, 33.355915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354745, -0.463785, 0.811825,
		0.929213, -0.271039, 0.251199,
		0.103534, 0.843470, 0.527105,
		29.664997, 33.731998, 33.514046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854595, 32.938866, 33.890152>,  <29.592522, 33.141571, 33.145073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854595, 32.938866, 33.890152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713947, 33.309895, 33.940704>,  <29.629559, 33.532513, 33.971035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713947, 33.309895, 33.940704>,  <29.854595, 32.938866, 33.890152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713947, 33.309895, 33.940704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372936, -0.262619, 0.889915,
		0.858651, 0.265782, 0.438268,
		-0.351621, 0.927572, 0.126379,
		29.608461, 33.588165, 33.978619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043413, 33.186253, 34.620079>,  <29.854595, 32.938866, 33.890152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043413, 33.186253, 34.620079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.717789, 33.383411, 34.497211>,  <29.522413, 33.501709, 34.423492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.717789, 33.383411, 34.497211>,  <30.043413, 33.186253, 34.620079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.717789, 33.383411, 34.497211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473181, -0.256224, 0.842882,
		0.336753, 0.831504, 0.441813,
		-0.814063, 0.492900, -0.307167,
		29.473570, 33.531281, 34.405060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787598, 33.121223, 34.392384>,  <30.043413, 33.186253, 34.620079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787598, 33.121223, 34.392384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807871, 33.161617, 34.789822>,  <30.820034, 33.185852, 35.028286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807871, 33.161617, 34.789822>,  <30.787598, 33.121223, 34.392384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807871, 33.161617, 34.789822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262108, -0.958656, 0.110804,
		0.963707, -0.266045, -0.022118,
		0.050682, 0.100985, 0.993596,
		30.823076, 33.191914, 35.087902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488516, 33.356018, 34.442402>,  <30.787598, 33.121223, 34.392384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488516, 33.356018, 34.442402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564089, 33.724861, 34.307331>,  <31.609432, 33.946167, 34.226288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564089, 33.724861, 34.307331>,  <31.488516, 33.356018, 34.442402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564089, 33.724861, 34.307331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177259, 0.370242, 0.911866,
		0.965860, -0.112423, 0.233402,
		0.188930, 0.922107, -0.337673,
		31.620768, 34.001492, 34.206028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912165, 33.680466, 34.924412>,  <31.488516, 33.356018, 34.442402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912165, 33.680466, 34.924412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767515, 33.994965, 34.723995>,  <31.680725, 34.183662, 34.603745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767515, 33.994965, 34.723995>,  <31.912165, 33.680466, 34.924412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767515, 33.994965, 34.723995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031002, 0.526978, 0.849313,
		0.931809, 0.322665, -0.166193,
		-0.361623, 0.786245, -0.501046,
		31.659029, 34.230839, 34.573681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133472, 34.328754, 35.143471>,  <31.912165, 33.680466, 34.924412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133472, 34.328754, 35.143471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775738, 34.424995, 34.992592>,  <31.561098, 34.482738, 34.902065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775738, 34.424995, 34.992592>,  <32.133472, 34.328754, 35.143471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775738, 34.424995, 34.992592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217270, 0.503430, 0.836273,
		0.391101, 0.829861, -0.397959,
		-0.894334, 0.240602, -0.377195,
		31.507437, 34.497177, 34.879433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038265, 35.097824, 35.182110>,  <32.133472, 34.328754, 35.143471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038265, 35.097824, 35.182110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698843, 34.886349, 35.190437>,  <31.495190, 34.759464, 35.195435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698843, 34.886349, 35.190437>,  <32.038265, 35.097824, 35.182110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698843, 34.886349, 35.190437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285619, 0.490839, 0.823103,
		-0.445386, 0.692505, -0.567511,
		-0.848559, -0.528690, 0.020820,
		31.444275, 34.727741, 35.196682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329819, 35.384232, 35.154255>,  <32.038265, 35.097824, 35.182110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329819, 35.384232, 35.154255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233324, 35.043015, 35.339348>,  <31.175426, 34.838284, 35.450405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233324, 35.043015, 35.339348>,  <31.329819, 35.384232, 35.154255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233324, 35.043015, 35.339348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362571, 0.521509, 0.772380,
		-0.900193, 0.018553, -0.435096,
		-0.241237, -0.853044, 0.462732,
		31.160954, 34.787102, 35.478168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615749, 35.343185, 35.407360>,  <31.329819, 35.384232, 35.154255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615749, 35.343185, 35.407360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859917, 35.117462, 35.629692>,  <31.006416, 34.982029, 35.763092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859917, 35.117462, 35.629692>,  <30.615749, 35.343185, 35.407360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859917, 35.117462, 35.629692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205822, 0.564619, 0.799276,
		-0.764872, -0.602293, 0.228505,
		0.610416, -0.564313, 0.555826,
		31.043041, 34.948170, 35.796440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309692, 35.238556, 36.104805>,  <30.615749, 35.343185, 35.407360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309692, 35.238556, 36.104805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700834, 35.186344, 36.170242>,  <30.935520, 35.155018, 36.209503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700834, 35.186344, 36.170242>,  <30.309692, 35.238556, 36.104805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700834, 35.186344, 36.170242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071412, 0.526669, 0.847065,
		-0.196723, -0.839990, 0.505685,
		0.977855, -0.130526, 0.163593,
		30.994190, 35.147186, 36.219318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317368, 35.069614, 36.776917>,  <30.309692, 35.238556, 36.104805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317368, 35.069614, 36.776917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699919, 35.159168, 36.701859>,  <30.929451, 35.212902, 36.656822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699919, 35.159168, 36.701859>,  <30.317368, 35.069614, 36.776917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699919, 35.159168, 36.701859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043875, 0.524985, 0.849980,
		0.288811, -0.821137, 0.492262,
		0.956380, 0.223885, -0.187649,
		30.986834, 35.226334, 36.645565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636093, 34.894657, 37.421761>,  <30.317368, 35.069614, 36.776917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.636093, 34.894657, 37.421761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860435, 35.152897, 37.214439>,  <30.995041, 35.307842, 37.090046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860435, 35.152897, 37.214439>,  <30.636093, 34.894657, 37.421761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860435, 35.152897, 37.214439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080320, 0.580656, 0.810177,
		0.824008, -0.496023, 0.273810,
		0.560857, 0.645600, -0.518306,
		31.028692, 35.346577, 37.058949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239723, 35.016418, 37.834042>,  <30.636093, 34.894657, 37.421761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239723, 35.016418, 37.834042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252937, 35.326279, 37.581429>,  <31.260866, 35.512196, 37.429863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252937, 35.326279, 37.581429>,  <31.239723, 35.016418, 37.834042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252937, 35.326279, 37.581429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182071, 0.616639, 0.765903,
		0.982730, -0.140284, -0.120671,
		0.033033, 0.774646, -0.631531,
		31.262848, 35.558674, 37.391968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799618, 35.406963, 38.097794>,  <31.239723, 35.016418, 37.834042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799618, 35.406963, 38.097794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574738, 35.643898, 37.866943>,  <31.439810, 35.786057, 37.728436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574738, 35.643898, 37.866943>,  <31.799618, 35.406963, 38.097794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574738, 35.643898, 37.866943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128190, 0.751833, 0.646772,
		0.817005, 0.289635, -0.498612,
		-0.562201, 0.592333, -0.577123,
		31.406076, 35.821598, 37.693806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157726, 36.075428, 37.996216>,  <31.799618, 35.406963, 38.097794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157726, 36.075428, 37.996216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768251, 36.142696, 37.934704>,  <31.534567, 36.183060, 37.897797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768251, 36.142696, 37.934704>,  <32.157726, 36.075428, 37.996216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768251, 36.142696, 37.934704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042677, 0.797451, 0.601873,
		0.223853, 0.579473, -0.783646,
		-0.973688, 0.168174, -0.153782,
		31.476145, 36.193150, 37.888569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127079, 36.758965, 37.869755>,  <32.157726, 36.075428, 37.996216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127079, 36.758965, 37.869755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746601, 36.671417, 37.956768>,  <31.518312, 36.618889, 38.008976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746601, 36.671417, 37.956768>,  <32.127079, 36.758965, 37.869755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746601, 36.671417, 37.956768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063849, 0.829278, 0.555177,
		-0.301901, 0.514195, -0.802783,
		-0.951199, -0.218865, 0.217529,
		31.461241, 36.605759, 38.022026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679604, 37.336468, 37.802349>,  <32.127079, 36.758965, 37.869755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679604, 37.336468, 37.802349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453016, 37.095753, 38.027546>,  <31.317064, 36.951324, 38.162666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453016, 37.095753, 38.027546>,  <31.679604, 37.336468, 37.802349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453016, 37.095753, 38.027546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168302, 0.753258, 0.635827,
		-0.806716, 0.265422, -0.527978,
		-0.566467, -0.601792, 0.562994,
		31.283077, 36.915215, 38.196445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023769, 37.746563, 37.872280>,  <31.679604, 37.336468, 37.802349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023769, 37.746563, 37.872280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.065557, 37.474510, 38.162525>,  <31.090631, 37.311279, 38.336670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.065557, 37.474510, 38.162525>,  <31.023769, 37.746563, 37.872280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065557, 37.474510, 38.162525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269501, 0.682944, 0.678938,
		-0.957317, -0.266482, -0.111947,
		0.104471, -0.680129, 0.725611,
		31.096899, 37.270473, 38.380207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496696, 37.925034, 38.420181>,  <31.023769, 37.746563, 37.872280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496696, 37.925034, 38.420181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699947, 37.662834, 38.643658>,  <30.821898, 37.505516, 38.777744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699947, 37.662834, 38.643658>,  <30.496696, 37.925034, 38.420181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699947, 37.662834, 38.643658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215321, 0.531393, 0.819304,
		-0.833934, -0.536606, 0.128872,
		0.508125, -0.655496, 0.558689,
		30.852385, 37.466187, 38.811264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.101875, 37.786938, 38.980438>,  <30.496696, 37.925034, 38.420181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.101875, 37.786938, 38.980438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483538, 37.708721, 39.071079>,  <30.712536, 37.661793, 39.125465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483538, 37.708721, 39.071079>,  <30.101875, 37.786938, 38.980438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483538, 37.708721, 39.071079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099878, 0.505685, 0.856917,
		-0.282148, -0.840266, 0.462973,
		0.954158, -0.195537, 0.226602,
		30.769785, 37.650059, 39.139061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083374, 37.632320, 39.699142>,  <30.101875, 37.786938, 38.980438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083374, 37.632320, 39.699142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465958, 37.728546, 39.633030>,  <30.695507, 37.786282, 39.593361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465958, 37.728546, 39.633030>,  <30.083374, 37.632320, 39.699142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465958, 37.728546, 39.633030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048276, 0.428093, 0.902444,
		0.287847, -0.871130, 0.397840,
		0.956459, 0.240560, -0.165280,
		30.752895, 37.800716, 39.583447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.482855, 37.515972, 40.339298>,  <30.083374, 37.632320, 39.699142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.482855, 37.515972, 40.339298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.722054, 37.756802, 40.127674>,  <30.865572, 37.901299, 40.000698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.722054, 37.756802, 40.127674>,  <30.482855, 37.515972, 40.339298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722054, 37.756802, 40.127674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316336, 0.429213, 0.845996,
		0.736431, -0.673265, 0.066211,
		0.597997, 0.602073, -0.529063,
		30.901453, 37.937424, 39.968956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083874, 37.476986, 40.607979>,  <30.482855, 37.515972, 40.339298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083874, 37.476986, 40.607979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.084188, 37.826958, 40.414280>,  <31.084377, 38.036942, 40.298061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.084188, 37.826958, 40.414280>,  <31.083874, 37.476986, 40.607979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084188, 37.826958, 40.414280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399391, 0.443670, 0.802274,
		0.916780, -0.194035, -0.349091,
		0.000788, 0.874933, -0.484244,
		31.084425, 38.089439, 40.269009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715124, 37.710892, 40.730228>,  <31.083874, 37.476986, 40.607979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715124, 37.710892, 40.730228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542128, 38.045300, 40.595161>,  <31.438330, 38.245945, 40.514122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542128, 38.045300, 40.595161>,  <31.715124, 37.710892, 40.730228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542128, 38.045300, 40.595161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444484, 0.523523, 0.726882,
		0.784466, 0.164283, -0.598017,
		-0.432490, 0.836023, -0.337665,
		31.412380, 38.296108, 40.493862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236729, 38.144539, 40.723049>,  <31.715124, 37.710892, 40.730228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236729, 38.144539, 40.723049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921814, 38.388596, 40.687473>,  <31.732866, 38.535030, 40.666126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921814, 38.388596, 40.687473>,  <32.236729, 38.144539, 40.723049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921814, 38.388596, 40.687473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365813, 0.578317, 0.729198,
		0.496352, 0.541549, -0.678497,
		-0.787284, 0.610142, -0.088944,
		31.685629, 38.571640, 40.660789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501446, 38.837994, 40.891117>,  <32.236729, 38.144539, 40.723049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501446, 38.837994, 40.891117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110001, 38.916569, 40.915543>,  <31.875134, 38.963715, 40.930199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110001, 38.916569, 40.915543>,  <32.501446, 38.837994, 40.891117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110001, 38.916569, 40.915543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166623, 0.582833, 0.795325,
		0.120644, 0.788490, -0.603099,
		-0.978612, 0.196441, 0.061065,
		31.816418, 38.975502, 40.933861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436058, 39.556885, 40.987301>,  <32.501446, 38.837994, 40.891117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436058, 39.556885, 40.987301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092663, 39.402496, 41.122368>,  <31.886625, 39.309864, 41.203407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092663, 39.402496, 41.122368>,  <32.436058, 39.556885, 40.987301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092663, 39.402496, 41.122368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060809, 0.577183, 0.814347,
		-0.509217, 0.719640, -0.472034,
		-0.858487, -0.385976, 0.337672,
		31.835117, 39.286705, 41.223671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968237, 40.178478, 41.189552>,  <32.436058, 39.556885, 40.987301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968237, 40.178478, 41.189552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880283, 39.836193, 41.376915>,  <31.827511, 39.630821, 41.489334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880283, 39.836193, 41.376915>,  <31.968237, 40.178478, 41.189552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880283, 39.836193, 41.376915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087183, 0.461004, 0.883105,
		-0.971623, 0.235017, -0.026764,
		-0.219883, -0.855712, 0.468411,
		31.814318, 39.579479, 41.517437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473537, 40.384258, 41.666798>,  <31.968237, 40.178478, 41.189552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473537, 40.384258, 41.666798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653046, 40.051575, 41.797562>,  <31.760750, 39.851967, 41.876019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653046, 40.051575, 41.797562>,  <31.473537, 40.384258, 41.666798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653046, 40.051575, 41.797562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099745, 0.410148, 0.906548,
		-0.888063, -0.374224, 0.267021,
		0.448770, -0.831706, 0.326910,
		31.787678, 39.802063, 41.895634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180529, 40.310989, 42.323212>,  <31.473537, 40.384258, 41.666798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180529, 40.310989, 42.323212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487415, 40.054455, 42.320034>,  <31.671547, 39.900532, 42.318127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487415, 40.054455, 42.320034>,  <31.180529, 40.310989, 42.323212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487415, 40.054455, 42.320034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185412, 0.209917, 0.959978,
		-0.614003, -0.737984, 0.279964,
		0.767217, -0.641338, -0.007942,
		31.717581, 39.862053, 42.317650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116846, 39.914589, 42.899715>,  <31.180529, 40.310989, 42.323212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116846, 39.914589, 42.899715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499979, 39.903667, 42.785309>,  <31.729858, 39.897114, 42.716663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499979, 39.903667, 42.785309>,  <31.116846, 39.914589, 42.899715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499979, 39.903667, 42.785309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284618, 0.226367, 0.931531,
		0.039308, -0.973659, 0.224594,
		0.957835, -0.027307, -0.286020,
		31.787329, 39.895477, 42.699501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540876, 39.512463, 43.383621>,  <31.116846, 39.914589, 42.899715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540876, 39.512463, 43.383621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810938, 39.736752, 43.191887>,  <31.972975, 39.871323, 43.076847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810938, 39.736752, 43.191887>,  <31.540876, 39.512463, 43.383621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810938, 39.736752, 43.191887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382499, 0.289511, 0.877427,
		0.630762, -0.775744, -0.019009,
		0.675155, 0.560718, -0.479334,
		32.013485, 39.904968, 43.048088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182491, 39.371956, 43.738651>,  <31.540876, 39.512463, 43.383621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182491, 39.371956, 43.738651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216541, 39.718750, 43.542244>,  <32.236973, 39.926826, 43.424400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216541, 39.718750, 43.542244>,  <32.182491, 39.371956, 43.738651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216541, 39.718750, 43.542244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403623, 0.420555, 0.812541,
		0.910957, -0.267353, -0.314134,
		0.085124, 0.866981, -0.491017,
		32.242077, 39.978844, 43.394939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797226, 39.766407, 44.053196>,  <32.182491, 39.371956, 43.738651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797226, 39.766407, 44.053196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598351, 40.064941, 43.876205>,  <32.479023, 40.244061, 43.770012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598351, 40.064941, 43.876205>,  <32.797226, 39.766407, 44.053196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598351, 40.064941, 43.876205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201127, 0.595225, 0.777981,
		0.844007, 0.297813, -0.446049,
		-0.497193, 0.746334, -0.442476,
		32.449192, 40.288841, 43.743462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173756, 40.364624, 44.171207>,  <32.797226, 39.766407, 44.053196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173756, 40.364624, 44.171207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799770, 40.482830, 44.092716>,  <32.575378, 40.553753, 44.045620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799770, 40.482830, 44.092716>,  <33.173756, 40.364624, 44.171207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799770, 40.482830, 44.092716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009949, 0.574809, 0.818227,
		0.354595, 0.763062, -0.540368,
		-0.934967, 0.295515, -0.196233,
		32.519279, 40.571484, 44.033848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136856, 41.147240, 44.212238>,  <33.173756, 40.364624, 44.171207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136856, 41.147240, 44.212238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743279, 41.082874, 44.243137>,  <32.507133, 41.044254, 44.261677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743279, 41.082874, 44.243137>,  <33.136856, 41.147240, 44.212238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743279, 41.082874, 44.243137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062802, 0.717194, 0.694037,
		-0.167085, 0.678040, -0.715782,
		-0.983940, -0.160916, 0.077250,
		32.448097, 41.034599, 44.266312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719139, 41.831490, 44.268875>,  <33.136856, 41.147240, 44.212238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719139, 41.831490, 44.268875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494389, 41.543697, 44.432159>,  <32.359539, 41.371021, 44.530132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494389, 41.543697, 44.432159>,  <32.719139, 41.831490, 44.268875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494389, 41.543697, 44.432159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305249, 0.638983, 0.706062,
		-0.768841, 0.272113, -0.578651,
		-0.561877, -0.719483, 0.408214,
		32.325825, 41.327854, 44.554623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129673, 42.195564, 44.504066>,  <32.719139, 41.831490, 44.268875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129673, 42.195564, 44.504066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111675, 41.842480, 44.691170>,  <32.100876, 41.630630, 44.803432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111675, 41.842480, 44.691170>,  <32.129673, 42.195564, 44.504066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111675, 41.842480, 44.691170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358068, 0.451377, 0.817341,
		-0.932611, -0.130712, -0.336380,
		-0.044998, -0.882708, 0.467763,
		32.098175, 41.577667, 44.831497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428617, 42.037918, 44.634148>,  <32.129673, 42.195564, 44.504066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428617, 42.037918, 44.634148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624821, 41.801941, 44.890701>,  <31.742542, 41.660355, 45.044632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624821, 41.801941, 44.890701>,  <31.428617, 42.037918, 44.634148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624821, 41.801941, 44.890701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578141, 0.330405, 0.746047,
		-0.652038, -0.736752, -0.179002,
		0.490509, -0.589939, 0.641383,
		31.771973, 41.624958, 45.083115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005829, 41.741745, 45.102390>,  <31.428617, 42.037918, 44.634148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005829, 41.741745, 45.102390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.348917, 41.694984, 45.302650>,  <31.554770, 41.666927, 45.422806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.348917, 41.694984, 45.302650>,  <31.005829, 41.741745, 45.102390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.348917, 41.694984, 45.302650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440698, 0.334320, 0.833075,
		-0.264762, -0.935182, 0.235236,
		0.857722, -0.116899, 0.500649,
		31.606234, 41.659916, 45.452847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845341, 41.304787, 45.689098>,  <31.005829, 41.741745, 45.102390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845341, 41.304787, 45.689098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164354, 41.526844, 45.783546>,  <31.355762, 41.660080, 45.840214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164354, 41.526844, 45.783546>,  <30.845341, 41.304787, 45.689098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164354, 41.526844, 45.783546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507828, 0.406523, 0.759506,
		0.325647, -0.725642, 0.606134,
		0.797536, 0.555143, 0.236118,
		31.403616, 41.693386, 45.854382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890795, 41.275635, 46.445683>,  <30.845341, 41.304787, 45.689098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890795, 41.275635, 46.445683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082094, 41.605232, 46.324146>,  <31.196875, 41.802990, 46.251225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082094, 41.605232, 46.324146>,  <30.890795, 41.275635, 46.445683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082094, 41.605232, 46.324146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367684, 0.502052, 0.782785,
		0.797549, -0.262650, 0.543074,
		0.478250, 0.823989, -0.303840,
		31.225569, 41.852428, 46.232994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325823, 41.464634, 47.040718>,  <30.890795, 41.275635, 46.445683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325823, 41.464634, 47.040718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282854, 41.810795, 46.844948>,  <31.257072, 42.018494, 46.727486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282854, 41.810795, 46.844948>,  <31.325823, 41.464634, 47.040718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.282854, 41.810795, 46.844948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008193, 0.491486, 0.870847,
		0.994179, 0.097559, -0.045706,
		-0.107423, 0.865404, -0.489424,
		31.250628, 42.070415, 46.698120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740578, 41.935410, 47.415314>,  <31.325823, 41.464634, 47.040718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740578, 41.935410, 47.415314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473480, 42.159737, 47.219521>,  <31.313221, 42.294334, 47.102043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473480, 42.159737, 47.219521>,  <31.740578, 41.935410, 47.415314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473480, 42.159737, 47.219521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104258, 0.580626, 0.807468,
		0.737054, 0.590214, -0.329240,
		-0.667744, 0.560821, -0.489487,
		31.273157, 42.327984, 47.072674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906780, 42.661247, 47.510017>,  <31.740578, 41.935410, 47.415314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906780, 42.661247, 47.510017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519751, 42.641296, 47.410969>,  <31.287533, 42.629326, 47.351540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519751, 42.641296, 47.410969>,  <31.906780, 42.661247, 47.510017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519751, 42.641296, 47.410969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225652, 0.611203, 0.758626,
		0.113505, 0.789901, -0.602638,
		-0.967573, -0.049878, -0.247617,
		31.229479, 42.626331, 47.336685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726433, 43.359344, 47.606304>,  <31.906780, 42.661247, 47.510017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726433, 43.359344, 47.606304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.396557, 43.133194, 47.600204>,  <31.198631, 42.997501, 47.596546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.396557, 43.133194, 47.600204>,  <31.726433, 43.359344, 47.606304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396557, 43.133194, 47.600204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313366, 0.434313, 0.844496,
		-0.470839, 0.701225, -0.535344,
		-0.824689, -0.565381, -0.015248,
		31.149151, 42.963581, 47.595631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186922, 43.823441, 47.705086>,  <31.726433, 43.359344, 47.606304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186922, 43.823441, 47.705086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.034208, 43.476505, 47.832813>,  <30.942579, 43.268345, 47.909451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.034208, 43.476505, 47.832813>,  <31.186922, 43.823441, 47.705086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034208, 43.476505, 47.832813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314092, 0.446681, 0.837748,
		-0.869245, 0.219545, -0.442960,
		-0.381785, -0.867338, 0.319318,
		30.919672, 43.216305, 47.928608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462568, 43.969578, 47.974510>,  <31.186922, 43.823441, 47.705086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462568, 43.969578, 47.974510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609867, 43.636169, 48.139259>,  <30.698246, 43.436123, 48.238110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609867, 43.636169, 48.139259>,  <30.462568, 43.969578, 47.974510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609867, 43.636169, 48.139259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304476, 0.310455, 0.900506,
		-0.878459, -0.457012, -0.139464,
		0.368245, -0.833521, 0.411872,
		30.720341, 43.386112, 48.262821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.973896, 43.855103, 48.475159>,  <30.462568, 43.969578, 47.974510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.973896, 43.855103, 48.475159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273304, 43.618553, 48.595154>,  <30.452950, 43.476624, 48.667152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273304, 43.618553, 48.595154>,  <29.973896, 43.855103, 48.475159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273304, 43.618553, 48.595154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165559, 0.271406, 0.948119,
		-0.642110, -0.759353, 0.105247,
		0.748521, -0.591372, 0.299991,
		30.497860, 43.441143, 48.685150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659401, 43.514847, 48.983448>,  <29.973896, 43.855103, 48.475159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659401, 43.514847, 48.983448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048185, 43.484852, 49.072590>,  <30.281456, 43.466854, 49.126076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048185, 43.484852, 49.072590>,  <29.659401, 43.514847, 48.983448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048185, 43.484852, 49.072590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213353, 0.117161, 0.969925,
		-0.098840, -0.990278, 0.097878,
		0.971963, -0.074985, 0.222859,
		30.339775, 43.462357, 49.139446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988438, 43.979034, 49.343090>,  <29.659401, 43.514847, 48.983448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988438, 43.979034, 49.343090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.807085, 44.305531, 49.486305>,  <29.698273, 44.501431, 49.572235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.807085, 44.305531, 49.486305>,  <29.988438, 43.979034, 49.343090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807085, 44.305531, 49.486305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810208, 0.209993, 0.547235,
		0.371492, 0.538190, -0.756535,
		-0.453384, 0.816244, 0.358035,
		29.671070, 44.550404, 49.593716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337790, 44.665028, 49.256100>,  <29.988438, 43.979034, 49.343090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337790, 44.665028, 49.256100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107512, 44.659824, 49.583122>,  <29.969345, 44.656704, 49.779335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107512, 44.659824, 49.583122>,  <30.337790, 44.665028, 49.256100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107512, 44.659824, 49.583122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788024, 0.257940, 0.559003,
		-0.218153, 0.966073, -0.138245,
		-0.575697, -0.013008, 0.817560,
		29.934803, 44.655922, 49.828392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384193, 45.366688, 49.557117>,  <30.337790, 44.665028, 49.256100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384193, 45.366688, 49.557117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342012, 45.074806, 49.827351>,  <30.316704, 44.899677, 49.989491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342012, 45.074806, 49.827351>,  <30.384193, 45.366688, 49.557117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342012, 45.074806, 49.827351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960133, 0.102159, 0.260207,
		-0.258891, 0.676092, 0.689837,
		-0.105451, -0.729701, 0.675586,
		30.310377, 44.855896, 50.030025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547544, 45.559437, 50.207050>,  <30.384193, 45.366688, 49.557117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547544, 45.559437, 50.207050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626268, 45.176899, 50.120632>,  <30.673504, 44.947376, 50.068783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626268, 45.176899, 50.120632>,  <30.547544, 45.559437, 50.207050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626268, 45.176899, 50.120632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976121, 0.211791, -0.048289,
		0.091937, -0.201383, 0.975188,
		0.196811, -0.956342, -0.216046,
		30.685312, 44.889996, 50.055817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131226, 45.354046, 50.640324>,  <30.547544, 45.559437, 50.207050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131226, 45.354046, 50.640324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167450, 45.072548, 50.358459>,  <31.189184, 44.903648, 50.189342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167450, 45.072548, 50.358459>,  <31.131226, 45.354046, 50.640324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167450, 45.072548, 50.358459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970059, 0.222445, -0.097488,
		0.225354, -0.674731, 0.702818,
		0.090560, -0.703745, -0.704657,
		31.194618, 44.861423, 50.147060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702238, 44.996872, 50.719604>,  <31.131226, 45.354046, 50.640324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702238, 44.996872, 50.719604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633432, 44.992138, 50.325596>,  <31.592150, 44.989296, 50.089191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633432, 44.992138, 50.325596>,  <31.702238, 44.996872, 50.719604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633432, 44.992138, 50.325596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884423, 0.438505, -0.159715,
		0.433829, -0.898651, -0.064958,
		-0.172012, -0.011839, -0.985023,
		31.581829, 44.988586, 50.030090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892824, 44.289108, 50.444969>,  <31.702238, 44.996872, 50.719604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892824, 44.289108, 50.444969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196331, 44.276585, 50.705212>,  <32.378437, 44.269070, 50.861359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196331, 44.276585, 50.705212>,  <31.892824, 44.289108, 50.444969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196331, 44.276585, 50.705212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197679, -0.940666, -0.275807,
		0.620639, 0.337885, -0.707560,
		0.758769, -0.031307, 0.650607,
		32.423962, 44.267193, 50.900394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512688, 43.987556, 50.155704>,  <31.892824, 44.289108, 50.444969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512688, 43.987556, 50.155704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583591, 43.860184, 50.528194>,  <32.626133, 43.783760, 50.751690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583591, 43.860184, 50.528194>,  <32.512688, 43.987556, 50.155704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583591, 43.860184, 50.528194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381512, -0.849989, -0.363272,
		0.907208, 0.419668, -0.029186,
		0.177262, -0.318428, 0.931226,
		32.636768, 43.764656, 50.807564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179607, 43.738403, 50.135277>,  <32.512688, 43.987556, 50.155704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179607, 43.738403, 50.135277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975040, 43.533813, 50.411491>,  <32.852299, 43.411060, 50.577221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975040, 43.533813, 50.411491>,  <33.179607, 43.738403, 50.135277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975040, 43.533813, 50.411491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325077, -0.859011, -0.395506,
		0.795470, 0.022208, 0.605586,
		-0.511422, -0.511475, 0.690537,
		32.821613, 43.380371, 50.618652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674435, 43.253304, 50.444759>,  <33.179607, 43.738403, 50.135277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674435, 43.253304, 50.444759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286301, 43.168446, 50.398376>,  <33.053421, 43.117531, 50.370544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286301, 43.168446, 50.398376>,  <33.674435, 43.253304, 50.444759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286301, 43.168446, 50.398376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241209, -0.882052, -0.404724,
		-0.016423, -0.420688, 0.907057,
		-0.970334, -0.212143, -0.115959,
		32.995201, 43.104801, 50.363590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546486, 42.512993, 50.606258>,  <33.674435, 43.253304, 50.444759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546486, 42.512993, 50.606258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236610, 42.611691, 50.373375>,  <33.050686, 42.670910, 50.233643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236610, 42.611691, 50.373375>,  <33.546486, 42.512993, 50.606258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236610, 42.611691, 50.373375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106837, -0.856418, -0.505107,
		-0.623246, -0.453505, 0.637101,
		-0.774694, 0.246741, -0.582211,
		33.004204, 42.685711, 50.198711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055977, 41.980038, 50.608437>,  <33.546486, 42.512993, 50.606258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055977, 41.980038, 50.608437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993160, 42.166649, 50.260254>,  <32.955471, 42.278618, 50.051346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993160, 42.166649, 50.260254>,  <33.055977, 41.980038, 50.608437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993160, 42.166649, 50.260254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026489, -0.883061, -0.468510,
		-0.987237, -0.050518, 0.151034,
		-0.157041, 0.466531, -0.870452,
		32.946049, 42.306610, 49.999119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750908, 41.501499, 50.228050>,  <33.055977, 41.980038, 50.608437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750908, 41.501499, 50.228050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890079, 41.774788, 49.971252>,  <32.973583, 41.938763, 49.817173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890079, 41.774788, 49.971252>,  <32.750908, 41.501499, 50.228050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890079, 41.774788, 49.971252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265533, -0.728548, -0.631435,
		-0.899132, 0.049223, -0.434900,
		0.347927, 0.683224, -0.641991,
		32.994457, 41.979755, 49.778656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501026, 41.289558, 49.516422>,  <32.750908, 41.501499, 50.228050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501026, 41.289558, 49.516422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832890, 41.510975, 49.487411>,  <33.032009, 41.643826, 49.470005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832890, 41.510975, 49.487411>,  <32.501026, 41.289558, 49.516422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832890, 41.510975, 49.487411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443507, -0.732420, -0.516588,
		-0.339073, 0.396425, -0.853157,
		0.829657, 0.553542, -0.072526,
		33.081787, 41.677036, 49.465652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655891, 41.270912, 48.845146>,  <32.501026, 41.289558, 49.516422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655891, 41.270912, 48.845146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004902, 41.391205, 48.999161>,  <33.214310, 41.463379, 49.091572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004902, 41.391205, 48.999161>,  <32.655891, 41.270912, 48.845146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004902, 41.391205, 48.999161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487812, -0.579880, -0.652517,
		0.027047, 0.757167, -0.652661,
		0.872530, 0.300727, 0.385039,
		33.266663, 41.481422, 49.114674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120590, 41.580124, 48.313759>,  <32.655891, 41.270912, 48.845146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120590, 41.580124, 48.313759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349396, 41.443531, 48.612072>,  <33.486679, 41.361576, 48.791058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349396, 41.443531, 48.612072>,  <33.120590, 41.580124, 48.313759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349396, 41.443531, 48.612072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547998, -0.517428, -0.657242,
		0.610324, 0.784638, -0.108845,
		0.572017, -0.341484, 0.745779,
		33.521000, 41.341087, 48.835804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751823, 41.507492, 48.010693>,  <33.120590, 41.580124, 48.313759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751823, 41.507492, 48.010693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776344, 41.291176, 48.346260>,  <33.791058, 41.161385, 48.547600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776344, 41.291176, 48.346260>,  <33.751823, 41.507492, 48.010693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776344, 41.291176, 48.346260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701070, -0.574931, -0.421846,
		0.710452, 0.614001, 0.343891,
		0.061300, -0.540793, 0.838919,
		33.794735, 41.128937, 48.597935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380760, 41.544075, 48.206993>,  <33.751823, 41.507492, 48.010693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380760, 41.544075, 48.206993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206703, 41.209396, 48.340012>,  <34.102268, 41.008591, 48.419823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206703, 41.209396, 48.340012>,  <34.380760, 41.544075, 48.206993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206703, 41.209396, 48.340012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725468, -0.544574, -0.420876,
		0.533240, 0.058107, 0.843966,
		-0.435146, -0.836698, 0.332543,
		34.076160, 40.958385, 48.439774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782558, 41.057869, 48.038700>,  <34.380760, 41.544075, 48.206993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782558, 41.057869, 48.038700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496323, 40.800213, 48.146786>,  <34.324581, 40.645618, 48.211636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496323, 40.800213, 48.146786>,  <34.782558, 41.057869, 48.038700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496323, 40.800213, 48.146786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465418, -0.728137, -0.503193,
		0.520876, -0.234319, 0.820842,
		-0.715593, -0.644136, 0.270213,
		34.281643, 40.606972, 48.227848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141720, 40.355679, 48.306263>,  <34.782558, 41.057869, 48.038700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141720, 40.355679, 48.306263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771763, 40.251854, 48.195118>,  <34.549789, 40.189560, 48.128433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771763, 40.251854, 48.195118>,  <35.141720, 40.355679, 48.306263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771763, 40.251854, 48.195118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356857, -0.844829, -0.398643,
		-0.131272, -0.467858, 0.874001,
		-0.924890, -0.259562, -0.277861,
		34.494297, 40.173985, 48.111759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082287, 39.613068, 48.411140>,  <35.141720, 40.355679, 48.306263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082287, 39.613068, 48.411140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781460, 39.700275, 48.162350>,  <34.600964, 39.752602, 48.013077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781460, 39.700275, 48.162350>,  <35.082287, 39.613068, 48.411140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781460, 39.700275, 48.162350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214849, -0.811053, -0.544089,
		-0.623079, -0.542825, 0.563128,
		-0.752072, 0.218023, -0.621976,
		34.555840, 39.765682, 47.975758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775715, 38.989456, 48.273659>,  <35.082287, 39.613068, 48.411140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775715, 38.989456, 48.273659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607002, 39.220718, 47.994274>,  <34.505775, 39.359474, 47.826645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607002, 39.220718, 47.994274>,  <34.775715, 38.989456, 48.273659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607002, 39.220718, 47.994274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103193, -0.795935, -0.596522,
		-0.900808, -0.179524, 0.395368,
		-0.421777, 0.578151, -0.698459,
		34.480469, 39.394165, 47.784737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288494, 38.483475, 47.899734>,  <34.775715, 38.989456, 48.273659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288494, 38.483475, 47.899734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318264, 38.797680, 47.653992>,  <34.336128, 38.986202, 47.506546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318264, 38.797680, 47.653992>,  <34.288494, 38.483475, 47.899734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318264, 38.797680, 47.653992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142291, -0.601393, -0.786180,
		-0.987023, 0.145931, 0.067011,
		0.074428, 0.785513, -0.614353,
		34.340591, 39.033333, 47.469685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712627, 38.477718, 47.399807>,  <34.288494, 38.483475, 47.899734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712627, 38.477718, 47.399807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975712, 38.724411, 47.226803>,  <34.133564, 38.872425, 47.123001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975712, 38.724411, 47.226803>,  <33.712627, 38.477718, 47.399807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975712, 38.724411, 47.226803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187369, -0.422182, -0.886936,
		-0.729595, 0.664386, -0.162118,
		0.657711, 0.616728, -0.432507,
		34.173027, 38.909428, 47.097050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389977, 38.704948, 46.736572>,  <33.712627, 38.477718, 47.399807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389977, 38.704948, 46.736572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788960, 38.726833, 46.718323>,  <34.028351, 38.739964, 46.707375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788960, 38.726833, 46.718323>,  <33.389977, 38.704948, 46.736572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788960, 38.726833, 46.718323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017880, -0.427679, -0.903754,
		-0.068957, 0.902274, -0.425614,
		0.997459, 0.054711, -0.045624,
		34.088196, 38.743248, 46.704636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596916, 38.936619, 46.047787>,  <33.389977, 38.704948, 46.736572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596916, 38.936619, 46.047787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926392, 38.760029, 46.190132>,  <34.124077, 38.654076, 46.275539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926392, 38.760029, 46.190132>,  <33.596916, 38.936619, 46.047787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926392, 38.760029, 46.190132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093736, -0.512927, -0.853299,
		0.559241, 0.736210, -0.381109,
		0.823688, -0.441477, 0.355859,
		34.173496, 38.627586, 46.296890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939297, 38.696545, 45.393944>,  <33.596916, 38.936619, 46.047787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939297, 38.696545, 45.393944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144592, 38.509151, 45.681587>,  <34.267769, 38.396717, 45.854172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144592, 38.509151, 45.681587>,  <33.939297, 38.696545, 45.393944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144592, 38.509151, 45.681587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209513, -0.744136, -0.634323,
		0.832282, 0.476219, -0.283764,
		0.513236, -0.468483, 0.719106,
		34.298561, 38.368607, 45.897320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719921, 38.613464, 45.241074>,  <33.939297, 38.696545, 45.393944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719921, 38.613464, 45.241074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641617, 38.349308, 45.531055>,  <34.594635, 38.190815, 45.705044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641617, 38.349308, 45.531055>,  <34.719921, 38.613464, 45.241074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641617, 38.349308, 45.531055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240997, -0.748984, -0.617206,
		0.950577, 0.053886, 0.305776,
		-0.195763, -0.660393, 0.724954,
		34.582890, 38.151192, 45.748543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255638, 38.108974, 45.213478>,  <34.719921, 38.613464, 45.241074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255638, 38.108974, 45.213478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960842, 37.919712, 45.406544>,  <34.783966, 37.806156, 45.522385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960842, 37.919712, 45.406544>,  <35.255638, 38.108974, 45.213478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960842, 37.919712, 45.406544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147014, -0.809227, -0.568804,
		0.659723, -0.348243, 0.665952,
		-0.736989, -0.473158, 0.482669,
		34.739746, 37.777763, 45.551346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410332, 37.424324, 45.450150>,  <35.255638, 38.108974, 45.213478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410332, 37.424324, 45.450150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012669, 37.438175, 45.409248>,  <34.774071, 37.446487, 45.384708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012669, 37.438175, 45.409248>,  <35.410332, 37.424324, 45.450150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012669, 37.438175, 45.409248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035966, -0.786787, -0.616175,
		-0.101788, -0.616252, 0.780944,
		-0.994156, 0.034631, -0.102250,
		34.714420, 37.448566, 45.378574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224171, 36.749710, 45.533134>,  <35.410332, 37.424324, 45.450150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224171, 36.749710, 45.533134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938110, 36.927284, 45.317181>,  <34.766476, 37.033829, 45.187607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938110, 36.927284, 45.317181>,  <35.224171, 36.749710, 45.533134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938110, 36.927284, 45.317181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004718, -0.775453, -0.631387,
		-0.698953, -0.448990, 0.556661,
		-0.715151, 0.443936, -0.539887,
		34.723564, 37.060467, 45.155216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807274, 36.204041, 45.231445>,  <35.224171, 36.749710, 45.533134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807274, 36.204041, 45.231445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638721, 36.500912, 45.022976>,  <34.537590, 36.679035, 44.897896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638721, 36.500912, 45.022976>,  <34.807274, 36.204041, 45.231445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638721, 36.500912, 45.022976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233096, -0.644009, -0.728641,
		-0.876417, -0.185551, 0.444369,
		-0.421378, 0.742175, -0.521169,
		34.512310, 36.723564, 44.866627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177174, 35.952950, 45.070198>,  <34.807274, 36.204041, 45.231445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177174, 35.952950, 45.070198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241207, 36.229347, 44.788231>,  <34.279629, 36.395184, 44.619053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241207, 36.229347, 44.788231>,  <34.177174, 35.952950, 45.070198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241207, 36.229347, 44.788231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321866, -0.638554, -0.699036,
		-0.933154, 0.338792, 0.120185,
		0.160083, 0.690991, -0.704914,
		34.289230, 36.436646, 44.576756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613132, 35.909641, 44.613831>,  <34.177174, 35.952950, 45.070198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613132, 35.909641, 44.613831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876957, 36.085838, 44.370209>,  <34.035252, 36.191555, 44.224037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876957, 36.085838, 44.370209>,  <33.613132, 35.909641, 44.613831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876957, 36.085838, 44.370209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214920, -0.665941, -0.714375,
		-0.720270, 0.602071, -0.344559,
		0.659561, 0.440490, -0.609055,
		34.074825, 36.217987, 44.187492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326347, 35.971340, 43.845314>,  <33.613132, 35.909641, 44.613831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326347, 35.971340, 43.845314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722031, 36.022236, 43.816280>,  <33.959442, 36.052773, 43.798862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722031, 36.022236, 43.816280>,  <33.326347, 35.971340, 43.845314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722031, 36.022236, 43.816280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011981, -0.423542, -0.905797,
		-0.145995, 0.896896, -0.417448,
		0.989213, 0.127241, -0.072580,
		34.018795, 36.060410, 43.794506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452545, 36.328724, 43.225819>,  <33.326347, 35.971340, 43.845314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452545, 36.328724, 43.225819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797871, 36.144817, 43.309048>,  <34.005066, 36.034473, 43.358986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797871, 36.144817, 43.309048>,  <33.452545, 36.328724, 43.225819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797871, 36.144817, 43.309048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026237, -0.370864, -0.928317,
		0.503977, 0.806892, -0.308111,
		0.863318, -0.459767, 0.208077,
		34.056866, 36.006886, 43.371471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906136, 36.476227, 42.699757>,  <33.452545, 36.328724, 43.225819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906136, 36.476227, 42.699757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048294, 36.137169, 42.857334>,  <34.133591, 35.933735, 42.951881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048294, 36.137169, 42.857334>,  <33.906136, 36.476227, 42.699757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048294, 36.137169, 42.857334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165790, -0.357614, -0.919035,
		0.919894, 0.391937, 0.013434,
		0.355400, -0.847642, 0.393946,
		34.154915, 35.882877, 42.975517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399124, 36.319023, 42.312229>,  <33.906136, 36.476227, 42.699757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399124, 36.319023, 42.312229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308662, 35.967049, 42.479355>,  <34.254383, 35.755863, 42.579628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308662, 35.967049, 42.479355>,  <34.399124, 36.319023, 42.312229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308662, 35.967049, 42.479355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199026, -0.461618, -0.864464,
		0.953542, -0.112349, 0.279528,
		-0.226156, -0.879936, 0.417812,
		34.240814, 35.703068, 42.604698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912712, 35.965534, 41.929161>,  <34.399124, 36.319023, 42.312229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912712, 35.965534, 41.929161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675900, 35.680340, 42.079441>,  <34.533813, 35.509224, 42.169609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675900, 35.680340, 42.079441>,  <34.912712, 35.965534, 41.929161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675900, 35.680340, 42.079441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046915, -0.495873, -0.867127,
		0.804550, -0.495738, 0.327021,
		-0.592028, -0.712989, 0.375697,
		34.498291, 35.466442, 42.192150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195595, 35.340527, 41.794849>,  <34.912712, 35.965534, 41.929161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195595, 35.340527, 41.794849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809532, 35.244938, 41.837482>,  <34.577892, 35.187584, 41.863064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809532, 35.244938, 41.837482>,  <35.195595, 35.340527, 41.794849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809532, 35.244938, 41.837482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016739, -0.462881, -0.886262,
		0.261128, -0.853600, 0.450754,
		-0.965159, -0.238973, 0.106583,
		34.519985, 35.173244, 41.869457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054104, 34.714985, 41.328201>,  <35.195595, 35.340527, 41.794849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054104, 34.714985, 41.328201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677418, 34.841496, 41.374043>,  <34.451405, 34.917400, 41.401546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677418, 34.841496, 41.374043>,  <35.054104, 34.714985, 41.328201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677418, 34.841496, 41.374043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214539, -0.302251, -0.928772,
		-0.259107, -0.899230, 0.352489,
		-0.941720, 0.316274, 0.114605,
		34.394901, 34.936378, 41.408424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528530, 34.110676, 41.160721>,  <35.054104, 34.714985, 41.328201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528530, 34.110676, 41.160721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352070, 34.466393, 41.112480>,  <34.246193, 34.679821, 41.083538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352070, 34.466393, 41.112480>,  <34.528530, 34.110676, 41.160721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352070, 34.466393, 41.112480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237956, -0.245485, -0.939742,
		-0.865310, -0.385872, 0.319909,
		-0.441153, 0.889292, -0.120600,
		34.219723, 34.733181, 41.076302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791206, 33.897507, 40.858410>,  <34.528530, 34.110676, 41.160721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791206, 33.897507, 40.858410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840099, 34.284985, 40.771973>,  <33.869434, 34.517471, 40.720108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840099, 34.284985, 40.771973>,  <33.791206, 33.897507, 40.858410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840099, 34.284985, 40.771973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410184, -0.148959, -0.899755,
		-0.903774, 0.198620, 0.379134,
		0.122234, 0.968690, -0.216096,
		33.876770, 34.575592, 40.707146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210594, 34.134895, 40.575645>,  <33.791206, 33.897507, 40.858410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210594, 34.134895, 40.575645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463684, 34.420181, 40.454990>,  <33.615540, 34.591354, 40.382599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463684, 34.420181, 40.454990>,  <33.210594, 34.134895, 40.575645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463684, 34.420181, 40.454990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282825, -0.149772, -0.947406,
		-0.720880, 0.684758, 0.106950,
		0.632726, 0.713215, -0.301634,
		33.653503, 34.634144, 40.364502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778851, 34.573193, 40.183304>,  <33.210594, 34.134895, 40.575645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778851, 34.573193, 40.183304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154861, 34.633114, 40.060726>,  <33.380466, 34.669067, 39.987179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154861, 34.633114, 40.060726>,  <32.778851, 34.573193, 40.183304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154861, 34.633114, 40.060726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290967, -0.116664, -0.949594,
		-0.178001, 0.981809, -0.066080,
		0.940029, 0.149802, -0.306440,
		33.436871, 34.678055, 39.968796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682884, 34.949566, 39.599667>,  <32.778851, 34.573193, 40.183304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682884, 34.949566, 39.599667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043835, 34.779083, 39.574146>,  <33.260406, 34.676796, 39.558834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043835, 34.779083, 39.574146>,  <32.682884, 34.949566, 39.599667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043835, 34.779083, 39.574146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108255, -0.080886, -0.990827,
		0.417134, 0.901004, -0.119128,
		0.902375, -0.426204, -0.063798,
		33.314548, 34.651222, 39.555008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992100, 35.254780, 39.088245>,  <32.682884, 34.949566, 39.599667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992100, 35.254780, 39.088245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223553, 34.929939, 39.118370>,  <33.362423, 34.735035, 39.136444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223553, 34.929939, 39.118370>,  <32.992100, 35.254780, 39.088245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223553, 34.929939, 39.118370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117725, -0.174537, -0.977588,
		0.807046, 0.556799, -0.196598,
		0.578634, -0.812103, 0.075311,
		33.397144, 34.686310, 39.140965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612701, 35.351471, 38.644375>,  <32.992100, 35.254780, 39.088245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612701, 35.351471, 38.644375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538975, 34.963879, 38.710224>,  <33.494740, 34.731323, 38.749733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538975, 34.963879, 38.710224>,  <33.612701, 35.351471, 38.644375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538975, 34.963879, 38.710224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149704, -0.137858, -0.979073,
		0.971400, -0.205099, -0.119651,
		-0.184312, -0.968984, 0.164619,
		33.483681, 34.673183, 38.759609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767601, 34.961525, 37.955517>,  <33.612701, 35.351471, 38.644375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767601, 34.961525, 37.955517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559444, 34.673882, 38.139725>,  <33.434551, 34.501297, 38.250248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559444, 34.673882, 38.139725>,  <33.767601, 34.961525, 37.955517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559444, 34.673882, 38.139725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206083, -0.417590, -0.884957,
		0.828686, -0.555431, 0.069116,
		-0.520394, -0.719107, 0.460516,
		33.403328, 34.458149, 38.277878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534832, 34.997471, 37.895954>,  <33.767601, 34.961525, 37.955517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534832, 34.997471, 37.895954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678680, 34.958744, 37.524731>,  <34.764992, 34.935509, 37.301998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678680, 34.958744, 37.524731>,  <34.534832, 34.997471, 37.895954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678680, 34.958744, 37.524731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920847, -0.123807, 0.369747,
		-0.150699, -0.987572, 0.044633,
		0.359626, -0.096821, -0.928060,
		34.786568, 34.929699, 37.246311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171841, 34.620991, 38.002136>,  <34.534832, 34.997471, 37.895954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171841, 34.620991, 38.002136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185173, 34.905151, 37.720932>,  <35.193172, 35.075649, 37.552212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185173, 34.905151, 37.720932>,  <35.171841, 34.620991, 38.002136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185173, 34.905151, 37.720932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865784, 0.330882, 0.375413,
		0.499306, -0.621167, -0.604024,
		0.033334, 0.710401, -0.703008,
		35.195171, 35.118271, 37.510029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825470, 34.765686, 37.950737>,  <35.171841, 34.620991, 38.002136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825470, 34.765686, 37.950737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679527, 35.086143, 37.760983>,  <35.591961, 35.278419, 37.647129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679527, 35.086143, 37.760983>,  <35.825470, 34.765686, 37.950737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679527, 35.086143, 37.760983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673741, 0.578841, 0.459365,
		0.642614, -0.152012, -0.750959,
		-0.364856, 0.801146, -0.474388,
		35.570072, 35.326488, 37.618668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428608, 35.112225, 37.797691>,  <35.825470, 34.765686, 37.950737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428608, 35.112225, 37.797691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125977, 35.370205, 37.840813>,  <35.944397, 35.524994, 37.866688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125977, 35.370205, 37.840813>,  <36.428608, 35.112225, 37.797691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125977, 35.370205, 37.840813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571353, 0.571837, 0.588692,
		0.318030, 0.506989, -0.801136,
		-0.756579, 0.644954, 0.107808,
		35.899002, 35.563690, 37.873154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739964, 35.704834, 37.793072>,  <36.428608, 35.112225, 37.797691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739964, 35.704834, 37.793072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376926, 35.762337, 37.950863>,  <36.159103, 35.796837, 38.045536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376926, 35.762337, 37.950863>,  <36.739964, 35.704834, 37.793072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376926, 35.762337, 37.950863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391761, 0.627861, 0.672543,
		-0.150995, 0.764935, -0.626159,
		-0.907592, 0.143754, 0.394476,
		36.104649, 35.805462, 38.069206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813816, 36.376652, 37.962200>,  <36.739964, 35.704834, 37.793072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813816, 36.376652, 37.962200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516178, 36.231800, 38.186764>,  <36.337593, 36.144890, 38.321503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516178, 36.231800, 38.186764>,  <36.813816, 36.376652, 37.962200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516178, 36.231800, 38.186764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302435, 0.566718, 0.766397,
		-0.595695, 0.740064, -0.312173,
		-0.744097, -0.362127, 0.561412,
		36.292950, 36.123161, 38.355186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653931, 36.993778, 38.265495>,  <36.813816, 36.376652, 37.962200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653931, 36.993778, 38.265495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499996, 36.687576, 38.471756>,  <36.407635, 36.503857, 38.595512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499996, 36.687576, 38.471756>,  <36.653931, 36.993778, 38.265495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499996, 36.687576, 38.471756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125607, 0.510049, 0.850925,
		-0.914397, 0.392238, -0.100133,
		-0.384838, -0.765506, 0.515655,
		36.384544, 36.457924, 38.626453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539886, 37.294479, 38.868919>,  <36.653931, 36.993778, 38.265495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539886, 37.294479, 38.868919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492016, 36.910847, 38.971554>,  <36.463291, 36.680668, 39.033134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492016, 36.910847, 38.971554>,  <36.539886, 37.294479, 38.868919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492016, 36.910847, 38.971554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294651, 0.212487, 0.931682,
		-0.948081, 0.187105, 0.257164,
		-0.119679, -0.959083, 0.256585,
		36.456112, 36.623123, 39.048531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027115, 37.290493, 39.430943>,  <36.539886, 37.294479, 38.868919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027115, 37.290493, 39.430943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247959, 36.958965, 39.467247>,  <36.380466, 36.760048, 39.489029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247959, 36.958965, 39.467247>,  <36.027115, 37.290493, 39.430943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247959, 36.958965, 39.467247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208345, 0.242546, 0.947504,
		-0.807320, -0.504218, 0.306592,
		0.552111, -0.828816, 0.090760,
		36.413593, 36.710320, 39.494476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894730, 37.094856, 40.091770>,  <36.027115, 37.290493, 39.430943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894730, 37.094856, 40.091770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221191, 36.886841, 39.991013>,  <36.417068, 36.762032, 39.930557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221191, 36.886841, 39.991013>,  <35.894730, 37.094856, 40.091770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221191, 36.886841, 39.991013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392972, 0.179932, 0.901775,
		-0.423630, -0.834978, 0.351211,
		0.816156, -0.520035, -0.251898,
		36.466038, 36.730831, 39.915443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942280, 36.524246, 40.569767>,  <35.894730, 37.094856, 40.091770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942280, 36.524246, 40.569767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312237, 36.612175, 40.445671>,  <36.534210, 36.664932, 40.371212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312237, 36.612175, 40.445671>,  <35.942280, 36.524246, 40.569767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312237, 36.612175, 40.445671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335633, -0.088580, 0.937819,
		0.178670, -0.971511, -0.155705,
		0.924894, 0.219820, -0.310244,
		36.589706, 36.678120, 40.352596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380470, 36.198402, 41.147419>,  <35.942280, 36.524246, 40.569767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380470, 36.198402, 41.147419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623772, 36.448803, 40.952217>,  <36.769753, 36.599045, 40.835098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623772, 36.448803, 40.952217>,  <36.380470, 36.198402, 41.147419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623772, 36.448803, 40.952217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279904, 0.406152, 0.869882,
		0.742750, -0.665705, 0.071825,
		0.608257, 0.626001, -0.488003,
		36.806248, 36.636604, 40.805817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841927, 36.223206, 41.653397>,  <36.380470, 36.198402, 41.147419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841927, 36.223206, 41.653397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968266, 36.519634, 41.416397>,  <37.044071, 36.697491, 41.274197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968266, 36.519634, 41.416397>,  <36.841927, 36.223206, 41.653397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968266, 36.519634, 41.416397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494237, 0.404548, 0.769462,
		0.809918, -0.535870, -0.238487,
		0.315852, 0.741070, -0.592497,
		37.063023, 36.741955, 41.238647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644573, 36.252132, 41.674252>,  <36.841927, 36.223206, 41.653397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644573, 36.252132, 41.674252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533558, 36.616920, 41.553406>,  <37.466949, 36.835793, 41.480896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533558, 36.616920, 41.553406>,  <37.644573, 36.252132, 41.674252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533558, 36.616920, 41.553406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470333, 0.403192, 0.784999,
		0.837710, 0.075774, -0.540833,
		-0.277542, 0.911973, -0.302119,
		37.450294, 36.890511, 41.462769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159874, 36.661552, 41.832039>,  <37.644573, 36.252132, 41.674252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159874, 36.661552, 41.832039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848991, 36.910294, 41.793568>,  <37.662460, 37.059536, 41.770485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848991, 36.910294, 41.793568>,  <38.159874, 36.661552, 41.832039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848991, 36.910294, 41.793568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248624, 0.443892, 0.860898,
		0.578041, 0.645186, -0.499604,
		-0.777209, 0.621848, -0.096179,
		37.615829, 37.096848, 41.764713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397839, 37.358315, 42.168934>,  <38.159874, 36.661552, 41.832039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397839, 37.358315, 42.168934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998817, 37.380180, 42.151531>,  <37.759403, 37.393299, 42.141090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998817, 37.380180, 42.151531>,  <38.397839, 37.358315, 42.168934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998817, 37.380180, 42.151531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011859, 0.481213, 0.876524,
		0.068856, 0.874898, -0.479388,
		-0.997556, 0.054669, -0.043509,
		37.699551, 37.396580, 42.138477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205502, 38.073494, 42.391003>,  <38.397839, 37.358315, 42.168934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205502, 38.073494, 42.391003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883205, 37.841976, 42.441250>,  <37.689827, 37.703068, 42.471397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883205, 37.841976, 42.441250>,  <38.205502, 38.073494, 42.391003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883205, 37.841976, 42.441250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261137, 0.537546, 0.801780,
		-0.531589, 0.613224, -0.584267,
		-0.805742, -0.578792, 0.125618,
		37.641483, 37.668339, 42.478935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649475, 38.494282, 42.662251>,  <38.205502, 38.073494, 42.391003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649475, 38.494282, 42.662251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536716, 38.128338, 42.777885>,  <37.469063, 37.908772, 42.847267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536716, 38.128338, 42.777885>,  <37.649475, 38.494282, 42.662251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536716, 38.128338, 42.777885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233701, 0.357703, 0.904120,
		-0.930548, 0.187306, -0.314637,
		-0.281894, -0.914858, 0.289086,
		37.452148, 37.853882, 42.864613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954052, 38.564537, 42.862892>,  <37.649475, 38.494282, 42.662251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954052, 38.564537, 42.862892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094948, 38.229172, 43.029263>,  <37.179485, 38.027954, 43.129086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094948, 38.229172, 43.029263>,  <36.954052, 38.564537, 42.862892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094948, 38.229172, 43.029263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335568, 0.301719, 0.892390,
		-0.873684, -0.453901, -0.175069,
		0.352235, -0.838415, 0.415922,
		37.200619, 37.977646, 43.154037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372322, 38.320740, 43.188934>,  <36.954052, 38.564537, 42.862892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372322, 38.320740, 43.188934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681587, 38.133892, 43.360519>,  <36.867146, 38.021782, 43.463470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681587, 38.133892, 43.360519>,  <36.372322, 38.320740, 43.188934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681587, 38.133892, 43.360519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290680, 0.340138, 0.894322,
		-0.563666, -0.816150, 0.127200,
		0.773166, -0.467124, 0.428963,
		36.913536, 37.993755, 43.489208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106560, 37.924797, 43.773335>,  <36.372322, 38.320740, 43.188934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106560, 37.924797, 43.773335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492031, 38.004490, 43.844482>,  <36.723312, 38.052307, 43.887173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492031, 38.004490, 43.844482>,  <36.106560, 37.924797, 43.773335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492031, 38.004490, 43.844482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229967, 0.280304, 0.931958,
		0.135820, -0.939008, 0.315939,
		0.963674, 0.199234, 0.177870,
		36.781132, 38.064262, 43.897842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288342, 37.645855, 44.491943>,  <36.106560, 37.924797, 43.773335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288342, 37.645855, 44.491943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582035, 37.907543, 44.419395>,  <36.758251, 38.064556, 44.375866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582035, 37.907543, 44.419395>,  <36.288342, 37.645855, 44.491943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582035, 37.907543, 44.419395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124469, 0.392348, 0.911356,
		0.667386, -0.646576, 0.369507,
		0.734236, 0.654219, -0.181369,
		36.802307, 38.103809, 44.364986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546444, 37.746174, 45.157951>,  <36.288342, 37.645855, 44.491943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546444, 37.746174, 45.157951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710857, 38.045567, 44.949783>,  <36.809505, 38.225201, 44.824883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710857, 38.045567, 44.949783>,  <36.546444, 37.746174, 45.157951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710857, 38.045567, 44.949783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074362, 0.541438, 0.837445,
		0.908584, -0.382914, 0.166888,
		0.411029, 0.748479, -0.520417,
		36.834167, 38.270111, 44.793659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991028, 38.095425, 45.595127>,  <36.546444, 37.746174, 45.157951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991028, 38.095425, 45.595127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931488, 38.380035, 45.320442>,  <36.895763, 38.550804, 45.155632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931488, 38.380035, 45.320442>,  <36.991028, 38.095425, 45.595127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931488, 38.380035, 45.320442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052794, 0.699173, 0.713001,
		0.987450, 0.069874, -0.141635,
		-0.148848, 0.711530, -0.686709,
		36.886833, 38.593494, 45.114429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364323, 38.634159, 45.760361>,  <36.991028, 38.095425, 45.595127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364323, 38.634159, 45.760361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136562, 38.832493, 45.498081>,  <36.999908, 38.951492, 45.340714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136562, 38.832493, 45.498081>,  <37.364323, 38.634159, 45.760361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136562, 38.832493, 45.498081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084186, 0.758260, 0.646494,
		0.817740, 0.423313, -0.390010,
		-0.569398, 0.495831, -0.655696,
		36.965744, 38.981243, 45.301373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668137, 39.351940, 45.675316>,  <37.364323, 38.634159, 45.760361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668137, 39.351940, 45.675316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277161, 39.338104, 45.591965>,  <37.042576, 39.329803, 45.541954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277161, 39.338104, 45.591965>,  <37.668137, 39.351940, 45.675316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277161, 39.338104, 45.591965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139306, 0.847131, 0.512798,
		0.158786, 0.530256, -0.832836,
		-0.977436, -0.034594, -0.208380,
		36.983929, 39.327724, 45.529449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477898, 40.099293, 45.699997>,  <37.668137, 39.351940, 45.675316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477898, 40.099293, 45.699997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119038, 39.925163, 45.729950>,  <36.903721, 39.820686, 45.747921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119038, 39.925163, 45.729950>,  <37.477898, 40.099293, 45.699997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119038, 39.925163, 45.729950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330152, 0.773472, 0.541056,
		-0.293455, 0.460687, -0.837646,
		-0.897153, -0.435326, 0.074883,
		36.849892, 39.794567, 45.752415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918255, 40.584721, 45.419731>,  <37.477898, 40.099293, 45.699997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918255, 40.584721, 45.419731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731495, 40.360737, 45.693508>,  <36.619438, 40.226345, 45.857773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731495, 40.360737, 45.693508>,  <36.918255, 40.584721, 45.419731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731495, 40.360737, 45.693508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403606, 0.823597, 0.398485,
		-0.786836, -0.090192, -0.610536,
		-0.466895, -0.559959, 0.684438,
		36.591427, 40.192749, 45.898838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215305, 40.653660, 45.462250>,  <36.918255, 40.584721, 45.419731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215305, 40.653660, 45.462250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343811, 40.551262, 45.826942>,  <36.420914, 40.489822, 46.045757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343811, 40.551262, 45.826942>,  <36.215305, 40.653660, 45.462250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343811, 40.551262, 45.826942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340044, 0.867375, 0.363359,
		-0.883833, -0.426763, 0.191604,
		0.321261, -0.255995, 0.911733,
		36.440189, 40.474464, 46.100464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791061, 41.083454, 45.965733>,  <36.215305, 40.653660, 45.462250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791061, 41.083454, 45.965733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026428, 40.913860, 46.241123>,  <36.167648, 40.812103, 46.406357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026428, 40.913860, 46.241123>,  <35.791061, 41.083454, 45.965733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026428, 40.913860, 46.241123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236062, 0.724310, 0.647803,
		-0.773328, -0.543704, 0.326113,
		0.588420, -0.423982, 0.688477,
		36.202953, 40.786667, 46.447666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376492, 41.050392, 46.583473>,  <35.791061, 41.083454, 45.965733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376492, 41.050392, 46.583473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756752, 41.016907, 46.702976>,  <35.984909, 40.996815, 46.774677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756752, 41.016907, 46.702976>,  <35.376492, 41.050392, 46.583473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756752, 41.016907, 46.702976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154530, 0.707226, 0.689893,
		-0.269044, -0.702014, 0.659388,
		0.950650, -0.083716, 0.298757,
		36.041946, 40.991791, 46.792603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273815, 40.909069, 47.356663>,  <35.376492, 41.050392, 46.583473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273815, 40.909069, 47.356663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647095, 41.029057, 47.277504>,  <35.871063, 41.101051, 47.230011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647095, 41.029057, 47.277504>,  <35.273815, 40.909069, 47.356663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647095, 41.029057, 47.277504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082897, 0.715507, 0.693670,
		0.349677, -0.630925, 0.692575,
		0.933196, 0.299973, -0.197895,
		35.927052, 41.119049, 47.218136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624557, 40.980377, 47.910297>,  <35.273815, 40.909069, 47.356663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624557, 40.980377, 47.910297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856480, 41.206985, 47.676075>,  <35.995632, 41.342949, 47.535542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856480, 41.206985, 47.676075>,  <35.624557, 40.980377, 47.910297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856480, 41.206985, 47.676075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112292, 0.656270, 0.746124,
		0.806978, -0.498362, 0.316895,
		0.579808, 0.566521, -0.585557,
		36.030422, 41.376942, 47.500408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131290, 41.135403, 48.365120>,  <35.624557, 40.980377, 47.910297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131290, 41.135403, 48.365120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128422, 41.392796, 48.058949>,  <36.126701, 41.547230, 47.875244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128422, 41.392796, 48.058949>,  <36.131290, 41.135403, 48.365120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128422, 41.392796, 48.058949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057075, 0.763937, 0.642761,
		0.998344, 0.048298, 0.031247,
		-0.007173, 0.643480, -0.765429,
		36.126270, 41.585838, 47.829319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698063, 41.574917, 48.520504>,  <36.131290, 41.135403, 48.365120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698063, 41.574917, 48.520504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420261, 41.746391, 48.289371>,  <36.253578, 41.849277, 48.150692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420261, 41.746391, 48.289371>,  <36.698063, 41.574917, 48.520504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420261, 41.746391, 48.289371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089539, 0.848367, 0.521782,
		0.713893, 0.310643, -0.627581,
		-0.694507, 0.428690, -0.577828,
		36.211910, 41.875000, 48.116024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972488, 42.349785, 48.384090>,  <36.698063, 41.574917, 48.520504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972488, 42.349785, 48.384090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577888, 42.306717, 48.334724>,  <36.341129, 42.280876, 48.305103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577888, 42.306717, 48.334724>,  <36.972488, 42.349785, 48.384090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577888, 42.306717, 48.334724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150031, 0.896295, 0.417309,
		0.065688, 0.430190, -0.900345,
		-0.986497, -0.107668, -0.123417,
		36.281940, 42.274418, 48.297699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794434, 43.111126, 48.257385>,  <36.972488, 42.349785, 48.384090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794434, 43.111126, 48.257385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451290, 42.927505, 48.349777>,  <36.245403, 42.817333, 48.405212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451290, 42.927505, 48.349777>,  <36.794434, 43.111126, 48.257385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451290, 42.927505, 48.349777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353306, 0.853253, 0.383579,
		-0.373163, 0.247452, -0.894157,
		-0.857860, -0.459049, 0.230976,
		36.193932, 42.789791, 48.419071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225449, 43.625683, 48.059574>,  <36.794434, 43.111126, 48.257385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225449, 43.625683, 48.059574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088840, 43.345680, 48.310448>,  <36.006878, 43.177677, 48.460972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088840, 43.345680, 48.310448>,  <36.225449, 43.625683, 48.059574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088840, 43.345680, 48.310448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370937, 0.713521, 0.594386,
		-0.863581, -0.029652, -0.503337,
		-0.341517, -0.700007, 0.627182,
		35.986385, 43.135677, 48.498604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450390, 43.739094, 48.178417>,  <36.225449, 43.625683, 48.059574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450390, 43.739094, 48.178417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607773, 43.544884, 48.490688>,  <35.702202, 43.428360, 48.678051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607773, 43.544884, 48.490688>,  <35.450390, 43.739094, 48.178417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607773, 43.544884, 48.490688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389622, 0.681075, 0.619944,
		-0.832697, -0.548092, 0.078806,
		0.393460, -0.485522, 0.780678,
		35.725811, 43.399227, 48.724892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806999, 44.059135, 48.628544>,  <35.450390, 43.739094, 48.178417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806999, 44.059135, 48.628544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589302, 44.375290, 48.516056>,  <34.458683, 44.564983, 48.448563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589302, 44.375290, 48.516056>,  <34.806999, 44.059135, 48.628544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589302, 44.375290, 48.516056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368239, -0.526264, -0.766450,
		-0.753788, -0.313581, 0.577469,
		-0.544245, 0.790388, -0.281218,
		34.426029, 44.612408, 48.431690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162521, 43.766571, 48.443218>,  <34.806999, 44.059135, 48.628544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162521, 43.766571, 48.443218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166882, 44.127056, 48.269920>,  <34.169498, 44.343346, 48.165943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166882, 44.127056, 48.269920>,  <34.162521, 43.766571, 48.443218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166882, 44.127056, 48.269920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389277, -0.395268, -0.832002,
		-0.921056, 0.177720, 0.346513,
		0.010898, 0.901210, -0.433246,
		34.170151, 44.397419, 48.139946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584431, 43.826298, 48.020233>,  <34.162521, 43.766571, 48.443218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584431, 43.826298, 48.020233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842537, 44.094936, 47.874588>,  <33.997402, 44.256119, 47.787201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842537, 44.094936, 47.874588>,  <33.584431, 43.826298, 48.020233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842537, 44.094936, 47.874588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202769, -0.308962, -0.929208,
		-0.736554, 0.673421, -0.063184,
		0.645270, 0.671600, -0.364117,
		34.036118, 44.296417, 47.765354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252190, 44.203789, 47.407333>,  <33.584431, 43.826298, 48.020233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252190, 44.203789, 47.407333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651119, 44.222271, 47.384701>,  <33.890476, 44.233360, 47.371120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651119, 44.222271, 47.384701>,  <33.252190, 44.203789, 47.407333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651119, 44.222271, 47.384701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034091, -0.390688, -0.919892,
		-0.064609, 0.919363, -0.388069,
		0.997328, 0.046203, -0.056584,
		33.950317, 44.236134, 47.367725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374199, 44.273182, 46.673065>,  <33.252190, 44.203789, 47.407333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374199, 44.273182, 46.673065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745216, 44.198116, 46.802341>,  <33.967827, 44.153076, 46.879906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745216, 44.198116, 46.802341>,  <33.374199, 44.273182, 46.673065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745216, 44.198116, 46.802341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158605, -0.585373, -0.795100,
		0.338402, 0.788745, -0.513191,
		0.927539, -0.187669, 0.323190,
		34.023479, 44.141815, 46.899300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789623, 44.338821, 46.093884>,  <33.374199, 44.273182, 46.673065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789623, 44.338821, 46.093884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020969, 44.133228, 46.347282>,  <34.159779, 44.009872, 46.499321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020969, 44.133228, 46.347282>,  <33.789623, 44.338821, 46.093884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020969, 44.133228, 46.347282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375563, -0.521603, -0.766083,
		0.724183, 0.680995, -0.108648,
		0.578370, -0.513980, 0.633493,
		34.194481, 43.979034, 46.537331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593735, 44.372765, 45.880219>,  <33.789623, 44.338821, 46.093884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593735, 44.372765, 45.880219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536858, 44.060246, 46.123318>,  <34.502731, 43.872734, 46.269176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536858, 44.060246, 46.123318>,  <34.593735, 44.372765, 45.880219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536858, 44.060246, 46.123318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563753, -0.568596, -0.599067,
		0.813612, 0.257439, 0.521306,
		-0.142190, -0.781296, 0.607748,
		34.494202, 43.825855, 46.305641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171616, 44.013073, 45.811085>,  <34.593735, 44.372765, 45.880219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171616, 44.013073, 45.811085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891090, 43.751419, 45.924419>,  <34.722775, 43.594429, 45.992420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891090, 43.751419, 45.924419>,  <35.171616, 44.013073, 45.811085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891090, 43.751419, 45.924419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342189, -0.657590, -0.671180,
		0.625358, -0.373750, 0.685009,
		-0.701309, -0.654131, 0.283336,
		34.680698, 43.555180, 46.009418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483940, 43.480568, 45.727192>,  <35.171616, 44.013073, 45.811085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483940, 43.480568, 45.727192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116837, 43.323498, 45.750916>,  <34.896572, 43.229256, 45.765152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116837, 43.323498, 45.750916>,  <35.483940, 43.480568, 45.727192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116837, 43.323498, 45.750916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297569, -0.778868, -0.552103,
		0.262994, -0.489049, 0.831664,
		-0.917762, -0.392677, 0.059311,
		34.841507, 43.205696, 45.768707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549084, 42.861065, 45.759956>,  <35.483940, 43.480568, 45.727192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549084, 42.861065, 45.759956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172218, 42.836670, 45.628132>,  <34.946098, 42.822033, 45.549034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172218, 42.836670, 45.628132>,  <35.549084, 42.861065, 45.759956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172218, 42.836670, 45.628132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249068, -0.785376, -0.566700,
		-0.224273, -0.616007, 0.755141,
		-0.942161, -0.060986, -0.329566,
		34.889568, 42.818375, 45.529263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496868, 42.224392, 45.453663>,  <35.549084, 42.861065, 45.759956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496868, 42.224392, 45.453663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141773, 42.360149, 45.329254>,  <34.928715, 42.441605, 45.254608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141773, 42.360149, 45.329254>,  <35.496868, 42.224392, 45.453663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141773, 42.360149, 45.329254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018195, -0.700968, -0.712961,
		-0.459989, -0.627264, 0.628451,
		-0.887739, 0.339388, -0.311024,
		34.875450, 42.461967, 45.235947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997356, 41.659821, 45.239716>,  <35.496868, 42.224392, 45.453663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997356, 41.659821, 45.239716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888103, 42.003891, 45.067440>,  <34.822552, 42.210335, 44.964077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888103, 42.003891, 45.067440>,  <34.997356, 41.659821, 45.239716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888103, 42.003891, 45.067440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095533, -0.469752, -0.877614,
		-0.957221, -0.198561, 0.210481,
		-0.273134, 0.860178, -0.430687,
		34.806164, 42.261944, 44.938232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368168, 41.508942, 45.004326>,  <34.997356, 41.659821, 45.239716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368168, 41.508942, 45.004326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548592, 41.786335, 44.779606>,  <34.656845, 41.952770, 44.644772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548592, 41.786335, 44.779606>,  <34.368168, 41.508942, 45.004326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548592, 41.786335, 44.779606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034061, -0.615641, -0.787290,
		-0.891844, 0.374250, -0.254070,
		0.451060, 0.693486, -0.561803,
		34.683910, 41.994381, 44.611065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104588, 41.324818, 44.338036>,  <34.368168, 41.508942, 45.004326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104588, 41.324818, 44.338036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424046, 41.547344, 44.246223>,  <34.615719, 41.680859, 44.191135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424046, 41.547344, 44.246223>,  <34.104588, 41.324818, 44.338036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424046, 41.547344, 44.246223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178470, -0.583185, -0.792492,
		-0.574735, 0.591953, -0.565041,
		0.798642, 0.556316, -0.229531,
		34.663639, 41.714237, 44.177364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129929, 41.583988, 43.614693>,  <34.104588, 41.324818, 44.338036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129929, 41.583988, 43.614693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512390, 41.557957, 43.728916>,  <34.741867, 41.542339, 43.797451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512390, 41.557957, 43.728916>,  <34.129929, 41.583988, 43.614693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512390, 41.557957, 43.728916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228577, -0.443762, -0.866503,
		0.183110, 0.893779, -0.409427,
		0.956150, -0.065080, 0.285554,
		34.799236, 41.538433, 43.814583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639030, 41.536781, 43.049919>,  <34.129929, 41.583988, 43.614693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639030, 41.536781, 43.049919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948708, 41.449501, 43.287579>,  <35.134514, 41.397133, 43.430176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948708, 41.449501, 43.287579>,  <34.639030, 41.536781, 43.049919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948708, 41.449501, 43.287579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434662, -0.499073, -0.749663,
		0.460103, 0.838638, -0.291534,
		0.774193, -0.218203, 0.594149,
		35.180965, 41.384041, 43.465824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159756, 41.598335, 42.636711>,  <34.639030, 41.536781, 43.049919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159756, 41.598335, 42.636711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320232, 41.402451, 42.946350>,  <35.416519, 41.284920, 43.132133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320232, 41.402451, 42.946350>,  <35.159756, 41.598335, 42.636711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320232, 41.402451, 42.946350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552721, -0.544479, -0.630905,
		0.730441, 0.680976, 0.052231,
		0.401192, -0.489708, 0.774100,
		35.440590, 41.255539, 43.178581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938446, 41.522118, 42.565525>,  <35.159756, 41.598335, 42.636711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938446, 41.522118, 42.565525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835163, 41.213455, 42.798031>,  <35.773193, 41.028259, 42.937534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835163, 41.213455, 42.798031>,  <35.938446, 41.522118, 42.565525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835163, 41.213455, 42.798031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624740, -0.592307, -0.508794,
		0.736905, 0.231768, 0.635023,
		-0.258207, -0.771657, 0.581269,
		35.757702, 40.981956, 42.972412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633198, 41.215782, 42.790936>,  <35.938446, 41.522118, 42.565525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633198, 41.215782, 42.790936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313473, 40.976273, 42.811211>,  <36.121639, 40.832565, 42.823376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313473, 40.976273, 42.811211>,  <36.633198, 41.215782, 42.790936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313473, 40.976273, 42.811211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497611, -0.706827, -0.502772,
		0.336877, -0.376646, 0.862932,
		-0.799310, -0.598777, 0.050691,
		36.073681, 40.796638, 42.826416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861748, 40.441036, 42.882061>,  <36.633198, 41.215782, 42.790936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861748, 40.441036, 42.882061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497986, 40.444839, 42.715736>,  <36.279728, 40.447121, 42.615944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497986, 40.444839, 42.715736>,  <36.861748, 40.441036, 42.882061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497986, 40.444839, 42.715736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278087, -0.729524, -0.624870,
		-0.309282, -0.683889, 0.660788,
		-0.909403, 0.009505, -0.415809,
		36.225166, 40.447689, 42.590992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867153, 39.790703, 42.761627>,  <36.861748, 40.441036, 42.882061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867153, 39.790703, 42.761627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611713, 39.982140, 42.520580>,  <36.458450, 40.097004, 42.375954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611713, 39.982140, 42.520580>,  <36.867153, 39.790703, 42.761627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611713, 39.982140, 42.520580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248472, -0.612903, -0.750075,
		-0.728325, -0.628727, 0.272480,
		-0.638596, 0.478595, -0.602613,
		36.420135, 40.125717, 42.339798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470413, 39.190372, 42.452545>,  <36.867153, 39.790703, 42.761627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470413, 39.190372, 42.452545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372303, 39.504726, 42.225487>,  <36.313438, 39.693340, 42.089252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372303, 39.504726, 42.225487>,  <36.470413, 39.190372, 42.452545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372303, 39.504726, 42.225487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116250, -0.557465, -0.822021,
		-0.962459, -0.267609, 0.045372,
		-0.245273, 0.785887, -0.567647,
		36.298721, 39.740494, 42.055191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036007, 38.976349, 41.972549>,  <36.470413, 39.190372, 42.452545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036007, 38.976349, 41.972549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161503, 39.313263, 41.797218>,  <36.236801, 39.515411, 41.692020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161503, 39.313263, 41.797218>,  <36.036007, 38.976349, 41.972549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161503, 39.313263, 41.797218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104008, -0.489345, -0.865866,
		-0.943796, 0.226064, -0.241130,
		0.313737, 0.842280, -0.438330,
		36.255623, 39.565948, 41.665718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750851, 38.952755, 41.158886>,  <36.036007, 38.976349, 41.972549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750851, 38.952755, 41.158886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039738, 39.229355, 41.152733>,  <36.213070, 39.395313, 41.149040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039738, 39.229355, 41.152733>,  <35.750851, 38.952755, 41.158886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039738, 39.229355, 41.152733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129237, -0.156755, -0.979145,
		-0.679488, 0.705166, -0.202578,
		0.722215, 0.691498, -0.015380,
		36.256401, 39.436806, 41.148117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577045, 39.482689, 40.495777>,  <35.750851, 38.952755, 41.158886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577045, 39.482689, 40.495777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953506, 39.487488, 40.630886>,  <36.179382, 39.490368, 40.711952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953506, 39.487488, 40.630886>,  <35.577045, 39.482689, 40.495777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953506, 39.487488, 40.630886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337549, 0.017214, -0.941151,
		-0.017103, 0.999780, 0.012152,
		0.941153, 0.011995, 0.337769,
		36.235851, 39.491085, 40.732216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902767, 40.042862, 40.092651>,  <35.577045, 39.482689, 40.495777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902767, 40.042862, 40.092651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133823, 39.740601, 40.216145>,  <36.272457, 39.559242, 40.290241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133823, 39.740601, 40.216145>,  <35.902767, 40.042862, 40.092651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133823, 39.740601, 40.216145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317441, -0.140494, -0.937813,
		0.752039, 0.639722, 0.158721,
		0.577640, -0.755656, 0.308731,
		36.307114, 39.513905, 40.308765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583893, 40.178082, 39.842346>,  <35.902767, 40.042862, 40.092651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583893, 40.178082, 39.842346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579605, 39.785484, 39.918827>,  <36.577030, 39.549927, 39.964714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579605, 39.785484, 39.918827>,  <36.583893, 40.178082, 39.842346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579605, 39.785484, 39.918827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422423, -0.177759, -0.888797,
		0.906335, 0.071238, 0.416511,
		-0.010722, -0.981492, 0.191202,
		36.576389, 39.491035, 39.976189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199501, 39.964870, 39.561592>,  <36.583893, 40.178082, 39.842346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199501, 39.964870, 39.561592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991985, 39.624630, 39.595863>,  <36.867477, 39.420486, 39.616425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991985, 39.624630, 39.595863>,  <37.199501, 39.964870, 39.561592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991985, 39.624630, 39.595863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411156, -0.336114, -0.847336,
		0.749542, -0.404358, 0.524100,
		-0.518785, -0.850601, 0.085678,
		36.836349, 39.369450, 39.621567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639309, 39.427727, 39.252438>,  <37.199501, 39.964870, 39.561592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639309, 39.427727, 39.252438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278107, 39.257454, 39.275700>,  <37.061386, 39.155289, 39.289658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278107, 39.257454, 39.275700>,  <37.639309, 39.427727, 39.252438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278107, 39.257454, 39.275700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129507, -0.398763, -0.907863,
		0.409653, -0.812270, 0.415213,
		-0.903002, -0.425682, 0.058160,
		37.007206, 39.129749, 39.293148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809181, 38.743343, 39.230331>,  <37.639309, 39.427727, 39.252438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809181, 38.743343, 39.230331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441284, 38.833645, 39.101894>,  <37.220547, 38.887825, 39.024834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441284, 38.833645, 39.101894>,  <37.809181, 38.743343, 39.230331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441284, 38.833645, 39.101894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260328, -0.261388, -0.929465,
		-0.293765, -0.938461, 0.181639,
		-0.919745, 0.225758, -0.321095,
		37.165359, 38.901371, 39.005566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660851, 38.251591, 38.786648>,  <37.809181, 38.743343, 39.230331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660851, 38.251591, 38.786648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389141, 38.519825, 38.667377>,  <37.226116, 38.680763, 38.595814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389141, 38.519825, 38.667377>,  <37.660851, 38.251591, 38.786648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389141, 38.519825, 38.667377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164923, -0.256425, -0.952390,
		-0.715116, -0.696108, 0.063588,
		-0.679272, 0.670582, -0.298178,
		37.185360, 38.721001, 38.577923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273071, 37.907368, 38.171005>,  <37.660851, 38.251591, 38.786648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273071, 37.907368, 38.171005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163078, 38.285301, 38.099823>,  <37.097084, 38.512062, 38.057114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163078, 38.285301, 38.099823>,  <37.273071, 37.907368, 38.171005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163078, 38.285301, 38.099823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126960, -0.147788, -0.980836,
		-0.953030, -0.292306, -0.079318,
		-0.274982, 0.944837, -0.177958,
		37.080585, 38.568752, 38.046436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740772, 37.906567, 37.720772>,  <37.273071, 37.907368, 38.171005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740772, 37.906567, 37.720772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898739, 38.271629, 37.678650>,  <36.993519, 38.490669, 37.653378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898739, 38.271629, 37.678650>,  <36.740772, 37.906567, 37.720772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898739, 38.271629, 37.678650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033195, -0.128723, -0.991125,
		-0.918116, 0.387918, -0.081131,
		0.394919, 0.912661, -0.105306,
		37.017216, 38.545429, 37.647057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431187, 38.198242, 37.211460>,  <36.740772, 37.906567, 37.720772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431187, 38.198242, 37.211460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760002, 38.424927, 37.233688>,  <36.957291, 38.560936, 37.247025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760002, 38.424927, 37.233688>,  <36.431187, 38.198242, 37.211460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760002, 38.424927, 37.233688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074180, -0.009818, -0.997197,
		-0.564573, 0.823861, -0.050109,
		0.822043, 0.566707, 0.055571,
		37.006615, 38.594940, 37.250359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414883, 38.655724, 36.672462>,  <36.431187, 38.198242, 37.211460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414883, 38.655724, 36.672462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799324, 38.724079, 36.759254>,  <37.029987, 38.765091, 36.811329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799324, 38.724079, 36.759254>,  <36.414883, 38.655724, 36.672462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799324, 38.724079, 36.759254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207824, 0.069972, -0.975660,
		-0.181910, 0.982803, 0.031736,
		0.961102, 0.170887, 0.216979,
		37.087654, 38.775345, 36.824348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534714, 39.197979, 36.216125>,  <36.414883, 38.655724, 36.672462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534714, 39.197979, 36.216125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889595, 39.034119, 36.301025>,  <37.102524, 38.935802, 36.351967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889595, 39.034119, 36.301025>,  <36.534714, 39.197979, 36.216125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889595, 39.034119, 36.301025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278342, 0.108348, -0.954351,
		0.367955, 0.905784, 0.210150,
		0.887206, -0.409652, 0.212251,
		37.155758, 38.911224, 36.364700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032406, 39.645824, 35.857380>,  <36.534714, 39.197979, 36.216125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032406, 39.645824, 35.857380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239265, 39.312325, 35.934765>,  <37.363380, 39.112225, 35.981194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239265, 39.312325, 35.934765>,  <37.032406, 39.645824, 35.857380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239265, 39.312325, 35.934765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341517, -0.006248, -0.939855,
		0.784809, 0.552114, 0.281507,
		0.517148, -0.833746, 0.193459,
		37.394409, 39.062202, 35.992802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666794, 39.676041, 35.508301>,  <37.032406, 39.645824, 35.857380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666794, 39.676041, 35.508301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640415, 39.283161, 35.578663>,  <37.624588, 39.047436, 35.620880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640415, 39.283161, 35.578663>,  <37.666794, 39.676041, 35.508301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640415, 39.283161, 35.578663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371308, -0.187787, -0.909322,
		0.926165, 0.005346, 0.377082,
		-0.065950, -0.982195, 0.175907,
		37.620628, 38.988503, 35.631435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224049, 39.279572, 35.177132>,  <37.666794, 39.676041, 35.508301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224049, 39.279572, 35.177132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921986, 39.018360, 35.200100>,  <37.740749, 38.861633, 35.213882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921986, 39.018360, 35.200100>,  <38.224049, 39.279572, 35.177132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921986, 39.018360, 35.200100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280828, -0.401407, -0.871785,
		0.592349, -0.642206, 0.486512,
		-0.755154, -0.653027, 0.057424,
		37.695438, 38.822453, 35.217327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513336, 38.716297, 34.794273>,  <38.224049, 39.279572, 35.177132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513336, 38.716297, 34.794273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120979, 38.645733, 34.827099>,  <37.885567, 38.603394, 34.846794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120979, 38.645733, 34.827099>,  <38.513336, 38.716297, 34.794273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120979, 38.645733, 34.827099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028284, -0.546593, -0.836921,
		0.192495, -0.818606, 0.541137,
		-0.980890, -0.176409, 0.082063,
		37.826714, 38.592812, 34.851719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408623, 38.047058, 34.723644>,  <38.513336, 38.716297, 34.794273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408623, 38.047058, 34.723644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071178, 38.230675, 34.612221>,  <37.868710, 38.340843, 34.545364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071178, 38.230675, 34.612221>,  <38.408623, 38.047058, 34.723644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071178, 38.230675, 34.612221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036850, -0.567062, -0.822850,
		-0.535678, -0.683906, 0.495300,
		-0.843618, 0.459035, -0.278561,
		37.818092, 38.368385, 34.528652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635468, 38.126011, 35.446323>,  <38.408623, 38.047058, 34.723644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635468, 38.126011, 35.446323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906574, 38.144642, 35.739845>,  <39.069237, 38.155819, 35.915958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906574, 38.144642, 35.739845>,  <38.635468, 38.126011, 35.446323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906574, 38.144642, 35.739845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734343, 0.007390, -0.678738,
		-0.037034, 0.998888, -0.029192,
		0.677767, 0.046573, 0.733800,
		39.109905, 38.158615, 35.959984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115082, 38.404095, 35.060688>,  <38.635468, 38.126011, 35.446323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115082, 38.404095, 35.060688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309818, 38.319221, 35.399620>,  <39.426659, 38.268299, 35.602978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309818, 38.319221, 35.399620>,  <39.115082, 38.404095, 35.060688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309818, 38.319221, 35.399620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872991, 0.085344, -0.480212,
		0.029579, 0.973496, 0.226784,
		0.486839, -0.212184, 0.847329,
		39.455872, 38.255566, 35.653820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655308, 38.978695, 35.142883>,  <39.115082, 38.404095, 35.060688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655308, 38.978695, 35.142883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764286, 38.625961, 35.296837>,  <39.829674, 38.414322, 35.389210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764286, 38.625961, 35.296837>,  <39.655308, 38.978695, 35.142883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764286, 38.625961, 35.296837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727749, -0.072813, -0.681968,
		0.629409, 0.465899, 0.621918,
		0.272444, -0.881837, 0.384887,
		39.846020, 38.361412, 35.412304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366001, 38.984745, 35.376114>,  <39.655308, 38.978695, 35.142883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366001, 38.984745, 35.376114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273964, 38.614471, 35.256004>,  <40.218742, 38.392307, 35.183937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273964, 38.614471, 35.256004>,  <40.366001, 38.984745, 35.376114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273964, 38.614471, 35.256004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727701, 0.041209, -0.684656,
		0.646150, -0.376042, 0.664140,
		-0.230091, -0.925686, -0.300274,
		40.204937, 38.336765, 35.165924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754326, 38.719547, 34.744442>,  <40.366001, 38.984745, 35.376114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754326, 38.719547, 34.744442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106266, 38.832016, 34.591179>,  <41.317429, 38.899498, 34.499222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106266, 38.832016, 34.591179>,  <40.754326, 38.719547, 34.744442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106266, 38.832016, 34.591179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447749, -0.220092, 0.866649,
		0.159346, -0.934078, -0.319541,
		0.879847, 0.281171, -0.383161,
		41.370220, 38.916367, 34.476231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271404, 38.123871, 34.729237>,  <40.754326, 38.719547, 34.744442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.271404, 38.123871, 34.729237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452988, 38.480255, 34.724957>,  <41.561939, 38.694084, 34.722389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452988, 38.480255, 34.724957>,  <41.271404, 38.123871, 34.729237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452988, 38.480255, 34.724957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384521, -0.185054, 0.904377,
		0.803782, -0.414665, -0.426600,
		0.453958, 0.890959, -0.010704,
		41.589176, 38.747543, 34.721745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.008953, 38.262794, 34.634460>,  <41.271404, 38.123871, 34.729237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.008953, 38.262794, 34.634460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.285297, 37.987724, 34.723732>,  <42.451103, 37.822681, 34.777294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.285297, 37.987724, 34.723732>,  <42.008953, 38.262794, 34.634460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285297, 37.987724, 34.723732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222500, -0.495934, -0.839371,
		0.687899, 0.530232, -0.495630,
		0.690861, -0.687680, 0.223176,
		42.492554, 37.781422, 34.790684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.448078, 38.177650, 34.096859>,  <42.008953, 38.262794, 34.634460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.448078, 38.177650, 34.096859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.473778, 37.829174, 34.291550>,  <42.489197, 37.620090, 34.408363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.473778, 37.829174, 34.291550>,  <42.448078, 38.177650, 34.096859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.473778, 37.829174, 34.291550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140456, -0.490777, -0.859890,
		0.988000, -0.013115, -0.153896,
		0.064251, -0.871186, 0.486730,
		42.493053, 37.567818, 34.437569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798256, 37.849632, 33.674072>,  <42.448078, 38.177650, 34.096859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798256, 37.849632, 33.674072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.643032, 37.560989, 33.903400>,  <42.549896, 37.387806, 34.040997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.643032, 37.560989, 33.903400>,  <42.798256, 37.849632, 33.674072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.643032, 37.560989, 33.903400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131626, -0.572301, -0.809411,
		0.912186, -0.389566, 0.127106,
		-0.388062, -0.721603, 0.573321,
		42.526615, 37.344509, 34.075397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.163284, 37.139229, 33.467289>,  <42.798256, 37.849632, 33.674072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.163284, 37.139229, 33.467289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.824169, 37.072182, 33.668549>,  <42.620701, 37.031952, 33.789303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.824169, 37.072182, 33.668549>,  <43.163284, 37.139229, 33.467289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824169, 37.072182, 33.668549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302598, -0.626250, -0.718502,
		0.435532, -0.761389, 0.480206,
		-0.847789, -0.167621, 0.503147,
		42.569832, 37.021896, 33.819492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.067516, 36.409309, 33.516342>,  <43.163284, 37.139229, 33.467289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.067516, 36.409309, 33.516342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.701611, 36.569805, 33.535126>,  <42.482067, 36.666103, 33.546394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.701611, 36.569805, 33.535126>,  <43.067516, 36.409309, 33.516342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.701611, 36.569805, 33.535126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297220, -0.589730, -0.750919,
		-0.273607, -0.700873, 0.658723,
		-0.914767, 0.401242, 0.046959,
		42.427181, 36.690178, 33.549213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725655, 35.966545, 33.186268>,  <43.067516, 36.409309, 33.516342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725655, 35.966545, 33.186268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440605, 36.246449, 33.206326>,  <42.269577, 36.414391, 33.218361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440605, 36.246449, 33.206326>,  <42.725655, 35.966545, 33.186268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440605, 36.246449, 33.206326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354086, -0.297048, -0.886784,
		-0.605636, -0.649696, 0.459456,
		-0.712620, 0.699755, 0.050145,
		42.226818, 36.456375, 33.221371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227398, 35.631470, 32.890053>,  <42.725655, 35.966545, 33.186268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227398, 35.631470, 32.890053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.103374, 36.009693, 32.850506>,  <42.028961, 36.236629, 32.826778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.103374, 36.009693, 32.850506>,  <42.227398, 35.631470, 32.890053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.103374, 36.009693, 32.850506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507193, -0.252477, -0.824021,
		-0.804125, -0.205349, 0.557866,
		-0.310060, 0.945562, -0.098872,
		42.010357, 36.293362, 32.820843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599129, 35.494316, 32.580170>,  <42.227398, 35.631470, 32.890053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599129, 35.494316, 32.580170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669163, 35.882576, 32.514229>,  <41.711185, 36.115532, 32.474667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669163, 35.882576, 32.514229>,  <41.599129, 35.494316, 32.580170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669163, 35.882576, 32.514229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153441, -0.138489, -0.978405,
		-0.972522, 0.196602, 0.124691,
		0.175088, 0.970654, -0.164850,
		41.721687, 36.173771, 32.464775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963631, 35.828678, 32.147690>,  <41.599129, 35.494316, 32.580170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963631, 35.828678, 32.147690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289085, 36.059952, 32.123394>,  <41.484360, 36.198715, 32.108818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289085, 36.059952, 32.123394>,  <40.963631, 35.828678, 32.147690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289085, 36.059952, 32.123394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056305, -0.025613, -0.998085,
		-0.578636, 0.815502, 0.011715,
		0.813640, 0.578188, -0.060737,
		41.533176, 36.233410, 32.105171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722260, 36.510460, 31.781574>,  <40.963631, 35.828678, 32.147690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722260, 36.510460, 31.781574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103157, 36.397602, 31.734882>,  <41.331696, 36.329887, 31.706867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103157, 36.397602, 31.734882>,  <40.722260, 36.510460, 31.781574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103157, 36.397602, 31.734882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122129, -0.001557, -0.992513,
		0.279852, 0.959370, -0.035941,
		0.952244, -0.282146, -0.116731,
		41.388828, 36.312958, 31.699863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852158, 36.723721, 31.062206>,  <40.722260, 36.510460, 31.781574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852158, 36.723721, 31.062206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.172741, 36.514606, 31.178392>,  <41.365089, 36.389137, 31.248104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.172741, 36.514606, 31.178392>,  <40.852158, 36.723721, 31.062206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.172741, 36.514606, 31.178392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345591, 0.008451, -0.938347,
		0.488095, 0.852425, 0.187441,
		0.801455, -0.522781, 0.290465,
		41.413177, 36.357773, 31.265532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400993, 36.905766, 30.594223>,  <40.852158, 36.723721, 31.062206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400993, 36.905766, 30.594223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.522980, 36.554310, 30.741182>,  <41.596172, 36.343437, 30.829357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.522980, 36.554310, 30.741182>,  <41.400993, 36.905766, 30.594223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.522980, 36.554310, 30.741182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347977, -0.256297, -0.901789,
		0.886514, 0.402861, 0.227586,
		0.304967, -0.878644, 0.367397,
		41.614471, 36.290718, 30.851402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993690, 36.796185, 30.219551>,  <41.400993, 36.905766, 30.594223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.993690, 36.796185, 30.219551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.887371, 36.431892, 30.345995>,  <41.823578, 36.213318, 30.421862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.887371, 36.431892, 30.345995>,  <41.993690, 36.796185, 30.219551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.887371, 36.431892, 30.345995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248818, -0.381605, -0.890206,
		0.931365, -0.157961, 0.328035,
		-0.265798, -0.910728, 0.316110,
		41.807632, 36.158672, 30.440828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441696, 36.392242, 29.912388>,  <41.993690, 36.796185, 30.219551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441696, 36.392242, 29.912388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146519, 36.144749, 30.020166>,  <41.969410, 35.996254, 30.084833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146519, 36.144749, 30.020166>,  <42.441696, 36.392242, 29.912388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.146519, 36.144749, 30.020166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077036, -0.473887, -0.877209,
		0.670446, -0.626578, 0.397369,
		-0.737948, -0.618733, 0.269447,
		41.925133, 35.959129, 30.101000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.602890, 35.758446, 29.539335>,  <42.441696, 36.392242, 29.912388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.602890, 35.758446, 29.539335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.221607, 35.704655, 29.647635>,  <41.992836, 35.672382, 29.712614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.221607, 35.704655, 29.647635>,  <42.602890, 35.758446, 29.539335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.221607, 35.704655, 29.647635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167160, -0.511768, -0.842704,
		0.251883, -0.848534, 0.465344,
		-0.953211, -0.134476, 0.270747,
		41.935642, 35.664310, 29.728859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.446144, 34.992847, 29.502403>,  <42.602890, 35.758446, 29.539335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.446144, 34.992847, 29.502403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.100094, 35.188263, 29.456991>,  <41.892464, 35.305511, 29.429745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.100094, 35.188263, 29.456991>,  <42.446144, 34.992847, 29.502403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.100094, 35.188263, 29.456991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212127, -0.561503, -0.799823,
		-0.454494, -0.667863, 0.589402,
		-0.865123, 0.488542, -0.113528,
		41.840557, 35.334827, 29.422932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988430, 34.565231, 29.297297>,  <42.446144, 34.992847, 29.502403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988430, 34.565231, 29.297297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770283, 34.877243, 29.174582>,  <41.639393, 35.064449, 29.100952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770283, 34.877243, 29.174582>,  <41.988430, 34.565231, 29.297297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.770283, 34.877243, 29.174582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090454, -0.418642, -0.903635,
		-0.833300, -0.465066, 0.298872,
		-0.545370, 0.780034, -0.306788,
		41.606670, 35.111252, 29.082544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483044, 34.290401, 28.942751>,  <41.988430, 34.565231, 29.297297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483044, 34.290401, 28.942751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513458, 34.668079, 28.814552>,  <41.531708, 34.894684, 28.737633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513458, 34.668079, 28.814552>,  <41.483044, 34.290401, 28.942751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513458, 34.668079, 28.814552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074492, -0.315150, -0.946114,
		-0.994319, 0.095816, 0.046371,
		0.076039, 0.944193, -0.320497,
		41.536270, 34.951336, 28.718403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960594, 34.362892, 28.433556>,  <41.483044, 34.290401, 28.942751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960594, 34.362892, 28.433556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191811, 34.680302, 28.357468>,  <41.330540, 34.870747, 28.311815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191811, 34.680302, 28.357468>,  <40.960594, 34.362892, 28.433556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191811, 34.680302, 28.357468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146814, -0.128174, -0.980825,
		-0.802691, 0.594886, 0.042411,
		0.578043, 0.793525, -0.190221,
		41.365223, 34.918358, 28.300402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581707, 34.881207, 27.967175>,  <40.960594, 34.362892, 28.433556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581707, 34.881207, 27.967175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981388, 34.887913, 27.952677>,  <41.221195, 34.891937, 27.943979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981388, 34.887913, 27.952677>,  <40.581707, 34.881207, 27.967175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981388, 34.887913, 27.952677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034255, -0.106634, -0.993708,
		-0.020523, 0.994157, -0.105975,
		0.999202, 0.016764, -0.036243,
		41.281147, 34.892941, 27.941803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719715, 35.116543, 27.353914>,  <40.581707, 34.881207, 27.967175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719715, 35.116543, 27.353914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050411, 34.906250, 27.434021>,  <41.248829, 34.780075, 27.482084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050411, 34.906250, 27.434021>,  <40.719715, 35.116543, 27.353914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050411, 34.906250, 27.434021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191690, -0.071431, -0.978853,
		0.528922, 0.847644, 0.041723,
		0.826738, -0.525735, 0.200266,
		41.298431, 34.748531, 27.494101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323895, 35.509548, 27.126820>,  <40.719715, 35.116543, 27.353914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323895, 35.509548, 27.126820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437050, 35.126080, 27.139000>,  <41.504944, 34.896000, 27.146309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437050, 35.126080, 27.139000>,  <41.323895, 35.509548, 27.126820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437050, 35.126080, 27.139000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360561, 0.076870, -0.929562,
		0.888802, 0.273944, 0.367405,
		0.282891, -0.958669, 0.030451,
		41.521915, 34.838478, 27.148136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.079121, 35.579399, 27.088213>,  <41.323895, 35.509548, 27.126820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.079121, 35.579399, 27.088213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051983, 35.612602, 26.690519>,  <42.035698, 35.632526, 26.451902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051983, 35.612602, 26.690519>,  <42.079121, 35.579399, 27.088213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.051983, 35.612602, 26.690519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261505, 0.963172, 0.062570,
		0.962814, -0.255753, -0.087057,
		-0.067848, 0.083009, -0.994236,
		42.031628, 35.637505, 26.392248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.715126, 35.834034, 26.774874>,  <42.079121, 35.579399, 27.088213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.715126, 35.834034, 26.774874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.398491, 35.942650, 26.555912>,  <42.208508, 36.007820, 26.424536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.398491, 35.942650, 26.555912>,  <42.715126, 35.834034, 26.774874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.398491, 35.942650, 26.555912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308150, 0.950979, 0.026118,
		0.527661, -0.148007, -0.836462,
		-0.791592, 0.271537, -0.547403,
		42.161015, 36.024113, 26.391691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982990, 36.286774, 26.146719>,  <42.715126, 35.834034, 26.774874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.982990, 36.286774, 26.146719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.612419, 36.380749, 26.264385>,  <42.390076, 36.437134, 26.334986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.612419, 36.380749, 26.264385>,  <42.982990, 36.286774, 26.146719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.612419, 36.380749, 26.264385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242444, 0.970100, -0.011248,
		-0.288014, 0.060898, -0.955688,
		-0.926428, 0.234940, 0.294167,
		42.334492, 36.451229, 26.352634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699608, 35.960003, 25.405968>,  <42.982990, 36.286774, 26.146719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.699608, 35.960003, 25.405968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.875015, 35.830982, 25.741505>,  <42.980259, 35.753571, 25.942827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.875015, 35.830982, 25.741505>,  <42.699608, 35.960003, 25.405968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.875015, 35.830982, 25.741505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491466, -0.867517, -0.076653,
		0.752435, -0.378649, -0.538949,
		0.438522, -0.322552, 0.838844,
		43.006573, 35.734215, 25.993158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.192703, 35.269020, 25.272419>,  <42.699608, 35.960003, 25.405968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.192703, 35.269020, 25.272419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.069214, 35.251961, 25.652496>,  <42.995121, 35.241726, 25.880543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.069214, 35.251961, 25.652496>,  <43.192703, 35.269020, 25.272419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.069214, 35.251961, 25.652496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403006, -0.899025, -0.171290,
		0.861553, -0.435816, 0.260367,
		-0.308727, -0.042646, 0.950194,
		42.976597, 35.239166, 25.937555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.416004, 34.658920, 25.642496>,  <43.192703, 35.269020, 25.272419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.416004, 34.658920, 25.642496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.081409, 34.820431, 25.790689>,  <42.880653, 34.917339, 25.879606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.081409, 34.820431, 25.790689>,  <43.416004, 34.658920, 25.642496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.081409, 34.820431, 25.790689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338543, -0.912400, 0.230032,
		0.430911, 0.066994, 0.899904,
		-0.836484, 0.403779, 0.370483,
		42.830463, 34.941563, 25.901834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.397739, 34.609188, 26.355474>,  <43.416004, 34.658920, 25.642496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.397739, 34.609188, 26.355474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023769, 34.631035, 26.215223>,  <42.799389, 34.644142, 26.131073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023769, 34.631035, 26.215223>,  <43.397739, 34.609188, 26.355474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.023769, 34.631035, 26.215223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183408, -0.920246, 0.345701,
		-0.303782, 0.387511, 0.870374,
		-0.934921, 0.054615, -0.350627,
		42.743294, 34.647419, 26.110035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.592617, 34.837395, 26.992695>,  <43.397739, 34.609188, 26.355474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.592617, 34.837395, 26.992695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.761314, 35.200005, 27.000057>,  <43.862534, 35.417572, 27.004475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.761314, 35.200005, 27.000057>,  <43.592617, 34.837395, 26.992695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.761314, 35.200005, 27.000057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315384, -0.165698, 0.934386,
		0.850095, -0.388271, -0.355786,
		0.421748, 0.906527, 0.018405,
		43.887840, 35.471962, 27.005579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.386551, 34.829987, 27.238583>,  <43.592617, 34.837395, 26.992695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.386551, 34.829987, 27.238583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.234509, 35.183479, 27.347786>,  <44.143284, 35.395576, 27.413309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.234509, 35.183479, 27.347786>,  <44.386551, 34.829987, 27.238583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.234509, 35.183479, 27.347786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395854, -0.111339, 0.911539,
		0.835956, 0.454550, -0.307510,
		-0.380102, 0.883735, 0.273009,
		44.120480, 35.448601, 27.429689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.949356, 35.338978, 27.396008>,  <44.386551, 34.829987, 27.238583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.949356, 35.338978, 27.396008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.612915, 35.419285, 27.596899>,  <44.411049, 35.467468, 27.717434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.612915, 35.419285, 27.596899>,  <44.949356, 35.338978, 27.396008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.612915, 35.419285, 27.596899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519899, 0.044031, 0.853092,
		0.149161, 0.978648, -0.141415,
		-0.841104, 0.200770, 0.502231,
		44.360584, 35.479515, 27.747568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.125198, 35.887440, 27.897272>,  <44.949356, 35.338978, 27.396008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.125198, 35.887440, 27.897272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.794968, 35.694584, 28.014544>,  <44.596828, 35.578869, 28.084908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.794968, 35.694584, 28.014544>,  <45.125198, 35.887440, 27.897272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.794968, 35.694584, 28.014544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292745, 0.078216, 0.952986,
		-0.482407, 0.872594, 0.076572,
		-0.825581, -0.482143, 0.293179,
		44.547295, 35.549942, 28.102497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.684971, 36.359871, 28.390915>,  <45.125198, 35.887440, 27.897272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.684971, 36.359871, 28.390915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.615383, 35.969078, 28.440283>,  <44.573631, 35.734600, 28.469904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.615383, 35.969078, 28.440283>,  <44.684971, 36.359871, 28.390915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.615383, 35.969078, 28.440283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176520, 0.092362, 0.979954,
		-0.968801, 0.192269, 0.156390,
		-0.173970, -0.976986, 0.123419,
		44.563190, 35.675983, 28.477308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.478878, 36.397652, 29.070850>,  <44.684971, 36.359871, 28.390915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.478878, 36.397652, 29.070850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.514053, 36.003998, 29.009222>,  <44.535156, 35.767803, 28.972244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.514053, 36.003998, 29.009222>,  <44.478878, 36.397652, 29.070850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.514053, 36.003998, 29.009222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116782, -0.143419, 0.982748,
		-0.989257, -0.104411, 0.102318,
		0.087936, -0.984139, -0.154072,
		44.540436, 35.708755, 28.963001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.101227, 36.161926, 29.575165>,  <44.478878, 36.397652, 29.070850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.101227, 36.161926, 29.575165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.324188, 35.853619, 29.451738>,  <44.457966, 35.668633, 29.377682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.324188, 35.853619, 29.451738>,  <44.101227, 36.161926, 29.575165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.324188, 35.853619, 29.451738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031767, -0.351588, 0.935615,
		-0.829633, -0.531318, -0.171492,
		0.557404, -0.770770, -0.308568,
		44.491409, 35.622387, 29.359167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.810299, 35.588737, 29.764227>,  <44.101227, 36.161926, 29.575165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.810299, 35.588737, 29.764227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.202618, 35.516926, 29.733730>,  <44.438007, 35.473839, 29.715431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.202618, 35.516926, 29.733730>,  <43.810299, 35.588737, 29.764227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.202618, 35.516926, 29.733730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022923, -0.282086, 0.959115,
		-0.193695, -0.942442, -0.272552,
		0.980794, -0.179528, -0.076242,
		44.496857, 35.463066, 29.710857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.883652, 34.882023, 29.959282>,  <43.810299, 35.588737, 29.764227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.883652, 34.882023, 29.959282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.249001, 35.043205, 29.982538>,  <44.468208, 35.139915, 29.996492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.249001, 35.043205, 29.982538>,  <43.883652, 34.882023, 29.959282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.249001, 35.043205, 29.982538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117406, -0.397426, 0.910093,
		0.389837, -0.824424, -0.410306,
		0.913369, 0.402961, 0.058139,
		44.523010, 35.164093, 29.999979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.248650, 34.329170, 30.316378>,  <43.883652, 34.882023, 29.959282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.248650, 34.329170, 30.316378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.476620, 34.655609, 30.354675>,  <44.613403, 34.851471, 30.377653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.476620, 34.655609, 30.354675>,  <44.248650, 34.329170, 30.316378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.476620, 34.655609, 30.354675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183002, -0.239658, 0.953454,
		0.801056, -0.525881, -0.285935,
		0.569930, 0.816097, 0.095742,
		44.647598, 34.900436, 30.383398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.771618, 34.088867, 30.659706>,  <44.248650, 34.329170, 30.316378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.771618, 34.088867, 30.659706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.780415, 34.485504, 30.710707>,  <44.785690, 34.723488, 30.741306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.780415, 34.485504, 30.710707>,  <44.771618, 34.088867, 30.659706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.780415, 34.485504, 30.710707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244267, -0.128996, 0.961090,
		0.969459, 0.010011, -0.245051,
		0.021989, 0.991594, 0.127502,
		44.787010, 34.782982, 30.748957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.404701, 34.235634, 31.006010>,  <44.771618, 34.088867, 30.659706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.404701, 34.235634, 31.006010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.181057, 34.556686, 31.089123>,  <45.046871, 34.749317, 31.138990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.181057, 34.556686, 31.089123>,  <45.404701, 34.235634, 31.006010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.181057, 34.556686, 31.089123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273301, -0.058183, 0.960167,
		0.782752, 0.593628, -0.186829,
		-0.559112, 0.802634, 0.207782,
		45.013325, 34.797478, 31.151457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.752937, 34.578030, 31.568954>,  <45.404701, 34.235634, 31.006010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.752937, 34.578030, 31.568954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.389236, 34.743771, 31.584785>,  <45.171017, 34.843216, 31.594284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.389236, 34.743771, 31.584785>,  <45.752937, 34.578030, 31.568954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.389236, 34.743771, 31.584785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157525, 0.254529, 0.954149,
		0.385285, 0.873798, -0.296703,
		-0.909253, 0.414357, 0.039579,
		45.116459, 34.868076, 31.596659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.864674, 34.949883, 32.166405>,  <45.752937, 34.578030, 31.568954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.864674, 34.949883, 32.166405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.466946, 34.965324, 32.126728>,  <45.228310, 34.974590, 32.102921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.466946, 34.965324, 32.126728>,  <45.864674, 34.949883, 32.166405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.466946, 34.965324, 32.126728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084854, 0.275184, 0.957640,
		0.064263, 0.960617, -0.270345,
		-0.994319, 0.038601, -0.099196,
		45.168652, 34.976906, 32.096970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.660988, 35.533749, 32.558575>,  <45.864674, 34.949883, 32.166405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.660988, 35.533749, 32.558575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.322144, 35.325600, 32.515469>,  <45.118835, 35.200710, 32.489605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.322144, 35.325600, 32.515469>,  <45.660988, 35.533749, 32.558575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.322144, 35.325600, 32.515469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271013, 0.248601, 0.929919,
		-0.457117, 0.816950, -0.351621,
		-0.847111, -0.520375, -0.107764,
		45.068012, 35.169487, 32.483139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.021431, 36.046631, 32.623505>,  <45.660988, 35.533749, 32.558575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.021431, 36.046631, 32.623505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.931263, 35.665913, 32.706711>,  <44.877163, 35.437481, 32.756634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.931263, 35.665913, 32.706711>,  <45.021431, 36.046631, 32.623505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.931263, 35.665913, 32.706711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285598, 0.268687, 0.919914,
		-0.931461, 0.147959, -0.332399,
		-0.225421, -0.951796, 0.208015,
		44.863636, 35.380375, 32.769115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.400494, 36.091274, 33.042988>,  <45.021431, 36.046631, 32.623505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.400494, 36.091274, 33.042988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.552532, 35.728416, 33.115231>,  <44.643757, 35.510704, 33.158577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.552532, 35.728416, 33.115231>,  <44.400494, 36.091274, 33.042988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.552532, 35.728416, 33.115231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203898, 0.108281, 0.972986,
		-0.902192, -0.406656, -0.143807,
		0.380099, -0.907142, 0.180606,
		44.666561, 35.456272, 33.169411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.030781, 35.903263, 33.529461>,  <44.400494, 36.091274, 33.042988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.030781, 35.903263, 33.529461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.350224, 35.666809, 33.574688>,  <44.541889, 35.524937, 33.601822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.350224, 35.666809, 33.574688>,  <44.030781, 35.903263, 33.529461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.350224, 35.666809, 33.574688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158154, -0.024863, 0.987101,
		-0.580702, -0.806187, -0.113347,
		0.798607, -0.591138, 0.113063,
		44.589806, 35.489468, 33.608608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.796471, 35.467888, 34.060600>,  <44.030781, 35.903263, 33.529461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.796471, 35.467888, 34.060600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.193913, 35.423191, 34.066998>,  <44.432377, 35.396374, 34.070835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.193913, 35.423191, 34.066998>,  <43.796471, 35.467888, 34.060600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.193913, 35.423191, 34.066998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000816, 0.134568, 0.990904,
		-0.112878, -0.984584, 0.133617,
		0.993608, -0.111742, 0.015993,
		44.491997, 35.389668, 34.071796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.932632, 34.900074, 34.373611>,  <43.796471, 35.467888, 34.060600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.932632, 34.900074, 34.373611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.286812, 35.084797, 34.394455>,  <44.499321, 35.195629, 34.406960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.286812, 35.084797, 34.394455>,  <43.932632, 34.900074, 34.373611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.286812, 35.084797, 34.394455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092951, 0.066121, 0.993473,
		0.455343, -0.884515, 0.101472,
		0.885450, 0.461803, 0.052109,
		44.552448, 35.223339, 34.410088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.351913, 34.569103, 34.878559>,  <43.932632, 34.900074, 34.373611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.351913, 34.569103, 34.878559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.498886, 34.939190, 34.840679>,  <44.587070, 35.161243, 34.817951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.498886, 34.939190, 34.840679>,  <44.351913, 34.569103, 34.878559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.498886, 34.939190, 34.840679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085664, 0.135059, 0.987128,
		0.926097, -0.354590, 0.128882,
		0.367432, 0.925216, -0.094702,
		44.609116, 35.216755, 34.812267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.859772, 34.571972, 35.334671>,  <44.351913, 34.569103, 34.878559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.859772, 34.571972, 35.334671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.770405, 34.956890, 35.272617>,  <44.716785, 35.187843, 35.235386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.770405, 34.956890, 35.272617>,  <44.859772, 34.571972, 35.334671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.770405, 34.956890, 35.272617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044071, 0.168972, 0.984635,
		0.973727, 0.213146, -0.080160,
		-0.223415, 0.962298, -0.155139,
		44.703381, 35.245579, 35.226074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.281200, 34.900589, 35.789455>,  <44.859772, 34.571972, 35.334671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.281200, 34.900589, 35.789455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.969681, 35.136230, 35.703266>,  <44.782768, 35.277615, 35.651554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.969681, 35.136230, 35.703266>,  <45.281200, 34.900589, 35.789455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.969681, 35.136230, 35.703266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157974, 0.148230, 0.976254,
		0.607052, 0.794347, -0.022379,
		-0.778801, 0.589102, -0.215469,
		44.736042, 35.312962, 35.638626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.808689, 35.418510, 35.958057>,  <45.281200, 34.900589, 35.789455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.808689, 35.418510, 35.958057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.963840, 35.495113, 35.597420>,  <46.056931, 35.541077, 35.381035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.963840, 35.495113, 35.597420>,  <45.808689, 35.418510, 35.958057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.963840, 35.495113, 35.597420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634741, -0.653767, -0.411939,
		-0.668324, 0.732061, -0.132021,
		0.387875, 0.191509, -0.901597,
		46.080204, 35.552567, 35.326942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.560863, 35.487949, 35.765182>,  <45.808689, 35.418510, 35.958057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.560863, 35.487949, 35.765182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.643051, 35.447746, 35.375786>,  <46.692364, 35.423626, 35.142147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.643051, 35.447746, 35.375786>,  <46.560863, 35.487949, 35.765182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.643051, 35.447746, 35.375786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971450, 0.141489, 0.190435,
		0.118598, -0.984824, 0.126709,
		0.205473, -0.100506, -0.973488,
		46.704693, 35.417595, 35.083740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.021133, 34.964897, 35.845364>,  <46.560863, 35.487949, 35.765182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.021133, 34.964897, 35.845364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.048717, 35.240402, 35.556686>,  <47.065269, 35.405704, 35.383480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.048717, 35.240402, 35.556686>,  <47.021133, 34.964897, 35.845364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.048717, 35.240402, 35.556686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904389, 0.262195, 0.336650,
		0.421099, -0.675909, -0.604833,
		0.068961, 0.688767, -0.721695,
		47.069405, 35.447033, 35.340179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.555096, 34.981339, 35.240364>,  <47.021133, 34.964897, 35.845364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.555096, 34.981339, 35.240364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.823524, 35.005344, 34.944782>,  <47.984581, 35.019749, 34.767433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.823524, 35.005344, 34.944782>,  <47.555096, 34.981339, 35.240364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.823524, 35.005344, 34.944782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035544, 0.998177, 0.048785,
		0.740538, -0.006473, 0.671983,
		0.671074, 0.060012, -0.738958,
		48.024845, 35.023350, 34.723095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.730129, 43.318146, 40.887966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.551222, 43.064632, 41.140404>,  <31.443878, 42.912525, 41.291866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.551222, 43.064632, 41.140404>,  <31.730129, 43.318146, 40.887966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551222, 43.064632, 41.140404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073238, -0.729185, -0.680386,
		0.891397, -0.258094, 0.372557,
		-0.447267, -0.633779, 0.631091,
		31.417042, 42.874500, 41.329731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154678, 42.676418, 41.071392>,  <31.730129, 43.318146, 40.887966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154678, 42.676418, 41.071392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.770918, 42.569435, 41.107220>,  <31.540663, 42.505245, 41.128716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.770918, 42.569435, 41.107220>,  <32.154678, 42.676418, 41.071392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770918, 42.569435, 41.107220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183271, -0.832494, -0.522844,
		0.214404, -0.485200, 0.847710,
		-0.959397, -0.267461, 0.089567,
		31.483099, 42.489197, 41.134090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145069, 41.892750, 41.221142>,  <32.154678, 42.676418, 41.071392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145069, 41.892750, 41.221142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.792612, 42.008770, 41.071766>,  <31.581137, 42.078381, 40.982140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.792612, 42.008770, 41.071766>,  <32.145069, 41.892750, 41.221142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792612, 42.008770, 41.071766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072394, -0.697703, -0.712720,
		-0.467272, -0.655044, 0.593780,
		-0.881145, 0.290048, -0.373438,
		31.528269, 42.095783, 40.959736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789789, 41.237297, 41.141907>,  <32.145069, 41.892750, 41.221142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789789, 41.237297, 41.141907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.588861, 41.509171, 40.928101>,  <31.468306, 41.672295, 40.799816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.588861, 41.509171, 40.928101>,  <31.789789, 41.237297, 41.141907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588861, 41.509171, 40.928101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138195, -0.673324, -0.726317,
		-0.853569, -0.290974, 0.432151,
		-0.502317, 0.679683, -0.534517,
		31.438166, 41.713074, 40.767746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188622, 40.885136, 40.899956>,  <31.789789, 41.237297, 41.141907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188622, 40.885136, 40.899956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.274546, 41.197495, 40.665333>,  <31.326099, 41.384911, 40.524559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.274546, 41.197495, 40.665333>,  <31.188622, 40.885136, 40.899956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274546, 41.197495, 40.665333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018104, -0.597295, -0.801818,
		-0.976488, 0.182856, -0.114167,
		0.214808, 0.780899, -0.586562,
		31.338987, 41.431763, 40.489365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749016, 40.747818, 40.339306>,  <31.188622, 40.885136, 40.899956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749016, 40.747818, 40.339306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.037937, 40.983521, 40.194504>,  <31.211290, 41.124943, 40.107620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.037937, 40.983521, 40.194504>,  <30.749016, 40.747818, 40.339306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037937, 40.983521, 40.194504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098254, -0.605583, -0.789693,
		-0.684562, 0.534829, -0.495311,
		0.722303, 0.589260, -0.362010,
		31.254627, 41.160297, 40.085899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636255, 40.796940, 39.618366>,  <30.749016, 40.747818, 40.339306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.636255, 40.796940, 39.618366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.017822, 40.914593, 39.642136>,  <31.246761, 40.985184, 39.656399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.017822, 40.914593, 39.642136>,  <30.636255, 40.796940, 39.618366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017822, 40.914593, 39.642136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227907, -0.581344, -0.781087,
		-0.195195, 0.758635, -0.621588,
		0.953917, 0.294129, 0.059423,
		31.303997, 41.002831, 39.659962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869179, 41.066463, 38.878918>,  <30.636255, 40.796940, 39.618366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869179, 41.066463, 38.878918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.224125, 40.988930, 39.046257>,  <31.437092, 40.942410, 39.146660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.224125, 40.988930, 39.046257>,  <30.869179, 41.066463, 38.878918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224125, 40.988930, 39.046257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282348, -0.488865, -0.825404,
		0.364504, 0.850553, -0.379073,
		0.887365, -0.193833, 0.418345,
		31.490334, 40.930779, 39.171761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402773, 41.135475, 38.347591>,  <30.869179, 41.066463, 38.878918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402773, 41.135475, 38.347591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.583061, 40.896034, 38.612476>,  <31.691235, 40.752369, 38.771408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.583061, 40.896034, 38.612476>,  <31.402773, 41.135475, 38.347591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583061, 40.896034, 38.612476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476416, -0.466039, -0.745544,
		0.754902, 0.651520, 0.075131,
		0.450723, -0.598606, 0.662208,
		31.718279, 40.716454, 38.811138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099899, 40.954617, 38.106728>,  <31.402773, 41.135475, 38.347591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099899, 40.954617, 38.106728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.063156, 40.658245, 38.372837>,  <32.041111, 40.480423, 38.532501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.063156, 40.658245, 38.372837>,  <32.099899, 40.954617, 38.106728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063156, 40.658245, 38.372837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434841, -0.630873, -0.642582,
		0.895810, 0.230261, 0.380137,
		-0.091857, -0.740931, 0.665270,
		32.035599, 40.435966, 38.572418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799522, 40.553097, 38.133312>,  <32.099899, 40.954617, 38.106728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799522, 40.553097, 38.133312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.482391, 40.341942, 38.255138>,  <32.292114, 40.215248, 38.328236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.482391, 40.341942, 38.255138>,  <32.799522, 40.553097, 38.133312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482391, 40.341942, 38.255138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284460, -0.762491, -0.581112,
		0.538991, -0.374083, 0.754685,
		-0.792825, -0.527892, 0.304564,
		32.244545, 40.183575, 38.346508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085106, 39.964695, 38.091492>,  <32.799522, 40.553097, 38.133312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085106, 39.964695, 38.091492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.696865, 39.869316, 38.104614>,  <32.463921, 39.812088, 38.112488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.696865, 39.869316, 38.104614>,  <33.085106, 39.964695, 38.091492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696865, 39.869316, 38.104614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168722, -0.771223, -0.613799,
		0.171663, -0.590218, 0.788781,
		-0.970600, -0.238451, 0.032808,
		32.405685, 39.797779, 38.114456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090076, 39.311237, 38.152214>,  <33.085106, 39.964695, 38.091492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090076, 39.311237, 38.152214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.720837, 39.389912, 38.020027>,  <32.499294, 39.437115, 37.940716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.720837, 39.389912, 38.020027>,  <33.090076, 39.311237, 38.152214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720837, 39.389912, 38.020027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048429, -0.793023, -0.607264,
		-0.381503, -0.576568, 0.722513,
		-0.923098, 0.196682, -0.330463,
		32.443909, 39.448917, 37.920887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724388, 38.707230, 38.192329>,  <33.090076, 39.311237, 38.152214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724388, 38.707230, 38.192329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.542046, 38.920174, 37.907013>,  <32.432640, 39.047939, 37.735825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.542046, 38.920174, 37.907013>,  <32.724388, 38.707230, 38.192329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542046, 38.920174, 37.907013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147992, -0.744911, -0.650542,
		-0.877663, -0.402116, 0.260788,
		-0.455858, 0.532362, -0.713291,
		32.405289, 39.079884, 37.693027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193501, 38.313690, 37.874821>,  <32.724388, 38.707230, 38.192329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193501, 38.313690, 37.874821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.296936, 38.590714, 37.605453>,  <32.358997, 38.756927, 37.443832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.296936, 38.590714, 37.605453>,  <32.193501, 38.313690, 37.874821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296936, 38.590714, 37.605453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195910, -0.720245, -0.665483,
		-0.945914, 0.040155, -0.321924,
		0.258586, 0.692557, -0.673423,
		32.374512, 38.798481, 37.403427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111504, 37.983719, 37.194244>,  <32.193501, 38.313690, 37.874821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111504, 37.983719, 37.194244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.323986, 38.309231, 37.099937>,  <32.451473, 38.504539, 37.043354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.323986, 38.309231, 37.099937>,  <32.111504, 37.983719, 37.194244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323986, 38.309231, 37.099937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337858, -0.458658, -0.821879,
		-0.776965, 0.356929, -0.518582,
		0.531204, 0.813778, -0.235770,
		32.483349, 38.553364, 37.029205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946772, 38.167908, 36.452007>,  <32.111504, 37.983719, 37.194244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946772, 38.167908, 36.452007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.309074, 38.313248, 36.539265>,  <32.526455, 38.400452, 36.591618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.309074, 38.313248, 36.539265>,  <31.946772, 38.167908, 36.452007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309074, 38.313248, 36.539265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311449, -0.221601, -0.924063,
		-0.287414, 0.904916, -0.313880,
		0.905755, 0.363347, 0.218144,
		32.580799, 38.422253, 36.604710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137363, 38.452965, 35.878822>,  <31.946772, 38.167908, 36.452007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137363, 38.452965, 35.878822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.490723, 38.404663, 36.059940>,  <32.702740, 38.375683, 36.168613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.490723, 38.404663, 36.059940>,  <32.137363, 38.452965, 35.878822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490723, 38.404663, 36.059940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373672, -0.401582, -0.836123,
		0.282805, 0.907827, -0.309632,
		0.883397, -0.120759, 0.452798,
		32.755741, 38.368435, 36.195782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579979, 38.568203, 35.337959>,  <32.137363, 38.452965, 35.878822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579979, 38.568203, 35.337959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.805084, 38.362347, 35.596706>,  <32.940147, 38.238831, 35.751953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.805084, 38.362347, 35.596706>,  <32.579979, 38.568203, 35.337959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805084, 38.362347, 35.596706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397280, -0.517851, -0.757627,
		0.724891, 0.683352, -0.086969,
		0.562763, -0.514645, 0.646868,
		32.973911, 38.207954, 35.790768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203968, 38.537266, 35.016003>,  <32.579979, 38.568203, 35.337959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203968, 38.537266, 35.016003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.192776, 38.241066, 35.284592>,  <33.186062, 38.063347, 35.445744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.192776, 38.241066, 35.284592>,  <33.203968, 38.537266, 35.016003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192776, 38.241066, 35.284592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505940, -0.589829, -0.629386,
		0.862114, 0.322112, 0.391156,
		-0.027982, -0.740504, 0.671469,
		33.184380, 38.018913, 35.486031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861370, 38.308590, 35.071331>,  <33.203968, 38.537266, 35.016003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861370, 38.308590, 35.071331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.647381, 37.999893, 35.208866>,  <33.518990, 37.814674, 35.291389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.647381, 37.999893, 35.208866>,  <33.861370, 38.308590, 35.071331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647381, 37.999893, 35.208866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449894, -0.604689, -0.657226,
		0.715124, -0.196903, 0.670691,
		-0.534969, -0.771738, 0.343842,
		33.486889, 37.768372, 35.312019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434448, 37.849907, 35.263577>,  <33.861370, 38.308590, 35.071331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434448, 37.849907, 35.263577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.099442, 37.631397, 35.258648>,  <33.898438, 37.500290, 35.255692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.099442, 37.631397, 35.258648>,  <34.434448, 37.849907, 35.263577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099442, 37.631397, 35.258648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475308, -0.717211, -0.509599,
		0.269542, -0.432655, 0.860324,
		-0.837514, -0.546277, -0.012326,
		33.848186, 37.467514, 35.254951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430126, 38.655941, 35.349957>,  <34.434448, 37.849907, 35.263577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430126, 38.655941, 35.349957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.710915, 38.865955, 35.157467>,  <34.879387, 38.991962, 35.041973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.710915, 38.865955, 35.157467>,  <34.430126, 38.655941, 35.349957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710915, 38.865955, 35.157467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084071, 0.732040, 0.676055,
		0.707219, -0.434120, 0.558016,
		0.701979, 0.525032, -0.481215,
		34.921505, 39.023464, 35.013100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036690, 38.708035, 35.868866>,  <34.430126, 38.655941, 35.349957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036690, 38.708035, 35.868866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.077667, 39.001858, 35.600559>,  <35.102253, 39.178150, 35.439575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.077667, 39.001858, 35.600559>,  <35.036690, 38.708035, 35.868866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077667, 39.001858, 35.600559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231815, 0.673381, 0.702011,
		0.967351, 0.083579, 0.239263,
		0.102442, 0.734555, -0.670771,
		35.108398, 39.222225, 35.399326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549198, 39.159454, 36.097099>,  <35.036690, 38.708035, 35.868866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549198, 39.159454, 36.097099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.313473, 39.364971, 35.847706>,  <35.172039, 39.488281, 35.698071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.313473, 39.364971, 35.847706>,  <35.549198, 39.159454, 36.097099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313473, 39.364971, 35.847706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011431, 0.766346, 0.642326,
		0.807826, 0.385656, -0.445743,
		-0.589311, 0.513792, -0.623483,
		35.136681, 39.519108, 35.660660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823242, 39.910919, 36.095646>,  <35.549198, 39.159454, 36.097099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823242, 39.910919, 36.095646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.441948, 39.934704, 35.977119>,  <35.213169, 39.948975, 35.906006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.441948, 39.934704, 35.977119>,  <35.823242, 39.910919, 36.095646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441948, 39.934704, 35.977119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132754, 0.798424, 0.587278,
		0.271502, 0.599153, -0.753195,
		-0.953238, 0.059458, -0.296313,
		35.155975, 39.952541, 35.888226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780750, 40.614594, 36.114395>,  <35.823242, 39.910919, 36.095646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780750, 40.614594, 36.114395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.397968, 40.509228, 36.065647>,  <35.168301, 40.446007, 36.036400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.397968, 40.509228, 36.065647>,  <35.780750, 40.614594, 36.114395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397968, 40.509228, 36.065647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290200, 0.861204, 0.417267,
		-0.004961, 0.434672, -0.900575,
		-0.956953, -0.263417, -0.121869,
		35.110882, 40.430202, 36.029087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480679, 41.151287, 35.813351>,  <35.780750, 40.614594, 36.114395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480679, 41.151287, 35.813351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.172672, 40.961636, 35.984127>,  <34.987869, 40.847843, 36.086594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.172672, 40.961636, 35.984127>,  <35.480679, 41.151287, 35.813351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172672, 40.961636, 35.984127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281460, 0.852954, 0.439601,
		-0.572589, 0.218333, -0.790236,
		-0.770015, -0.474131, 0.426940,
		34.941669, 40.819397, 36.112209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924610, 41.629902, 35.739799>,  <35.480679, 41.151287, 35.813351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924610, 41.629902, 35.739799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.834465, 41.399815, 36.054337>,  <34.780376, 41.261765, 36.243061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.834465, 41.399815, 36.054337>,  <34.924610, 41.629902, 35.739799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834465, 41.399815, 36.054337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251578, 0.814094, 0.523411,
		-0.941233, -0.079870, -0.328178,
		-0.225363, -0.575214, 0.786346,
		34.766857, 41.227249, 36.290241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480461, 42.081459, 36.050381>,  <34.924610, 41.629902, 35.739799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480461, 42.081459, 36.050381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.558216, 41.809109, 36.332832>,  <34.604870, 41.645699, 36.502304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.558216, 41.809109, 36.332832>,  <34.480461, 42.081459, 36.050381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558216, 41.809109, 36.332832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110451, 0.700089, 0.705461,
		-0.974688, -0.215122, 0.060882,
		0.194383, -0.680880, 0.706129,
		34.616531, 41.604843, 36.544670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085407, 42.226749, 36.611534>,  <34.480461, 42.081459, 36.050381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085407, 42.226749, 36.611534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.343246, 41.994926, 36.810978>,  <34.497952, 41.855835, 36.930645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.343246, 41.994926, 36.810978>,  <34.085407, 42.226749, 36.611534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343246, 41.994926, 36.810978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104052, 0.579609, 0.808225,
		-0.757407, -0.572862, 0.313312,
		0.644599, -0.579554, 0.498607,
		34.536625, 41.821060, 36.960560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728268, 41.960869, 37.219852>,  <34.085407, 42.226749, 36.611534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728268, 41.960869, 37.219852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.116814, 41.915619, 37.303421>,  <34.349941, 41.888470, 37.353561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.116814, 41.915619, 37.303421>,  <33.728268, 41.960869, 37.219852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116814, 41.915619, 37.303421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167005, 0.300316, 0.939106,
		-0.168976, -0.947108, 0.272826,
		0.971368, -0.113123, 0.208918,
		34.408226, 41.881683, 37.366096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793259, 41.650177, 37.925476>,  <33.728268, 41.960869, 37.219852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793259, 41.650177, 37.925476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.135895, 41.831696, 37.827232>,  <34.341476, 41.940605, 37.768288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.135895, 41.831696, 37.827232>,  <33.793259, 41.650177, 37.925476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135895, 41.831696, 37.827232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016924, 0.451020, 0.892354,
		0.515726, -0.768534, 0.378657,
		0.856586, 0.453802, -0.245610,
		34.392872, 41.967834, 37.753551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157703, 41.621113, 38.587891>,  <33.793259, 41.650177, 37.925476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157703, 41.621113, 38.587891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.347984, 41.908421, 38.384796>,  <34.462151, 42.080807, 38.262939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.347984, 41.908421, 38.384796>,  <34.157703, 41.621113, 38.587891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347984, 41.908421, 38.384796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189505, 0.479989, 0.856562,
		0.858952, -0.503684, 0.092214,
		0.475698, 0.718271, -0.507739,
		34.490692, 42.123901, 38.232475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665878, 41.972881, 39.103970>,  <34.157703, 41.621113, 38.587891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665878, 41.972881, 39.103970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.660202, 42.257187, 38.822655>,  <34.656796, 42.427769, 38.653866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.660202, 42.257187, 38.822655>,  <34.665878, 41.972881, 39.103970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660202, 42.257187, 38.822655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006508, 0.703279, 0.710884,
		0.999878, 0.014668, -0.005358,
		-0.014195, 0.710762, -0.703289,
		34.655945, 42.470417, 38.611668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176388, 42.418571, 39.356247>,  <34.665878, 41.972881, 39.103970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176388, 42.418571, 39.356247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.931580, 42.625687, 39.117142>,  <34.784695, 42.749954, 38.973679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.931580, 42.625687, 39.117142>,  <35.176388, 42.418571, 39.356247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931580, 42.625687, 39.117142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186845, 0.829137, 0.526898,
		0.768449, 0.210785, -0.604199,
		-0.612025, 0.517786, -0.597765,
		34.747971, 42.781021, 38.937813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582645, 43.016407, 39.116978>,  <35.176388, 42.418571, 39.356247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582645, 43.016407, 39.116978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.190372, 43.091351, 39.094513>,  <34.955009, 43.136314, 39.081036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.190372, 43.091351, 39.094513>,  <35.582645, 43.016407, 39.116978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190372, 43.091351, 39.094513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133092, 0.849615, 0.510334,
		0.143329, 0.493002, -0.858141,
		-0.980685, 0.187357, -0.056160,
		34.896168, 43.147556, 39.077663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529305, 43.689255, 39.438271>,  <35.582645, 43.016407, 39.116978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529305, 43.689255, 39.438271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.145065, 43.584938, 39.399845>,  <34.914520, 43.522346, 39.376789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.145065, 43.584938, 39.399845>,  <35.529305, 43.689255, 39.438271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145065, 43.584938, 39.399845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248763, 0.652689, 0.715621,
		-0.123933, 0.711324, -0.691851,
		-0.960603, -0.260796, -0.096062,
		34.856884, 43.506699, 39.371025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205826, 44.309647, 39.336159>,  <35.529305, 43.689255, 39.438271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205826, 44.309647, 39.336159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.936508, 44.042683, 39.463436>,  <34.774918, 43.882504, 39.539803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.936508, 44.042683, 39.463436>,  <35.205826, 44.309647, 39.336159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936508, 44.042683, 39.463436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343271, 0.663323, 0.664958,
		-0.654859, 0.338487, -0.675712,
		-0.673295, -0.667405, 0.318190,
		34.734520, 43.842461, 39.558891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459362, 44.642296, 39.368633>,  <35.205826, 44.309647, 39.336159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459362, 44.642296, 39.368633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.453423, 44.332539, 39.621647>,  <34.449860, 44.146683, 39.773453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.453423, 44.332539, 39.621647>,  <34.459362, 44.642296, 39.368633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453423, 44.332539, 39.621647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350791, 0.596426, 0.721957,
		-0.936336, -0.211166, -0.280507,
		-0.014849, -0.774393, 0.632530,
		34.448967, 44.100220, 39.811405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.823540, 44.709114, 39.780754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.033363, 44.443771, 39.994217>,  <34.159256, 44.284565, 40.122295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.033363, 44.443771, 39.994217>,  <33.823540, 44.709114, 39.780754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033363, 44.443771, 39.994217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492378, 0.274984, 0.825801,
		-0.694551, -0.695943, -0.182379,
		0.524560, -0.663360, 0.533658,
		34.190731, 44.244762, 40.154316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375607, 44.352448, 40.192413>,  <33.823540, 44.709114, 39.780754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375607, 44.352448, 40.192413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.728149, 44.285461, 40.369125>,  <33.939674, 44.245270, 40.475151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.728149, 44.285461, 40.369125>,  <33.375607, 44.352448, 40.192413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728149, 44.285461, 40.369125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438954, 0.055584, 0.896789,
		-0.174735, -0.984310, -0.024520,
		0.881355, -0.167464, 0.441779,
		33.992558, 44.235222, 40.501659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229950, 43.883255, 40.673149>,  <33.375607, 44.352448, 40.192413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229950, 43.883255, 40.673149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.583748, 44.035683, 40.780819>,  <33.796028, 44.127140, 40.845421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.583748, 44.035683, 40.780819>,  <33.229950, 43.883255, 40.673149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583748, 44.035683, 40.780819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273124, -0.044831, 0.960934,
		0.378249, -0.923459, 0.064427,
		0.884495, 0.381069, 0.269176,
		33.849098, 44.150002, 40.861572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446152, 43.555103, 41.288284>,  <33.229950, 43.883255, 40.673149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446152, 43.555103, 41.288284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.629444, 43.910423, 41.276009>,  <33.739422, 44.123615, 41.268642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.629444, 43.910423, 41.276009>,  <33.446152, 43.555103, 41.288284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629444, 43.910423, 41.276009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072299, 0.071666, 0.994805,
		0.885886, -0.453634, 0.097063,
		0.458234, 0.888302, -0.030690,
		33.766914, 44.176914, 41.266800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927063, 43.579498, 41.960075>,  <33.446152, 43.555103, 41.288284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927063, 43.579498, 41.960075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.870426, 43.949574, 41.819229>,  <33.836445, 44.171619, 41.734722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.870426, 43.949574, 41.819229>,  <33.927063, 43.579498, 41.960075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870426, 43.949574, 41.819229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085553, 0.342929, 0.935457,
		0.986221, 0.162576, 0.030596,
		-0.141591, 0.925186, -0.352113,
		33.827950, 44.227131, 41.713596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266682, 43.988598, 42.447670>,  <33.927063, 43.579498, 41.960075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266682, 43.988598, 42.447670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.991642, 44.222893, 42.276031>,  <33.826618, 44.363468, 42.173050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.991642, 44.222893, 42.276031>,  <34.266682, 43.988598, 42.447670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991642, 44.222893, 42.276031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176625, 0.438285, 0.881311,
		0.704281, 0.681778, -0.197909,
		-0.687599, 0.585735, -0.429095,
		33.785362, 44.398613, 42.147305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532085, 44.654476, 42.656414>,  <34.266682, 43.988598, 42.447670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532085, 44.654476, 42.656414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.147129, 44.676491, 42.549995>,  <33.916157, 44.689701, 42.486145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.147129, 44.676491, 42.549995>,  <34.532085, 44.654476, 42.656414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147129, 44.676491, 42.549995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210292, 0.469105, 0.857740,
		0.172014, 0.881425, -0.439886,
		-0.962387, 0.055038, -0.266050,
		33.858414, 44.693001, 42.470181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399773, 45.289238, 42.868557>,  <34.532085, 44.654476, 42.656414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399773, 45.289238, 42.868557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.030407, 45.143059, 42.821651>,  <33.808788, 45.055351, 42.793507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.030407, 45.143059, 42.821651>,  <34.399773, 45.289238, 42.868557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030407, 45.143059, 42.821651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303640, 0.508739, 0.805598,
		-0.234744, 0.779509, -0.580742,
		-0.923416, -0.365445, -0.117267,
		33.753384, 45.033424, 42.786472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857632, 45.833176, 42.794033>,  <34.399773, 45.289238, 42.868557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857632, 45.833176, 42.794033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.642784, 45.516941, 42.911659>,  <33.513874, 45.327202, 42.982235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.642784, 45.516941, 42.911659>,  <33.857632, 45.833176, 42.794033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642784, 45.516941, 42.911659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272168, 0.492412, 0.826713,
		-0.798390, 0.364008, -0.479657,
		-0.537119, -0.790587, 0.294066,
		33.481647, 45.279766, 42.999878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146214, 46.106915, 43.105095>,  <33.857632, 45.833176, 42.794033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146214, 46.106915, 43.105095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.203743, 45.730312, 43.227001>,  <33.238258, 45.504353, 43.300144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.203743, 45.730312, 43.227001>,  <33.146214, 46.106915, 43.105095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203743, 45.730312, 43.227001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332909, 0.243989, 0.910846,
		-0.931927, -0.232457, -0.278345,
		0.143819, -0.941506, 0.304767,
		33.246887, 45.447861, 43.318432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530598, 45.903450, 43.381718>,  <33.146214, 46.106915, 43.105095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530598, 45.903450, 43.381718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.794701, 45.676224, 43.578232>,  <32.953163, 45.539890, 43.696140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.794701, 45.676224, 43.578232>,  <32.530598, 45.903450, 43.381718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794701, 45.676224, 43.578232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345560, 0.351010, 0.870276,
		-0.666817, -0.744378, 0.035459,
		0.660260, -0.568061, 0.491287,
		32.992779, 45.505806, 43.725616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182335, 45.700729, 44.095551>,  <32.530598, 45.903450, 43.381718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182335, 45.700729, 44.095551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.568638, 45.610008, 44.145950>,  <32.800419, 45.555576, 44.176189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.568638, 45.610008, 44.145950>,  <32.182335, 45.700729, 44.095551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568638, 45.610008, 44.145950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106570, 0.096015, 0.989658,
		-0.236559, -0.969195, 0.068557,
		0.965755, -0.226807, 0.126000,
		32.858364, 45.541965, 44.183750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126667, 45.313225, 44.652256>,  <32.182335, 45.700729, 44.095551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126667, 45.313225, 44.652256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.515320, 45.402050, 44.619717>,  <32.748512, 45.455345, 44.600193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.515320, 45.402050, 44.619717>,  <32.126667, 45.313225, 44.652256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515320, 45.402050, 44.619717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011191, 0.300416, 0.953743,
		0.236226, -0.927599, 0.289409,
		0.971634, 0.222060, -0.081346,
		32.806808, 45.468670, 44.595314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471115, 44.999260, 45.333660>,  <32.126667, 45.313225, 44.652256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471115, 44.999260, 45.333660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.703209, 45.291779, 45.190250>,  <32.842464, 45.467289, 45.104206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.703209, 45.291779, 45.190250>,  <32.471115, 44.999260, 45.333660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703209, 45.291779, 45.190250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019910, 0.452804, 0.891388,
		0.814209, -0.510073, 0.277291,
		0.580231, 0.731296, -0.358521,
		32.877277, 45.511166, 45.082695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979771, 45.086990, 45.875786>,  <32.471115, 44.999260, 45.333660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979771, 45.086990, 45.875786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.999588, 45.421001, 45.656601>,  <33.011478, 45.621410, 45.525089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.999588, 45.421001, 45.656601>,  <32.979771, 45.086990, 45.875786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999588, 45.421001, 45.656601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032149, 0.549689, 0.834751,
		0.998254, -0.023741, 0.054080,
		0.049544, 0.835032, -0.547966,
		33.014450, 45.671513, 45.492210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576195, 45.510330, 46.203415>,  <32.979771, 45.086990, 45.875786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576195, 45.510330, 46.203415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.332813, 45.747852, 45.992825>,  <33.186783, 45.890366, 45.866470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.332813, 45.747852, 45.992825>,  <33.576195, 45.510330, 46.203415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332813, 45.747852, 45.992825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082649, 0.612394, 0.786221,
		0.789272, 0.521894, -0.323537,
		-0.608456, 0.593802, -0.526479,
		33.150276, 45.925991, 45.834881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519669, 46.176235, 46.564861>,  <33.576195, 45.510330, 46.203415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519669, 46.176235, 46.564861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.201176, 46.224319, 46.327690>,  <33.010078, 46.253170, 46.185387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.201176, 46.224319, 46.327690>,  <33.519669, 46.176235, 46.564861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201176, 46.224319, 46.327690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377452, 0.667217, 0.642146,
		0.472806, 0.735099, -0.485884,
		-0.796231, 0.120213, -0.592929,
		32.962307, 46.260384, 46.149811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352978, 46.817352, 46.687031>,  <33.519669, 46.176235, 46.564861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352978, 46.817352, 46.687031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.021832, 46.693810, 46.499737>,  <32.823143, 46.619682, 46.387360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.021832, 46.693810, 46.499737>,  <33.352978, 46.817352, 46.687031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021832, 46.693810, 46.499737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557962, 0.539153, 0.630866,
		0.057604, 0.783531, -0.618676,
		-0.827865, -0.308858, -0.468238,
		32.773472, 46.601151, 46.359264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918594, 47.355152, 46.716976>,  <33.352978, 46.817352, 46.687031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918594, 47.355152, 46.716976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.675198, 47.047363, 46.639366>,  <32.529160, 46.862690, 46.592800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.675198, 47.047363, 46.639366>,  <32.918594, 47.355152, 46.716976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675198, 47.047363, 46.639366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597154, 0.282972, 0.750555,
		-0.522626, 0.572574, -0.631681,
		-0.608497, -0.769471, -0.194027,
		32.492649, 46.816521, 46.581158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235809, 47.616142, 46.598705>,  <32.918594, 47.355152, 46.716976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235809, 47.616142, 46.598705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.186329, 47.232723, 46.701382>,  <32.156643, 47.002674, 46.762985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.186329, 47.232723, 46.701382>,  <32.235809, 47.616142, 46.598705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186329, 47.232723, 46.701382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656879, 0.272982, 0.702845,
		-0.743780, -0.081672, -0.663416,
		-0.123698, -0.958546, 0.256687,
		32.149220, 46.945160, 46.778389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641182, 47.759552, 46.821491>,  <32.235809, 47.616142, 46.598705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641182, 47.759552, 46.821491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.742102, 47.402466, 46.970837>,  <31.802652, 47.188213, 47.060444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.742102, 47.402466, 46.970837>,  <31.641182, 47.759552, 46.821491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742102, 47.402466, 46.970837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569847, 0.174769, 0.802951,
		-0.782062, -0.415340, -0.464620,
		0.252297, -0.892720, 0.373360,
		31.817791, 47.134651, 47.082844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101112, 47.373116, 46.875793>,  <31.641182, 47.759552, 46.821491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101112, 47.373116, 46.875793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.362907, 47.247570, 47.150932>,  <31.519985, 47.172241, 47.316017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.362907, 47.247570, 47.150932>,  <31.101112, 47.373116, 46.875793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362907, 47.247570, 47.150932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683336, 0.143786, 0.715806,
		-0.323572, -0.938516, -0.120371,
		0.654488, -0.313868, 0.687847,
		31.559254, 47.153408, 47.357285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.862818, 47.498138, 47.491783>,  <31.101112, 47.373116, 46.875793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.862818, 47.498138, 47.491783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.153015, 47.288658, 47.670399>,  <31.327133, 47.162971, 47.777569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.153015, 47.288658, 47.670399>,  <30.862818, 47.498138, 47.491783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153015, 47.288658, 47.670399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466896, 0.102169, 0.878391,
		-0.505636, -0.845754, -0.170391,
		0.725494, -0.523700, 0.446539,
		31.370663, 47.131550, 47.804359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590525, 46.891819, 47.867268>,  <30.862818, 47.498138, 47.491783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590525, 46.891819, 47.867268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.913485, 47.046227, 48.045746>,  <31.107262, 47.138870, 48.152832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.913485, 47.046227, 48.045746>,  <30.590525, 46.891819, 47.867268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.913485, 47.046227, 48.045746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521763, 0.114103, 0.845425,
		0.275442, -0.915405, 0.293540,
		0.807400, 0.386024, 0.446196,
		31.155704, 47.162033, 48.179604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468197, 46.547462, 48.479794>,  <30.590525, 46.891819, 47.867268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468197, 46.547462, 48.479794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.119776, 46.352764, 48.453434>,  <29.910723, 46.235943, 48.437618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.119776, 46.352764, 48.453434>,  <30.468197, 46.547462, 48.479794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.119776, 46.352764, 48.453434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422012, -0.672965, -0.607473,
		0.251342, -0.556950, 0.791602,
		-0.871053, -0.486749, -0.065895,
		29.858459, 46.206738, 48.433666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651342, 45.767872, 48.417641>,  <30.468197, 46.547462, 48.479794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651342, 45.767872, 48.417641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.279890, 45.805817, 48.274174>,  <30.057018, 45.828583, 48.188095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.279890, 45.805817, 48.274174>,  <30.651342, 45.767872, 48.417641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.279890, 45.805817, 48.274174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254580, -0.540304, -0.802036,
		-0.269871, -0.836106, 0.477594,
		-0.928633, 0.094861, -0.358668,
		30.001301, 45.834274, 48.166573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556496, 45.109444, 48.200386>,  <30.651342, 45.767872, 48.417641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556496, 45.109444, 48.200386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.253719, 45.299465, 48.020889>,  <30.072054, 45.413479, 47.913193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.253719, 45.299465, 48.020889>,  <30.556496, 45.109444, 48.200386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253719, 45.299465, 48.020889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017776, -0.671465, -0.740823,
		-0.653236, -0.568739, 0.499818,
		-0.756945, 0.475048, -0.448735,
		30.026638, 45.441982, 47.886269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976574, 44.605652, 47.988304>,  <30.556496, 45.109444, 48.200386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976574, 44.605652, 47.988304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.933249, 44.920460, 47.745365>,  <29.907253, 45.109344, 47.599602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.933249, 44.920460, 47.745365>,  <29.976574, 44.605652, 47.988304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.933249, 44.920460, 47.745365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121745, -0.595838, -0.793823,
		-0.986634, -0.159923, -0.031278,
		-0.108314, 0.787021, -0.607344,
		29.900755, 45.156567, 47.563164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494503, 44.429607, 47.332310>,  <29.976574, 44.605652, 47.988304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494503, 44.429607, 47.332310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.673134, 44.762684, 47.201351>,  <29.780312, 44.962532, 47.122776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.673134, 44.762684, 47.201351>,  <29.494503, 44.429607, 47.332310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673134, 44.762684, 47.201351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089851, -0.405793, -0.909538,
		-0.890222, 0.376763, -0.256036,
		0.446578, 0.832695, -0.327394,
		29.807108, 45.012493, 47.103134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201031, 44.560902, 46.641663>,  <29.494503, 44.429607, 47.332310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.201031, 44.560902, 46.641663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.562979, 44.728470, 46.671898>,  <29.780148, 44.829010, 46.690041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.562979, 44.728470, 46.671898>,  <29.201031, 44.560902, 46.641663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.562979, 44.728470, 46.671898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264164, -0.413363, -0.871406,
		-0.333808, 0.808476, -0.484704,
		0.904870, 0.418924, 0.075587,
		29.834440, 44.854149, 46.694572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.348928, 44.427628, 46.006294>,  <29.201031, 44.560902, 46.641663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.348928, 44.427628, 46.006294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.691717, 44.556824, 46.166931>,  <29.897390, 44.634342, 46.263313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.691717, 44.556824, 46.166931>,  <29.348928, 44.427628, 46.006294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.691717, 44.556824, 46.166931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508864, -0.406965, -0.758575,
		-0.081580, 0.854433, -0.513117,
		0.856972, 0.322991, 0.401590,
		29.948809, 44.653721, 46.287407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643234, 44.831085, 45.570988>,  <29.348928, 44.427628, 46.006294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643234, 44.831085, 45.570988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.967262, 44.720154, 45.777626>,  <30.161680, 44.653595, 45.901608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.967262, 44.720154, 45.777626>,  <29.643234, 44.831085, 45.570988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.967262, 44.720154, 45.777626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450859, -0.268643, -0.851210,
		0.374846, 0.922452, -0.092583,
		0.810072, -0.277331, 0.516595,
		30.210283, 44.636955, 45.932606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212374, 44.999157, 45.188259>,  <29.643234, 44.831085, 45.570988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212374, 44.999157, 45.188259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.363022, 44.726589, 45.439281>,  <30.453411, 44.563049, 45.589893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.363022, 44.726589, 45.439281>,  <30.212374, 44.999157, 45.188259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363022, 44.726589, 45.439281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396935, -0.493390, -0.773957,
		0.837019, 0.540585, 0.084659,
		0.376620, -0.681420, 0.627554,
		30.476007, 44.522163, 45.627548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962221, 45.048920, 45.096634>,  <30.212374, 44.999157, 45.188259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962221, 45.048920, 45.096634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.845228, 44.697464, 45.247601>,  <30.775032, 44.486591, 45.338181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.845228, 44.697464, 45.247601>,  <30.962221, 45.048920, 45.096634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845228, 44.697464, 45.247601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644645, -0.472682, -0.600836,
		0.706318, 0.067567, 0.704662,
		-0.292484, -0.878639, 0.377421,
		30.757483, 44.433872, 45.360828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614761, 44.630798, 45.153381>,  <30.962221, 45.048920, 45.096634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614761, 44.630798, 45.153381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.308573, 44.373486, 45.159649>,  <31.124861, 44.219097, 45.163410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.308573, 44.373486, 45.159649>,  <31.614761, 44.630798, 45.153381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308573, 44.373486, 45.159649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420434, -0.518436, -0.744621,
		0.487126, -0.563395, 0.667304,
		-0.765470, -0.643281, 0.015673,
		31.078932, 44.180500, 45.164352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913383, 43.984348, 45.089447>,  <31.614761, 44.630798, 45.153381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913383, 43.984348, 45.089447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.533882, 43.927044, 44.976772>,  <31.306181, 43.892662, 44.909168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.533882, 43.927044, 44.976772>,  <31.913383, 43.984348, 45.089447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533882, 43.927044, 44.976772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313539, -0.538247, -0.782294,
		-0.039549, -0.830522, 0.555579,
		-0.948751, -0.143257, -0.281688,
		31.249256, 43.884068, 44.892265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960974, 43.446815, 44.685677>,  <31.913383, 43.984348, 45.089447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960974, 43.446815, 44.685677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.591255, 43.576427, 44.605000>,  <31.369423, 43.654194, 44.556595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.591255, 43.576427, 44.605000>,  <31.960974, 43.446815, 44.685677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591255, 43.576427, 44.605000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086872, -0.335965, -0.937860,
		-0.371660, -0.884381, 0.282382,
		-0.924295, 0.324034, -0.201692,
		31.313965, 43.673637, 44.544491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647812, 42.839958, 44.398945>,  <31.960974, 43.446815, 44.685677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647812, 42.839958, 44.398945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.476007, 43.181072, 44.280106>,  <31.372925, 43.385742, 44.208801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.476007, 43.181072, 44.280106>,  <31.647812, 42.839958, 44.398945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476007, 43.181072, 44.280106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110437, -0.276923, -0.954525,
		-0.896283, -0.442790, 0.024762,
		-0.429511, 0.852790, -0.297102,
		31.347155, 43.436909, 44.190975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243484, 42.678101, 43.845390>,  <31.647812, 42.839958, 44.398945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243484, 42.678101, 43.845390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.238884, 43.074635, 43.793060>,  <31.236124, 43.312557, 43.761662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.238884, 43.074635, 43.793060>,  <31.243484, 42.678101, 43.845390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238884, 43.074635, 43.793060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060145, -0.131282, -0.989519,
		-0.998123, -0.003515, 0.061134,
		-0.011504, 0.991339, -0.130824,
		31.235434, 43.372036, 43.753815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582979, 42.969456, 43.570820>,  <31.243484, 42.678101, 43.845390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582979, 42.969456, 43.570820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.886168, 43.209965, 43.469666>,  <31.068081, 43.354271, 43.408974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.886168, 43.209965, 43.469666>,  <30.582979, 42.969456, 43.570820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.886168, 43.209965, 43.469666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232468, -0.113228, -0.965991,
		-0.609457, 0.790981, 0.053953,
		0.757971, 0.601273, -0.252885,
		31.113560, 43.390347, 43.393799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390585, 43.478493, 43.070049>,  <30.582979, 42.969456, 43.570820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390585, 43.478493, 43.070049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.787350, 43.489296, 43.020439>,  <31.025408, 43.495777, 42.990673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.787350, 43.489296, 43.020439>,  <30.390585, 43.478493, 43.070049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787350, 43.489296, 43.020439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119434, -0.132294, -0.983989,
		-0.042985, 0.990842, -0.127998,
		0.991911, 0.027009, -0.124027,
		31.084923, 43.497398, 42.983231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317570, 43.507759, 42.450432>,  <30.390585, 43.478493, 43.070049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317570, 43.507759, 42.450432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.715307, 43.478191, 42.480942>,  <30.953949, 43.460449, 42.499249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.715307, 43.478191, 42.480942>,  <30.317570, 43.507759, 42.450432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715307, 43.478191, 42.480942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037422, -0.428263, -0.902879,
		0.099409, 0.900625, -0.423074,
		0.994343, -0.073922, 0.076276,
		31.013611, 43.456017, 42.503826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716228, 43.880924, 41.893936>,  <30.317570, 43.507759, 42.450432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716228, 43.880924, 41.893936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.927938, 43.564747, 42.017265>,  <31.054964, 43.375038, 42.091263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.927938, 43.564747, 42.017265>,  <30.716228, 43.880924, 41.893936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.927938, 43.564747, 42.017265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041715, -0.387201, -0.921051,
		0.847424, 0.474628, -0.237909,
		0.529276, -0.790445, 0.308324,
		31.086721, 43.327614, 42.109764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377359, 43.879234, 41.507111>,  <30.716228, 43.880924, 41.893936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377359, 43.879234, 41.507111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.326654, 43.512878, 41.659466>,  <31.296230, 43.293064, 41.750877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.326654, 43.512878, 41.659466>,  <31.377359, 43.879234, 41.507111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326654, 43.512878, 41.659466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076077, -0.391831, -0.916886,
		0.989011, -0.087252, 0.119348,
		-0.126764, -0.915891, 0.380888,
		31.288626, 43.238110, 41.773731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.503441, 34.507683, 27.921904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.182743, 34.675056, 27.751200>,  <41.990326, 34.775478, 27.648777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.182743, 34.675056, 27.751200>,  <42.503441, 34.507683, 27.921904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.182743, 34.675056, 27.751200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222066, 0.454370, 0.862690,
		0.554884, 0.786424, -0.271368,
		-0.801742, 0.418431, -0.426761,
		41.942219, 34.800587, 27.623171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554619, 35.255539, 27.899574>,  <42.503441, 34.507683, 27.921904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554619, 35.255539, 27.899574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.168179, 35.153282, 27.913973>,  <41.936314, 35.091927, 27.922611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.168179, 35.153282, 27.913973>,  <42.554619, 35.255539, 27.899574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.168179, 35.153282, 27.913973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088008, 0.457191, 0.885003,
		-0.242704, 0.851834, -0.464191,
		-0.966100, -0.255646, 0.035994,
		41.878349, 35.076588, 27.924770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113739, 35.902195, 27.932686>,  <42.554619, 35.255539, 27.899574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.113739, 35.902195, 27.932686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.910931, 35.582729, 28.062346>,  <41.789246, 35.391052, 28.140141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.910931, 35.582729, 28.062346>,  <42.113739, 35.902195, 27.932686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910931, 35.582729, 28.062346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207802, 0.478241, 0.853290,
		-0.836509, 0.365278, -0.408442,
		-0.507022, -0.798660, 0.324147,
		41.758823, 35.343132, 28.159590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490639, 36.242851, 28.277897>,  <42.113739, 35.902195, 27.932686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490639, 36.242851, 28.277897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.523254, 35.864582, 28.403786>,  <41.542824, 35.637619, 28.479319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.523254, 35.864582, 28.403786>,  <41.490639, 36.242851, 28.277897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523254, 35.864582, 28.403786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254611, 0.285532, 0.923929,
		-0.963600, -0.155466, -0.217497,
		0.081538, -0.945675, 0.314722,
		41.547714, 35.580879, 28.498201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983727, 36.207134, 28.802879>,  <41.490639, 36.242851, 28.277897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983727, 36.207134, 28.802879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.177116, 35.871960, 28.904160>,  <41.293152, 35.670856, 28.964928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.177116, 35.871960, 28.904160>,  <40.983727, 36.207134, 28.802879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177116, 35.871960, 28.904160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147475, 0.207149, 0.967130,
		-0.862845, -0.504925, -0.023423,
		0.483476, -0.837938, 0.253202,
		41.322159, 35.620579, 28.980120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637836, 35.766720, 29.316477>,  <40.983727, 36.207134, 28.802879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637836, 35.766720, 29.316477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.020306, 35.655483, 29.353128>,  <41.249786, 35.588741, 29.375120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.020306, 35.655483, 29.353128>,  <40.637836, 35.766720, 29.316477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.020306, 35.655483, 29.353128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022610, 0.241882, 0.970042,
		-0.291922, -0.929602, 0.224994,
		0.956175, -0.278090, 0.091629,
		41.307159, 35.572056, 29.380617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633354, 35.432976, 30.002281>,  <40.637836, 35.766720, 29.316477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633354, 35.432976, 30.002281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.027977, 35.469364, 29.947973>,  <41.264751, 35.491199, 29.915388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.027977, 35.469364, 29.947973>,  <40.633354, 35.432976, 30.002281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.027977, 35.469364, 29.947973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088190, 0.403081, 0.910905,
		0.137597, -0.910631, 0.389639,
		0.986554, 0.090976, -0.135772,
		41.323944, 35.496658, 29.907242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924236, 35.163750, 30.535856>,  <40.633354, 35.432976, 30.002281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924236, 35.163750, 30.535856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.219311, 35.389832, 30.388149>,  <41.396355, 35.525478, 30.299524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.219311, 35.389832, 30.388149>,  <40.924236, 35.163750, 30.535856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219311, 35.389832, 30.388149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138151, 0.409010, 0.902012,
		0.660854, -0.716420, 0.223639,
		0.737690, 0.565202, -0.369270,
		41.440617, 35.559391, 30.277369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463428, 35.027321, 30.923281>,  <40.924236, 35.163750, 30.535856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463428, 35.027321, 30.923281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.557278, 35.384552, 30.769733>,  <41.613586, 35.598892, 30.677605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.557278, 35.384552, 30.769733>,  <41.463428, 35.027321, 30.923281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557278, 35.384552, 30.769733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214365, 0.337637, 0.916542,
		0.948155, -0.297334, -0.112227,
		0.234627, 0.893081, -0.383870,
		41.627666, 35.652477, 30.654572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109894, 35.143154, 31.216581>,  <41.463428, 35.027321, 30.923281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109894, 35.143154, 31.216581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.939373, 35.488831, 31.109669>,  <41.837063, 35.696236, 31.045521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.939373, 35.488831, 31.109669>,  <42.109894, 35.143154, 31.216581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939373, 35.488831, 31.109669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300267, 0.413910, 0.859371,
		0.853293, 0.286094, -0.435938,
		-0.426300, 0.864193, -0.267281,
		41.811481, 35.748089, 31.029484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.432426, 35.620693, 31.527969>,  <42.109894, 35.143154, 31.216581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.432426, 35.620693, 31.527969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.137390, 35.876740, 31.441986>,  <41.960369, 36.030369, 31.390396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.137390, 35.876740, 31.441986>,  <42.432426, 35.620693, 31.527969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.137390, 35.876740, 31.441986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311505, 0.605009, 0.732755,
		0.599101, 0.473513, -0.645649,
		-0.737592, 0.640117, -0.214960,
		41.916111, 36.068775, 31.377499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.705769, 36.373657, 31.616966>,  <42.432426, 35.620693, 31.527969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.705769, 36.373657, 31.616966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.307861, 36.362694, 31.656315>,  <42.069115, 36.356117, 31.679924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.307861, 36.362694, 31.656315>,  <42.705769, 36.373657, 31.616966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.307861, 36.362694, 31.656315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065442, 0.568421, 0.820131,
		-0.078393, 0.822282, -0.563655,
		-0.994772, -0.027406, 0.098372,
		42.009430, 36.354473, 31.685827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.522915, 36.973228, 31.844013>,  <42.705769, 36.373657, 31.616966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.522915, 36.973228, 31.844013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.212185, 36.736176, 31.929173>,  <42.025745, 36.593945, 31.980268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.212185, 36.736176, 31.929173>,  <42.522915, 36.973228, 31.844013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.212185, 36.736176, 31.929173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132049, 0.483877, 0.865116,
		-0.615713, 0.643933, -0.454145,
		-0.776827, -0.592633, 0.212899,
		41.979137, 36.558384, 31.993042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.167778, 37.449150, 32.243603>,  <42.522915, 36.973228, 31.844013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.167778, 37.449150, 32.243603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.020535, 37.083035, 32.309029>,  <41.932190, 36.863365, 32.348282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.020535, 37.083035, 32.309029>,  <42.167778, 37.449150, 32.243603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.020535, 37.083035, 32.309029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073577, 0.204037, 0.976194,
		-0.926868, 0.347310, -0.142451,
		-0.368107, -0.915284, 0.163561,
		41.910103, 36.808449, 32.358097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.673645, 37.506554, 32.624229>,  <42.167778, 37.449150, 32.243603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.673645, 37.506554, 32.624229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.773018, 37.125820, 32.696110>,  <41.832642, 36.897381, 32.739239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.773018, 37.125820, 32.696110>,  <41.673645, 37.506554, 32.624229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.773018, 37.125820, 32.696110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223374, 0.236809, 0.945529,
		-0.942543, -0.194757, 0.271445,
		0.248429, -0.951836, 0.179699,
		41.847546, 36.840271, 32.750019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.357975, 37.384918, 33.239182>,  <41.673645, 37.506554, 32.624229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.357975, 37.384918, 33.239182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.638290, 37.099602, 33.235004>,  <41.806480, 36.928413, 33.232498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.638290, 37.099602, 33.235004>,  <41.357975, 37.384918, 33.239182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638290, 37.099602, 33.235004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114878, 0.098387, 0.988495,
		-0.704057, -0.693928, 0.150890,
		0.700790, -0.713291, -0.010447,
		41.848526, 36.885616, 33.231869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225788, 37.118374, 33.837936>,  <41.357975, 37.384918, 33.239182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225788, 37.118374, 33.837936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.596565, 36.999916, 33.745781>,  <41.819031, 36.928841, 33.690487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.596565, 36.999916, 33.745781>,  <41.225788, 37.118374, 33.837936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596565, 36.999916, 33.745781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297934, 0.207705, 0.931716,
		-0.228072, -0.932285, 0.280762,
		0.926940, -0.296147, -0.230388,
		41.874649, 36.911072, 33.676666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523117, 36.694069, 34.525841>,  <41.225788, 37.118374, 33.837936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523117, 36.694069, 34.525841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.834805, 36.800732, 34.298958>,  <42.021816, 36.864727, 34.162830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.834805, 36.800732, 34.298958>,  <41.523117, 36.694069, 34.525841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834805, 36.800732, 34.298958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501318, 0.277987, 0.819392,
		0.376170, -0.922831, 0.082933,
		0.779215, 0.266655, -0.567203,
		42.068569, 36.880726, 34.128796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.050354, 36.420879, 34.845726>,  <41.523117, 36.694069, 34.525841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.050354, 36.420879, 34.845726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.219177, 36.702122, 34.616814>,  <42.320473, 36.870865, 34.479465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.219177, 36.702122, 34.616814>,  <42.050354, 36.420879, 34.845726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.219177, 36.702122, 34.616814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490013, 0.354174, 0.796522,
		0.762726, -0.616609, -0.195046,
		0.422062, 0.703103, -0.572284,
		42.345795, 36.913052, 34.445129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.669823, 36.439903, 35.099709>,  <42.050354, 36.420879, 34.845726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.669823, 36.439903, 35.099709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.649818, 36.778831, 34.888222>,  <42.637817, 36.982189, 34.761330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.649818, 36.778831, 34.888222>,  <42.669823, 36.439903, 35.099709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.649818, 36.778831, 34.888222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487932, 0.482633, 0.727316,
		0.871448, -0.221607, -0.437571,
		-0.050008, 0.847323, -0.528718,
		42.634815, 37.033028, 34.729607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.242546, 36.818424, 35.230808>,  <42.669823, 36.439903, 35.099709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.242546, 36.818424, 35.230808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.996761, 37.104149, 35.096825>,  <42.849289, 37.275585, 35.016434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.996761, 37.104149, 35.096825>,  <43.242546, 36.818424, 35.230808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.996761, 37.104149, 35.096825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394694, 0.645935, 0.653440,
		0.683121, 0.269308, -0.678837,
		-0.614461, 0.714311, -0.334958,
		42.812424, 37.318443, 34.996338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.904640, 36.356071, 35.394672>,  <43.242546, 36.818424, 35.230808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.904640, 36.356071, 35.394672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.149372, 36.047161, 35.463093>,  <44.296211, 35.861816, 35.504143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.149372, 36.047161, 35.463093>,  <43.904640, 36.356071, 35.394672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.149372, 36.047161, 35.463093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325040, 0.048325, -0.944465,
		0.721121, 0.633448, 0.280587,
		0.611828, -0.772275, 0.171048,
		44.332920, 35.815479, 35.514408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.564762, 36.556412, 35.090408>,  <43.904640, 36.356071, 35.394672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.564762, 36.556412, 35.090408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.593052, 36.158554, 35.120575>,  <44.610023, 35.919842, 35.138676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.593052, 36.158554, 35.120575>,  <44.564762, 36.556412, 35.090408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.593052, 36.158554, 35.120575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295597, -0.051312, -0.953933,
		0.952691, 0.089758, 0.290384,
		0.070723, -0.994641, 0.075417,
		44.614269, 35.860161, 35.143200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.151421, 36.381424, 34.619434>,  <44.564762, 36.556412, 35.090408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.151421, 36.381424, 34.619434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.980927, 36.026749, 34.691105>,  <44.878632, 35.813942, 34.734108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.980927, 36.026749, 34.691105>,  <45.151421, 36.381424, 34.619434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.980927, 36.026749, 34.691105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341055, -0.340964, -0.876028,
		0.837857, -0.312288, 0.447742,
		-0.426237, -0.886690, 0.179172,
		44.853054, 35.760742, 34.744858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.505432, 36.034798, 34.193188>,  <45.151421, 36.381424, 34.619434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.505432, 36.034798, 34.193188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.205818, 35.781158, 34.269989>,  <45.026051, 35.628975, 34.316071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.205818, 35.781158, 34.269989>,  <45.505432, 36.034798, 34.193188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.205818, 35.781158, 34.269989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151607, -0.446154, -0.882022,
		0.644954, -0.631555, 0.430318,
		-0.749033, -0.634102, 0.192001,
		44.981110, 35.590927, 34.327591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.758221, 35.336601, 34.072315>,  <45.505432, 36.034798, 34.193188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.758221, 35.336601, 34.072315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.358887, 35.345043, 34.050850>,  <45.119286, 35.350109, 34.037971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.358887, 35.345043, 34.050850>,  <45.758221, 35.336601, 34.072315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.358887, 35.345043, 34.050850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035449, -0.509451, -0.859769,
		-0.045486, -0.860241, 0.507855,
		-0.998336, 0.021104, -0.053667,
		45.059387, 35.351376, 34.034748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.622971, 34.710068, 33.805016>,  <45.758221, 35.336601, 34.072315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.622971, 34.710068, 33.805016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.297024, 34.930710, 33.733765>,  <45.101456, 35.063095, 33.691013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.297024, 34.930710, 33.733765>,  <45.622971, 34.710068, 33.805016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.297024, 34.930710, 33.733765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031873, -0.349474, -0.936404,
		-0.578772, -0.757367, 0.302356,
		-0.814866, 0.551601, -0.178126,
		45.052563, 35.096191, 33.680328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.143944, 34.295242, 33.339695>,  <45.622971, 34.710068, 33.805016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.143944, 34.295242, 33.339695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.981491, 34.657707, 33.292500>,  <44.884018, 34.875187, 33.264183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.981491, 34.657707, 33.292500>,  <45.143944, 34.295242, 33.339695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.981491, 34.657707, 33.292500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055321, -0.153260, -0.986636,
		-0.912138, -0.394179, 0.112374,
		-0.406134, 0.906164, -0.117988,
		44.859650, 34.929558, 33.257103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.476936, 34.160065, 32.886559>,  <45.143944, 34.295242, 33.339695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.476936, 34.160065, 32.886559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.619781, 34.533474, 32.873852>,  <44.705486, 34.757519, 32.866230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.619781, 34.533474, 32.873852>,  <44.476936, 34.160065, 32.886559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.619781, 34.533474, 32.873852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023492, -0.025020, -0.999411,
		-0.933766, 0.357647, 0.012996,
		0.357111, 0.933522, -0.031765,
		44.726913, 34.813530, 32.864323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.962662, 34.427620, 32.449459>,  <44.476936, 34.160065, 32.886559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.962662, 34.427620, 32.449459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.294312, 34.651142, 32.456196>,  <44.493301, 34.785255, 32.460239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.294312, 34.651142, 32.456196>,  <43.962662, 34.427620, 32.449459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.294312, 34.651142, 32.456196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055464, -0.052238, -0.997093,
		-0.556306, 0.827649, -0.074306,
		0.829124, 0.558810, 0.016845,
		44.543049, 34.818787, 32.461250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.838558, 34.976112, 32.122761>,  <43.962662, 34.427620, 32.449459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.838558, 34.976112, 32.122761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.238472, 34.969002, 32.118530>,  <44.478420, 34.964737, 32.115990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.238472, 34.969002, 32.118530>,  <43.838558, 34.976112, 32.122761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.238472, 34.969002, 32.118530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004330, 0.320211, -0.947336,
		0.020226, 0.947180, 0.320065,
		0.999786, -0.017775, -0.010578,
		44.538406, 34.963669, 32.115356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.970436, 35.384071, 31.606205>,  <43.838558, 34.976112, 32.122761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.970436, 35.384071, 31.606205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.343697, 35.240555, 31.615145>,  <44.567654, 35.154446, 31.620508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.343697, 35.240555, 31.615145>,  <43.970436, 35.384071, 31.606205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.343697, 35.240555, 31.615145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119393, 0.250672, -0.960681,
		0.339081, 0.899128, 0.276752,
		0.933150, -0.358791, 0.022351,
		44.623642, 35.132915, 31.621851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.346619, 35.844181, 31.354673>,  <43.970436, 35.384071, 31.606205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.346619, 35.844181, 31.354673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.570717, 35.518631, 31.293049>,  <44.705173, 35.323299, 31.256073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.570717, 35.518631, 31.293049>,  <44.346619, 35.844181, 31.354673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.570717, 35.518631, 31.293049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125913, 0.267506, -0.955294,
		0.818703, 0.515798, 0.252346,
		0.560242, -0.813876, -0.154062,
		44.738789, 35.274467, 31.246830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.838104, 36.081741, 30.913654>,  <44.346619, 35.844181, 31.354673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.838104, 36.081741, 30.913654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.846970, 35.684208, 30.870213>,  <44.852287, 35.445686, 30.844147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.846970, 35.684208, 30.870213>,  <44.838104, 36.081741, 30.913654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.846970, 35.684208, 30.870213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175722, 0.110814, -0.978183,
		0.984190, 0.002596, 0.177095,
		0.022164, -0.993838, -0.108606,
		44.853619, 35.386055, 30.837631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.429726, 35.901123, 30.561308>,  <44.838104, 36.081741, 30.913654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.429726, 35.901123, 30.561308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.179703, 35.595592, 30.496979>,  <45.029690, 35.412273, 30.458382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.179703, 35.595592, 30.496979>,  <45.429726, 35.901123, 30.561308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.179703, 35.595592, 30.496979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119620, 0.109864, -0.986722,
		0.771358, -0.635997, 0.022699,
		-0.625058, -0.763831, -0.160822,
		44.992184, 35.366444, 30.448732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.765163, 35.476181, 30.076765>,  <45.429726, 35.901123, 30.561308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.765163, 35.476181, 30.076765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.374393, 35.392284, 30.060589>,  <45.139931, 35.341946, 30.050884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.374393, 35.392284, 30.060589>,  <45.765163, 35.476181, 30.076765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.374393, 35.392284, 30.060589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055238, -0.065185, -0.996343,
		0.206337, -0.975582, 0.075267,
		-0.976920, -0.209740, -0.040439,
		45.081318, 35.329361, 30.048456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.710590, 35.014870, 29.441582>,  <45.765163, 35.476181, 30.076765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.710590, 35.014870, 29.441582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.333199, 35.123840, 29.517090>,  <45.106766, 35.189224, 29.562395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.333199, 35.123840, 29.517090>,  <45.710590, 35.014870, 29.441582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.333199, 35.123840, 29.517090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202261, -0.022044, -0.979084,
		-0.262569, -0.961923, 0.075900,
		-0.943477, 0.272429, 0.188772,
		45.050156, 35.205570, 29.573721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.361778, 34.714413, 28.887878>,  <45.710590, 35.014870, 29.441582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.361778, 34.714413, 28.887878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.100014, 34.973236, 29.044367>,  <44.942955, 35.128532, 29.138260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.100014, 34.973236, 29.044367>,  <45.361778, 34.714413, 28.887878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.100014, 34.973236, 29.044367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312515, 0.239683, -0.919177,
		-0.688532, -0.723786, 0.045364,
		-0.654414, 0.647060, 0.391223,
		44.903690, 35.167355, 29.161734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.728958, 34.418385, 28.800461>,  <45.361778, 34.714413, 28.887878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.728958, 34.418385, 28.800461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.700722, 34.815357, 28.840666>,  <44.683781, 35.053539, 28.864790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.700722, 34.815357, 28.840666>,  <44.728958, 34.418385, 28.800461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.700722, 34.815357, 28.840666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542897, 0.046309, -0.838522,
		-0.836827, -0.113763, 0.535517,
		-0.070593, 0.992428, 0.100515,
		44.679543, 35.113087, 28.870821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.982155, 34.478069, 28.607046>,  <44.728958, 34.418385, 28.800461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.982155, 34.478069, 28.607046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.163364, 34.833897, 28.583580>,  <44.272091, 35.047394, 28.569500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.163364, 34.833897, 28.583580>,  <43.982155, 34.478069, 28.607046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.163364, 34.833897, 28.583580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549843, 0.227003, -0.803830,
		-0.701744, 0.396408, 0.591959,
		0.453021, 0.889568, -0.058664,
		44.299271, 35.100765, 28.565981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.497658, 34.997662, 28.561954>,  <43.982155, 34.478069, 28.607046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.497658, 34.997662, 28.561954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.827030, 35.158176, 28.401495>,  <44.024654, 35.254486, 28.305220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.827030, 35.158176, 28.401495>,  <43.497658, 34.997662, 28.561954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.827030, 35.158176, 28.401495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510351, 0.214814, -0.832704,
		-0.247984, 0.890405, 0.381685,
		0.823435, 0.401291, -0.401148,
		44.074062, 35.278564, 28.281151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.302338, 35.743073, 28.391127>,  <43.497658, 34.997662, 28.561954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.302338, 35.743073, 28.391127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.631447, 35.648197, 28.184523>,  <43.828915, 35.591274, 28.060560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.631447, 35.648197, 28.184523>,  <43.302338, 35.743073, 28.391127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.631447, 35.648197, 28.184523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505051, 0.111727, -0.855827,
		0.260699, 0.965018, -0.027865,
		0.822776, -0.237186, -0.516511,
		43.878281, 35.577042, 28.029570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.308922, 43.031055, 37.712158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036087, 42.772797, 37.849510>,  <34.872387, 42.617844, 37.931923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036087, 42.772797, 37.849510>,  <35.308922, 43.031055, 37.712158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036087, 42.772797, 37.849510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009548, -0.477384, -0.878643,
		0.731213, -0.596028, 0.331780,
		-0.682082, -0.645643, 0.343379,
		34.831463, 42.579105, 37.952522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535053, 42.400631, 37.396473>,  <35.308922, 43.031055, 37.712158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535053, 42.400631, 37.396473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168644, 42.297298, 37.519222>,  <34.948799, 42.235298, 37.592873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168644, 42.297298, 37.519222>,  <35.535053, 42.400631, 37.396473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168644, 42.297298, 37.519222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059387, -0.669249, -0.740662,
		0.396714, -0.696685, 0.597703,
		-0.916019, -0.258335, 0.306874,
		34.893837, 42.219799, 37.611286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657932, 41.761368, 37.605877>,  <35.535053, 42.400631, 37.396473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657932, 41.761368, 37.605877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276562, 41.825443, 37.503651>,  <35.047737, 41.863888, 37.442314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276562, 41.825443, 37.503651>,  <35.657932, 41.761368, 37.605877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276562, 41.825443, 37.503651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004418, -0.854633, -0.519213,
		-0.301586, -0.493903, 0.815540,
		-0.953428, 0.160191, -0.255563,
		34.990532, 41.873501, 37.426983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544907, 41.165619, 37.357708>,  <35.657932, 41.761368, 37.605877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544907, 41.165619, 37.357708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212250, 41.361446, 37.252869>,  <35.012657, 41.478943, 37.189964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212250, 41.361446, 37.252869>,  <35.544907, 41.165619, 37.357708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212250, 41.361446, 37.252869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290249, -0.785595, -0.546440,
		-0.473426, -0.378366, 0.795429,
		-0.831639, 0.489571, -0.262100,
		34.962757, 41.508316, 37.174240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998600, 40.730717, 37.489388>,  <35.544907, 41.165619, 37.357708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998600, 40.730717, 37.489388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869404, 40.986362, 37.210186>,  <34.791885, 41.139751, 37.042667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869404, 40.986362, 37.210186>,  <34.998600, 40.730717, 37.489388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869404, 40.986362, 37.210186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126887, -0.760116, -0.637278,
		-0.937859, -0.117264, 0.326603,
		-0.322986, 0.639119, -0.698002,
		34.772507, 41.178097, 37.000786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407349, 40.503624, 37.252449>,  <34.998600, 40.730717, 37.489388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407349, 40.503624, 37.252449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516544, 40.739479, 36.948395>,  <34.582062, 40.880993, 36.765961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516544, 40.739479, 36.948395>,  <34.407349, 40.503624, 37.252449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516544, 40.739479, 36.948395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031098, -0.784325, -0.619570,
		-0.961514, 0.192776, -0.195777,
		0.272991, 0.589637, -0.760134,
		34.598442, 40.916370, 36.720356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910381, 40.324715, 36.714207>,  <34.407349, 40.503624, 37.252449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910381, 40.324715, 36.714207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248322, 40.464436, 36.552113>,  <34.451084, 40.548267, 36.454857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248322, 40.464436, 36.552113>,  <33.910381, 40.324715, 36.714207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248322, 40.464436, 36.552113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038916, -0.795567, -0.604615,
		-0.533583, 0.495040, -0.685729,
		0.844852, 0.349298, -0.405236,
		34.501778, 40.569225, 36.430542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867775, 40.039623, 36.071819>,  <33.910381, 40.324715, 36.714207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867775, 40.039623, 36.071819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249493, 40.158829, 36.062756>,  <34.478523, 40.230350, 36.057316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249493, 40.158829, 36.062756>,  <33.867775, 40.039623, 36.071819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249493, 40.158829, 36.062756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152932, -0.552049, -0.819667,
		-0.256781, 0.778737, -0.572392,
		0.954293, 0.298012, -0.022662,
		34.535782, 40.248234, 36.055958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037235, 40.202568, 35.381462>,  <33.867775, 40.039623, 36.071819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037235, 40.202568, 35.381462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408577, 40.144718, 35.518429>,  <34.631382, 40.110008, 35.600609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408577, 40.144718, 35.518429>,  <34.037235, 40.202568, 35.381462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408577, 40.144718, 35.518429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257799, -0.413123, -0.873424,
		0.267779, 0.899118, -0.346238,
		0.928350, -0.144624, 0.342418,
		34.687080, 40.101330, 35.621155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506916, 40.281776, 34.828453>,  <34.037235, 40.202568, 35.381462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506916, 40.281776, 34.828453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718246, 40.058640, 35.084480>,  <34.845043, 39.924755, 35.238098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718246, 40.058640, 35.084480>,  <34.506916, 40.281776, 34.828453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718246, 40.058640, 35.084480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398484, -0.502766, -0.767097,
		0.749724, 0.660331, -0.043331,
		0.528323, -0.557844, 0.640067,
		34.876743, 39.891285, 35.276501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153126, 40.131771, 34.509117>,  <34.506916, 40.281776, 34.828453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153126, 40.131771, 34.509117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108559, 39.844372, 34.783737>,  <35.081818, 39.671932, 34.948509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108559, 39.844372, 34.783737>,  <35.153126, 40.131771, 34.509117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108559, 39.844372, 34.783737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492502, -0.639965, -0.589819,
		0.863150, 0.272412, 0.425163,
		-0.111415, -0.718496, 0.686549,
		35.075134, 39.628822, 34.989700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731907, 39.741196, 34.386677>,  <35.153126, 40.131771, 34.509117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731907, 39.741196, 34.386677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483547, 39.503738, 34.591450>,  <35.334530, 39.361263, 34.714314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483547, 39.503738, 34.591450>,  <35.731907, 39.741196, 34.386677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483547, 39.503738, 34.591450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429697, -0.803953, -0.411121,
		0.655627, -0.035290, 0.754260,
		-0.620898, -0.593645, 0.511929,
		35.297279, 39.325645, 34.745029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136318, 39.143974, 34.474060>,  <35.731907, 39.741196, 34.386677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136318, 39.143974, 34.474060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774849, 39.023998, 34.596306>,  <35.557968, 38.952011, 34.669655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774849, 39.023998, 34.596306>,  <36.136318, 39.143974, 34.474060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774849, 39.023998, 34.596306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120894, -0.863375, -0.489865,
		0.410794, -0.405732, 0.816474,
		-0.903678, -0.299941, 0.305619,
		35.503746, 38.934017, 34.687992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791172, 38.768837, 34.375801>,  <36.136318, 39.143974, 34.474060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791172, 38.768837, 34.375801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055592, 38.477383, 34.447464>,  <37.214245, 38.302509, 34.490463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055592, 38.477383, 34.447464>,  <36.791172, 38.768837, 34.375801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055592, 38.477383, 34.447464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055467, 0.285569, 0.956751,
		-0.748290, -0.622522, 0.229191,
		0.661049, -0.728640, 0.179159,
		37.253906, 38.258789, 34.501213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511230, 38.343571, 34.891979>,  <36.791172, 38.768837, 34.375801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511230, 38.343571, 34.891979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911045, 38.355137, 34.895844>,  <37.150932, 38.362076, 34.898163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911045, 38.355137, 34.895844>,  <36.511230, 38.343571, 34.891979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911045, 38.355137, 34.895844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015562, 0.211579, 0.977237,
		0.026216, -0.976933, 0.211931,
		0.999535, 0.028918, 0.009657,
		37.210907, 38.363811, 34.898739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805748, 37.958973, 35.459267>,  <36.511230, 38.343571, 34.891979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805748, 37.958973, 35.459267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091595, 38.231300, 35.395012>,  <37.263103, 38.394695, 35.356457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091595, 38.231300, 35.395012>,  <36.805748, 37.958973, 35.459267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091595, 38.231300, 35.395012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108224, 0.119275, 0.986945,
		0.691091, -0.722676, 0.011556,
		0.714620, 0.680818, -0.160641,
		37.305981, 38.435547, 35.346821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385731, 37.756432, 35.862972>,  <36.805748, 37.958973, 35.459267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385731, 37.756432, 35.862972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402122, 38.149601, 35.791214>,  <37.411957, 38.385502, 35.748158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402122, 38.149601, 35.791214>,  <37.385731, 37.756432, 35.862972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402122, 38.149601, 35.791214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123097, 0.183148, 0.975348,
		0.991548, -0.017885, 0.128500,
		0.040979, 0.982923, -0.179398,
		37.414417, 38.444477, 35.737396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971237, 37.991478, 36.374371>,  <37.385731, 37.756432, 35.862972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971237, 37.991478, 36.374371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783077, 38.319653, 36.244381>,  <37.670181, 38.516556, 36.166389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783077, 38.319653, 36.244381>,  <37.971237, 37.991478, 36.374371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783077, 38.319653, 36.244381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233364, 0.239494, 0.942435,
		0.851038, 0.519157, 0.078803,
		-0.470399, 0.820438, -0.324971,
		37.641956, 38.565784, 36.146889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309959, 38.466270, 36.719017>,  <37.971237, 37.991478, 36.374371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309959, 38.466270, 36.719017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941235, 38.587132, 36.621876>,  <37.720001, 38.659649, 36.563591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941235, 38.587132, 36.621876>,  <38.309959, 38.466270, 36.719017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941235, 38.587132, 36.621876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188869, 0.197025, 0.962034,
		0.338525, 0.932678, -0.124552,
		-0.921808, 0.302148, -0.242852,
		37.664692, 38.677776, 36.549019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325794, 39.034294, 37.129791>,  <38.309959, 38.466270, 36.719017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325794, 39.034294, 37.129791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954666, 38.932732, 37.020485>,  <37.731991, 38.871792, 36.954899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954666, 38.932732, 37.020485>,  <38.325794, 39.034294, 37.129791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954666, 38.932732, 37.020485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343150, 0.293712, 0.892178,
		-0.146271, 0.921555, -0.359642,
		-0.927821, -0.253911, -0.273270,
		37.676319, 38.856560, 36.938503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989792, 39.476894, 37.524643>,  <38.325794, 39.034294, 37.129791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989792, 39.476894, 37.524643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709335, 39.211109, 37.421192>,  <37.541061, 39.051636, 37.359119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709335, 39.211109, 37.421192>,  <37.989792, 39.476894, 37.524643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709335, 39.211109, 37.421192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470415, 0.158487, 0.868097,
		-0.535832, 0.730319, -0.423696,
		-0.701138, -0.664467, -0.258631,
		37.498993, 39.011768, 37.343601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472687, 39.752529, 37.815533>,  <37.989792, 39.476894, 37.524643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472687, 39.752529, 37.815533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318176, 39.395088, 37.724083>,  <37.225471, 39.180622, 37.669212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318176, 39.395088, 37.724083>,  <37.472687, 39.752529, 37.815533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318176, 39.395088, 37.724083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517205, 0.004609, 0.855849,
		-0.763735, 0.448835, -0.463957,
		-0.386274, -0.893602, -0.228620,
		37.202293, 39.127007, 37.655499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840847, 39.852394, 38.061539>,  <37.472687, 39.752529, 37.815533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840847, 39.852394, 38.061539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944782, 39.466175, 38.067276>,  <37.007141, 39.234444, 38.070717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944782, 39.466175, 38.067276>,  <36.840847, 39.852394, 38.061539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944782, 39.466175, 38.067276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489735, -0.118964, 0.863717,
		-0.832253, -0.231445, -0.503773,
		0.259834, -0.965547, 0.014339,
		37.022732, 39.176510, 38.071579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227974, 39.529388, 38.166740>,  <36.840847, 39.852394, 38.061539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227974, 39.529388, 38.166740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521530, 39.287697, 38.290882>,  <36.697662, 39.142681, 38.365368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521530, 39.287697, 38.290882>,  <36.227974, 39.529388, 38.166740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521530, 39.287697, 38.290882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518540, -0.203203, 0.830557,
		-0.438779, -0.770467, -0.462443,
		0.733886, -0.604226, 0.310357,
		36.741695, 39.106430, 38.383987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896832, 39.237854, 38.750584>,  <36.227974, 39.529388, 38.166740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896832, 39.237854, 38.750584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261692, 39.079521, 38.793083>,  <36.480610, 38.984520, 38.818584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261692, 39.079521, 38.793083>,  <35.896832, 39.237854, 38.750584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261692, 39.079521, 38.793083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157926, -0.100241, 0.982350,
		-0.378198, -0.912834, -0.153948,
		0.912155, -0.395836, 0.106249,
		36.535339, 38.960770, 38.824959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899109, 38.550415, 39.195217>,  <35.896832, 39.237854, 38.750584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899109, 38.550415, 39.195217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246243, 38.741741, 39.248989>,  <36.454525, 38.856537, 39.281254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246243, 38.741741, 39.248989>,  <35.899109, 38.550415, 39.195217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246243, 38.741741, 39.248989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100052, -0.096790, 0.990263,
		0.486668, -0.872839, -0.036142,
		0.867839, 0.478314, 0.134434,
		36.506596, 38.885235, 39.289318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266083, 38.267059, 39.717136>,  <35.899109, 38.550415, 39.195217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266083, 38.267059, 39.717136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477592, 38.606560, 39.718967>,  <36.604500, 38.810261, 39.720066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477592, 38.606560, 39.718967>,  <36.266083, 38.267059, 39.717136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477592, 38.606560, 39.718967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069026, -0.048383, 0.996441,
		0.845951, -0.526577, -0.084170,
		0.528775, 0.848750, 0.004582,
		36.636227, 38.861183, 39.720341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638000, 38.249176, 40.323380>,  <36.266083, 38.267059, 39.717136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638000, 38.249176, 40.323380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633606, 38.630451, 40.202511>,  <36.630970, 38.859215, 40.129990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633606, 38.630451, 40.202511>,  <36.638000, 38.249176, 40.323380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633606, 38.630451, 40.202511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110942, 0.301488, 0.946994,
		0.993766, -0.023124, -0.109060,
		-0.010982, 0.953189, -0.302174,
		36.630310, 38.916409, 40.111858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276119, 37.814041, 40.528992>,  <36.638000, 38.249176, 40.323380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276119, 37.814041, 40.528992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246231, 37.476067, 40.740841>,  <37.228298, 37.273281, 40.867950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246231, 37.476067, 40.740841>,  <37.276119, 37.814041, 40.528992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246231, 37.476067, 40.740841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386534, -0.465044, -0.796446,
		0.919243, -0.264230, -0.291847,
		-0.074724, -0.844936, 0.529622,
		37.223812, 37.222588, 40.899727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653809, 37.440723, 40.221554>,  <37.276119, 37.814041, 40.528992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653809, 37.440723, 40.221554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393070, 37.190926, 40.393646>,  <37.236626, 37.041046, 40.496902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393070, 37.190926, 40.393646>,  <37.653809, 37.440723, 40.221554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393070, 37.190926, 40.393646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223410, -0.384014, -0.895891,
		0.724698, -0.680101, 0.110799,
		-0.651845, -0.624497, 0.430235,
		37.197517, 37.003578, 40.522717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841599, 36.779350, 39.999104>,  <37.653809, 37.440723, 40.221554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841599, 36.779350, 39.999104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457001, 36.761227, 40.107529>,  <37.226242, 36.750355, 40.172585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457001, 36.761227, 40.107529>,  <37.841599, 36.779350, 39.999104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457001, 36.761227, 40.107529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221880, -0.454025, -0.862920,
		0.162165, -0.889836, 0.426490,
		-0.961494, -0.045306, 0.271064,
		37.168552, 36.747635, 40.188847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615406, 36.183872, 39.724503>,  <37.841599, 36.779350, 39.999104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615406, 36.183872, 39.724503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262100, 36.361134, 39.785770>,  <37.050117, 36.467491, 39.822533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262100, 36.361134, 39.785770>,  <37.615406, 36.183872, 39.724503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262100, 36.361134, 39.785770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374708, -0.470781, -0.798723,
		-0.281842, -0.762879, 0.581876,
		-0.883266, 0.443148, 0.153171,
		36.997120, 36.494080, 39.831722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149891, 35.646515, 39.495037>,  <37.615406, 36.183872, 39.724503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149891, 35.646515, 39.495037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918262, 35.972607, 39.498379>,  <36.779285, 36.168262, 39.500381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918262, 35.972607, 39.498379>,  <37.149891, 35.646515, 39.495037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918262, 35.972607, 39.498379> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579641, -0.404483, -0.707397,
		-0.573315, -0.414476, 0.706767,
		-0.579075, 0.815232, 0.008351,
		36.744541, 36.217175, 39.500885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539227, 35.356541, 39.277172>,  <37.149891, 35.646515, 39.495037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539227, 35.356541, 39.277172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496044, 35.750217, 39.221008>,  <36.470135, 35.986423, 39.187309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496044, 35.750217, 39.221008>,  <36.539227, 35.356541, 39.277172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496044, 35.750217, 39.221008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576122, -0.177038, -0.797960,
		-0.810203, -0.005251, 0.586126,
		-0.107957, 0.984190, -0.140412,
		36.463657, 36.045475, 39.178886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816380, 35.595882, 39.435764>,  <36.539227, 35.356541, 39.277172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816380, 35.595882, 39.435764> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983204, 35.851631, 39.177380>,  <36.083298, 36.005081, 39.022350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983204, 35.851631, 39.177380>,  <35.816380, 35.595882, 39.435764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983204, 35.851631, 39.177380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727645, -0.190981, -0.658831,
		-0.544604, 0.744803, 0.385584,
		0.417060, 0.639371, -0.645961,
		36.108322, 36.043442, 38.983593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275166, 35.665226, 38.973671>,  <35.816380, 35.595882, 39.435764>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275166, 35.665226, 38.973671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576256, 35.851295, 38.787331>,  <35.756912, 35.962936, 38.675526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576256, 35.851295, 38.787331>,  <35.275166, 35.665226, 38.973671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576256, 35.851295, 38.787331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364072, -0.295427, -0.883275,
		-0.548500, 0.834468, -0.053020,
		0.752728, 0.465173, -0.465849,
		35.802074, 35.990849, 38.647575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010059, 36.181095, 38.556351>,  <35.275166, 35.665226, 38.973671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010059, 36.181095, 38.556351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354317, 36.033577, 38.415901>,  <35.560871, 35.945065, 38.331631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354317, 36.033577, 38.415901>,  <35.010059, 36.181095, 38.556351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354317, 36.033577, 38.415901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462491, -0.277595, -0.842047,
		0.213077, 0.887089, -0.409476,
		0.860639, -0.368800, -0.351122,
		35.612507, 35.922935, 38.310566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946339, 36.417538, 37.856525>,  <35.010059, 36.181095, 38.556351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946339, 36.417538, 37.856525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240612, 36.147243, 37.875080>,  <35.417175, 35.985069, 37.886215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240612, 36.147243, 37.875080>,  <34.946339, 36.417538, 37.856525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240612, 36.147243, 37.875080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388170, -0.476755, -0.788688,
		0.555057, 0.562221, -0.613041,
		0.735687, -0.675731, 0.046389,
		35.461319, 35.944523, 37.888996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141323, 36.426678, 37.178818>,  <34.946339, 36.417538, 37.856525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141323, 36.426678, 37.178818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259792, 36.076557, 37.331722>,  <35.330875, 35.866486, 37.423466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259792, 36.076557, 37.331722>,  <35.141323, 36.426678, 37.178818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259792, 36.076557, 37.331722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489699, -0.482771, -0.726035,
		0.820046, 0.027840, -0.571620,
		0.296174, -0.875304, 0.382262,
		35.348644, 35.813965, 37.446400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399967, 36.055389, 36.650959>,  <35.141323, 36.426678, 37.178818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399967, 36.055389, 36.650959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292496, 35.782047, 36.922497>,  <35.228012, 35.618042, 37.085419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292496, 35.782047, 36.922497>,  <35.399967, 36.055389, 36.650959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292496, 35.782047, 36.922497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428417, -0.546435, -0.719630,
		0.862710, -0.484181, -0.145945,
		-0.268682, -0.683357, 0.678847,
		35.211891, 35.577042, 37.126152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.837921, 38.779427, 44.209354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.481434, 38.599480, 44.232498>,  <37.267540, 38.491512, 44.246384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.481434, 38.599480, 44.232498>,  <37.837921, 38.779427, 44.209354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481434, 38.599480, 44.232498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305541, -0.689721, -0.656453,
		0.335224, -0.567365, 0.752145,
		-0.891218, -0.449870, 0.057858,
		37.214069, 38.464520, 44.249855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014103, 38.115654, 44.238834>,  <37.837921, 38.779427, 44.209354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014103, 38.115654, 44.238834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.636230, 38.104633, 44.108097>,  <37.409508, 38.098019, 44.029655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.636230, 38.104633, 44.108097>,  <38.014103, 38.115654, 44.238834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636230, 38.104633, 44.108097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235200, -0.751439, -0.616459,
		-0.228614, -0.659228, 0.716348,
		-0.944678, -0.027554, -0.326839,
		37.352825, 38.096367, 44.010044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949512, 37.479874, 43.935673>,  <38.014103, 38.115654, 44.238834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949512, 37.479874, 43.935673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.602177, 37.626804, 43.802376>,  <37.393776, 37.714962, 43.722397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.602177, 37.626804, 43.802376>,  <37.949512, 37.479874, 43.935673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602177, 37.626804, 43.802376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113169, -0.507435, -0.854226,
		-0.482878, -0.779475, 0.399058,
		-0.868344, 0.367326, -0.333242,
		37.341675, 37.737003, 43.702404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524799, 36.868435, 43.740795>,  <37.949512, 37.479874, 43.935673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524799, 36.868435, 43.740795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.436024, 37.217010, 43.565830>,  <37.382759, 37.426155, 43.460850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.436024, 37.217010, 43.565830>,  <37.524799, 36.868435, 43.740795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436024, 37.217010, 43.565830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071193, -0.432924, -0.898614,
		-0.972457, -0.230583, 0.034044,
		-0.221943, 0.871440, -0.437416,
		37.369442, 37.478443, 43.434605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179184, 36.616653, 43.167080>,  <37.524799, 36.868435, 43.740795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179184, 36.616653, 43.167080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.274048, 36.998318, 43.094044>,  <37.330967, 37.227314, 43.050224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.274048, 36.998318, 43.094044>,  <37.179184, 36.616653, 43.167080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274048, 36.998318, 43.094044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122850, -0.156985, -0.979931,
		-0.963672, 0.254829, 0.079988,
		0.237158, 0.954158, -0.182588,
		37.345196, 37.284565, 43.039268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692390, 36.845890, 42.723381>,  <37.179184, 36.616653, 43.167080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692390, 36.845890, 42.723381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.009956, 37.076363, 42.645702>,  <37.200497, 37.214645, 42.599094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.009956, 37.076363, 42.645702>,  <36.692390, 36.845890, 42.723381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009956, 37.076363, 42.645702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147281, -0.127637, -0.980825,
		-0.589917, 0.807296, -0.016474,
		0.793919, 0.576179, -0.194194,
		37.248131, 37.249218, 42.587444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405174, 37.413158, 42.218872>,  <36.692390, 36.845890, 42.723381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405174, 37.413158, 42.218872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.804516, 37.421810, 42.197651>,  <37.044121, 37.427002, 42.184917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.804516, 37.421810, 42.197651>,  <36.405174, 37.413158, 42.218872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804516, 37.421810, 42.197651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053395, 0.015740, -0.998449,
		-0.020758, 0.999642, 0.016869,
		0.998358, 0.021626, -0.053049,
		37.104023, 37.428299, 42.181736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605022, 37.908527, 41.772964>,  <36.405174, 37.413158, 42.218872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605022, 37.908527, 41.772964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.905136, 37.644672, 41.755302>,  <37.085205, 37.486359, 41.744705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.905136, 37.644672, 41.755302>,  <36.605022, 37.908527, 41.772964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905136, 37.644672, 41.755302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178054, -0.137295, -0.974396,
		0.636686, 0.738937, -0.220462,
		0.750285, -0.659638, -0.044157,
		37.130222, 37.446781, 41.742054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807243, 38.018436, 41.119659>,  <36.605022, 37.908527, 41.772964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807243, 38.018436, 41.119659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.972931, 37.669144, 41.222332>,  <37.072342, 37.459568, 41.283936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.972931, 37.669144, 41.222332>,  <36.807243, 38.018436, 41.119659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972931, 37.669144, 41.222332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144384, -0.341484, -0.928731,
		0.898653, 0.347637, -0.267530,
		0.414218, -0.873234, 0.256683,
		37.097195, 37.407173, 41.299335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188484, 38.693771, 40.872280>,  <36.807243, 38.018436, 41.119659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188484, 38.693771, 40.872280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.931190, 38.937550, 40.686882>,  <36.776814, 39.083817, 40.575642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.931190, 38.937550, 40.686882>,  <37.188484, 38.693771, 40.872280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931190, 38.937550, 40.686882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245496, 0.409229, 0.878785,
		0.725248, 0.679049, -0.113613,
		-0.643232, 0.609445, -0.463496,
		36.738220, 39.120384, 40.547832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469204, 39.292721, 41.001133>,  <37.188484, 38.693771, 40.872280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469204, 39.292721, 41.001133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.085106, 39.356873, 40.909744>,  <36.854645, 39.395363, 40.854912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.085106, 39.356873, 40.909744>,  <37.469204, 39.292721, 41.001133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085106, 39.356873, 40.909744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109044, 0.537927, 0.835909,
		0.256964, 0.827595, -0.499056,
		-0.960249, 0.160380, -0.228472,
		36.797031, 39.404987, 40.841202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321655, 40.123920, 41.018299>,  <37.469204, 39.292721, 41.001133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321655, 40.123920, 41.018299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.001961, 39.890244, 41.074772>,  <36.810143, 39.750038, 41.108658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.001961, 39.890244, 41.074772>,  <37.321655, 40.123920, 41.018299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001961, 39.890244, 41.074772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384829, 0.677874, 0.626414,
		-0.461653, 0.446322, -0.766598,
		-0.799239, -0.584195, 0.141185,
		36.762188, 39.714985, 41.117126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657047, 40.565079, 40.940468>,  <37.321655, 40.123920, 41.018299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657047, 40.565079, 40.940468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.545780, 40.260403, 41.174541>,  <36.479019, 40.077595, 41.314987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.545780, 40.260403, 41.174541>,  <36.657047, 40.565079, 40.940468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545780, 40.260403, 41.174541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373594, 0.647058, 0.664638,
		-0.884901, -0.033740, -0.464557,
		-0.278170, -0.761694, 0.585187,
		36.462330, 40.031895, 41.350098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119236, 40.741810, 41.254066>,  <36.657047, 40.565079, 40.940468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119236, 40.741810, 41.254066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.183388, 40.436665, 41.504608>,  <36.221878, 40.253578, 41.654934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.183388, 40.436665, 41.504608>,  <36.119236, 40.741810, 41.254066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183388, 40.436665, 41.504608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319448, 0.560302, 0.764209,
		-0.933934, -0.322649, -0.153835,
		0.160377, -0.762863, 0.626354,
		36.231503, 40.207806, 41.692513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477631, 40.692841, 41.631924>,  <36.119236, 40.741810, 41.254066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477631, 40.692841, 41.631924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.761795, 40.516239, 41.851154>,  <35.932293, 40.410278, 41.982693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.761795, 40.516239, 41.851154>,  <35.477631, 40.692841, 41.631924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761795, 40.516239, 41.851154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407641, 0.376697, 0.831822,
		-0.573716, -0.814353, 0.087632,
		0.710407, -0.441508, 0.548081,
		35.974918, 40.383785, 42.015579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077782, 40.395092, 42.121498>,  <35.477631, 40.692841, 41.631924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077782, 40.395092, 42.121498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.454033, 40.412800, 42.256115>,  <35.679783, 40.423424, 42.336884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.454033, 40.412800, 42.256115>,  <35.077782, 40.395092, 42.121498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454033, 40.412800, 42.256115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336159, 0.259031, 0.905483,
		-0.047088, -0.964854, 0.258534,
		0.940627, 0.044271, 0.336541,
		35.736221, 40.426083, 42.357079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017811, 40.093994, 42.879612>,  <35.077782, 40.395092, 42.121498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017811, 40.093994, 42.879612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.351635, 40.313423, 42.859310>,  <35.551929, 40.445080, 42.847130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.351635, 40.313423, 42.859310>,  <35.017811, 40.093994, 42.879612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351635, 40.313423, 42.859310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263648, 0.478590, 0.837521,
		0.483725, -0.685585, 0.544043,
		0.834565, 0.548566, -0.050753,
		35.602005, 40.477993, 42.844086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344276, 39.984753, 43.614521>,  <35.017811, 40.093994, 42.879612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344276, 39.984753, 43.614521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.457027, 40.308193, 43.407948>,  <35.524677, 40.502258, 43.284004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.457027, 40.308193, 43.407948>,  <35.344276, 39.984753, 43.614521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457027, 40.308193, 43.407948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248267, 0.581399, 0.774815,
		0.926772, -0.090193, 0.364635,
		0.281881, 0.808604, -0.516432,
		35.541592, 40.550774, 43.253017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842705, 40.424343, 44.072754>,  <35.344276, 39.984753, 43.614521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842705, 40.424343, 44.072754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.714798, 40.672192, 43.786030>,  <35.638054, 40.820900, 43.613995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.714798, 40.672192, 43.786030>,  <35.842705, 40.424343, 44.072754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714798, 40.672192, 43.786030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236832, 0.680246, 0.693669,
		0.917421, 0.391575, -0.070772,
		-0.319766, 0.619625, -0.716809,
		35.618870, 40.858078, 43.570988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032257, 41.031944, 44.344212>,  <35.842705, 40.424343, 44.072754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032257, 41.031944, 44.344212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.752728, 41.128128, 44.074745>,  <35.585011, 41.185841, 43.913067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.752728, 41.128128, 44.074745>,  <36.032257, 41.031944, 44.344212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752728, 41.128128, 44.074745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388584, 0.663085, 0.639782,
		0.600540, 0.708870, -0.369939,
		-0.698823, 0.240462, -0.673665,
		35.543079, 41.200268, 43.872646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998154, 41.795322, 44.243851>,  <36.032257, 41.031944, 44.344212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998154, 41.795322, 44.243851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.634384, 41.706547, 44.103172>,  <35.416122, 41.653282, 44.018764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.634384, 41.706547, 44.103172>,  <35.998154, 41.795322, 44.243851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634384, 41.706547, 44.103172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393850, 0.731170, 0.557021,
		0.133529, 0.645085, -0.752353,
		-0.909424, -0.221936, -0.351699,
		35.361557, 41.639965, 43.997662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746689, 42.386662, 43.901100>,  <35.998154, 41.795322, 44.243851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746689, 42.386662, 43.901100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.410297, 42.185966, 43.982101>,  <35.208462, 42.065548, 44.030701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.410297, 42.185966, 43.982101>,  <35.746689, 42.386662, 43.901100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410297, 42.185966, 43.982101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353689, 0.793018, 0.496011,
		-0.409453, 0.345515, -0.844374,
		-0.840983, -0.501739, 0.202499,
		35.158001, 42.035446, 44.042850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224403, 42.919792, 43.910690>,  <35.746689, 42.386662, 43.901100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224403, 42.919792, 43.910690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.053040, 42.641598, 44.141434>,  <34.950222, 42.474682, 44.279881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.053040, 42.641598, 44.141434>,  <35.224403, 42.919792, 43.910690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053040, 42.641598, 44.141434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154595, 0.685416, 0.711552,
		-0.890262, 0.215655, -0.401156,
		-0.428408, -0.695484, 0.576861,
		34.924519, 42.432953, 44.314491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.207039, 40.759468, 44.350132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.601751, 40.823563, 44.340439>,  <31.838579, 40.862019, 44.334621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.601751, 40.823563, 44.340439>,  <31.207039, 40.759468, 44.350132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601751, 40.823563, 44.340439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040016, -0.385822, -0.921705,
		-0.157040, 0.908551, -0.387134,
		0.986781, 0.160236, -0.024233,
		31.897785, 40.871632, 44.333168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.321577, 41.017719, 43.721592>,  <31.207039, 40.759468, 44.350132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.321577, 41.017719, 43.721592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.688755, 40.887074, 43.811657>,  <31.909061, 40.808685, 43.865696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.688755, 40.887074, 43.811657>,  <31.321577, 41.017719, 43.721592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688755, 40.887074, 43.811657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128228, -0.292829, -0.947528,
		0.375412, 0.898651, -0.226920,
		0.917945, -0.326615, 0.225164,
		31.964138, 40.789089, 43.879208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798088, 41.269085, 43.236927>,  <31.321577, 41.017719, 43.721592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798088, 41.269085, 43.236927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.004925, 40.963253, 43.390831>,  <32.129028, 40.779755, 43.483173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.004925, 40.963253, 43.390831>,  <31.798088, 41.269085, 43.236927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004925, 40.963253, 43.390831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063223, -0.414179, -0.907997,
		0.853593, 0.493842, -0.165829,
		0.517090, -0.764575, 0.384762,
		32.160053, 40.733879, 43.506260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473721, 41.118538, 42.772831>,  <31.798088, 41.269085, 43.236927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473721, 41.118538, 42.772831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.384247, 40.775185, 42.957500>,  <32.330563, 40.569172, 43.068302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.384247, 40.775185, 42.957500>,  <32.473721, 41.118538, 42.772831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384247, 40.775185, 42.957500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040455, -0.465095, -0.884336,
		0.973822, -0.216489, 0.069308,
		-0.223684, -0.858382, 0.461677,
		32.317142, 40.517670, 43.096004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988911, 40.633423, 42.498913>,  <32.473721, 41.118538, 42.772831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988911, 40.633423, 42.498913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.669758, 40.438240, 42.640495>,  <32.478268, 40.321129, 42.725445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.669758, 40.438240, 42.640495>,  <32.988911, 40.633423, 42.498913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669758, 40.438240, 42.640495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143698, -0.416293, -0.897804,
		0.585442, -0.767201, 0.262032,
		-0.797878, -0.487958, 0.353960,
		32.430393, 40.291851, 42.746685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027969, 39.964443, 42.238388>,  <32.988911, 40.633423, 42.498913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027969, 39.964443, 42.238388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.668114, 39.948605, 42.412319>,  <32.452198, 39.939102, 42.516678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.668114, 39.948605, 42.412319>,  <33.027969, 39.964443, 42.238388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668114, 39.948605, 42.412319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313242, -0.635251, -0.705929,
		0.304180, -0.771290, 0.559094,
		-0.899641, -0.039597, 0.434831,
		32.398220, 39.936726, 42.542770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795746, 39.164421, 42.327042>,  <33.027969, 39.964443, 42.238388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795746, 39.164421, 42.327042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.455288, 39.374332, 42.322056>,  <32.251015, 39.500278, 42.319065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.455288, 39.374332, 42.322056>,  <32.795746, 39.164421, 42.327042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455288, 39.374332, 42.322056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378949, -0.630701, -0.677211,
		-0.363249, -0.571682, 0.735683,
		-0.851145, 0.524782, -0.012463,
		32.199944, 39.531769, 42.318317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317730, 38.663990, 42.236092>,  <32.795746, 39.164421, 42.327042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317730, 38.663990, 42.236092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.133102, 39.008770, 42.152199>,  <32.022324, 39.215637, 42.101864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.133102, 39.008770, 42.152199>,  <32.317730, 38.663990, 42.236092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133102, 39.008770, 42.152199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554073, -0.464755, -0.690656,
		-0.692788, -0.202581, 0.692103,
		-0.461572, 0.861954, -0.209732,
		31.994631, 39.267357, 42.089279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616499, 38.527515, 42.260502>,  <32.317730, 38.663990, 42.236092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616499, 38.527515, 42.260502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.664276, 38.844990, 42.021908>,  <31.692942, 39.035477, 41.878754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.664276, 38.844990, 42.021908>,  <31.616499, 38.527515, 42.260502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664276, 38.844990, 42.021908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451866, -0.491496, -0.744479,
		-0.884053, 0.358453, 0.299935,
		0.119444, 0.793689, -0.596481,
		31.700109, 39.083096, 41.842964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949047, 38.632763, 41.855122>,  <31.616499, 38.527515, 42.260502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949047, 38.632763, 41.855122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.217104, 38.838501, 41.641071>,  <31.377939, 38.961945, 41.512642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.217104, 38.838501, 41.641071>,  <30.949047, 38.632763, 41.855122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217104, 38.838501, 41.641071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516445, -0.194697, -0.833893,
		-0.533097, 0.835189, 0.135157,
		0.670143, 0.514347, -0.535121,
		31.418146, 38.992805, 41.480534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595640, 39.042709, 41.353821>,  <30.949047, 38.632763, 41.855122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595640, 39.042709, 41.353821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.969946, 39.008137, 41.217072>,  <31.194529, 38.987392, 41.135021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.969946, 39.008137, 41.217072>,  <30.595640, 39.042709, 41.353821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969946, 39.008137, 41.217072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350639, -0.125232, -0.928100,
		0.037407, 0.988355, -0.147495,
		0.935763, -0.086435, -0.341872,
		31.250675, 38.982204, 41.114510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501362, 39.231789, 40.712086>,  <30.595640, 39.042709, 41.353821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501362, 39.231789, 40.712086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.861031, 39.057686, 40.694031>,  <31.076832, 38.953224, 40.683197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.861031, 39.057686, 40.694031>,  <30.501362, 39.231789, 40.712086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861031, 39.057686, 40.694031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173057, -0.258967, -0.950257,
		0.401918, 0.862257, -0.308181,
		0.899174, -0.435258, -0.045136,
		31.130783, 38.927109, 40.680489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778757, 39.374672, 40.038345>,  <30.501362, 39.231789, 40.712086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778757, 39.374672, 40.038345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.972004, 39.061047, 40.194214>,  <31.087952, 38.872871, 40.287735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.972004, 39.061047, 40.194214>,  <30.778757, 39.374672, 40.038345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972004, 39.061047, 40.194214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094941, -0.489348, -0.866905,
		0.870392, 0.381822, -0.310853,
		0.483118, -0.784060, 0.389674,
		31.116940, 38.825829, 40.311115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250265, 39.227459, 39.560982>,  <30.778757, 39.374672, 40.038345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250265, 39.227459, 39.560982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.206945, 38.885059, 39.763187>,  <31.180954, 38.679619, 39.884510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.206945, 38.885059, 39.763187>,  <31.250265, 39.227459, 39.560982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206945, 38.885059, 39.763187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004029, -0.508121, -0.861276,
		0.994110, -0.095312, 0.051580,
		-0.108299, -0.855996, 0.505512,
		31.174456, 38.628262, 39.914841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840572, 39.575802, 39.494915>,  <31.250265, 39.227459, 39.560982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840572, 39.575802, 39.494915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.873158, 39.831310, 39.188885>,  <31.892710, 39.984615, 39.005268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.873158, 39.831310, 39.188885>,  <31.840572, 39.575802, 39.494915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873158, 39.831310, 39.188885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318320, 0.744097, 0.587361,
		0.944476, 0.195689, 0.263950,
		0.081464, 0.638769, -0.765074,
		31.897596, 40.022942, 38.959362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244919, 40.074291, 39.790329>,  <31.840572, 39.575802, 39.494915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244919, 40.074291, 39.790329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.087624, 40.265095, 39.475922>,  <31.993248, 40.379578, 39.287277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.087624, 40.265095, 39.475922>,  <32.244919, 40.074291, 39.790329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087624, 40.265095, 39.475922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159532, 0.806527, 0.569267,
		0.905493, 0.349250, -0.241055,
		-0.393234, 0.477011, -0.786020,
		31.969654, 40.408199, 39.240116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618191, 40.733349, 39.769428>,  <32.244919, 40.074291, 39.790329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618191, 40.733349, 39.769428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.258320, 40.782261, 39.601795>,  <32.042397, 40.811607, 39.501213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.258320, 40.782261, 39.601795>,  <32.618191, 40.733349, 39.769428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258320, 40.782261, 39.601795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161060, 0.799284, 0.578968,
		0.405765, 0.588381, -0.699401,
		-0.899675, 0.122280, -0.419086,
		31.988417, 40.818943, 39.476070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527111, 41.435471, 39.757568>,  <32.618191, 40.733349, 39.769428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527111, 41.435471, 39.757568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.149483, 41.309269, 39.719219>,  <31.922907, 41.233547, 39.696209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.149483, 41.309269, 39.719219>,  <32.527111, 41.435471, 39.757568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149483, 41.309269, 39.719219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292327, 0.666240, 0.686053,
		-0.152581, 0.675707, -0.721207,
		-0.944068, -0.315507, -0.095872,
		31.866262, 41.214619, 39.690456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101559, 42.051426, 39.573074>,  <32.527111, 41.435471, 39.757568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101559, 42.051426, 39.573074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.853239, 41.788986, 39.744720>,  <31.704247, 41.631523, 39.847710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.853239, 41.788986, 39.744720>,  <32.101559, 42.051426, 39.573074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853239, 41.788986, 39.744720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283838, 0.698335, 0.657088,
		-0.730780, 0.286123, -0.619753,
		-0.620803, -0.656096, 0.429117,
		31.666998, 41.592155, 39.873455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478966, 42.489922, 39.795940>,  <32.101559, 42.051426, 39.573074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478966, 42.489922, 39.795940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.442133, 42.147808, 39.999908>,  <31.420034, 41.942539, 40.122288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.442133, 42.147808, 39.999908>,  <31.478966, 42.489922, 39.795940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442133, 42.147808, 39.999908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456000, 0.491461, 0.741978,
		-0.885204, -0.164201, -0.435262,
		-0.092081, -0.855280, 0.509918,
		31.414509, 41.891224, 40.152885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731091, 42.471111, 40.048031>,  <31.478966, 42.489922, 39.795940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731091, 42.471111, 40.048031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.978823, 42.259113, 40.279732>,  <31.127462, 42.131916, 40.418755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.978823, 42.259113, 40.279732>,  <30.731091, 42.471111, 40.048031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978823, 42.259113, 40.279732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246445, 0.569264, 0.784349,
		-0.745448, -0.628526, 0.221949,
		0.619332, -0.529993, 0.579255,
		31.164621, 42.100117, 40.453506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.242603, 42.295307, 40.575012>,  <30.731091, 42.471111, 40.048031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.242603, 42.295307, 40.575012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.626379, 42.246746, 40.676788>,  <30.856644, 42.217609, 40.737854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.626379, 42.246746, 40.676788>,  <30.242603, 42.295307, 40.575012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626379, 42.246746, 40.676788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176884, 0.443550, 0.878621,
		-0.219520, -0.887990, 0.404085,
		0.959439, -0.121399, 0.254440,
		30.914211, 42.210327, 40.753120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.240854, 42.235214, 41.316338>,  <30.242603, 42.295307, 40.575012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.240854, 42.235214, 41.316338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.629581, 42.317421, 41.270153>,  <30.862818, 42.366745, 41.242443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.629581, 42.317421, 41.270153>,  <30.240854, 42.235214, 41.316338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629581, 42.317421, 41.270153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014069, 0.539492, 0.841873,
		0.235308, -0.816524, 0.527180,
		0.971819, 0.205516, -0.115459,
		30.921127, 42.379074, 41.235516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.523352, 42.204063, 42.017601>,  <30.240854, 42.235214, 41.316338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.523352, 42.204063, 42.017601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.798557, 42.411407, 41.814449>,  <30.963680, 42.535812, 41.692558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.798557, 42.411407, 41.814449>,  <30.523352, 42.204063, 42.017601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798557, 42.411407, 41.814449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201940, 0.535457, 0.820064,
		0.697036, -0.666776, 0.263724,
		0.688013, 0.518358, -0.507882,
		31.004961, 42.566914, 41.662086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188145, 42.056335, 42.244602>,  <30.523352, 42.204063, 42.017601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188145, 42.056335, 42.244602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.177799, 42.426586, 42.093578>,  <31.171593, 42.648735, 42.002964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.177799, 42.426586, 42.093578>,  <31.188145, 42.056335, 42.244602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177799, 42.426586, 42.093578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338352, 0.363498, 0.867979,
		0.940664, -0.105297, -0.322589,
		-0.025864, 0.925625, -0.377557,
		31.170040, 42.704273, 41.980312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797934, 42.416527, 42.577362>,  <31.188145, 42.056335, 42.244602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797934, 42.416527, 42.577362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.606794, 42.716637, 42.394611>,  <31.492111, 42.896702, 42.284962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.606794, 42.716637, 42.394611>,  <31.797934, 42.416527, 42.577362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606794, 42.716637, 42.394611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227629, 0.608098, 0.760527,
		0.848436, 0.259419, -0.461365,
		-0.477850, 0.750279, -0.456881,
		31.463440, 42.941719, 42.257545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242496, 43.039093, 42.721272>,  <31.797934, 42.416527, 42.577362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242496, 43.039093, 42.721272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.868422, 43.164749, 42.655865>,  <31.643976, 43.240143, 42.616619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.868422, 43.164749, 42.655865>,  <32.242496, 43.039093, 42.721272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868422, 43.164749, 42.655865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101997, 0.681067, 0.725082,
		0.339145, 0.661410, -0.668968,
		-0.935188, 0.314141, -0.163518,
		31.587866, 43.258991, 42.606808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302391, 43.741821, 42.851837>,  <32.242496, 43.039093, 42.721272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302391, 43.741821, 42.851837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.918842, 43.638657, 42.899239>,  <31.688713, 43.576759, 42.927681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.918842, 43.638657, 42.899239>,  <32.302391, 43.741821, 42.851837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918842, 43.638657, 42.899239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060146, 0.592669, 0.803197,
		-0.277388, 0.763037, -0.583807,
		-0.958874, -0.257911, 0.118506,
		31.631180, 43.561283, 42.934792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553791, 44.423199, 42.601971>,  <32.302391, 43.741821, 42.851837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553791, 44.423199, 42.601971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.913185, 44.592628, 42.648117>,  <33.128822, 44.694286, 42.675804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.913185, 44.592628, 42.648117>,  <32.553791, 44.423199, 42.601971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913185, 44.592628, 42.648117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209620, -0.183036, -0.960499,
		-0.385727, 0.887176, -0.253244,
		0.898485, 0.423575, 0.115368,
		33.182732, 44.719700, 42.682728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694084, 44.785084, 41.936176>,  <32.553791, 44.423199, 42.601971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694084, 44.785084, 41.936176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.050014, 44.765755, 42.117668>,  <33.263573, 44.754158, 42.226562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.050014, 44.765755, 42.117668>,  <32.694084, 44.785084, 41.936176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050014, 44.765755, 42.117668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441861, -0.156918, -0.883253,
		0.113881, 0.986429, -0.118278,
		0.889826, -0.048324, 0.453734,
		33.316963, 44.751259, 42.253788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040752, 45.224686, 41.524971>,  <32.694084, 44.785084, 41.936176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040752, 45.224686, 41.524971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.290844, 44.980209, 41.719097>,  <33.440899, 44.833523, 41.835571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.290844, 44.980209, 41.719097>,  <33.040752, 45.224686, 41.524971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290844, 44.980209, 41.719097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517977, -0.140163, -0.843833,
		0.583768, 0.778972, 0.228950,
		0.625232, -0.611193, 0.485312,
		33.478413, 44.796852, 41.864689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775311, 45.465893, 41.316982>,  <33.040752, 45.224686, 41.524971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775311, 45.465893, 41.316982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.794033, 45.089008, 41.449680>,  <33.805267, 44.862877, 41.529301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.794033, 45.089008, 41.449680>,  <33.775311, 45.465893, 41.316982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794033, 45.089008, 41.449680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474699, -0.271231, -0.837314,
		0.878903, 0.196673, 0.434568,
		0.046809, -0.942206, 0.331747,
		33.808075, 44.806347, 41.549206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541805, 45.294804, 41.275398>,  <33.775311, 45.465893, 41.316982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541805, 45.294804, 41.275398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.305180, 44.972412, 41.266937>,  <34.163204, 44.778976, 41.261860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.305180, 44.972412, 41.266937>,  <34.541805, 45.294804, 41.275398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305180, 44.972412, 41.266937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524293, -0.364619, -0.769526,
		0.612509, -0.466315, 0.638265,
		-0.591565, -0.805980, -0.021153,
		34.127708, 44.730618, 41.260590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981312, 44.684376, 41.313278>,  <34.541805, 45.294804, 41.275398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981312, 44.684376, 41.313278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.652237, 44.520061, 41.156082>,  <34.454792, 44.421471, 41.061764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.652237, 44.520061, 41.156082>,  <34.981312, 44.684376, 41.313278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652237, 44.520061, 41.156082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555169, -0.431736, -0.710909,
		0.122367, -0.803029, 0.583241,
		-0.822687, -0.410790, -0.392987,
		34.405430, 44.396824, 41.038185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169868, 44.090511, 40.972141>,  <34.981312, 44.684376, 41.313278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169868, 44.090511, 40.972141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.792690, 44.130817, 40.845207>,  <34.566383, 44.154999, 40.769047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.792690, 44.130817, 40.845207>,  <35.169868, 44.090511, 40.972141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792690, 44.130817, 40.845207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210391, -0.558376, -0.802466,
		-0.258051, -0.823446, 0.505319,
		-0.942945, 0.100762, -0.317335,
		34.509808, 44.161045, 40.750008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945724, 43.437725, 40.777538>,  <35.169868, 44.090511, 40.972141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945724, 43.437725, 40.777538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.667027, 43.661751, 40.598263>,  <34.499809, 43.796165, 40.490700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.667027, 43.661751, 40.598263>,  <34.945724, 43.437725, 40.777538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667027, 43.661751, 40.598263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072739, -0.566421, -0.820900,
		-0.713621, -0.604559, 0.353913,
		-0.696746, 0.560068, -0.448184,
		34.458004, 43.829773, 40.463806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377365, 43.014339, 40.554218>,  <34.945724, 43.437725, 40.777538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377365, 43.014339, 40.554218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.399483, 43.346287, 40.332130>,  <34.412754, 43.545456, 40.198879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.399483, 43.346287, 40.332130>,  <34.377365, 43.014339, 40.554218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399483, 43.346287, 40.332130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079521, -0.557960, -0.826049,
		-0.995299, 0.001524, -0.096843,
		0.055293, 0.829866, -0.555216,
		34.416069, 43.595245, 40.165565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864017, 43.009533, 39.998657>,  <34.377365, 43.014339, 40.554218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864017, 43.009533, 39.998657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.143452, 43.266640, 39.872906>,  <34.311111, 43.420902, 39.797455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.143452, 43.266640, 39.872906>,  <33.864017, 43.009533, 39.998657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143452, 43.266640, 39.872906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090289, -0.356673, -0.929856,
		-0.709808, 0.677968, -0.191132,
		0.698584, 0.642763, -0.314383,
		34.353027, 43.459469, 39.778591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581287, 43.431831, 39.446449>,  <33.864017, 43.009533, 39.998657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581287, 43.431831, 39.446449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.974743, 43.458096, 39.379337>,  <34.210815, 43.473854, 39.339069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.974743, 43.458096, 39.379337>,  <33.581287, 43.431831, 39.446449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974743, 43.458096, 39.379337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099527, -0.578225, -0.809784,
		-0.150184, 0.813230, -0.562228,
		0.983636, 0.065660, -0.167779,
		34.269833, 43.477795, 39.329002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692684, 43.434097, 38.814873>,  <33.581287, 43.431831, 39.446449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692684, 43.434097, 38.814873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.065380, 43.325790, 38.911659>,  <34.288998, 43.260807, 38.969730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.065380, 43.325790, 38.911659>,  <33.692684, 43.434097, 38.814873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065380, 43.325790, 38.911659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071399, -0.516726, -0.853168,
		0.356040, 0.812206, -0.462121,
		0.931739, -0.270767, 0.241966,
		34.344902, 43.244560, 38.984249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044746, 43.535072, 38.206932>,  <33.692684, 43.434097, 38.814873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044746, 43.535072, 38.206932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.243267, 43.279045, 38.441536>,  <34.362377, 43.125427, 38.582298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.243267, 43.279045, 38.441536>,  <34.044746, 43.535072, 38.206932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243267, 43.279045, 38.441536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143479, -0.605824, -0.782554,
		0.856213, 0.472533, -0.208833,
		0.496299, -0.640070, 0.586514,
		34.392159, 43.087025, 38.617489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569672, 43.360439, 37.766499>,  <34.044746, 43.535072, 38.206932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569672, 43.360439, 37.766499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.590637, 43.073956, 38.044861>,  <34.603218, 42.902065, 38.211880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.590637, 43.073956, 38.044861>,  <34.569672, 43.360439, 37.766499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590637, 43.073956, 38.044861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076827, -0.691910, -0.717884,
		0.995666, 0.091092, 0.018758,
		0.052415, -0.716214, 0.695909,
		34.606361, 42.859093, 38.253635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.623400, 40.849472, 29.398508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.230001, 40.857639, 29.326597>,  <27.993963, 40.862541, 29.283451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.230001, 40.857639, 29.326597>,  <28.623400, 40.849472, 29.398508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230001, 40.857639, 29.326597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109850, -0.856914, 0.503618,
		-0.143768, 0.515054, 0.845015,
		-0.983496, 0.020421, -0.179776,
		27.934952, 40.863766, 29.272665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.106045, 40.831062, 29.974033>,  <28.623400, 40.849472, 29.398508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.106045, 40.831062, 29.974033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.926695, 40.645390, 29.668486>,  <27.819084, 40.533985, 29.485157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.926695, 40.645390, 29.668486>,  <28.106045, 40.831062, 29.974033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.926695, 40.645390, 29.668486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117808, -0.816445, 0.565278,
		-0.886048, 0.343447, 0.311389,
		-0.448374, -0.464180, -0.763870,
		27.792183, 40.506134, 29.439325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.559767, 40.595898, 30.282240>,  <28.106045, 40.831062, 29.974033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.559767, 40.595898, 30.282240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.595875, 40.376022, 29.950048>,  <27.617540, 40.244095, 29.750734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.595875, 40.376022, 29.950048>,  <27.559767, 40.595898, 30.282240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.595875, 40.376022, 29.950048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017939, -0.834644, 0.550498,
		-0.995756, -0.034795, -0.085204,
		0.090270, -0.549690, -0.830477,
		27.622955, 40.211117, 29.700905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.880213, 40.054607, 30.134357>,  <27.559767, 40.595898, 30.282240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.880213, 40.054607, 30.134357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.182934, 39.921093, 29.909557>,  <27.364567, 39.840984, 29.774677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.182934, 39.921093, 29.909557>,  <26.880213, 40.054607, 30.134357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.182934, 39.921093, 29.909557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176525, -0.723475, 0.667400,
		-0.629357, -0.604295, -0.488606,
		0.756802, -0.333782, -0.561998,
		27.409975, 39.820957, 29.740957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.635347, 39.408901, 29.957071>,  <26.880213, 40.054607, 30.134357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.635347, 39.408901, 29.957071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.034533, 39.426064, 29.938179>,  <27.274044, 39.436359, 29.926844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.034533, 39.426064, 29.938179>,  <26.635347, 39.408901, 29.957071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.034533, 39.426064, 29.938179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063287, -0.759957, 0.646885,
		-0.008140, -0.648556, -0.761124,
		0.997962, 0.042904, -0.047231,
		27.333921, 39.438934, 29.924009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.942326, 38.794872, 29.623497>,  <26.635347, 39.408901, 29.957071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.942326, 38.794872, 29.623497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.226650, 38.952957, 29.856239>,  <27.397245, 39.047806, 29.995884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.226650, 38.952957, 29.856239>,  <26.942326, 38.794872, 29.623497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.226650, 38.952957, 29.856239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033260, -0.845186, 0.533436,
		0.702594, -0.359821, -0.613914,
		0.710814, 0.395208, 0.581855,
		27.439894, 39.071518, 30.030796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.404350, 38.311184, 29.618469>,  <26.942326, 38.794872, 29.623497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.404350, 38.311184, 29.618469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.463373, 38.535366, 29.944443>,  <27.498787, 38.669876, 30.140026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.463373, 38.535366, 29.944443>,  <27.404350, 38.311184, 29.618469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.463373, 38.535366, 29.944443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056067, -0.817886, 0.572642,
		0.987463, -0.130187, -0.089260,
		0.147555, 0.560459, 0.814931,
		27.507639, 38.703503, 30.188923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.748648, 37.834675, 30.047058>,  <27.404350, 38.311184, 29.618469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.748648, 37.834675, 30.047058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.644979, 38.135708, 30.289200>,  <27.582779, 38.316326, 30.434484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.644979, 38.135708, 30.289200>,  <27.748648, 37.834675, 30.047058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644979, 38.135708, 30.289200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032742, -0.619565, 0.784262,
		0.965276, 0.223078, 0.135932,
		-0.259170, 0.752579, 0.605356,
		27.567228, 38.361481, 30.470806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167883, 37.787193, 30.636707>,  <27.748648, 37.834675, 30.047058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.167883, 37.787193, 30.636707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.867701, 38.026066, 30.749981>,  <27.687592, 38.169388, 30.817945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.867701, 38.026066, 30.749981>,  <28.167883, 37.787193, 30.636707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867701, 38.026066, 30.749981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042319, -0.471008, 0.881113,
		0.659566, 0.649251, 0.378742,
		-0.750454, 0.597180, 0.283186,
		27.642565, 38.205219, 30.834936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377048, 38.233704, 31.256359>,  <28.167883, 37.787193, 30.636707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.377048, 38.233704, 31.256359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.977551, 38.227325, 31.275356>,  <27.737852, 38.223499, 31.286755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.977551, 38.227325, 31.275356>,  <28.377048, 38.233704, 31.256359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.977551, 38.227325, 31.275356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050089, -0.336532, 0.940339,
		0.000984, 0.941537, 0.336908,
		-0.998744, -0.015950, 0.047492,
		27.677927, 38.222542, 31.289604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.332094, 38.547318, 31.871620>,  <28.377048, 38.233704, 31.256359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.332094, 38.547318, 31.871620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.968924, 38.395851, 31.799757>,  <27.751020, 38.304970, 31.756639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.968924, 38.395851, 31.799757>,  <28.332094, 38.547318, 31.871620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968924, 38.395851, 31.799757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004832, -0.438072, 0.898927,
		-0.419098, 0.815293, 0.399568,
		-0.907928, -0.378670, -0.179656,
		27.696545, 38.282249, 31.745861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991837, 38.524380, 32.509300>,  <28.332094, 38.547318, 31.871620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.991837, 38.524380, 32.509300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.754248, 38.276207, 32.304455>,  <27.611694, 38.127304, 32.181545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.754248, 38.276207, 32.304455>,  <27.991837, 38.524380, 32.509300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.754248, 38.276207, 32.304455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049951, -0.606906, 0.793202,
		-0.802933, 0.496722, 0.329495,
		-0.593973, -0.620429, -0.512117,
		27.576056, 38.090076, 32.150822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.330912, 38.384621, 32.927967>,  <27.991837, 38.524380, 32.509300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.330912, 38.384621, 32.927967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.408278, 38.074123, 32.687958>,  <27.454697, 37.887825, 32.543953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.408278, 38.074123, 32.687958>,  <27.330912, 38.384621, 32.927967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.408278, 38.074123, 32.687958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084896, -0.622522, 0.777984,
		-0.977437, -0.099535, -0.186306,
		0.193416, -0.776247, -0.600026,
		27.466303, 37.841248, 32.507950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.967972, 37.927113, 33.249138>,  <27.330912, 38.384621, 32.927967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.967972, 37.927113, 33.249138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.213650, 37.708485, 33.021446>,  <27.361057, 37.577309, 32.884830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.213650, 37.708485, 33.021446>,  <26.967972, 37.927113, 33.249138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.213650, 37.708485, 33.021446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035574, -0.739758, 0.671931,
		-0.788350, -0.392449, -0.473802,
		0.614198, -0.546572, -0.569227,
		27.397909, 37.544514, 32.850677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.632360, 37.186630, 33.147484>,  <26.967972, 37.927113, 33.249138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.632360, 37.186630, 33.147484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.019691, 37.124664, 33.069160>,  <27.252090, 37.087486, 33.022167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.019691, 37.124664, 33.069160>,  <26.632360, 37.186630, 33.147484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.019691, 37.124664, 33.069160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052457, -0.892966, 0.447057,
		-0.244108, -0.422626, -0.872811,
		0.968328, -0.154915, -0.195810,
		27.310190, 37.078190, 33.010418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.678558, 36.556744, 32.897045>,  <26.632360, 37.186630, 33.147484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.678558, 36.556744, 32.897045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.062490, 36.583359, 33.006077>,  <27.292850, 36.599327, 33.071495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.062490, 36.583359, 33.006077>,  <26.678558, 36.556744, 32.897045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.062490, 36.583359, 33.006077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052558, -0.911641, 0.407614,
		0.275612, -0.405566, -0.871524,
		0.959831, 0.066538, 0.272575,
		27.350439, 36.603321, 33.087849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777073, 35.837921, 32.874165>,  <26.678558, 36.556744, 32.897045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777073, 35.837921, 32.874165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.099680, 35.987812, 33.057079>,  <27.293243, 36.077747, 33.166828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.099680, 35.987812, 33.057079>,  <26.777073, 35.837921, 32.874165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.099680, 35.987812, 33.057079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045441, -0.810474, 0.584009,
		0.589461, -0.450234, -0.670690,
		0.806517, 0.374728, 0.457284,
		27.341635, 36.100231, 33.194263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.123678, 35.248959, 32.953579>,  <26.777073, 35.837921, 32.874165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.123678, 35.248959, 32.953579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.314484, 35.472927, 33.224560>,  <27.428967, 35.607307, 33.387150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.314484, 35.472927, 33.224560>,  <27.123678, 35.248959, 32.953579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.314484, 35.472927, 33.224560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121422, -0.805394, 0.580170,
		0.870469, -0.194490, -0.452170,
		0.477012, 0.559923, 0.677455,
		27.457588, 35.640903, 33.427795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799292, 35.043999, 33.161705>,  <27.123678, 35.248959, 32.953579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799292, 35.043999, 33.161705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.680912, 35.234184, 33.493092>,  <27.609884, 35.348297, 33.691921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.680912, 35.234184, 33.493092>,  <27.799292, 35.043999, 33.161705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.680912, 35.234184, 33.493092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301481, -0.776488, 0.553332,
		0.906380, 0.413522, 0.086456,
		-0.295947, 0.475464, 0.828462,
		27.592129, 35.376823, 33.741631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.247242, 34.845383, 33.663399>,  <27.799292, 35.043999, 33.161705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.247242, 34.845383, 33.663399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.943478, 34.998379, 33.873920>,  <27.761219, 35.090176, 34.000233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.943478, 34.998379, 33.873920>,  <28.247242, 34.845383, 33.663399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.943478, 34.998379, 33.873920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148403, -0.685781, 0.712517,
		0.633457, 0.619200, 0.464029,
		-0.759413, 0.382486, 0.526304,
		27.715654, 35.113125, 34.031811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591864, 34.436470, 34.056480>,  <28.247242, 34.845383, 33.663399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.591864, 34.436470, 34.056480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.867659, 34.169514, 34.169044>,  <29.033136, 34.009338, 34.236584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.867659, 34.169514, 34.169044>,  <28.591864, 34.436470, 34.056480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867659, 34.169514, 34.169044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646321, 0.391556, -0.654945,
		0.326918, 0.633459, 0.701323,
		0.689488, -0.667393, 0.281412,
		29.074505, 33.969296, 34.253468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.180744, 34.791153, 34.198578>,  <28.591864, 34.436470, 34.056480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.180744, 34.791153, 34.198578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.297281, 34.416298, 34.121746>,  <29.367203, 34.191383, 34.075649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.297281, 34.416298, 34.121746>,  <29.180744, 34.791153, 34.198578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297281, 34.416298, 34.121746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680994, 0.344190, -0.646360,
		0.671839, 0.057509, 0.738462,
		0.291343, -0.937137, -0.192077,
		29.384684, 34.135159, 34.064121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876188, 34.892410, 34.126263>,  <29.180744, 34.791153, 34.198578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876188, 34.892410, 34.126263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.794544, 34.543591, 33.948334>,  <29.745558, 34.334297, 33.841576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.794544, 34.543591, 33.948334>,  <29.876188, 34.892410, 34.126263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794544, 34.543591, 33.948334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601637, 0.246708, -0.759716,
		0.772251, -0.422689, 0.474302,
		-0.204109, -0.872049, -0.444826,
		29.733311, 34.281975, 33.814884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492229, 34.621861, 33.796085>,  <29.876188, 34.892410, 34.126263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492229, 34.621861, 33.796085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.222811, 34.411072, 33.588764>,  <30.061159, 34.284599, 33.464371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.222811, 34.411072, 33.588764>,  <30.492229, 34.621861, 33.796085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222811, 34.411072, 33.588764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568048, 0.079613, -0.819136,
		0.472924, -0.846147, 0.245721,
		-0.673547, -0.526970, -0.518303,
		30.020746, 34.252979, 33.433273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.872147, 34.289215, 33.268265>,  <30.492229, 34.621861, 33.796085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.872147, 34.289215, 33.268265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.502951, 34.266422, 33.116032>,  <30.281433, 34.252747, 33.024693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.502951, 34.266422, 33.116032>,  <30.872147, 34.289215, 33.268265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502951, 34.266422, 33.116032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351263, 0.279194, -0.893681,
		0.157179, -0.958543, -0.237678,
		-0.922989, -0.056980, -0.380584,
		30.226053, 34.249329, 33.001858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011343, 34.044342, 32.606625>,  <30.872147, 34.289215, 33.268265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011343, 34.044342, 32.606625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.637585, 34.186508, 32.596970>,  <30.413330, 34.271809, 32.591175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.637585, 34.186508, 32.596970>,  <31.011343, 34.044342, 32.606625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637585, 34.186508, 32.596970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197968, 0.461730, -0.864646,
		-0.296165, -0.812701, -0.501800,
		-0.934395, 0.355419, -0.024140,
		30.357265, 34.293133, 32.589729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827070, 33.960304, 31.857000>,  <31.011343, 34.044342, 32.606625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827070, 33.960304, 31.857000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.563150, 34.219646, 32.008945>,  <30.404799, 34.375252, 32.100113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.563150, 34.219646, 32.008945>,  <30.827070, 33.960304, 31.857000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563150, 34.219646, 32.008945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024815, 0.486437, -0.873363,
		-0.751033, -0.585669, -0.304861,
		-0.659798, 0.648360, 0.379863,
		30.365211, 34.414154, 32.122906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.235003, 34.016525, 31.379206>,  <30.827070, 33.960304, 31.857000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.235003, 34.016525, 31.379206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.254248, 34.357887, 31.586813>,  <30.265795, 34.562706, 31.711376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.254248, 34.357887, 31.586813>,  <30.235003, 34.016525, 31.379206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254248, 34.357887, 31.586813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053355, 0.521072, -0.851844,
		-0.997416, 0.013294, 0.070605,
		0.048114, 0.853409, 0.519016,
		30.268682, 34.613911, 31.742517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877666, 34.514160, 30.970295>,  <30.235003, 34.016525, 31.379206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877666, 34.514160, 30.970295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.064379, 34.736961, 31.245064>,  <30.176407, 34.870644, 31.409925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.064379, 34.736961, 31.245064>,  <29.877666, 34.514160, 30.970295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064379, 34.736961, 31.245064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009326, 0.773590, -0.633618,
		-0.884323, 0.302169, 0.355903,
		0.466783, 0.557004, 0.686921,
		30.204414, 34.904064, 31.451139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489632, 35.167854, 31.058435>,  <29.877666, 34.514160, 30.970295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489632, 35.167854, 31.058435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.860958, 35.256878, 31.177563>,  <30.083754, 35.310291, 31.249039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.860958, 35.256878, 31.177563>,  <29.489632, 35.167854, 31.058435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860958, 35.256878, 31.177563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018547, 0.772314, -0.634970,
		-0.371331, 0.594976, 0.712823,
		0.928315, 0.222564, 0.297819,
		30.139452, 35.323647, 31.266909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407438, 35.824413, 31.237030>,  <29.489632, 35.167854, 31.058435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407438, 35.824413, 31.237030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.794226, 35.760757, 31.157383>,  <30.026299, 35.722565, 31.109594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.794226, 35.760757, 31.157383>,  <29.407438, 35.824413, 31.237030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794226, 35.760757, 31.157383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006568, 0.796464, -0.604650,
		0.254812, 0.583369, 0.771201,
		0.966968, -0.159138, -0.199117,
		30.084316, 35.713017, 31.097649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761538, 36.454990, 31.512165>,  <29.407438, 35.824413, 31.237030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761538, 36.454990, 31.512165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.991520, 36.296379, 31.225895>,  <30.129509, 36.201210, 31.054132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.991520, 36.296379, 31.225895>,  <29.761538, 36.454990, 31.512165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.991520, 36.296379, 31.225895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006656, 0.876948, -0.480540,
		0.818159, 0.271525, 0.506844,
		0.574954, -0.396532, -0.715675,
		30.164005, 36.177418, 31.011192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246199, 37.029213, 31.354580>,  <29.761538, 36.454990, 31.512165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246199, 37.029213, 31.354580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.277138, 36.757015, 31.063118>,  <30.295700, 36.593697, 30.888241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.277138, 36.757015, 31.063118>,  <30.246199, 37.029213, 31.354580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277138, 36.757015, 31.063118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168450, 0.729258, -0.663180,
		0.982671, -0.071448, 0.171035,
		0.077346, -0.680498, -0.728656,
		30.300341, 36.552864, 30.844521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.916430, 37.023113, 31.150785>,  <30.246199, 37.029213, 31.354580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.916430, 37.023113, 31.150785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.682718, 36.920502, 30.842808>,  <30.542492, 36.858936, 30.658022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.682718, 36.920502, 30.842808>,  <30.916430, 37.023113, 31.150785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682718, 36.920502, 30.842808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263148, 0.837582, -0.478758,
		0.767705, -0.482338, -0.421876,
		-0.584279, -0.256529, -0.769943,
		30.507435, 36.843544, 30.611826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339130, 37.243923, 30.472830>,  <30.916430, 37.023113, 31.150785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339130, 37.243923, 30.472830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.970282, 37.170593, 30.336544>,  <30.748972, 37.126595, 30.254772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.970282, 37.170593, 30.336544>,  <31.339130, 37.243923, 30.472830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970282, 37.170593, 30.336544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130051, 0.682514, -0.719209,
		0.364392, -0.707507, -0.605518,
		-0.922120, -0.183326, -0.340714,
		30.693645, 37.115597, 30.234329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381876, 37.323074, 29.754972>,  <31.339130, 37.243923, 30.472830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381876, 37.323074, 29.754972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.988512, 37.357441, 29.818876>,  <30.752493, 37.378059, 29.857218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.988512, 37.357441, 29.818876>,  <31.381876, 37.323074, 29.754972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988512, 37.357441, 29.818876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059165, 0.680634, -0.730231,
		-0.171475, -0.727569, -0.664259,
		-0.983410, 0.085915, 0.159758,
		30.693489, 37.383217, 29.866804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192734, 37.459297, 29.047771>,  <31.381876, 37.323074, 29.754972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192734, 37.459297, 29.047771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.907377, 37.586979, 29.297310>,  <30.736164, 37.663589, 29.447033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.907377, 37.586979, 29.297310>,  <31.192734, 37.459297, 29.047771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907377, 37.586979, 29.297310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246227, 0.719292, -0.649609,
		-0.656084, -0.617033, -0.434540,
		-0.713391, 0.319203, 0.623846,
		30.693359, 37.682739, 29.484463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.489540, 37.537308, 28.632221>,  <31.192734, 37.459297, 29.047771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.489540, 37.537308, 28.632221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.512289, 37.775723, 28.952597>,  <30.525938, 37.918774, 29.144821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.512289, 37.775723, 28.952597>,  <30.489540, 37.537308, 28.632221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.512289, 37.775723, 28.952597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230068, 0.788470, -0.570424,
		-0.971511, -0.151828, 0.181973,
		0.056874, 0.596040, 0.800939,
		30.529352, 37.954533, 29.192879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962044, 37.989773, 28.523777>,  <30.489540, 37.537308, 28.632221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.962044, 37.989773, 28.523777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.184923, 38.169842, 28.802883>,  <30.318651, 38.277882, 28.970346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.184923, 38.169842, 28.802883>,  <29.962044, 37.989773, 28.523777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184923, 38.169842, 28.802883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213867, 0.889750, -0.403245,
		-0.802365, 0.075459, 0.592045,
		0.557200, 0.450168, 0.697765,
		30.352083, 38.304893, 29.012213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488512, 38.526394, 28.758690>,  <29.962044, 37.989773, 28.523777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488512, 38.526394, 28.758690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.857466, 38.640995, 28.862324>,  <30.078838, 38.709755, 28.924503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.857466, 38.640995, 28.862324>,  <29.488512, 38.526394, 28.758690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.857466, 38.640995, 28.862324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172711, 0.905835, -0.386826,
		-0.345514, 0.312055, 0.885009,
		0.922383, 0.286504, 0.259084,
		30.134180, 38.726948, 28.940048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.412319, 39.219063, 29.122892>,  <29.488512, 38.526394, 28.758690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.412319, 39.219063, 29.122892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.798717, 39.203583, 29.020636>,  <30.030556, 39.194294, 28.959282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.798717, 39.203583, 29.020636>,  <29.412319, 39.219063, 29.122892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798717, 39.203583, 29.020636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053754, 0.937065, -0.344994,
		0.252906, 0.347004, 0.903120,
		0.965996, -0.038705, -0.255642,
		30.088516, 39.191971, 28.943943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.953945, 38.763023, 29.601881>,  <29.412319, 39.219063, 29.122892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.953945, 38.763023, 29.601881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.679152, 38.690777, 29.320333>,  <28.514277, 38.647430, 29.151405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.679152, 38.690777, 29.320333>,  <28.953945, 38.763023, 29.601881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.679152, 38.690777, 29.320333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663458, 0.239249, -0.708932,
		0.296445, -0.954011, -0.044528,
		-0.686982, -0.180617, -0.703870,
		28.473057, 38.636593, 29.109173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.705597, 43.266327, 44.250237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.824535, 42.950451, 44.464890>,  <34.895901, 42.760925, 44.593681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.824535, 42.950451, 44.464890>,  <34.705597, 43.266327, 44.250237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824535, 42.950451, 44.464890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098537, 0.533675, 0.839929,
		-0.949670, -0.302632, 0.080875,
		0.297351, -0.789686, 0.536636,
		34.913742, 42.713547, 44.625881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215519, 43.268539, 44.788082>,  <34.705597, 43.266327, 44.250237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215519, 43.268539, 44.788082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.521679, 43.054817, 44.931572>,  <34.705376, 42.926582, 45.017666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.521679, 43.054817, 44.931572>,  <34.215519, 43.268539, 44.788082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521679, 43.054817, 44.931572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218915, 0.308004, 0.925856,
		-0.605180, -0.787178, 0.118778,
		0.765397, -0.534308, 0.358723,
		34.751297, 42.894524, 45.039188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664509, 42.849838, 45.125454>,  <34.215519, 43.268539, 44.788082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664509, 42.849838, 45.125454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.037113, 42.832630, 45.269920>,  <34.260674, 42.822304, 45.356602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.037113, 42.832630, 45.269920>,  <33.664509, 42.849838, 45.125454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037113, 42.832630, 45.269920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187636, 0.793806, 0.578502,
		-0.311583, -0.606648, 0.731365,
		0.931509, -0.043021, 0.361165,
		34.316566, 42.819725, 45.378269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634304, 42.824612, 45.785934>,  <33.664509, 42.849838, 45.125454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634304, 42.824612, 45.785934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.003212, 42.974094, 45.746410>,  <34.224556, 43.063786, 45.722698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.003212, 42.974094, 45.746410>,  <33.634304, 42.824612, 45.785934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003212, 42.974094, 45.746410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173452, 0.628527, 0.758201,
		0.345447, -0.682127, 0.644491,
		0.922269, 0.373706, -0.098806,
		34.279892, 43.086205, 45.716770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861992, 42.706459, 46.559319>,  <33.634304, 42.824612, 45.785934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861992, 42.706459, 46.559319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.093285, 42.976925, 46.376694>,  <34.232059, 43.139206, 46.267120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.093285, 42.976925, 46.376694>,  <33.861992, 42.706459, 46.559319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093285, 42.976925, 46.376694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056500, 0.591439, 0.804368,
		0.813917, -0.439312, 0.380190,
		0.578228, 0.676169, -0.456560,
		34.266754, 43.179775, 46.239727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228966, 42.889927, 47.146317>,  <33.861992, 42.706459, 46.559319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228966, 42.889927, 47.146317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.300434, 43.171650, 46.871498>,  <34.343315, 43.340683, 46.706608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.300434, 43.171650, 46.871498>,  <34.228966, 42.889927, 47.146317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300434, 43.171650, 46.871498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221941, 0.651434, 0.725517,
		0.958550, -0.282114, -0.039920,
		0.178673, 0.704305, -0.687045,
		34.354034, 43.382942, 46.665386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803341, 43.191998, 47.384960>,  <34.228966, 42.889927, 47.146317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803341, 43.191998, 47.384960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.644913, 43.439579, 47.113659>,  <34.549858, 43.588127, 46.950878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.644913, 43.439579, 47.113659>,  <34.803341, 43.191998, 47.384960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644913, 43.439579, 47.113659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107413, 0.764821, 0.635226,
		0.911917, 0.178740, -0.369405,
		-0.396069, 0.618952, -0.678254,
		34.526093, 43.625263, 46.910183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169312, 43.706661, 47.309765>,  <34.803341, 43.191998, 47.384960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169312, 43.706661, 47.309765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.811634, 43.847622, 47.199326>,  <34.597027, 43.932198, 47.133064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.811634, 43.847622, 47.199326>,  <35.169312, 43.706661, 47.309765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811634, 43.847622, 47.199326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103301, 0.762502, 0.638685,
		0.435600, 0.542587, -0.718228,
		-0.894193, 0.352405, -0.276096,
		34.543377, 43.953342, 47.116497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224537, 44.474979, 47.218021>,  <35.169312, 43.706661, 47.309765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224537, 44.474979, 47.218021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.832901, 44.411503, 47.268929>,  <34.597919, 44.373417, 47.299473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.832901, 44.411503, 47.268929>,  <35.224537, 44.474979, 47.218021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832901, 44.411503, 47.268929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024031, 0.711470, 0.702305,
		-0.201997, 0.684563, -0.700408,
		-0.979091, -0.158695, 0.127264,
		34.539173, 44.363895, 47.307106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872593, 45.173729, 47.222744>,  <35.224537, 44.474979, 47.218021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872593, 45.173729, 47.222744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.616104, 44.914108, 47.386482>,  <34.462212, 44.758335, 47.484726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.616104, 44.914108, 47.386482>,  <34.872593, 45.173729, 47.222744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616104, 44.914108, 47.386482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149830, 0.629081, 0.762764,
		-0.752584, 0.427770, -0.500629,
		-0.641224, -0.649053, 0.409343,
		34.423737, 44.719391, 47.509285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428795, 45.519695, 47.529156>,  <34.872593, 45.173729, 47.222744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428795, 45.519695, 47.529156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.344246, 45.175255, 47.714119>,  <34.293518, 44.968590, 47.825096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.344246, 45.175255, 47.714119>,  <34.428795, 45.519695, 47.529156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344246, 45.175255, 47.714119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037485, 0.479892, 0.876527,
		-0.976687, 0.167937, -0.133713,
		-0.211369, -0.861105, 0.462409,
		34.280834, 44.916924, 47.852840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764130, 45.524807, 47.911747>,  <34.428795, 45.519695, 47.529156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764130, 45.524807, 47.911747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.014957, 45.264980, 48.083721>,  <34.165455, 45.109085, 48.186905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.014957, 45.264980, 48.083721>,  <33.764130, 45.524807, 47.911747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014957, 45.264980, 48.083721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078772, 0.496228, 0.864612,
		-0.774972, -0.576037, 0.260000,
		0.627067, -0.649569, 0.429938,
		34.203079, 45.070110, 48.212704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600483, 46.162544, 48.207333>,  <33.764130, 45.524807, 47.911747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600483, 46.162544, 48.207333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.477184, 45.832077, 48.395981>,  <33.403206, 45.633797, 48.509171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.477184, 45.832077, 48.395981>,  <33.600483, 46.162544, 48.207333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477184, 45.832077, 48.395981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395528, 0.339574, 0.853374,
		-0.865182, 0.449591, 0.222100,
		-0.308249, -0.826170, 0.471619,
		33.384708, 45.584225, 48.537468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909462, 46.212578, 48.571892>,  <33.600483, 46.162544, 48.207333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909462, 46.212578, 48.571892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.199013, 46.001263, 48.749390>,  <33.372742, 45.874474, 48.855888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.199013, 46.001263, 48.749390>,  <32.909462, 46.212578, 48.571892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199013, 46.001263, 48.749390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141976, 0.743472, 0.653523,
		-0.675162, -0.410069, 0.613188,
		0.723878, -0.528292, 0.443744,
		33.416176, 45.842773, 48.882511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548546, 46.588573, 48.093231>,  <32.909462, 46.212578, 48.571892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548546, 46.588573, 48.093231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.247841, 46.768570, 47.900417>,  <32.067417, 46.876568, 47.784729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.247841, 46.768570, 47.900417>,  <32.548546, 46.588573, 48.093231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247841, 46.768570, 47.900417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350584, -0.346386, -0.870119,
		-0.558515, -0.823120, 0.102642,
		-0.751766, 0.449990, -0.482035,
		32.022312, 46.903568, 47.755806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228222, 46.021378, 47.669518>,  <32.548546, 46.588573, 48.093231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228222, 46.021378, 47.669518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.099686, 46.352924, 47.486340>,  <32.022564, 46.551853, 47.376434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.099686, 46.352924, 47.486340>,  <32.228222, 46.021378, 47.669518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099686, 46.352924, 47.486340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299558, -0.369780, -0.879505,
		-0.898333, -0.419803, -0.129469,
		-0.321344, 0.828871, -0.457941,
		32.003281, 46.601585, 47.348957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895029, 45.717468, 47.166245>,  <32.228222, 46.021378, 47.669518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895029, 45.717468, 47.166245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.981236, 46.083229, 47.029175>,  <32.032959, 46.302685, 46.946934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.981236, 46.083229, 47.029175>,  <31.895029, 45.717468, 47.166245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981236, 46.083229, 47.029175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507176, -0.404698, -0.760915,
		-0.834461, -0.009807, -0.550980,
		0.215519, 0.914398, -0.342679,
		32.045891, 46.357548, 46.926373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830297, 45.766945, 46.353008>,  <31.895029, 45.717468, 47.166245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830297, 45.766945, 46.353008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.030136, 46.105957, 46.424667>,  <32.150040, 46.309364, 46.467663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.030136, 46.105957, 46.424667>,  <31.830297, 45.766945, 46.353008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030136, 46.105957, 46.424667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485923, -0.102986, -0.867913,
		-0.717134, 0.520658, -0.463286,
		0.499598, 0.847531, 0.179145,
		32.180016, 46.360218, 46.478413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663111, 46.281681, 45.968185>,  <31.830297, 45.766945, 46.353008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663111, 46.281681, 45.968185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.048710, 46.322712, 46.066319>,  <32.280067, 46.347332, 46.125198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.048710, 46.322712, 46.066319>,  <31.663111, 46.281681, 45.968185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048710, 46.322712, 46.066319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265043, -0.295900, -0.917712,
		-0.021540, 0.949695, -0.312434,
		0.963996, 0.102576, 0.245337,
		32.337910, 46.353485, 46.139919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958078, 46.627209, 45.417053>,  <31.663111, 46.281681, 45.968185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958078, 46.627209, 45.417053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.265331, 46.484337, 45.629616>,  <32.449684, 46.398613, 45.757153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.265331, 46.484337, 45.629616>,  <31.958078, 46.627209, 45.417053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265331, 46.484337, 45.629616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473639, -0.241506, -0.846960,
		0.430859, 0.902272, -0.016332,
		0.768132, -0.357184, 0.531406,
		32.495770, 46.377182, 45.789036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499939, 46.850899, 45.024570>,  <31.958078, 46.627209, 45.417053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499939, 46.850899, 45.024570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.693729, 46.599941, 45.268429>,  <32.810001, 46.449368, 45.414745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.693729, 46.599941, 45.268429>,  <32.499939, 46.850899, 45.024570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693729, 46.599941, 45.268429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464450, -0.406094, -0.787003,
		0.741331, 0.664432, 0.094649,
		0.484473, -0.627390, 0.609646,
		32.839073, 46.411724, 45.451321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150696, 46.740147, 44.787289>,  <32.499939, 46.850899, 45.024570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150696, 46.740147, 44.787289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.133488, 46.408901, 45.010853>,  <33.123161, 46.210155, 45.144993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.133488, 46.408901, 45.010853>,  <33.150696, 46.740147, 44.787289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133488, 46.408901, 45.010853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292484, -0.545362, -0.785515,
		0.955302, 0.129677, 0.265672,
		-0.043024, -0.828109, 0.558914,
		33.120579, 46.160469, 45.178528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770512, 46.362408, 44.576603>,  <33.150696, 46.740147, 44.787289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770512, 46.362408, 44.576603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.515419, 46.100151, 44.738312>,  <33.362362, 45.942799, 44.835339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.515419, 46.100151, 44.738312>,  <33.770512, 46.362408, 44.576603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515419, 46.100151, 44.738312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106273, -0.594728, -0.796872,
		0.762892, -0.465227, 0.448953,
		-0.637731, -0.655639, 0.404272,
		33.324100, 45.903458, 44.859592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097050, 45.705593, 44.482761>,  <33.770512, 46.362408, 44.576603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097050, 45.705593, 44.482761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.705952, 45.636356, 44.530170>,  <33.471291, 45.594814, 44.558617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.705952, 45.636356, 44.530170>,  <34.097050, 45.705593, 44.482761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705952, 45.636356, 44.530170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010903, -0.522281, -0.852704,
		0.209494, -0.835023, 0.508772,
		-0.977749, -0.173089, 0.118518,
		33.412628, 45.584431, 44.565727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027779, 45.041504, 44.322487>,  <34.097050, 45.705593, 44.482761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027779, 45.041504, 44.322487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.671879, 45.210136, 44.252491>,  <33.458340, 45.311314, 44.210495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.671879, 45.210136, 44.252491>,  <34.027779, 45.041504, 44.322487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671879, 45.210136, 44.252491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103781, -0.560165, -0.821854,
		-0.444495, -0.713083, 0.542158,
		-0.889749, 0.421576, -0.174986,
		33.404953, 45.336609, 44.199997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553696, 44.555630, 44.295143>,  <34.027779, 45.041504, 44.322487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553696, 44.555630, 44.295143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.385246, 44.846905, 44.078850>,  <33.284176, 45.021671, 43.949074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.385246, 44.846905, 44.078850>,  <33.553696, 44.555630, 44.295143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385246, 44.846905, 44.078850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066898, -0.619491, -0.782148,
		-0.904535, -0.293204, 0.309595,
		-0.421120, 0.728191, -0.540737,
		33.258911, 45.065361, 43.916630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350521, 44.176449, 43.778061>,  <33.553696, 44.555630, 44.295143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350521, 44.176449, 43.778061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.289993, 44.548462, 43.644112>,  <33.253677, 44.771671, 43.563740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.289993, 44.548462, 43.644112>,  <33.350521, 44.176449, 43.778061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289993, 44.548462, 43.644112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090926, -0.324246, -0.941593,
		-0.984294, -0.172928, -0.035501,
		-0.151317, 0.930032, -0.334877,
		33.244598, 44.827473, 43.543648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753353, 44.200119, 43.285175>,  <33.350521, 44.176449, 43.778061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753353, 44.200119, 43.285175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.993507, 44.509880, 43.205345>,  <33.137600, 44.695736, 43.157448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.993507, 44.509880, 43.205345>,  <32.753353, 44.200119, 43.285175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993507, 44.509880, 43.205345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033873, -0.273962, -0.961144,
		-0.798990, 0.570300, -0.190715,
		0.600389, 0.774405, -0.199575,
		33.173626, 44.742203, 43.145473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000637, 44.319626, 43.247803>,  <32.753353, 44.200119, 43.285175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000637, 44.319626, 43.247803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.740076, 44.018215, 43.283283>,  <31.583738, 43.837368, 43.304573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.740076, 44.018215, 43.283283>,  <32.000637, 44.319626, 43.247803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740076, 44.018215, 43.283283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249640, 0.323254, 0.912791,
		-0.716486, 0.572453, -0.398680,
		-0.651404, -0.753528, 0.088700,
		31.544655, 43.792156, 43.309895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407040, 44.620502, 43.632679>,  <32.000637, 44.319626, 43.247803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407040, 44.620502, 43.632679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.373466, 44.223492, 43.668098>,  <31.353323, 43.985283, 43.689350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.373466, 44.223492, 43.668098>,  <31.407040, 44.620502, 43.632679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.373466, 44.223492, 43.668098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272880, 0.108357, 0.955926,
		-0.958380, 0.056071, -0.279936,
		-0.083933, -0.992529, 0.088547,
		31.348288, 43.925732, 43.694664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732105, 44.437309, 43.684483>,  <31.407040, 44.620502, 43.632679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.732105, 44.437309, 43.684483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.930809, 44.139385, 43.862690>,  <31.050032, 43.960632, 43.969612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.930809, 44.139385, 43.862690>,  <30.732105, 44.437309, 43.684483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.930809, 44.139385, 43.862690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436676, 0.229124, 0.869952,
		-0.750029, -0.626704, -0.211421,
		0.496760, -0.744812, 0.445516,
		31.079838, 43.915943, 43.996346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.164982, 44.199287, 44.177738>,  <30.732105, 44.437309, 43.684483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.164982, 44.199287, 44.177738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.506832, 44.032616, 44.301666>,  <30.711943, 43.932613, 44.376022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.506832, 44.032616, 44.301666>,  <30.164982, 44.199287, 44.177738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.506832, 44.032616, 44.301666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328349, 0.028550, 0.944125,
		-0.402242, -0.908605, -0.112416,
		0.854628, -0.416679, 0.309823,
		30.763220, 43.907612, 44.394615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992825, 43.624508, 44.607895>,  <30.164982, 44.199287, 44.177738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992825, 43.624508, 44.607895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.374449, 43.722935, 44.676273>,  <30.603422, 43.781990, 44.717300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.374449, 43.722935, 44.676273>,  <29.992825, 43.624508, 44.607895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374449, 43.722935, 44.676273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222653, 0.200490, 0.954060,
		0.200490, -0.948291, 0.246066,
		-0.954060, -0.246066, -0.170944,
		30.660667, 43.796753, 44.727558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.103096, 43.331749, 45.285564>,  <29.992825, 43.624508, 44.607895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.103096, 43.331749, 45.285564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.406698, 43.588737, 45.243336>,  <30.588860, 43.742931, 45.217999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.406698, 43.588737, 45.243336>,  <30.103096, 43.331749, 45.285564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406698, 43.588737, 45.243336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164995, 0.346651, 0.923369,
		0.629833, -0.683422, 0.369114,
		0.759004, 0.642470, -0.105571,
		30.634399, 43.781479, 45.211666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453379, 43.315182, 45.892750>,  <30.103096, 43.331749, 45.285564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453379, 43.315182, 45.892750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.558685, 43.659058, 45.717648>,  <30.621870, 43.865383, 45.612587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.558685, 43.659058, 45.717648>,  <30.453379, 43.315182, 45.892750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558685, 43.659058, 45.717648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156082, 0.485739, 0.860056,
		0.952013, -0.158100, 0.262061,
		0.263268, 0.859687, -0.437753,
		30.637665, 43.916965, 45.586323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226820, 42.999859, 45.863937>,  <30.453379, 43.315182, 45.892750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226820, 42.999859, 45.863937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.290529, 42.738483, 46.159950>,  <31.328754, 42.581657, 46.337559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.290529, 42.738483, 46.159950>,  <31.226820, 42.999859, 45.863937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290529, 42.738483, 46.159950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405240, -0.640268, -0.652562,
		0.900229, 0.403827, 0.162822,
		0.159273, -0.653437, 0.740035,
		31.338310, 42.542454, 46.381962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933582, 42.873619, 45.857311>,  <31.226820, 42.999859, 45.863937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933582, 42.873619, 45.857311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.742918, 42.556377, 46.008987>,  <31.628519, 42.366032, 46.099995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.742918, 42.556377, 46.008987>,  <31.933582, 42.873619, 45.857311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742918, 42.556377, 46.008987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522225, -0.602450, -0.603602,
		0.707161, -0.089691, 0.701341,
		-0.476661, -0.793101, 0.379190,
		31.599920, 42.318447, 46.122746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469845, 42.372566, 46.049198>,  <31.933582, 42.873619, 45.857311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469845, 42.372566, 46.049198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.133831, 42.159595, 46.007507>,  <31.932222, 42.031815, 45.982494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.133831, 42.159595, 46.007507>,  <32.469845, 42.372566, 46.049198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133831, 42.159595, 46.007507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463369, -0.604168, -0.648283,
		0.282192, -0.592875, 0.754232,
		-0.840034, -0.532428, -0.104228,
		31.881821, 41.999866, 45.976238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707092, 41.718971, 46.205662>,  <32.469845, 42.372566, 46.049198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707092, 41.718971, 46.205662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.384880, 41.697987, 45.969570>,  <32.191551, 41.685394, 45.827915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.384880, 41.697987, 45.969570>,  <32.707092, 41.718971, 46.205662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384880, 41.697987, 45.969570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466846, -0.669630, -0.577624,
		-0.364931, -0.740839, 0.563899,
		-0.805531, -0.052461, -0.590227,
		32.143219, 41.682247, 45.792503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661728, 41.074833, 45.939636>,  <32.707092, 41.718971, 46.205662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661728, 41.074833, 45.939636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.395180, 41.255180, 45.702091>,  <32.235252, 41.363388, 45.559563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.395180, 41.255180, 45.702091>,  <32.661728, 41.074833, 45.939636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395180, 41.255180, 45.702091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072247, -0.753671, -0.653269,
		-0.742100, -0.478231, 0.469661,
		-0.666384, 0.450859, -0.593851,
		32.195271, 41.390442, 45.523933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260223, 40.502602, 45.547821>,  <32.661728, 41.074833, 45.939636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260223, 40.502602, 45.547821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.247559, 40.841240, 45.335304>,  <32.239960, 41.044422, 45.207794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.247559, 40.841240, 45.335304>,  <32.260223, 40.502602, 45.547821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247559, 40.841240, 45.335304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033974, -0.532166, -0.845958,
		-0.998921, -0.008737, 0.045614,
		-0.031665, 0.846595, -0.531295,
		32.238060, 41.095219, 45.175915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712887, 40.335461, 44.961811>,  <32.260223, 40.502602, 45.547821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712887, 40.335461, 44.961811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.937817, 40.643044, 44.840157>,  <32.072773, 40.827595, 44.767166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.937817, 40.643044, 44.840157>,  <31.712887, 40.335461, 44.961811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937817, 40.643044, 44.840157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209816, -0.223075, -0.951953,
		-0.799855, 0.599118, 0.035899,
		0.562324, 0.768957, -0.304132,
		32.106514, 40.873730, 44.748917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.953617, 42.522285, 49.618404> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.872425, 42.792702, 49.335064>,  <35.823711, 42.954952, 49.165058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.872425, 42.792702, 49.335064>,  <35.953617, 42.522285, 49.618404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872425, 42.792702, 49.335064> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044801, -0.716244, -0.696410,
		-0.978158, -0.173090, 0.115094,
		-0.202977, 0.676043, -0.708354,
		35.811531, 42.995514, 49.122559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406879, 42.228321, 49.263466>,  <35.953617, 42.522285, 49.618404>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406879, 42.228321, 49.263466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.577663, 42.502354, 49.027374>,  <35.680134, 42.666771, 48.885719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.577663, 42.502354, 49.027374>,  <35.406879, 42.228321, 49.263466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577663, 42.502354, 49.027374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152398, -0.588867, -0.793732,
		-0.891337, 0.428841, -0.147017,
		0.426959, 0.685077, -0.590233,
		35.705750, 42.707878, 48.850304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080368, 42.208569, 48.632332>,  <35.406879, 42.228321, 49.263466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080368, 42.208569, 48.632332> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.437656, 42.374153, 48.562149>,  <35.652031, 42.473503, 48.520039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.437656, 42.374153, 48.562149>,  <35.080368, 42.208569, 48.632332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437656, 42.374153, 48.562149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048647, -0.476928, -0.877595,
		-0.446973, 0.775354, -0.446141,
		0.893224, 0.413964, -0.175455,
		35.705624, 42.498341, 48.509514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076370, 42.457970, 47.879177>,  <35.080368, 42.208569, 48.632332>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076370, 42.457970, 47.879177> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.436752, 42.364178, 48.025215>,  <35.652981, 42.307903, 48.112839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.436752, 42.364178, 48.025215>,  <35.076370, 42.457970, 47.879177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436752, 42.364178, 48.025215> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222176, -0.473461, -0.852334,
		0.372714, 0.849032, -0.374472,
		0.900956, -0.234478, 0.365100,
		35.707039, 42.293835, 48.134747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572079, 42.636681, 47.334179>,  <35.076370, 42.457970, 47.879177>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572079, 42.636681, 47.334179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.734070, 42.365635, 47.579723>,  <35.831264, 42.203007, 47.727051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.734070, 42.365635, 47.579723>,  <35.572079, 42.636681, 47.334179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734070, 42.365635, 47.579723> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336369, -0.513883, -0.789164,
		0.850204, 0.526080, 0.019817,
		0.404980, -0.677617, 0.613862,
		35.855564, 42.162350, 47.763882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349300, 42.669476, 47.183548>,  <35.572079, 42.636681, 47.334179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349300, 42.669476, 47.183548> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.248302, 42.327183, 47.364201>,  <36.187702, 42.121807, 47.472591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.248302, 42.327183, 47.364201>,  <36.349300, 42.669476, 47.183548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248302, 42.327183, 47.364201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468948, -0.516497, -0.716462,
		0.846364, 0.030885, 0.531709,
		-0.252498, -0.855732, 0.451628,
		36.172554, 42.070465, 47.499687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785091, 42.229382, 46.887417>,  <36.349300, 42.669476, 47.183548>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785091, 42.229382, 46.887417> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.533447, 41.960930, 47.044292>,  <36.382462, 41.799858, 47.138420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.533447, 41.960930, 47.044292>,  <36.785091, 42.229382, 46.887417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533447, 41.960930, 47.044292> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400834, -0.712379, -0.576063,
		0.665999, -0.205202, 0.717173,
		-0.629108, -0.671125, 0.392192,
		36.344715, 41.759594, 47.161949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140896, 41.541348, 46.949986>,  <36.785091, 42.229382, 46.887417>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140896, 41.541348, 46.949986> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.778816, 41.397518, 47.040600>,  <36.561569, 41.311222, 47.094967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.778816, 41.397518, 47.040600>,  <37.140896, 41.541348, 46.949986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778816, 41.397518, 47.040600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218233, -0.850684, -0.478237,
		0.364671, -0.383463, 0.848511,
		-0.905201, -0.359573, 0.226535,
		36.507256, 41.289646, 47.108559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288544, 40.902885, 47.160839>,  <37.140896, 41.541348, 46.949986>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288544, 40.902885, 47.160839> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.906651, 40.940174, 47.047852>,  <36.677513, 40.962547, 46.980057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.906651, 40.940174, 47.047852>,  <37.288544, 40.902885, 47.160839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906651, 40.940174, 47.047852> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095786, -0.802690, -0.588654,
		-0.281612, -0.589065, 0.757427,
		-0.954735, 0.093221, -0.282471,
		36.620232, 40.968140, 46.963112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955524, 40.256718, 47.361813>,  <37.288544, 40.902885, 47.160839>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955524, 40.256718, 47.361813> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.722397, 40.415604, 47.078251>,  <36.582520, 40.510937, 46.908115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.722397, 40.415604, 47.078251>,  <36.955524, 40.256718, 47.361813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722397, 40.415604, 47.078251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032225, -0.882995, -0.468275,
		-0.811962, -0.250076, 0.527426,
		-0.582819, 0.397218, -0.708900,
		36.547550, 40.534771, 46.865582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431713, 39.776733, 47.158737>,  <36.955524, 40.256718, 47.361813>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431713, 39.776733, 47.158737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.427906, 40.002007, 46.828228>,  <36.425621, 40.137173, 46.629921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.427906, 40.002007, 46.828228>,  <36.431713, 39.776733, 47.158737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427906, 40.002007, 46.828228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125951, -0.819057, -0.559715,
		-0.991991, -0.109398, -0.063137,
		-0.009519, 0.563185, -0.826276,
		36.425049, 40.170963, 46.580345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931023, 39.476933, 46.740986>,  <36.431713, 39.776733, 47.158737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931023, 39.476933, 46.740986> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.163898, 39.685925, 46.491806>,  <36.303623, 39.811321, 46.342297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.163898, 39.685925, 46.491806>,  <35.931023, 39.476933, 46.740986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163898, 39.685925, 46.491806> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004744, -0.768357, -0.640004,
		-0.813041, 0.369647, -0.449806,
		0.582187, 0.522484, -0.622952,
		36.338554, 39.842670, 46.304920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195053, 39.598064, 46.620552>,  <35.931023, 39.476933, 46.740986>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195053, 39.598064, 46.620552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.889256, 39.385941, 46.767155>,  <34.705780, 39.258667, 46.855114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.889256, 39.385941, 46.767155>,  <35.195053, 39.598064, 46.620552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889256, 39.385941, 46.767155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232188, 0.756906, 0.610886,
		-0.601369, 0.381918, -0.701778,
		-0.764489, -0.530313, 0.366503,
		34.659908, 39.226849, 46.877106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613113, 40.049709, 46.664642>,  <35.195053, 39.598064, 46.620552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613113, 40.049709, 46.664642> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.563568, 39.743248, 46.916889>,  <34.533840, 39.559372, 47.068237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.563568, 39.743248, 46.916889>,  <34.613113, 40.049709, 46.664642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563568, 39.743248, 46.916889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236767, 0.639970, 0.731013,
		-0.963638, -0.058761, -0.260669,
		-0.123865, -0.766150, 0.630612,
		34.526409, 39.513405, 47.106071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974621, 40.126774, 46.857006>,  <34.613113, 40.049709, 46.664642>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974621, 40.126774, 46.857006> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.133217, 39.899918, 47.145771>,  <34.228374, 39.763805, 47.319031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.133217, 39.899918, 47.145771>,  <33.974621, 40.126774, 46.857006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133217, 39.899918, 47.145771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523992, 0.505881, 0.685213,
		-0.753811, -0.649951, -0.096603,
		0.396486, -0.567140, 0.721908,
		34.252163, 39.729774, 47.362343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449348, 40.085159, 47.272961>,  <33.974621, 40.126774, 46.857006>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449348, 40.085159, 47.272961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.770332, 39.974995, 47.484703>,  <33.962921, 39.908897, 47.611748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.770332, 39.974995, 47.484703>,  <33.449348, 40.085159, 47.272961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770332, 39.974995, 47.484703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296679, 0.585558, 0.754390,
		-0.517731, -0.762413, 0.388177,
		0.802456, -0.275407, 0.529353,
		34.011070, 39.892372, 47.643509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311031, 39.830704, 47.883362>,  <33.449348, 40.085159, 47.272961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311031, 39.830704, 47.883362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.688148, 39.934875, 47.966621>,  <33.914417, 39.997379, 48.016579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.688148, 39.934875, 47.966621>,  <33.311031, 39.830704, 47.883362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688148, 39.934875, 47.966621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321892, 0.548497, 0.771711,
		0.086803, -0.794562, 0.600946,
		0.942789, 0.260426, 0.208152,
		33.970985, 40.013004, 48.029068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379047, 39.753174, 48.604233>,  <33.311031, 39.830704, 47.883362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379047, 39.753174, 48.604233> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.640640, 40.027836, 48.477230>,  <33.797596, 40.192635, 48.401028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.640640, 40.027836, 48.477230>,  <33.379047, 39.753174, 48.604233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640640, 40.027836, 48.477230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287215, 0.613639, 0.735496,
		0.699871, -0.389805, 0.598525,
		0.653979, 0.686657, -0.317510,
		33.836834, 40.233833, 48.381977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769588, 39.995171, 49.212090>,  <33.379047, 39.753174, 48.604233>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769588, 39.995171, 49.212090> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.833031, 40.291656, 48.951183>,  <33.871098, 40.469547, 48.794640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.833031, 40.291656, 48.951183>,  <33.769588, 39.995171, 49.212090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833031, 40.291656, 48.951183> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151876, 0.671077, 0.725665,
		0.975591, -0.016033, 0.219010,
		0.158607, 0.741215, -0.652261,
		33.880611, 40.514019, 48.755505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952282, 40.444019, 49.680801>,  <33.769588, 39.995171, 49.212090>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952282, 40.444019, 49.680801> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.884071, 40.649681, 49.344570>,  <33.843147, 40.773079, 49.142834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.884071, 40.649681, 49.344570>,  <33.952282, 40.444019, 49.680801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884071, 40.649681, 49.344570> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167165, 0.825608, 0.538912,
		0.971071, 0.232412, -0.054836,
		-0.170522, 0.514155, -0.840575,
		33.832916, 40.803928, 49.092396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230465, 41.012318, 49.900558>,  <33.952282, 40.444019, 49.680801>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230465, 41.012318, 49.900558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.032349, 41.103088, 49.565132>,  <33.913479, 41.157551, 49.363876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.032349, 41.103088, 49.565132>,  <34.230465, 41.012318, 49.900558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032349, 41.103088, 49.565132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230796, 0.896217, 0.378851,
		0.837509, 0.381179, -0.391512,
		-0.495290, 0.226931, -0.838564,
		33.883762, 41.171169, 49.313564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437344, 41.779327, 49.701527>,  <34.230465, 41.012318, 49.900558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437344, 41.779327, 49.701527> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.076565, 41.676632, 49.562630>,  <33.860096, 41.615017, 49.479294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.076565, 41.676632, 49.562630>,  <34.437344, 41.779327, 49.701527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076565, 41.676632, 49.562630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362030, 0.887882, 0.283902,
		0.235420, 0.381776, -0.893770,
		-0.901949, -0.256735, -0.347240,
		33.805981, 41.599613, 49.458458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181461, 42.335571, 49.339565>,  <34.437344, 41.779327, 49.701527>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181461, 42.335571, 49.339565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.829372, 42.149017, 49.374653>,  <33.618118, 42.037086, 49.395706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.829372, 42.149017, 49.374653>,  <34.181461, 42.335571, 49.339565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829372, 42.149017, 49.374653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434928, 0.866757, 0.244069,
		-0.189861, 0.176684, -0.965782,
		-0.880222, -0.466385, 0.087719,
		33.565308, 42.009102, 49.400967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647060, 42.741993, 48.971249>,  <34.181461, 42.335571, 49.339565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647060, 42.741993, 48.971249> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.452133, 42.523808, 49.244011>,  <33.335178, 42.392899, 49.407669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.452133, 42.523808, 49.244011>,  <33.647060, 42.741993, 48.971249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452133, 42.523808, 49.244011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478999, 0.819910, 0.313539,
		-0.730123, -0.173837, -0.660833,
		-0.487319, -0.545461, 0.681903,
		33.305939, 42.360168, 49.448582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941257, 43.061131, 48.979675>,  <33.647060, 42.741993, 48.971249>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941257, 43.061131, 48.979675> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.966354, 42.819344, 49.297337>,  <32.981411, 42.674271, 49.487934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.966354, 42.819344, 49.297337>,  <32.941257, 43.061131, 48.979675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966354, 42.819344, 49.297337> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437675, 0.698462, 0.566208,
		-0.896941, -0.383108, -0.220736,
		0.062743, -0.604466, 0.794156,
		32.985176, 42.638004, 49.535583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205982, 42.905209, 49.246861>,  <32.941257, 43.061131, 48.979675>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205982, 42.905209, 49.246861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.492615, 42.895069, 49.525681>,  <32.664593, 42.888985, 49.692970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.492615, 42.895069, 49.525681>,  <32.205982, 42.905209, 49.246861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492615, 42.895069, 49.525681> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438876, 0.760341, 0.478821,
		-0.542130, -0.649029, 0.533719,
		0.716578, -0.025347, 0.697047,
		32.707588, 42.887466, 49.734795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608465, 43.206657, 49.405201>,  <32.205982, 42.905209, 49.246861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608465, 43.206657, 49.405201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.222103, 43.261749, 49.317513>,  <30.990286, 43.294804, 49.264900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.222103, 43.261749, 49.317513>,  <31.608465, 43.206657, 49.405201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222103, 43.261749, 49.317513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125446, -0.491741, -0.861658,
		-0.226478, -0.859780, 0.457697,
		-0.965904, 0.137730, -0.219225,
		30.932331, 43.303070, 49.251743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365225, 42.597683, 49.143051>,  <31.608465, 43.206657, 49.405201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365225, 42.597683, 49.143051> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.099663, 42.861435, 49.001942>,  <30.940325, 43.019688, 48.917278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.099663, 42.861435, 49.001942>,  <31.365225, 42.597683, 49.143051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099663, 42.861435, 49.001942> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013581, -0.461024, -0.887284,
		-0.747693, -0.593864, 0.297121,
		-0.663906, 0.659381, -0.352769,
		30.900492, 43.059250, 48.896111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958607, 42.234074, 48.741703>,  <31.365225, 42.597683, 49.143051>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958607, 42.234074, 48.741703> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.897341, 42.594410, 48.579212>,  <30.860580, 42.810612, 48.481716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.897341, 42.594410, 48.579212>,  <30.958607, 42.234074, 48.741703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897341, 42.594410, 48.579212> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011118, -0.412624, -0.910834,
		-0.988138, -0.134993, 0.073216,
		-0.153167, 0.900843, -0.406229,
		30.851391, 42.864662, 48.457344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377604, 42.106609, 48.274269>,  <30.958607, 42.234074, 48.741703>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377604, 42.106609, 48.274269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.577833, 42.438713, 48.176220>,  <30.697971, 42.637978, 48.117390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.577833, 42.438713, 48.176220>,  <30.377604, 42.106609, 48.274269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577833, 42.438713, 48.176220> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062924, -0.317304, -0.946234,
		-0.863402, 0.458238, -0.211079,
		0.500576, 0.830263, -0.245127,
		30.728006, 42.687794, 48.102680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012331, 42.381794, 47.674545>,  <30.377604, 42.106609, 48.274269>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012331, 42.381794, 47.674545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.370695, 42.558170, 47.652950>,  <30.585712, 42.663998, 47.639992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.370695, 42.558170, 47.652950>,  <30.012331, 42.381794, 47.674545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370695, 42.558170, 47.652950> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086510, -0.292379, -0.952381,
		-0.435733, 0.848577, -0.300091,
		0.895909, 0.440945, -0.053988,
		30.639467, 42.690453, 47.636753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992758, 42.751289, 47.085873>,  <30.012331, 42.381794, 47.674545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992758, 42.751289, 47.085873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.380386, 42.711399, 47.176167>,  <30.612963, 42.687466, 47.230343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.380386, 42.711399, 47.176167>,  <29.992758, 42.751289, 47.085873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380386, 42.711399, 47.176167> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193345, -0.261631, -0.945604,
		0.153356, 0.960002, -0.234258,
		0.969071, -0.099722, 0.225735,
		30.671108, 42.681484, 47.243885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.327511, 43.106411, 46.567234>,  <29.992758, 42.751289, 47.085873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.327511, 43.106411, 46.567234> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.596684, 42.854557, 46.722527>,  <30.758186, 42.703445, 46.815704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.596684, 42.854557, 46.722527>,  <30.327511, 43.106411, 46.567234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596684, 42.854557, 46.722527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275292, -0.273974, -0.921495,
		0.686571, 0.726979, -0.011032,
		0.672930, -0.629634, 0.388234,
		30.798563, 42.665668, 46.838997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009762, 43.638123, 46.379860>,  <30.327511, 43.106411, 46.567234>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009762, 43.638123, 46.379860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.849960, 43.928120, 46.155437>,  <30.754080, 44.102119, 46.020786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.849960, 43.928120, 46.155437>,  <31.009762, 43.638123, 46.379860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849960, 43.928120, 46.155437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282609, 0.484808, 0.827703,
		0.872083, 0.489230, 0.011206,
		-0.399504, 0.724993, -0.561054,
		30.730108, 44.145618, 45.987122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128300, 44.187599, 46.762863>,  <31.009762, 43.638123, 46.379860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128300, 44.187599, 46.762863> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.855827, 44.323658, 46.503544>,  <30.692345, 44.405293, 46.347950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.855827, 44.323658, 46.503544>,  <31.128300, 44.187599, 46.762863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855827, 44.323658, 46.503544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357385, 0.618351, 0.699941,
		0.638959, 0.708480, -0.299646,
		-0.681181, 0.340145, -0.648301,
		30.651474, 44.425701, 46.309055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146605, 44.862656, 46.753738>,  <31.128300, 44.187599, 46.762863>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146605, 44.862656, 46.753738> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.777920, 44.814896, 46.606121>,  <30.556709, 44.786240, 46.517551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.777920, 44.814896, 46.606121>,  <31.146605, 44.862656, 46.753738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777920, 44.814896, 46.606121> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342299, 0.697887, 0.629114,
		0.182434, 0.706185, -0.684120,
		-0.921710, -0.119402, -0.369045,
		30.501408, 44.779076, 46.495407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981670, 45.576687, 46.676796>,  <31.146605, 44.862656, 46.753738>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981670, 45.576687, 46.676796> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.661840, 45.338554, 46.708454>,  <30.469942, 45.195675, 46.727448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.661840, 45.338554, 46.708454>,  <30.981670, 45.576687, 46.676796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661840, 45.338554, 46.708454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426025, 0.655132, 0.623943,
		-0.423299, 0.465173, -0.777452,
		-0.799575, -0.595328, 0.079141,
		30.421968, 45.159954, 46.732197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499479, 46.031361, 46.667027>,  <30.981670, 45.576687, 46.676796>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499479, 46.031361, 46.667027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.306557, 45.715122, 46.817936>,  <30.190804, 45.525379, 46.908482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.306557, 45.715122, 46.817936>,  <30.499479, 46.031361, 46.667027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306557, 45.715122, 46.817936> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415278, 0.585557, 0.696180,
		-0.771314, 0.179098, -0.610736,
		-0.482306, -0.790599, 0.377273,
		30.161865, 45.477943, 46.931118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935526, 46.319496, 46.865749>,  <30.499479, 46.031361, 46.667027>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935526, 46.319496, 46.865749> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.922091, 45.964275, 47.049160>,  <29.914028, 45.751144, 47.159206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.922091, 45.964275, 47.049160>,  <29.935526, 46.319496, 46.865749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.922091, 45.964275, 47.049160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309350, 0.445489, 0.840144,
		-0.950355, -0.113624, -0.289681,
		-0.033589, -0.888048, 0.458522,
		29.912014, 45.697861, 47.186718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333683, 46.340477, 47.256226>,  <29.935526, 46.319496, 46.865749>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333683, 46.340477, 47.256226> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.535320, 46.040886, 47.428242>,  <29.656301, 45.861134, 47.531452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.535320, 46.040886, 47.428242>,  <29.333683, 46.340477, 47.256226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535320, 46.040886, 47.428242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369034, 0.263387, 0.891314,
		-0.780836, -0.608002, -0.143625,
		0.504092, -0.748973, 0.430036,
		29.686548, 45.816193, 47.557251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.823692, 45.967190, 47.704327>,  <29.333683, 46.340477, 47.256226>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.823692, 45.967190, 47.704327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.192209, 45.929100, 47.855141>,  <29.413319, 45.906246, 47.945629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.192209, 45.929100, 47.855141>,  <28.823692, 45.967190, 47.704327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.192209, 45.929100, 47.855141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258398, 0.574652, 0.776534,
		-0.290606, -0.812839, 0.504818,
		0.921292, -0.095222, 0.377033,
		29.468597, 45.900532, 47.968250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.635668, 45.865772, 48.345673>,  <28.823692, 45.967190, 47.704327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.635668, 45.865772, 48.345673> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.024185, 45.960522, 48.354446>,  <29.257296, 46.017372, 48.359711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.024185, 45.960522, 48.354446>,  <28.635668, 45.865772, 48.345673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024185, 45.960522, 48.354446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146353, 0.522327, 0.840092,
		0.187541, -0.819185, 0.542000,
		0.971292, 0.236875, 0.021933,
		29.315573, 46.031586, 48.361027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<32.652866, 36.874809, 35.190750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022732, 37.025490, 35.213028>,  <33.244652, 37.115898, 35.226395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022732, 37.025490, 35.213028>,  <32.652866, 36.874809, 35.190750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022732, 37.025490, 35.213028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287650, 0.595130, 0.750385,
		0.249521, -0.709873, 0.658650,
		0.924661, 0.376697, 0.055697,
		33.300129, 37.138500, 35.229736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863708, 36.765617, 35.939217>,  <32.652866, 36.874809, 35.190750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863708, 36.765617, 35.939217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057430, 37.063210, 35.755062>,  <33.173664, 37.241764, 35.644569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057430, 37.063210, 35.755062>,  <32.863708, 36.765617, 35.939217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057430, 37.063210, 35.755062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225478, 0.614571, 0.755951,
		0.845347, -0.262302, 0.465388,
		0.484301, 0.743976, -0.460382,
		33.202721, 37.286404, 35.616947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350010, 37.091888, 36.388905>,  <32.863708, 36.765617, 35.939217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350010, 37.091888, 36.388905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306679, 37.389740, 36.125454>,  <33.280682, 37.568451, 35.967384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306679, 37.389740, 36.125454>,  <33.350010, 37.091888, 36.388905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306679, 37.389740, 36.125454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127723, 0.646612, 0.752050,
		0.985876, 0.165588, 0.025061,
		-0.108326, 0.744629, -0.658629,
		33.274181, 37.613129, 35.927864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673847, 37.585651, 36.701260>,  <33.350010, 37.091888, 36.388905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673847, 37.585651, 36.701260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471699, 37.790493, 36.423454>,  <33.350410, 37.913399, 36.256771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471699, 37.790493, 36.423454>,  <33.673847, 37.585651, 36.701260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471699, 37.790493, 36.423454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299345, 0.650830, 0.697719,
		0.809317, 0.560505, -0.175613,
		-0.505370, 0.512107, -0.694512,
		33.320087, 37.944126, 36.215099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861588, 38.287933, 36.889767>,  <33.673847, 37.585651, 36.701260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861588, 38.287933, 36.889767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528355, 38.313683, 36.670010>,  <33.328415, 38.329132, 36.538155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528355, 38.313683, 36.670010>,  <33.861588, 38.287933, 36.889767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528355, 38.313683, 36.670010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363653, 0.684670, 0.631651,
		0.416813, 0.726005, -0.546977,
		-0.833081, 0.064371, -0.549393,
		33.278431, 38.332993, 36.505192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669510, 39.069099, 36.761478>,  <33.861588, 38.287933, 36.889767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669510, 39.069099, 36.761478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328403, 38.861141, 36.741470>,  <33.123741, 38.736366, 36.729465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328403, 38.861141, 36.741470>,  <33.669510, 39.069099, 36.761478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328403, 38.861141, 36.741470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498440, 0.781455, 0.375348,
		-0.156050, 0.345017, -0.925533,
		-0.852764, -0.519896, -0.050024,
		33.072575, 38.705173, 36.726463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187656, 39.615631, 36.743565>,  <33.669510, 39.069099, 36.761478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187656, 39.615631, 36.743565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966148, 39.299641, 36.848850>,  <32.833244, 39.110046, 36.912022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966148, 39.299641, 36.848850>,  <33.187656, 39.615631, 36.743565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966148, 39.299641, 36.848850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737870, 0.612044, 0.284518,
		-0.385860, -0.036661, -0.921829,
		-0.553769, -0.789973, 0.263215,
		32.800018, 39.062649, 36.927814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422794, 39.720242, 36.465858>,  <33.187656, 39.615631, 36.743565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422794, 39.720242, 36.465858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403324, 39.443886, 36.754387>,  <32.391644, 39.278072, 36.927502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403324, 39.443886, 36.754387>,  <32.422794, 39.720242, 36.465858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403324, 39.443886, 36.754387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721997, 0.523359, 0.452565,
		-0.690182, -0.498762, -0.524295,
		-0.048672, -0.690892, 0.721318,
		32.388721, 39.236618, 36.970783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718801, 39.708385, 36.767033>,  <32.422794, 39.720242, 36.465858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718801, 39.708385, 36.767033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909054, 39.520485, 37.064518>,  <32.023205, 39.407745, 37.243011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909054, 39.520485, 37.064518>,  <31.718801, 39.708385, 36.767033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909054, 39.520485, 37.064518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491960, 0.558831, 0.667595,
		-0.729212, -0.683407, 0.034702,
		0.475632, -0.469747, 0.743715,
		32.051743, 39.379562, 37.287632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287661, 39.711086, 37.366375>,  <31.718801, 39.708385, 36.767033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287661, 39.711086, 37.366375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642689, 39.632790, 37.533180>,  <31.855705, 39.585812, 37.633263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642689, 39.632790, 37.533180>,  <31.287661, 39.711086, 37.366375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642689, 39.632790, 37.533180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279187, 0.491485, 0.824922,
		-0.366432, -0.848602, 0.381579,
		0.887571, -0.195745, 0.417015,
		31.908960, 39.574066, 37.658283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143150, 39.497105, 38.095024>,  <31.287661, 39.711086, 37.366375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.143150, 39.497105, 38.095024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533014, 39.586407, 38.100685>,  <31.766932, 39.639988, 38.104080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533014, 39.586407, 38.100685>,  <31.143150, 39.497105, 38.095024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533014, 39.586407, 38.100685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106477, 0.407348, 0.907045,
		0.196735, -0.885565, 0.420796,
		0.974658, 0.223252, 0.014153,
		31.825411, 39.653381, 38.104931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343225, 39.304913, 38.749210>,  <31.143150, 39.497105, 38.095024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343225, 39.304913, 38.749210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610785, 39.570499, 38.615505>,  <31.771320, 39.729851, 38.535282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610785, 39.570499, 38.615505>,  <31.343225, 39.304913, 38.749210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610785, 39.570499, 38.615505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221928, 0.607526, 0.762666,
		0.709455, -0.435963, 0.553724,
		0.668896, 0.663964, -0.334259,
		31.811455, 39.769688, 38.515228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635267, 38.756336, 39.184944>,  <31.343225, 39.304913, 38.749210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635267, 38.756336, 39.184944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403769, 38.514297, 39.403633>,  <31.264870, 38.369072, 39.534847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403769, 38.514297, 39.403633>,  <31.635267, 38.756336, 39.184944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403769, 38.514297, 39.403633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067876, -0.703824, -0.707124,
		0.812677, -0.372137, 0.448408,
		-0.578748, -0.605100, 0.546723,
		31.230145, 38.332767, 39.567650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966831, 38.044128, 39.128536>,  <31.635267, 38.756336, 39.184944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966831, 38.044128, 39.128536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597954, 37.972694, 39.265743>,  <31.376627, 37.929832, 39.348068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597954, 37.972694, 39.265743>,  <31.966831, 38.044128, 39.128536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597954, 37.972694, 39.265743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061529, -0.807934, -0.586052,
		0.381801, -0.561559, 0.734084,
		-0.922194, -0.178588, 0.343022,
		31.321295, 37.919117, 39.368649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034069, 37.356316, 39.266499>,  <31.966831, 38.044128, 39.128536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034069, 37.356316, 39.266499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644346, 37.441498, 39.237183>,  <31.410511, 37.492607, 39.219593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644346, 37.441498, 39.237183>,  <32.034069, 37.356316, 39.266499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644346, 37.441498, 39.237183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127484, -0.789755, -0.600028,
		-0.185656, -0.575271, 0.796615,
		-0.974310, 0.212954, -0.073285,
		31.352053, 37.505383, 39.215199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656591, 36.788559, 39.475758>,  <32.034069, 37.356316, 39.266499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656591, 36.788559, 39.475758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383867, 36.994080, 39.267475>,  <31.220232, 37.117393, 39.142506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383867, 36.994080, 39.267475>,  <31.656591, 36.788559, 39.475758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383867, 36.994080, 39.267475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138241, -0.789482, -0.598003,
		-0.718349, -0.335741, 0.609305,
		-0.681809, 0.513806, -0.520710,
		31.179325, 37.148220, 39.111263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134016, 36.236179, 39.279411>,  <31.656591, 36.788559, 39.475758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134016, 36.236179, 39.279411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090244, 36.554810, 39.041588>,  <31.063982, 36.745987, 38.898895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090244, 36.554810, 39.041588>,  <31.134016, 36.236179, 39.279411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090244, 36.554810, 39.041588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068959, -0.602794, -0.794912,
		-0.991600, -0.045986, 0.120894,
		-0.109429, 0.796571, -0.594559,
		31.057415, 36.793781, 38.863220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580755, 36.064194, 38.851261>,  <31.134016, 36.236179, 39.279411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.580755, 36.064194, 38.851261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797184, 36.342186, 38.661842>,  <30.927042, 36.508980, 38.548191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797184, 36.342186, 38.661842>,  <30.580755, 36.064194, 38.851261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797184, 36.342186, 38.661842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006665, -0.566622, -0.823951,
		-0.840950, 0.442660, -0.311215,
		0.541072, 0.694976, -0.473550,
		30.959505, 36.550678, 38.519779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195606, 36.311230, 38.264835>,  <30.580755, 36.064194, 38.851261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195606, 36.311230, 38.264835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576727, 36.398598, 38.180492>,  <30.805399, 36.451019, 38.129887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576727, 36.398598, 38.180492>,  <30.195606, 36.311230, 38.264835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576727, 36.398598, 38.180492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051584, -0.567973, -0.821429,
		-0.299183, 0.793535, -0.529897,
		0.952800, 0.218424, -0.210861,
		30.862568, 36.464127, 38.117233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.194151, 36.405972, 37.547901>,  <30.195606, 36.311230, 38.264835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.194151, 36.405972, 37.547901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578457, 36.348888, 37.643032>,  <30.809040, 36.314636, 37.700111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578457, 36.348888, 37.643032>,  <30.194151, 36.405972, 37.547901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578457, 36.348888, 37.643032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120577, -0.557299, -0.821510,
		0.249780, 0.817956, -0.518226,
		0.960766, -0.142711, 0.237829,
		30.866686, 36.306076, 37.714382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652145, 36.638142, 36.975590>,  <30.194151, 36.405972, 37.547901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652145, 36.638142, 36.975590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872093, 36.380955, 37.188843>,  <31.004063, 36.226643, 37.316795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872093, 36.380955, 37.188843>,  <30.652145, 36.638142, 36.975590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872093, 36.380955, 37.188843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186011, -0.527995, -0.828626,
		0.814274, 0.554805, -0.170729,
		0.549870, -0.642971, 0.533133,
		31.037054, 36.188065, 37.348782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294582, 36.604855, 36.590858>,  <30.652145, 36.638142, 36.975590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294582, 36.604855, 36.590858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276484, 36.285526, 36.831074>,  <31.265625, 36.093929, 36.975201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276484, 36.285526, 36.831074>,  <31.294582, 36.604855, 36.590858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276484, 36.285526, 36.831074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157063, -0.599359, -0.784920,
		0.986551, 0.058806, 0.152506,
		-0.045248, -0.798317, 0.600535,
		31.262909, 36.046032, 37.011234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839359, 36.198177, 36.466961>,  <31.294582, 36.604855, 36.590858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839359, 36.198177, 36.466961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578386, 35.948952, 36.639530>,  <31.421803, 35.799416, 36.743073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578386, 35.948952, 36.639530>,  <31.839359, 36.198177, 36.466961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578386, 35.948952, 36.639530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220388, -0.700654, -0.678611,
		0.725095, -0.347667, 0.594445,
		-0.652431, -0.623066, 0.431419,
		31.382656, 35.762032, 36.768955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196117, 35.563591, 36.327351>,  <31.839359, 36.198177, 36.466961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196117, 35.563591, 36.327351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828070, 35.446934, 36.431904>,  <31.607241, 35.376938, 36.494637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828070, 35.446934, 36.431904>,  <32.196117, 35.563591, 36.327351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828070, 35.446934, 36.431904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057375, -0.760597, -0.646684,
		0.387412, -0.580030, 0.716573,
		-0.920120, -0.291646, 0.261385,
		31.552034, 35.359440, 36.510319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214626, 34.871696, 36.509003>,  <32.196117, 35.563591, 36.327351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214626, 34.871696, 36.509003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839401, 34.961227, 36.403225>,  <31.614265, 35.014946, 36.339760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839401, 34.961227, 36.403225>,  <32.214626, 34.871696, 36.509003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839401, 34.961227, 36.403225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010108, -0.780644, -0.624894,
		-0.346308, -0.583519, 0.734559,
		-0.938067, 0.223830, -0.264445,
		31.557981, 35.028378, 36.323891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797829, 34.326920, 36.652256>,  <32.214626, 34.871696, 36.509003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797829, 34.326920, 36.652256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579252, 34.511925, 36.372978>,  <31.448107, 34.622929, 36.205410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579252, 34.511925, 36.372978>,  <31.797829, 34.326920, 36.652256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579252, 34.511925, 36.372978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002394, -0.832805, -0.553561,
		-0.837492, -0.304162, 0.453975,
		-0.546444, 0.462516, -0.698196,
		31.415319, 34.650681, 36.163521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212700, 34.351135, 37.454285>,  <31.797829, 34.326920, 36.652256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212700, 34.351135, 37.454285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263832, 33.982513, 37.600922>,  <32.294510, 33.761341, 37.688904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263832, 33.982513, 37.600922>,  <32.212700, 34.351135, 37.454285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263832, 33.982513, 37.600922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703548, 0.344783, 0.621406,
		-0.699057, 0.178481, 0.692433,
		0.127830, -0.921558, 0.366593,
		32.302181, 33.706047, 37.710899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219826, 34.455097, 38.179363>,  <32.212700, 34.351135, 37.454285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219826, 34.455097, 38.179363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441788, 34.134045, 38.091858>,  <32.574966, 33.941414, 38.039352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441788, 34.134045, 38.091858>,  <32.219826, 34.455097, 38.179363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441788, 34.134045, 38.091858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746520, 0.364375, 0.556721,
		-0.367130, -0.472241, 0.801376,
		0.554908, -0.802633, -0.218765,
		32.608261, 33.893253, 38.026230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377750, 33.999397, 38.737194>,  <32.219826, 34.455097, 38.179363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377750, 33.999397, 38.737194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680859, 33.997932, 38.476189>,  <32.862724, 33.997055, 38.319588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680859, 33.997932, 38.476189>,  <32.377750, 33.999397, 38.737194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680859, 33.997932, 38.476189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631752, 0.254391, 0.732239,
		0.163311, -0.967094, 0.195084,
		0.757772, -0.003662, -0.652509,
		32.908192, 33.996834, 38.280437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747993, 33.543087, 38.962372>,  <32.377750, 33.999397, 38.737194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747993, 33.543087, 38.962372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942833, 33.824886, 38.755913>,  <33.059738, 33.993965, 38.632038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942833, 33.824886, 38.755913>,  <32.747993, 33.543087, 38.962372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942833, 33.824886, 38.755913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663093, 0.086289, 0.743547,
		0.568369, -0.704436, -0.425119,
		0.487098, 0.704502, -0.516151,
		33.088963, 34.036236, 38.601067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431980, 33.388714, 38.913578>,  <32.747993, 33.543087, 38.962372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431980, 33.388714, 38.913578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422089, 33.786118, 38.869160>,  <33.416153, 34.024559, 38.842510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422089, 33.786118, 38.869160>,  <33.431980, 33.388714, 38.913578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422089, 33.786118, 38.869160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497005, 0.108596, 0.860926,
		0.867395, -0.033902, -0.496464,
		-0.024727, 0.993508, -0.111045,
		33.414669, 34.084171, 38.835846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153366, 33.629368, 39.069489>,  <33.431980, 33.388714, 38.913578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153366, 33.629368, 39.069489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901237, 33.938267, 39.101318>,  <33.749962, 34.123608, 39.120415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901237, 33.938267, 39.101318>,  <34.153366, 33.629368, 39.069489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901237, 33.938267, 39.101318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540850, 0.363283, 0.758622,
		0.556936, 0.521211, -0.646654,
		-0.630321, 0.772246, 0.079571,
		33.712143, 34.169941, 39.125191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484177, 34.183910, 39.433598>,  <34.153366, 33.629368, 39.069489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484177, 34.183910, 39.433598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113201, 34.326698, 39.478184>,  <33.890614, 34.412369, 39.504936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113201, 34.326698, 39.478184>,  <34.484177, 34.183910, 39.433598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113201, 34.326698, 39.478184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277848, 0.458245, 0.844282,
		0.250301, 0.813995, -0.524178,
		-0.927443, 0.356966, 0.111467,
		33.834969, 34.433788, 39.511623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710197, 34.745346, 39.695789>,  <34.484177, 34.183910, 39.433598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710197, 34.745346, 39.695789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317314, 34.753082, 39.770500>,  <34.081585, 34.757725, 39.815327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317314, 34.753082, 39.770500>,  <34.710197, 34.745346, 39.695789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317314, 34.753082, 39.770500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176328, 0.437026, 0.881996,
		-0.064567, 0.899241, -0.432663,
		-0.982212, 0.019343, 0.186778,
		34.022652, 34.758884, 39.826534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555939, 35.461491, 39.948318>,  <34.710197, 34.745346, 39.695789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555939, 35.461491, 39.948318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263573, 35.224545, 40.083885>,  <34.088154, 35.082375, 40.165226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263573, 35.224545, 40.083885>,  <34.555939, 35.461491, 39.948318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263573, 35.224545, 40.083885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175330, 0.316955, 0.932094,
		-0.659565, 0.740702, -0.127807,
		-0.730913, -0.592368, 0.338920,
		34.044300, 35.046833, 40.185562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158619, 35.852749, 40.460045>,  <34.555939, 35.461491, 39.948318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158619, 35.852749, 40.460045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052734, 35.479763, 40.558388>,  <33.989204, 35.255974, 40.617393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052734, 35.479763, 40.558388>,  <34.158619, 35.852749, 40.460045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052734, 35.479763, 40.558388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126003, 0.219321, 0.967482,
		-0.956060, 0.287082, 0.059436,
		-0.264712, -0.932460, 0.245857,
		33.973320, 35.200024, 40.632145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653057, 35.878433, 40.974567>,  <34.158619, 35.852749, 40.460045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653057, 35.878433, 40.974567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806110, 35.509293, 40.992207>,  <33.897942, 35.287807, 41.002792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806110, 35.509293, 40.992207>,  <33.653057, 35.878433, 40.974567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806110, 35.509293, 40.992207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001873, 0.048508, 0.998821,
		-0.923900, -0.382095, 0.020289,
		0.382629, -0.922849, 0.044101,
		33.920898, 35.232437, 41.005436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208191, 35.424530, 41.498493>,  <33.653057, 35.878433, 40.974567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208191, 35.424530, 41.498493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571957, 35.262531, 41.460670>,  <33.790215, 35.165333, 41.437977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571957, 35.262531, 41.460670>,  <33.208191, 35.424530, 41.498493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571957, 35.262531, 41.460670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139944, 0.083905, 0.986598,
		-0.391638, -0.910459, 0.132982,
		0.909415, -0.404999, -0.094553,
		33.844780, 35.141033, 41.432304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279602, 35.031139, 42.162960>,  <33.208191, 35.424530, 41.498493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279602, 35.031139, 42.162960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667812, 35.049557, 42.068336>,  <33.900738, 35.060608, 42.011562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667812, 35.049557, 42.068336>,  <33.279602, 35.031139, 42.162960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667812, 35.049557, 42.068336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221004, 0.221382, 0.949814,
		0.096106, -0.974099, 0.204681,
		0.970526, 0.046047, -0.236556,
		33.958969, 35.063370, 41.997368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621117, 34.588619, 42.563293>,  <33.279602, 35.031139, 42.162960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621117, 34.588619, 42.563293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903576, 34.856800, 42.472218>,  <34.073051, 35.017708, 42.417572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903576, 34.856800, 42.472218>,  <33.621117, 34.588619, 42.563293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903576, 34.856800, 42.472218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149617, 0.173025, 0.973487,
		0.692075, -0.721494, 0.021870,
		0.706149, 0.670454, -0.227694,
		34.115421, 35.057938, 42.403908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149418, 34.540245, 43.062958>,  <33.621117, 34.588619, 42.563293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149418, 34.540245, 43.062958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198189, 34.910847, 42.920563>,  <34.227451, 35.133209, 42.835125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198189, 34.910847, 42.920563>,  <34.149418, 34.540245, 43.062958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198189, 34.910847, 42.920563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143105, 0.338503, 0.930020,
		0.982168, -0.164339, -0.091314,
		0.121928, 0.926504, -0.355984,
		34.234768, 35.188797, 42.813766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723423, 34.784805, 43.354145>,  <34.149418, 34.540245, 43.062958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723423, 34.784805, 43.354145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545219, 35.127674, 43.250782>,  <34.438297, 35.333397, 43.188763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545219, 35.127674, 43.250782>,  <34.723423, 34.784805, 43.354145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545219, 35.127674, 43.250782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168412, 0.363722, 0.916157,
		0.879297, 0.364633, -0.306398,
		-0.445505, 0.857175, -0.258411,
		34.411568, 35.384827, 43.173260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158661, 35.390171, 43.720745>,  <34.723423, 34.784805, 43.354145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158661, 35.390171, 43.720745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822250, 35.565662, 43.594128>,  <34.620403, 35.670959, 43.518158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822250, 35.565662, 43.594128>,  <35.158661, 35.390171, 43.720745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822250, 35.565662, 43.594128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109369, 0.710902, 0.694736,
		0.529831, 0.549668, -0.645867,
		-0.841022, 0.438730, -0.316541,
		34.569942, 35.697281, 43.499165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248535, 36.108040, 43.570091>,  <35.158661, 35.390171, 43.720745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248535, 36.108040, 43.570091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858902, 36.083523, 43.657185>,  <34.625122, 36.068813, 43.709438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858902, 36.083523, 43.657185>,  <35.248535, 36.108040, 43.570091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858902, 36.083523, 43.657185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064901, 0.846384, 0.528604,
		-0.216681, 0.529035, -0.820470,
		-0.974083, -0.061289, 0.217730,
		34.566677, 36.065136, 43.722504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973095, 36.745178, 43.459663>,  <35.248535, 36.108040, 43.570091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973095, 36.745178, 43.459663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713497, 36.568302, 43.707302>,  <34.557739, 36.462177, 43.855885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713497, 36.568302, 43.707302>,  <34.973095, 36.745178, 43.459663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713497, 36.568302, 43.707302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010881, 0.819059, 0.573606,
		-0.760716, 0.365530, -0.536376,
		-0.648994, -0.442188, 0.619093,
		34.518799, 36.435646, 43.893028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471134, 37.350315, 43.614826>,  <34.973095, 36.745178, 43.459663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471134, 37.350315, 43.614826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404045, 37.086662, 43.908062>,  <34.363792, 36.928471, 44.084003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404045, 37.086662, 43.908062>,  <34.471134, 37.350315, 43.614826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404045, 37.086662, 43.908062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078596, 0.732315, 0.676414,
		-0.982695, 0.171071, -0.071024,
		-0.167727, -0.659127, 0.733089,
		34.353725, 36.888924, 44.127987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069340, 37.627693, 44.076328>,  <34.471134, 37.350315, 43.614826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069340, 37.627693, 44.076328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183826, 37.339951, 44.329502>,  <34.252518, 37.167305, 44.481407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183826, 37.339951, 44.329502>,  <34.069340, 37.627693, 44.076328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183826, 37.339951, 44.329502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188536, 0.605374, 0.773289,
		-0.939431, -0.340663, 0.037646,
		0.286221, -0.719355, 0.632935,
		34.269691, 37.124146, 44.519382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619457, 37.596783, 44.654655>,  <34.069340, 37.627693, 44.076328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619457, 37.596783, 44.654655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946621, 37.424122, 44.806820>,  <34.142918, 37.320526, 44.898117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946621, 37.424122, 44.806820>,  <33.619457, 37.596783, 44.654655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946621, 37.424122, 44.806820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065205, 0.587373, 0.806685,
		-0.571647, -0.684597, 0.452269,
		0.817905, -0.431649, 0.380409,
		34.191994, 37.294628, 44.920944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440407, 37.493671, 45.338848>,  <33.619457, 37.596783, 44.654655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440407, 37.493671, 45.338848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838360, 37.457581, 45.357052>,  <34.077129, 37.435925, 45.367973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838360, 37.457581, 45.357052>,  <33.440407, 37.493671, 45.338848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838360, 37.457581, 45.357052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014277, 0.571309, 0.820611,
		-0.100043, -0.815760, 0.569673,
		0.994881, -0.090230, 0.045508,
		34.136826, 37.430511, 45.370705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668449, 37.288757, 46.137867>,  <33.440407, 37.493671, 45.338848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668449, 37.288757, 46.137867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969383, 37.459778, 45.937389>,  <34.149944, 37.562389, 45.817101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969383, 37.459778, 45.937389>,  <33.668449, 37.288757, 46.137867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969383, 37.459778, 45.937389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179155, 0.599332, 0.780195,
		0.633958, -0.676756, 0.374297,
		0.752330, 0.427554, -0.501196,
		34.195084, 37.588043, 45.787029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204201, 37.258656, 46.571465>,  <33.668449, 37.288757, 46.137867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204201, 37.258656, 46.571465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307354, 37.541050, 46.307625>,  <34.369247, 37.710487, 46.149319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307354, 37.541050, 46.307625>,  <34.204201, 37.258656, 46.571465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307354, 37.541050, 46.307625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251808, 0.609988, 0.751337,
		0.932785, -0.359852, -0.020466,
		0.257886, 0.705990, -0.659601,
		34.384720, 37.752846, 46.109745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790169, 37.713486, 46.881325>,  <34.204201, 37.258656, 46.571465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790169, 37.713486, 46.881325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667179, 37.935474, 46.572140>,  <34.593384, 38.068668, 46.386631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667179, 37.935474, 46.572140>,  <34.790169, 37.713486, 46.881325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667179, 37.935474, 46.572140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159822, 0.830891, 0.532989,
		0.938039, 0.040345, -0.344174,
		-0.307475, 0.554971, -0.772960,
		34.574936, 38.101967, 46.340252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301243, 38.259186, 46.855305>,  <34.790169, 37.713486, 46.881325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301243, 38.259186, 46.855305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967819, 38.366161, 46.661949>,  <34.767765, 38.430347, 46.545937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967819, 38.366161, 46.661949>,  <35.301243, 38.259186, 46.855305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967819, 38.366161, 46.661949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065164, 0.916499, 0.394694,
		0.548579, 0.297500, -0.781380,
		-0.833556, 0.267439, -0.483386,
		34.717754, 38.446392, 46.516933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482643, 38.933994, 46.495163>,  <35.301243, 38.259186, 46.855305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482643, 38.933994, 46.495163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092262, 38.896660, 46.573967>,  <34.858036, 38.874260, 46.621250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092262, 38.896660, 46.573967>,  <35.482643, 38.933994, 46.495163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092262, 38.896660, 46.573967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017744, 0.866698, 0.498517,
		-0.217274, 0.490023, -0.844198,
		-0.975949, -0.093335, 0.197006,
		34.799477, 38.868660, 46.633068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703762, 39.312614, 45.995472>,  <35.482643, 38.933994, 46.495163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703762, 39.312614, 45.995472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056767, 39.474728, 45.900032>,  <36.268570, 39.571995, 45.842770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056767, 39.474728, 45.900032>,  <35.703762, 39.312614, 45.995472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056767, 39.474728, 45.900032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006926, -0.518475, -0.855065,
		-0.470247, 0.752949, -0.460365,
		0.882508, 0.405280, -0.238596,
		36.321518, 39.596313, 45.828453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722584, 39.353249, 45.248459>,  <35.703762, 39.312614, 45.995472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722584, 39.353249, 45.248459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114937, 39.358730, 45.326107>,  <36.350349, 39.362019, 45.372696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114937, 39.358730, 45.326107>,  <35.722584, 39.353249, 45.248459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114937, 39.358730, 45.326107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152226, -0.675463, -0.721510,
		0.121238, 0.737267, -0.664635,
		0.980882, 0.013700, 0.194123,
		36.409203, 39.362839, 45.384342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061768, 39.412682, 44.568527>,  <35.722584, 39.353249, 45.248459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061768, 39.412682, 44.568527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348751, 39.276432, 44.811584>,  <36.520943, 39.194683, 44.957417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348751, 39.276432, 44.811584>,  <36.061768, 39.412682, 44.568527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348751, 39.276432, 44.811584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277987, -0.659825, -0.698108,
		0.638730, 0.669779, -0.378707,
		0.717459, -0.340627, 0.607640,
		36.563988, 39.174244, 44.993877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632328, 39.398453, 44.151474>,  <36.061768, 39.412682, 44.568527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632328, 39.398453, 44.151474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712608, 39.161404, 44.463505>,  <36.760777, 39.019173, 44.650723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712608, 39.161404, 44.463505>,  <36.632328, 39.398453, 44.151474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712608, 39.161404, 44.463505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485827, -0.631254, -0.604558,
		0.850701, 0.500315, 0.161222,
		0.200697, -0.592624, 0.780075,
		36.772816, 38.983616, 44.697529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277153, 39.261402, 44.092606>,  <36.632328, 39.398453, 44.151474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277153, 39.261402, 44.092606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132507, 38.960297, 44.312634>,  <37.045719, 38.779633, 44.444653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132507, 38.960297, 44.312634>,  <37.277153, 39.261402, 44.092606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132507, 38.960297, 44.312634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287967, -0.651328, -0.702030,
		0.886743, -0.095458, 0.452299,
		-0.361610, -0.752768, 0.550072,
		37.024025, 38.734467, 44.477654>
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
