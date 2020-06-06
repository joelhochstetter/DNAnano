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
	<25.112640, 34.817703, 34.737606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.713802, 34.805573, 34.765541>,  <24.474499, 34.798294, 34.782303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.713802, 34.805573, 34.765541>,  <25.112640, 34.817703, 34.737606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.713802, 34.805573, 34.765541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054715, -0.352440, -0.934234,
		0.052951, -0.935343, 0.349757,
		-0.997097, -0.030332, 0.069839,
		24.414673, 34.796474, 34.786491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.874359, 34.163616, 34.334324>,  <25.112640, 34.817703, 34.737606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.874359, 34.163616, 34.334324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.229784, 34.071724, 34.175488>,  <25.443039, 34.016590, 34.080185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.229784, 34.071724, 34.175488>,  <24.874359, 34.163616, 34.334324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.229784, 34.071724, 34.175488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393457, -0.063482, 0.917149,
		-0.235904, -0.971182, 0.033981,
		0.888561, -0.229729, -0.397094,
		25.496353, 34.002804, 34.056358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.115671, 33.716965, 34.767582>,  <24.874359, 34.163616, 34.334324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.115671, 33.716965, 34.767582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.416607, 33.884724, 34.564373>,  <25.597168, 33.985378, 34.442448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.416607, 33.884724, 34.564373>,  <25.115671, 33.716965, 34.767582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.416607, 33.884724, 34.564373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492361, 0.154383, 0.856590,
		0.437679, -0.894581, -0.090344,
		0.752342, 0.419393, -0.508027,
		25.642309, 34.010540, 34.411964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.812805, 33.447819, 34.939892>,  <25.115671, 33.716965, 34.767582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.812805, 33.447819, 34.939892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906820, 33.807873, 34.793186>,  <25.963230, 34.023907, 34.705162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906820, 33.807873, 34.793186>,  <25.812805, 33.447819, 34.939892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.906820, 33.807873, 34.793186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478251, 0.221398, 0.849858,
		0.846188, -0.375153, -0.378453,
		0.235038, 0.900135, -0.366762,
		25.977331, 34.077915, 34.683159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.487900, 33.643166, 35.260979>,  <25.812805, 33.447819, 34.939892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.487900, 33.643166, 35.260979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.346382, 33.990032, 35.120773>,  <26.261471, 34.198151, 35.036652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.346382, 33.990032, 35.120773>,  <26.487900, 33.643166, 35.260979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.346382, 33.990032, 35.120773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363619, 0.472788, 0.802654,
		0.861749, 0.156522, -0.482587,
		-0.353794, 0.867164, -0.350510,
		26.240244, 34.250183, 35.015621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.987101, 34.164078, 35.264530>,  <26.487900, 33.643166, 35.260979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.987101, 34.164078, 35.264530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621761, 34.321945, 35.304581>,  <26.402557, 34.416668, 35.328613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621761, 34.321945, 35.304581>,  <26.987101, 34.164078, 35.264530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.621761, 34.321945, 35.304581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301363, 0.489873, 0.818049,
		0.273810, 0.777341, -0.566365,
		-0.913350, 0.394671, 0.100130,
		26.347755, 34.440346, 35.334621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.034714, 34.817638, 35.404121>,  <26.987101, 34.164078, 35.264530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.034714, 34.817638, 35.404121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673401, 34.745632, 35.559902>,  <26.456614, 34.702431, 35.653370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673401, 34.745632, 35.559902>,  <27.034714, 34.817638, 35.404121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673401, 34.745632, 35.559902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186646, 0.652461, 0.734478,
		-0.386318, 0.736132, -0.555759,
		-0.903284, -0.180012, 0.389453,
		26.402416, 34.691628, 35.676739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.469975, 35.252422, 35.393906>,  <27.034714, 34.817638, 35.404121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.469975, 35.252422, 35.393906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.493374, 35.069256, 35.748734>,  <26.507414, 34.959354, 35.961628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.493374, 35.069256, 35.748734>,  <26.469975, 35.252422, 35.393906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.493374, 35.069256, 35.748734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518552, 0.773243, 0.364965,
		-0.853042, 0.438640, 0.282691,
		0.058501, -0.457921, 0.887066,
		26.510923, 34.931881, 36.014854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.262142, 35.772335, 35.837410>,  <26.469975, 35.252422, 35.393906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.262142, 35.772335, 35.837410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.492590, 35.505783, 36.026733>,  <26.630859, 35.345852, 36.140327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.492590, 35.505783, 36.026733>,  <26.262142, 35.772335, 35.837410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.492590, 35.505783, 36.026733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640683, 0.727746, 0.244765,
		-0.507554, 0.162225, 0.846211,
		0.576120, -0.666384, 0.473305,
		26.665426, 35.305866, 36.168724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.469305, 36.137737, 36.397163>,  <26.262142, 35.772335, 35.837410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.469305, 36.137737, 36.397163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.719803, 35.826847, 36.372711>,  <26.870102, 35.640312, 36.358040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.719803, 35.826847, 36.372711>,  <26.469305, 36.137737, 36.397163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.719803, 35.826847, 36.372711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756553, 0.586904, 0.288392,
		-0.188266, -0.226855, 0.955559,
		0.626245, -0.777226, -0.061134,
		26.907677, 35.593678, 36.354370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.826550, 36.201527, 37.038380>,  <26.469305, 36.137737, 36.397163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.826550, 36.201527, 37.038380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.055347, 36.009003, 36.772697>,  <27.192625, 35.893490, 36.613289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.055347, 36.009003, 36.772697>,  <26.826550, 36.201527, 37.038380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.055347, 36.009003, 36.772697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736856, 0.657260, 0.158280,
		0.360372, -0.579956, 0.730604,
		0.571992, -0.481311, -0.664202,
		27.226946, 35.864609, 36.573437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.493006, 36.172791, 37.301292>,  <26.826550, 36.201527, 37.038380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.493006, 36.172791, 37.301292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543264, 36.103935, 36.910480>,  <27.573420, 36.062622, 36.675995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543264, 36.103935, 36.910480>,  <27.493006, 36.172791, 37.301292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543264, 36.103935, 36.910480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808084, 0.589067, 0.000136,
		0.575511, -0.789538, 0.213113,
		0.125645, -0.172135, -0.977027,
		27.580957, 36.052296, 36.617371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.117456, 36.649540, 37.142197>,  <27.493006, 36.172791, 37.301292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.117456, 36.649540, 37.142197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.383392, 36.692875, 36.846561>,  <28.542953, 36.718876, 36.669182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.383392, 36.692875, 36.846561>,  <28.117456, 36.649540, 37.142197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383392, 36.692875, 36.846561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413416, -0.770713, -0.484859,
		-0.622151, 0.627905, -0.467614,
		0.664842, 0.108336, -0.739086,
		28.582846, 36.725376, 36.624836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.723331, 36.721855, 36.524620>,  <28.117456, 36.649540, 37.142197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.723331, 36.721855, 36.524620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082451, 36.546513, 36.507656>,  <28.297922, 36.441307, 36.497478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082451, 36.546513, 36.507656>,  <27.723331, 36.721855, 36.524620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.082451, 36.546513, 36.507656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436339, -0.872313, -0.220633,
		0.059720, 0.216590, -0.974435,
		0.897798, -0.438360, -0.042412,
		28.351789, 36.415005, 36.494934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.101486, 36.618538, 35.812412>,  <27.723331, 36.721855, 36.524620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.101486, 36.618538, 35.812412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.162613, 36.342140, 36.095024>,  <28.199289, 36.176304, 36.264591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.162613, 36.342140, 36.095024>,  <28.101486, 36.618538, 35.812412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.162613, 36.342140, 36.095024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678589, -0.593107, -0.433292,
		0.718446, -0.413227, -0.559534,
		0.152816, -0.690990, 0.706527,
		28.208458, 36.134842, 36.306984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.003622, 35.909084, 35.459145>,  <28.101486, 36.618538, 35.812412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.003622, 35.909084, 35.459145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.927156, 35.861210, 35.848839>,  <27.881277, 35.832485, 36.082657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.927156, 35.861210, 35.848839>,  <28.003622, 35.909084, 35.459145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.927156, 35.861210, 35.848839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735565, -0.639727, -0.222922,
		0.649924, -0.759227, 0.034258,
		-0.191164, -0.119683, 0.974234,
		27.869806, 35.825306, 36.141109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.936817, 35.129250, 35.707096>,  <28.003622, 35.909084, 35.459145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.936817, 35.129250, 35.707096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.710243, 35.336407, 35.963516>,  <27.574299, 35.460701, 36.117367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.710243, 35.336407, 35.963516>,  <27.936817, 35.129250, 35.707096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.710243, 35.336407, 35.963516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722719, -0.685966, -0.084422,
		0.396017, -0.511118, 0.762843,
		-0.566434, 0.517889, 0.641049,
		27.540314, 35.491772, 36.155830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.770948, 34.632301, 36.220047>,  <27.936817, 35.129250, 35.707096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.770948, 34.632301, 36.220047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502529, 34.925423, 36.265125>,  <27.341478, 35.101295, 36.292171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502529, 34.925423, 36.265125>,  <27.770948, 34.632301, 36.220047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502529, 34.925423, 36.265125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707130, -0.678268, 0.199800,
		0.222849, 0.054386, 0.973335,
		-0.671048, 0.732799, 0.112693,
		27.301214, 35.145264, 36.298935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.370529, 34.474537, 36.850685>,  <27.770948, 34.632301, 36.220047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.370529, 34.474537, 36.850685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.157452, 34.715408, 36.612823>,  <27.029606, 34.859932, 36.470104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.157452, 34.715408, 36.612823>,  <27.370529, 34.474537, 36.850685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.157452, 34.715408, 36.612823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806566, -0.574026, 0.141231,
		-0.256302, 0.554863, 0.791477,
		-0.532692, 0.602181, -0.594657,
		26.997644, 34.896061, 36.434425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.676538, 34.192238, 37.047527>,  <27.370529, 34.474537, 36.850685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.676538, 34.192238, 37.047527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.647007, 34.437309, 36.732777>,  <26.629288, 34.584351, 36.543926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.647007, 34.437309, 36.732777>,  <26.676538, 34.192238, 37.047527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.647007, 34.437309, 36.732777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809030, -0.498149, -0.311959,
		-0.583113, 0.613578, 0.532449,
		-0.073827, 0.612674, -0.786880,
		26.624859, 34.621113, 36.496712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.026546, 34.187347, 36.716480>,  <26.676538, 34.192238, 37.047527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.026546, 34.187347, 36.716480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.080328, 34.483875, 36.453465>,  <26.112597, 34.661793, 36.295654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.080328, 34.483875, 36.453465>,  <26.026546, 34.187347, 36.716480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.080328, 34.483875, 36.453465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516795, -0.513720, -0.684846,
		-0.845485, 0.431895, 0.314040,
		0.134453, 0.741322, -0.657544,
		26.120665, 34.706272, 36.256203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.417122, 34.253376, 36.318871>,  <26.026546, 34.187347, 36.716480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.417122, 34.253376, 36.318871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719492, 34.407444, 36.107124>,  <25.900913, 34.499886, 35.980076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719492, 34.407444, 36.107124>,  <25.417122, 34.253376, 36.318871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.719492, 34.407444, 36.107124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412361, -0.347897, -0.841977,
		-0.508465, 0.854760, -0.104156,
		0.755924, 0.385166, -0.529363,
		25.946270, 34.522995, 35.948315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.145426, 34.847130, 35.810669>,  <25.417122, 34.253376, 36.318871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.145426, 34.847130, 35.810669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.468990, 34.642727, 35.694370>,  <25.663130, 34.520084, 35.624592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.468990, 34.642727, 35.694370>,  <25.145426, 34.847130, 35.810669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.468990, 34.642727, 35.694370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409877, -0.135612, -0.902003,
		0.421497, 0.848814, -0.319147,
		0.808913, -0.511002, -0.290750,
		25.711664, 34.489426, 35.607147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.648615, 35.085316, 35.438972>,  <25.145426, 34.847130, 35.810669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.648615, 35.085316, 35.438972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.001284, 34.929535, 35.332405>,  <26.212885, 34.836067, 35.268463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.001284, 34.929535, 35.332405>,  <25.648615, 35.085316, 35.438972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.001284, 34.929535, 35.332405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371835, -0.225830, -0.900411,
		0.290502, 0.892932, -0.343920,
		0.881673, -0.389453, -0.266420,
		26.265785, 34.812698, 35.252480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.671793, 35.325695, 34.725723>,  <25.648615, 35.085316, 35.438972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.671793, 35.325695, 34.725723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.912613, 35.012665, 34.789112>,  <26.057104, 34.824848, 34.827145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.912613, 35.012665, 34.789112>,  <25.671793, 35.325695, 34.725723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.912613, 35.012665, 34.789112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153576, -0.308267, -0.938822,
		0.783551, 0.540878, -0.305776,
		0.602049, -0.782574, 0.158477,
		26.093227, 34.777893, 34.836655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.154770, 35.288208, 34.178131>,  <25.671793, 35.325695, 34.725723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.154770, 35.288208, 34.178131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097620, 34.923878, 34.333046>,  <26.063330, 34.705280, 34.425995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097620, 34.923878, 34.333046>,  <26.154770, 35.288208, 34.178131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.097620, 34.923878, 34.333046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279557, -0.338231, -0.898581,
		0.949439, -0.236654, -0.206302,
		-0.142875, -0.910821, 0.387288,
		26.054758, 34.650631, 34.449234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.474598, 34.881348, 33.770855>,  <26.154770, 35.288208, 34.178131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.474598, 34.881348, 33.770855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.242954, 34.613258, 33.956512>,  <26.103968, 34.452404, 34.067905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.242954, 34.613258, 33.956512>,  <26.474598, 34.881348, 33.770855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.242954, 34.613258, 33.956512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097961, -0.507995, -0.855771,
		0.809342, -0.541055, 0.228530,
		-0.579111, -0.670224, 0.464144,
		26.069221, 34.412189, 34.095757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.805342, 34.124477, 33.838703>,  <26.474598, 34.881348, 33.770855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.805342, 34.124477, 33.838703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.410839, 34.173557, 33.794449>,  <26.174137, 34.203003, 33.767899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.410839, 34.173557, 33.794449>,  <26.805342, 34.124477, 33.838703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.410839, 34.173557, 33.794449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031849, -0.515888, -0.856064,
		-0.162109, -0.847824, 0.504891,
		-0.986259, 0.122696, -0.110632,
		26.114962, 34.210365, 33.761261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.437397, 33.504204, 33.634979>,  <26.805342, 34.124477, 33.838703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.437397, 33.504204, 33.634979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253464, 33.819420, 33.471252>,  <26.143103, 34.008549, 33.373016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253464, 33.819420, 33.471252>,  <26.437397, 33.504204, 33.634979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.253464, 33.819420, 33.471252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117749, -0.510981, -0.851489,
		-0.880163, -0.343347, 0.327758,
		-0.459834, 0.788043, -0.409318,
		26.115513, 34.055832, 33.348457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.720373, 33.438164, 33.499985>,  <26.437397, 33.504204, 33.634979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.720373, 33.438164, 33.499985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.939508, 33.658833, 33.248421>,  <26.070990, 33.791233, 33.097481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.939508, 33.658833, 33.248421>,  <25.720373, 33.438164, 33.499985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.939508, 33.658833, 33.248421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015136, -0.745106, -0.666774,
		-0.836447, 0.374804, -0.399848,
		0.547839, 0.551670, -0.628915,
		26.103861, 33.824333, 33.059746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.365341, 33.357857, 32.873569>,  <25.720373, 33.438164, 33.499985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.365341, 33.357857, 32.873569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753359, 33.449379, 32.840923>,  <25.986170, 33.504292, 32.821335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753359, 33.449379, 32.840923>,  <25.365341, 33.357857, 32.873569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.753359, 33.449379, 32.840923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116652, -0.733436, -0.669674,
		-0.213080, 0.640095, -0.738157,
		0.970046, 0.228802, -0.081612,
		26.044373, 33.518021, 32.816441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.515795, 33.143154, 32.231651>,  <25.365341, 33.357857, 32.873569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.515795, 33.143154, 32.231651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.871674, 33.153130, 32.413998>,  <26.085201, 33.159115, 32.523407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.871674, 33.153130, 32.413998>,  <25.515795, 33.143154, 32.231651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.871674, 33.153130, 32.413998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318657, -0.748977, -0.580939,
		0.326946, 0.662126, -0.674311,
		0.889699, 0.024938, 0.455866,
		26.138584, 33.160610, 32.550758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.078680, 33.392780, 31.763777>,  <25.515795, 33.143154, 32.231651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.078680, 33.392780, 31.763777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283346, 33.212818, 32.056564>,  <26.406145, 33.104839, 32.232239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283346, 33.212818, 32.056564>,  <26.078680, 33.392780, 31.763777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.283346, 33.212818, 32.056564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535372, -0.499371, -0.681180,
		0.671994, 0.740412, -0.014641,
		0.511665, -0.449910, 0.731970,
		26.436846, 33.077847, 32.276154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.814085, 33.436466, 31.659128>,  <26.078680, 33.392780, 31.763777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.814085, 33.436466, 31.659128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.788059, 33.118183, 31.900000>,  <26.772444, 32.927216, 32.044521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.788059, 33.118183, 31.900000>,  <26.814085, 33.436466, 31.659128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.788059, 33.118183, 31.900000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502002, -0.547636, -0.669394,
		0.862415, 0.258743, 0.435076,
		-0.065062, -0.795705, 0.602179,
		26.768541, 32.879471, 32.080654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.463324, 33.195503, 31.864220>,  <26.814085, 33.436466, 31.659128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.463324, 33.195503, 31.864220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.247450, 32.860489, 31.898331>,  <27.117926, 32.659481, 31.918798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.247450, 32.860489, 31.898331>,  <27.463324, 33.195503, 31.864220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.247450, 32.860489, 31.898331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710493, -0.507461, -0.487528,
		0.451599, -0.202521, 0.868933,
		-0.539684, -0.837538, 0.085279,
		27.085545, 32.609226, 31.923914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919903, 32.643818, 31.987396>,  <27.463324, 33.195503, 31.864220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919903, 32.643818, 31.987396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.613983, 32.421711, 31.856699>,  <27.430431, 32.288445, 31.778280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.613983, 32.421711, 31.856699>,  <27.919903, 32.643818, 31.987396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.613983, 32.421711, 31.856699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643152, -0.628115, -0.437980,
		0.037963, -0.545112, 0.837503,
		-0.764797, -0.555269, -0.326745,
		27.384544, 32.255131, 31.758675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.109303, 31.953075, 32.201584>,  <27.919903, 32.643818, 31.987396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.109303, 31.953075, 32.201584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.836191, 31.928844, 31.910339>,  <27.672325, 31.914307, 31.735592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.836191, 31.928844, 31.910339>,  <28.109303, 31.953075, 32.201584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.836191, 31.928844, 31.910339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605191, -0.605219, -0.517159,
		-0.409339, -0.793751, 0.449890,
		-0.682778, -0.060576, -0.728111,
		27.631357, 31.910671, 31.691906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.922791, 31.153683, 32.010887>,  <28.109303, 31.953075, 32.201584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.922791, 31.153683, 32.010887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.838743, 31.400949, 31.707912>,  <27.788315, 31.549311, 31.526127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.838743, 31.400949, 31.707912>,  <27.922791, 31.153683, 32.010887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.838743, 31.400949, 31.707912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662766, -0.479488, -0.575180,
		-0.718742, -0.622863, -0.308951,
		-0.210121, 0.618169, -0.757441,
		27.775707, 31.586399, 31.480680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.755407, 30.813515, 31.415356>,  <27.922791, 31.153683, 32.010887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.755407, 30.813515, 31.415356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.875982, 31.174154, 31.291254>,  <27.948326, 31.390537, 31.216793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.875982, 31.174154, 31.291254>,  <27.755407, 30.813515, 31.415356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.875982, 31.174154, 31.291254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628457, -0.432575, -0.646468,
		-0.717063, -0.000113, -0.697009,
		0.301435, 0.901598, -0.310254,
		27.966413, 31.444633, 31.198177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.797655, 30.852697, 30.668594>,  <27.755407, 30.813515, 31.415356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.797655, 30.852697, 30.668594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.072664, 31.076326, 30.853958>,  <28.237671, 31.210505, 30.965176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.072664, 31.076326, 30.853958>,  <27.797655, 30.852697, 30.668594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.072664, 31.076326, 30.853958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694828, -0.321044, -0.643541,
		-0.211011, 0.764440, -0.609185,
		0.687524, 0.559072, 0.463410,
		28.278921, 31.244049, 30.992981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745304, 31.402239, 30.192877>,  <27.797655, 30.852697, 30.668594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.745304, 31.402239, 30.192877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837160, 31.012936, 30.195276>,  <27.892273, 30.779354, 30.196716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837160, 31.012936, 30.195276>,  <27.745304, 31.402239, 30.192877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837160, 31.012936, 30.195276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401550, -0.089126, 0.911490,
		-0.886580, -0.211722, -0.411279,
		0.229638, -0.973258, 0.005999,
		27.906052, 30.720959, 30.197077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012030, 32.127930, 30.343039>,  <27.745304, 31.402239, 30.192877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012030, 32.127930, 30.343039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.955523, 31.806316, 30.574062>,  <27.921618, 31.613348, 30.712677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.955523, 31.806316, 30.574062>,  <28.012030, 32.127930, 30.343039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.955523, 31.806316, 30.574062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630599, 0.522821, 0.573587,
		-0.763144, -0.283179, -0.580880,
		-0.141269, -0.804032, 0.577560,
		27.913141, 31.565107, 30.747330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.308468, 31.998888, 30.400322>,  <28.012030, 32.127930, 30.343039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.308468, 31.998888, 30.400322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467512, 31.809586, 30.714758>,  <27.562939, 31.696005, 30.903419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467512, 31.809586, 30.714758>,  <27.308468, 31.998888, 30.400322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.467512, 31.809586, 30.714758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729670, 0.356349, 0.583607,
		-0.556317, -0.805633, -0.203633,
		0.397609, -0.473256, 0.786089,
		27.586794, 31.667608, 30.950584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.740358, 31.688200, 30.834877>,  <27.308468, 31.998888, 30.400322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.740358, 31.688200, 30.834877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.052980, 31.785679, 31.064585>,  <27.240553, 31.844166, 31.202410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.052980, 31.785679, 31.064585>,  <26.740358, 31.688200, 30.834877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.052980, 31.785679, 31.064585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599634, 0.547384, 0.583789,
		-0.172080, -0.800614, 0.573938,
		0.781554, 0.243695, 0.574270,
		27.287447, 31.858788, 31.236866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.267405, 31.911182, 31.404093>,  <26.740358, 31.688200, 30.834877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.267405, 31.911182, 31.404093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.628368, 32.009407, 31.545715>,  <26.844946, 32.068340, 31.630690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.628368, 32.009407, 31.545715>,  <26.267405, 31.911182, 31.404093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.628368, 32.009407, 31.545715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420593, 0.323548, 0.847595,
		0.093583, -0.913792, 0.395255,
		0.902410, 0.245562, 0.354056,
		26.899092, 32.083076, 31.651932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.304668, 31.675018, 32.171402>,  <26.267405, 31.911182, 31.404093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.304668, 31.675018, 32.171402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595530, 31.946774, 32.132057>,  <26.770046, 32.109825, 32.108448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595530, 31.946774, 32.132057>,  <26.304668, 31.675018, 32.171402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.595530, 31.946774, 32.132057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385348, 0.522558, 0.760553,
		0.568116, -0.515132, 0.641781,
		0.727153, 0.679392, -0.098368,
		26.813677, 32.150589, 32.102547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604826, 31.847309, 32.833115>,  <26.304668, 31.675018, 32.171402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.604826, 31.847309, 32.833115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.651482, 32.172142, 32.604408>,  <26.679474, 32.367043, 32.467186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.651482, 32.172142, 32.604408>,  <26.604826, 31.847309, 32.833115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.651482, 32.172142, 32.604408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459976, 0.554401, 0.693586,
		0.880237, 0.182100, 0.438203,
		0.116637, 0.812083, -0.571766,
		26.686472, 32.415768, 32.432877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.847317, 32.327061, 33.305893>,  <26.604826, 31.847309, 32.833115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.847317, 32.327061, 33.305893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.744062, 32.545460, 32.987083>,  <26.682110, 32.676498, 32.795799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.744062, 32.545460, 32.987083>,  <26.847317, 32.327061, 33.305893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.744062, 32.545460, 32.987083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327145, 0.726846, 0.603880,
		0.909034, 0.416626, -0.009003,
		-0.258135, 0.546002, -0.797024,
		26.666622, 32.709259, 32.747974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.117029, 32.942162, 33.404694>,  <26.847317, 32.327061, 33.305893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.117029, 32.942162, 33.404694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.814922, 33.002159, 33.149483>,  <26.633659, 33.038158, 32.996357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.814922, 33.002159, 33.149483>,  <27.117029, 32.942162, 33.404694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.814922, 33.002159, 33.149483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329802, 0.754265, 0.567728,
		0.566396, 0.639208, -0.520202,
		-0.755266, 0.149995, -0.638024,
		26.588343, 33.047157, 32.958076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.643963, 32.815956, 34.005909>,  <27.117029, 32.942162, 33.404694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.643963, 32.815956, 34.005909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748989, 33.199295, 33.960957>,  <27.812006, 33.429298, 33.933987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748989, 33.199295, 33.960957>,  <27.643963, 32.815956, 34.005909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.748989, 33.199295, 33.960957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951037, -0.276711, -0.137695,
		-0.163057, -0.070725, -0.984079,
		0.262567, 0.958347, -0.112381,
		27.827759, 33.486797, 33.927242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.251667, 32.948681, 34.514645>,  <27.643963, 32.815956, 34.005909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.251667, 32.948681, 34.514645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.645138, 32.992905, 34.457859>,  <28.881220, 33.019440, 34.423790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.645138, 32.992905, 34.457859>,  <28.251667, 32.948681, 34.514645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.645138, 32.992905, 34.457859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105107, 0.287307, 0.952054,
		0.146044, -0.951436, 0.270998,
		0.983679, 0.110558, -0.141962,
		28.940241, 33.026073, 34.415272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694431, 32.651817, 35.023815>,  <28.251667, 32.948681, 34.514645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694431, 32.651817, 35.023815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.895565, 32.957710, 34.862648>,  <29.016245, 33.141247, 34.765949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.895565, 32.957710, 34.862648>,  <28.694431, 32.651817, 35.023815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.895565, 32.957710, 34.862648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115088, 0.402753, 0.908044,
		0.856687, -0.502967, 0.114506,
		0.502834, 0.764732, -0.402919,
		29.046415, 33.187130, 34.741772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.325842, 32.733471, 35.402164>,  <28.694431, 32.651817, 35.023815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.325842, 32.733471, 35.402164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.179142, 33.066700, 35.236523>,  <29.091122, 33.266636, 35.137138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.179142, 33.066700, 35.236523>,  <29.325842, 32.733471, 35.402164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.179142, 33.066700, 35.236523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148392, 0.491807, 0.857966,
		0.918408, 0.253210, -0.303992,
		-0.366751, 0.833073, -0.414105,
		29.069117, 33.316624, 35.112289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567545, 32.069572, 35.778435>,  <29.325842, 32.733471, 35.402164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567545, 32.069572, 35.778435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.848059, 31.862158, 35.974117>,  <30.016367, 31.737711, 36.091526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.848059, 31.862158, 35.974117>,  <29.567545, 32.069572, 35.778435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.848059, 31.862158, 35.974117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650973, -0.186079, 0.735940,
		-0.290581, -0.834563, -0.468047,
		0.701282, -0.518536, 0.489207,
		30.058443, 31.706598, 36.120880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232651, 31.544584, 36.111031>,  <29.567545, 32.069572, 35.778435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232651, 31.544584, 36.111031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.569077, 31.607216, 36.318142>,  <29.770931, 31.644794, 36.442410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.569077, 31.607216, 36.318142>,  <29.232651, 31.544584, 36.111031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569077, 31.607216, 36.318142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527712, 0.027153, 0.848989,
		0.118876, -0.987292, 0.105467,
		0.841064, 0.156580, 0.517778,
		29.821396, 31.654190, 36.473476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.131868, 31.119946, 36.726803>,  <29.232651, 31.544584, 36.111031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.131868, 31.119946, 36.726803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.416176, 31.383406, 36.825584>,  <29.586761, 31.541481, 36.884853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.416176, 31.383406, 36.825584>,  <29.131868, 31.119946, 36.726803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416176, 31.383406, 36.825584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427857, 0.126142, 0.895001,
		0.558341, -0.741800, 0.371466,
		0.710770, 0.658651, 0.246954,
		29.629406, 31.581001, 36.899670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.462517, 30.846052, 37.305447>,  <29.131868, 31.119946, 36.726803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.462517, 30.846052, 37.305447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540876, 31.237297, 37.333496>,  <29.587893, 31.472044, 37.350327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540876, 31.237297, 37.333496>,  <29.462517, 30.846052, 37.305447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540876, 31.237297, 37.333496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295219, -0.009367, 0.955384,
		0.935131, -0.207859, 0.286923,
		0.195897, 0.978114, 0.070123,
		29.599646, 31.530731, 37.354534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929993, 30.975458, 37.832027>,  <29.462517, 30.846052, 37.305447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929993, 30.975458, 37.832027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.693230, 31.293858, 37.781376>,  <29.551172, 31.484898, 37.750984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.693230, 31.293858, 37.781376>,  <29.929993, 30.975458, 37.832027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693230, 31.293858, 37.781376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286986, -0.061322, 0.955970,
		0.753184, 0.602186, 0.264737,
		-0.591906, 0.795997, -0.126632,
		29.515657, 31.532658, 37.743385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397694, 30.550867, 38.080055>,  <29.929993, 30.975458, 37.832027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397694, 30.550867, 38.080055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.097296, 30.294956, 38.014702>,  <28.917057, 30.141409, 37.975491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.097296, 30.294956, 38.014702>,  <29.397694, 30.550867, 38.080055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.097296, 30.294956, 38.014702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175113, -0.045599, 0.983492,
		-0.636667, 0.767205, -0.077789,
		-0.750993, -0.639779, -0.163379,
		28.871998, 30.103022, 37.965687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.674534, 30.813446, 38.250637>,  <29.397694, 30.550867, 38.080055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.674534, 30.813446, 38.250637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.724480, 30.421593, 38.313541>,  <28.754448, 30.186481, 38.351284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.724480, 30.421593, 38.313541>,  <28.674534, 30.813446, 38.250637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.724480, 30.421593, 38.313541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259752, 0.120693, 0.958103,
		-0.957569, -0.160482, -0.239391,
		0.124866, -0.979632, 0.157258,
		28.761940, 30.127703, 38.360718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694860, 31.589163, 38.331715>,  <28.674534, 30.813446, 38.250637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694860, 31.589163, 38.331715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.970724, 31.865084, 38.419842>,  <29.136242, 32.030636, 38.472717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.970724, 31.865084, 38.419842>,  <28.694860, 31.589163, 38.331715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.970724, 31.865084, 38.419842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295689, 0.009471, -0.955237,
		-0.661013, 0.723935, -0.197435,
		0.689660, 0.689803, 0.220320,
		29.177622, 32.072025, 38.485939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.672401, 32.212044, 37.837677>,  <28.694860, 31.589163, 38.331715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.672401, 32.212044, 37.837677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032410, 32.123917, 37.988102>,  <29.248415, 32.071041, 38.078358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032410, 32.123917, 37.988102>,  <28.672401, 32.212044, 37.837677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032410, 32.123917, 37.988102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401257, 0.081996, -0.912288,
		0.170159, 0.971975, 0.162202,
		0.900022, -0.220319, 0.376059,
		29.302416, 32.057819, 38.100922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170160, 32.620800, 37.496296>,  <28.672401, 32.212044, 37.837677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170160, 32.620800, 37.496296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401314, 32.335217, 37.654438>,  <29.540007, 32.163864, 37.749325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401314, 32.335217, 37.654438>,  <29.170160, 32.620800, 37.496296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401314, 32.335217, 37.654438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566587, 0.002313, -0.823998,
		0.587389, 0.700180, 0.405859,
		0.577886, -0.713962, 0.395355,
		29.574680, 32.121029, 37.773045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930042, 32.738560, 37.527676>,  <29.170160, 32.620800, 37.496296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930042, 32.738560, 37.527676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860781, 32.347851, 37.477192>,  <29.819223, 32.113426, 37.446903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860781, 32.347851, 37.477192>,  <29.930042, 32.738560, 37.527676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860781, 32.347851, 37.477192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410188, 0.044978, -0.910891,
		0.895412, -0.209492, 0.392874,
		-0.173154, -0.976775, -0.126205,
		29.808834, 32.054817, 37.439331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514688, 32.463894, 37.378948>,  <29.930042, 32.738560, 37.527676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514688, 32.463894, 37.378948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250803, 32.207172, 37.222557>,  <30.092472, 32.053139, 37.128723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250803, 32.207172, 37.222557>,  <30.514688, 32.463894, 37.378948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250803, 32.207172, 37.222557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586067, -0.113713, -0.802243,
		0.470426, -0.758389, 0.451160,
		-0.659715, -0.641806, -0.390974,
		30.052889, 32.014629, 37.105267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982658, 31.953098, 37.100632>,  <30.514688, 32.463894, 37.378948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982658, 31.953098, 37.100632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.630527, 31.873257, 36.928501>,  <30.419249, 31.825352, 36.825222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.630527, 31.873257, 36.928501>,  <30.982658, 31.953098, 37.100632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.630527, 31.873257, 36.928501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468503, -0.223659, -0.854682,
		0.074352, -0.954010, 0.290408,
		-0.880328, -0.199604, -0.430327,
		30.366428, 31.813375, 36.799404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911278, 31.229080, 36.742550>,  <30.982658, 31.953098, 37.100632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911278, 31.229080, 36.742550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696047, 31.518435, 36.569489>,  <30.566908, 31.692047, 36.465652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696047, 31.518435, 36.569489>,  <30.911278, 31.229080, 36.742550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696047, 31.518435, 36.569489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475120, -0.163684, -0.864563,
		-0.696229, -0.670763, -0.255620,
		-0.538076, 0.723384, -0.432655,
		30.534624, 31.735449, 36.439693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.658535, 30.927006, 36.116745>,  <30.911278, 31.229080, 36.742550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.658535, 30.927006, 36.116745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669960, 31.321053, 36.048946>,  <30.676815, 31.557480, 36.008266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669960, 31.321053, 36.048946>,  <30.658535, 30.927006, 36.116745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669960, 31.321053, 36.048946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384605, -0.167342, -0.907786,
		-0.922639, -0.039261, -0.383660,
		0.028562, 0.985117, -0.169496,
		30.678528, 31.616589, 35.998096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331268, 31.073893, 35.532387>,  <30.658535, 30.927006, 36.116745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331268, 31.073893, 35.532387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605045, 31.362581, 35.573685>,  <30.769312, 31.535795, 35.598465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605045, 31.362581, 35.573685>,  <30.331268, 31.073893, 35.532387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.605045, 31.362581, 35.573685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464289, -0.322287, -0.824965,
		-0.562118, 0.612577, -0.555673,
		0.684440, 0.721721, 0.103249,
		30.810377, 31.579098, 35.604660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298773, 31.423340, 34.993153>,  <30.331268, 31.073893, 35.532387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298773, 31.423340, 34.993153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.672382, 31.486763, 35.121189>,  <30.896549, 31.524817, 35.198009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.672382, 31.486763, 35.121189>,  <30.298773, 31.423340, 34.993153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672382, 31.486763, 35.121189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348507, -0.207938, -0.913950,
		-0.078356, 0.965205, -0.249478,
		0.934025, 0.158558, 0.320088,
		30.952589, 31.534330, 35.217216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615561, 31.961117, 34.573605>,  <30.298773, 31.423340, 34.993153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615561, 31.961117, 34.573605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.930868, 31.773323, 34.732712>,  <31.120052, 31.660646, 34.828175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.930868, 31.773323, 34.732712>,  <30.615561, 31.961117, 34.573605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.930868, 31.773323, 34.732712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462703, 0.026121, -0.886128,
		0.405634, 0.882554, 0.237822,
		0.788268, -0.469485, 0.397765,
		31.167349, 31.632477, 34.852043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219965, 32.275269, 34.185253>,  <30.615561, 31.961117, 34.573605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219965, 32.275269, 34.185253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398127, 31.974924, 34.380325>,  <31.505024, 31.794718, 34.497368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398127, 31.974924, 34.380325>,  <31.219965, 32.275269, 34.185253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398127, 31.974924, 34.380325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702524, -0.044581, -0.710262,
		0.555046, 0.658959, 0.507639,
		0.445403, -0.750857, 0.487679,
		31.531748, 31.749666, 34.526630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891846, 32.395699, 34.143120>,  <31.219965, 32.275269, 34.185253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891846, 32.395699, 34.143120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906271, 32.011192, 34.252422>,  <31.914927, 31.780489, 34.318005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906271, 32.011192, 34.252422>,  <31.891846, 32.395699, 34.143120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906271, 32.011192, 34.252422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693501, -0.172802, -0.699425,
		0.719553, 0.214724, 0.660407,
		0.036064, -0.961266, 0.273252,
		31.917089, 31.722813, 34.334396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613548, 32.202751, 34.146927>,  <31.891846, 32.395699, 34.143120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613548, 32.202751, 34.146927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391640, 31.874634, 34.091278>,  <32.258495, 31.677765, 34.057888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391640, 31.874634, 34.091278>,  <32.613548, 32.202751, 34.146927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391640, 31.874634, 34.091278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672760, -0.343895, -0.655080,
		0.489513, -0.457013, 0.742641,
		-0.554771, -0.820290, -0.139118,
		32.225208, 31.628548, 34.049541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145115, 31.722588, 34.194893>,  <32.613548, 32.202751, 34.146927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145115, 31.722588, 34.194893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834641, 31.536861, 34.024273>,  <32.648357, 31.425426, 33.921898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834641, 31.536861, 34.024273>,  <33.145115, 31.722588, 34.194893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834641, 31.536861, 34.024273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623912, -0.468027, -0.625848,
		0.090952, -0.751906, 0.652967,
		-0.776184, -0.464316, -0.426555,
		32.601784, 31.397566, 33.896305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411884, 31.035328, 33.975166>,  <33.145115, 31.722588, 34.194893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411884, 31.035328, 33.975166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077755, 31.101091, 33.765327>,  <32.877277, 31.140549, 33.639423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077755, 31.101091, 33.765327>,  <33.411884, 31.035328, 33.975166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077755, 31.101091, 33.765327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459393, -0.315422, -0.830342,
		-0.301980, -0.934602, 0.187954,
		-0.835324, 0.164402, -0.524601,
		32.827160, 31.150414, 33.607948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331032, 30.442848, 33.716976>,  <33.411884, 31.035328, 33.975166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331032, 30.442848, 33.716976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127075, 30.699154, 33.487392>,  <33.004700, 30.852938, 33.349644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127075, 30.699154, 33.487392>,  <33.331032, 30.442848, 33.716976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127075, 30.699154, 33.487392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437993, -0.380874, -0.814308,
		-0.740386, -0.666600, -0.086445,
		-0.509893, 0.640765, -0.573960,
		32.974106, 30.891384, 33.315205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000290, 30.048176, 33.084705>,  <33.331032, 30.442848, 33.716976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000290, 30.048176, 33.084705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079273, 30.432419, 33.006489>,  <33.126663, 30.662966, 32.959557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079273, 30.432419, 33.006489>,  <33.000290, 30.048176, 33.084705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079273, 30.432419, 33.006489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375082, -0.258327, -0.890270,
		-0.905717, 0.102450, -0.411317,
		0.197463, 0.960610, -0.195544,
		33.138512, 30.720602, 32.947826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874939, 30.113890, 32.384399>,  <33.000290, 30.048176, 33.084705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874939, 30.113890, 32.384399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074711, 30.456886, 32.433842>,  <33.194572, 30.662683, 32.463509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074711, 30.456886, 32.433842>,  <32.874939, 30.113890, 32.384399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074711, 30.456886, 32.433842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397887, -0.100289, -0.911937,
		-0.769582, 0.504628, -0.391272,
		0.499429, 0.857492, 0.123605,
		33.224541, 30.714134, 32.470924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800201, 30.455227, 31.821831>,  <32.874939, 30.113890, 32.384399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800201, 30.455227, 31.821831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120235, 30.645416, 31.968142>,  <33.312256, 30.759529, 32.055927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120235, 30.645416, 31.968142>,  <32.800201, 30.455227, 31.821831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120235, 30.645416, 31.968142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361368, 0.104694, -0.926527,
		-0.478833, 0.873479, -0.088057,
		0.800083, 0.475472, 0.365778,
		33.360260, 30.788057, 32.077873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905766, 31.013933, 31.362011>,  <32.800201, 30.455227, 31.821831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905766, 31.013933, 31.362011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244804, 30.943996, 31.562416>,  <33.448227, 30.902035, 31.682659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244804, 30.943996, 31.562416>,  <32.905766, 31.013933, 31.362011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244804, 30.943996, 31.562416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529101, 0.206502, -0.823048,
		0.040442, 0.962698, 0.267538,
		0.847594, -0.174841, 0.501014,
		33.499084, 30.891544, 31.712721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348244, 31.605762, 31.277922>,  <32.905766, 31.013933, 31.362011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348244, 31.605762, 31.277922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589180, 31.288301, 31.312092>,  <33.733742, 31.097824, 31.332594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589180, 31.288301, 31.312092>,  <33.348244, 31.605762, 31.277922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589180, 31.288301, 31.312092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608213, 0.387010, -0.693038,
		0.516972, 0.469402, 0.715822,
		0.602343, -0.793653, 0.085423,
		33.769882, 31.050205, 31.337719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049942, 31.921112, 31.042639>,  <33.348244, 31.605762, 31.277922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049942, 31.921112, 31.042639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102489, 31.524590, 31.039738>,  <34.134018, 31.286676, 31.037998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102489, 31.524590, 31.039738>,  <34.049942, 31.921112, 31.042639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102489, 31.524590, 31.039738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493295, 0.071714, -0.866901,
		0.859885, 0.110309, 0.498428,
		0.131371, -0.991307, -0.007251,
		34.141899, 31.227198, 31.037563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651405, 31.944448, 30.685030>,  <34.049942, 31.921112, 31.042639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651405, 31.944448, 30.685030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549522, 31.557800, 30.673920>,  <34.488392, 31.325811, 30.667253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549522, 31.557800, 30.673920>,  <34.651405, 31.944448, 30.685030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549522, 31.557800, 30.673920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358221, -0.067635, -0.931184,
		0.898222, -0.247125, 0.363491,
		-0.254704, -0.966620, -0.027774,
		34.473110, 31.267815, 30.665586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339756, 31.565083, 30.463762>,  <34.651405, 31.944448, 30.685030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339756, 31.565083, 30.463762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020599, 31.342091, 30.372044>,  <34.829105, 31.208296, 30.317013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020599, 31.342091, 30.372044>,  <35.339756, 31.565083, 30.463762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020599, 31.342091, 30.372044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316284, -0.063357, -0.946546,
		0.513155, -0.827768, 0.226875,
		-0.797895, -0.557482, -0.229298,
		34.781231, 31.174847, 30.303255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496136, 30.858046, 30.215298>,  <35.339756, 31.565083, 30.463762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496136, 30.858046, 30.215298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135956, 30.928709, 30.056309>,  <34.919849, 30.971107, 29.960915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135956, 30.928709, 30.056309>,  <35.496136, 30.858046, 30.215298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135956, 30.928709, 30.056309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320472, -0.348408, -0.880857,
		-0.294093, -0.920546, 0.257109,
		-0.900448, 0.176658, -0.397474,
		34.865822, 30.981707, 29.937067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352188, 30.282270, 29.727167>,  <35.496136, 30.858046, 30.215298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352188, 30.282270, 29.727167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097801, 30.577950, 29.638504>,  <34.945168, 30.755356, 29.585306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097801, 30.577950, 29.638504>,  <35.352188, 30.282270, 29.727167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097801, 30.577950, 29.638504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198047, -0.121277, -0.972661,
		-0.745869, -0.662481, -0.069267,
		-0.635969, 0.739196, -0.221659,
		34.907009, 30.799707, 29.572006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074677, 30.011866, 29.085125>,  <35.352188, 30.282270, 29.727167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074677, 30.011866, 29.085125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001545, 30.404411, 29.108793>,  <34.957664, 30.639938, 29.122993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001545, 30.404411, 29.108793>,  <35.074677, 30.011866, 29.085125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001545, 30.404411, 29.108793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216659, 0.098924, -0.971222,
		-0.958975, -0.164746, -0.230707,
		-0.182828, 0.981363, 0.059171,
		34.946697, 30.698820, 29.126545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837162, 30.170452, 28.386370>,  <35.074677, 30.011866, 29.085125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837162, 30.170452, 28.386370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888481, 30.532103, 28.549391>,  <34.919273, 30.749092, 28.647203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888481, 30.532103, 28.549391>,  <34.837162, 30.170452, 28.386370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888481, 30.532103, 28.549391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193879, 0.380154, -0.904375,
		-0.972600, 0.195042, -0.126519,
		0.128294, 0.904125, 0.407553,
		34.926968, 30.803341, 28.671656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448566, 30.565372, 28.052149>,  <34.837162, 30.170452, 28.386370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448566, 30.565372, 28.052149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740963, 30.801027, 28.189882>,  <34.916401, 30.942419, 28.272522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740963, 30.801027, 28.189882>,  <34.448566, 30.565372, 28.052149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740963, 30.801027, 28.189882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286792, 0.192637, -0.938425,
		-0.619191, 0.784736, -0.028143,
		0.730994, 0.589136, 0.344335,
		34.960262, 30.977768, 28.293182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449635, 31.215933, 27.691185>,  <34.448566, 30.565372, 28.052149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449635, 31.215933, 27.691185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822834, 31.173519, 27.828747>,  <35.046753, 31.148071, 27.911283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822834, 31.173519, 27.828747>,  <34.449635, 31.215933, 27.691185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822834, 31.173519, 27.828747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359662, 0.241323, -0.901336,
		0.012580, 0.964635, 0.263290,
		0.932998, -0.106035, 0.343907,
		35.102734, 31.141708, 27.931919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796513, 31.764536, 27.379669>,  <34.449635, 31.215933, 27.691185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796513, 31.764536, 27.379669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072216, 31.490610, 27.474281>,  <35.237640, 31.326254, 27.531050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072216, 31.490610, 27.474281>,  <34.796513, 31.764536, 27.379669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072216, 31.490610, 27.474281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458631, 0.159679, -0.874162,
		0.560870, 0.711007, 0.424138,
		0.689262, -0.684815, 0.236531,
		35.278996, 31.285166, 27.545240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408333, 32.083633, 27.227398>,  <34.796513, 31.764536, 27.379669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408333, 32.083633, 27.227398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474796, 31.689268, 27.235065>,  <35.514675, 31.452648, 27.239666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474796, 31.689268, 27.235065>,  <35.408333, 32.083633, 27.227398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474796, 31.689268, 27.235065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483577, 0.064526, -0.872920,
		0.859387, 0.154308, 0.487486,
		0.166155, -0.985913, 0.019167,
		35.524643, 31.393494, 27.240816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019325, 32.083332, 27.010963>,  <35.408333, 32.083633, 27.227398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019325, 32.083332, 27.010963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904942, 31.701851, 26.973690>,  <35.836311, 31.472963, 26.951326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904942, 31.701851, 26.973690>,  <36.019325, 32.083332, 27.010963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904942, 31.701851, 26.973690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513426, -0.070379, -0.855243,
		0.809088, -0.292405, 0.509780,
		-0.285956, -0.953701, -0.093185,
		35.819157, 31.415741, 26.945734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584595, 31.774656, 26.744484>,  <36.019325, 32.083332, 27.010963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584595, 31.774656, 26.744484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.274967, 31.543381, 26.641315>,  <36.089191, 31.404615, 26.579414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.274967, 31.543381, 26.641315>,  <36.584595, 31.774656, 26.744484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274967, 31.543381, 26.641315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351979, -0.054389, -0.934426,
		0.526245, -0.814089, 0.245610,
		-0.774065, -0.578187, -0.257920,
		36.042747, 31.369925, 26.563940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844425, 31.203608, 26.417446>,  <36.584595, 31.774656, 26.744484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844425, 31.203608, 26.417446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474796, 31.158768, 26.271284>,  <36.253017, 31.131865, 26.183588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474796, 31.158768, 26.271284>,  <36.844425, 31.203608, 26.417446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474796, 31.158768, 26.271284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363332, 0.039126, -0.930838,
		0.118644, -0.992926, 0.004574,
		-0.924075, -0.112100, -0.365404,
		36.197575, 31.125137, 26.161663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872414, 30.734596, 25.782154>,  <36.844425, 31.203608, 26.417446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872414, 30.734596, 25.782154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553940, 30.975229, 25.756264>,  <36.362854, 31.119610, 25.740728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553940, 30.975229, 25.756264>,  <36.872414, 30.734596, 25.782154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553940, 30.975229, 25.756264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190912, 0.148264, -0.970345,
		-0.574147, -0.784930, -0.232895,
		-0.796183, 0.601583, -0.064727,
		36.315086, 31.155704, 25.736845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622589, 30.432117, 25.119019>,  <36.872414, 30.734596, 25.782154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622589, 30.432117, 25.119019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467480, 30.790537, 25.205490>,  <36.374413, 31.005589, 25.257372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467480, 30.790537, 25.205490>,  <36.622589, 30.432117, 25.119019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467480, 30.790537, 25.205490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074123, 0.264082, -0.961648,
		-0.918769, -0.356878, -0.168822,
		-0.387774, 0.896046, 0.216177,
		36.351147, 31.059351, 25.270344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293724, 30.524532, 24.591921>,  <36.622589, 30.432117, 25.119019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293724, 30.524532, 24.591921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323227, 30.897379, 24.733751>,  <36.340927, 31.121086, 24.818850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323227, 30.897379, 24.733751>,  <36.293724, 30.524532, 24.591921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323227, 30.897379, 24.733751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332684, 0.312180, -0.889868,
		-0.940150, 0.183592, -0.287076,
		0.073753, 0.932115, 0.354574,
		36.345352, 31.177013, 24.840124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034065, 30.962484, 24.149147>,  <36.293724, 30.524532, 24.591921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034065, 30.962484, 24.149147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267609, 31.222265, 24.344011>,  <36.407734, 31.378134, 24.460930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267609, 31.222265, 24.344011>,  <36.034065, 30.962484, 24.149147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267609, 31.222265, 24.344011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360234, 0.330508, -0.872351,
		-0.727561, 0.684818, -0.040986,
		0.583855, 0.649453, 0.487159,
		36.442764, 31.417101, 24.490160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912109, 31.613417, 23.778267>,  <36.034065, 30.962484, 24.149147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912109, 31.613417, 23.778267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247044, 31.669977, 23.989502>,  <36.448002, 31.703913, 24.116243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247044, 31.669977, 23.989502>,  <35.912109, 31.613417, 23.778267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247044, 31.669977, 23.989502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380853, 0.542124, -0.749034,
		-0.392204, 0.828316, 0.400086,
		0.837333, 0.141401, 0.528090,
		36.498245, 31.712397, 24.147928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122929, 32.351135, 23.681139>,  <35.912109, 31.613417, 23.778267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122929, 32.351135, 23.681139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458412, 32.168488, 23.799839>,  <36.659702, 32.058899, 23.871059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458412, 32.168488, 23.799839>,  <36.122929, 32.351135, 23.681139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458412, 32.168488, 23.799839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543701, 0.671292, -0.503743,
		0.030810, 0.583840, 0.811284,
		0.838713, -0.456617, 0.296752,
		36.710026, 32.031502, 23.888865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516808, 32.845104, 24.026497>,  <36.122929, 32.351135, 23.681139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516808, 32.845104, 24.026497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769463, 32.566685, 23.889935>,  <36.921055, 32.399635, 23.807997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769463, 32.566685, 23.889935>,  <36.516808, 32.845104, 24.026497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769463, 32.566685, 23.889935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437409, 0.683543, -0.584330,
		0.640085, 0.219751, 0.736207,
		0.631637, -0.696044, -0.341405,
		36.958954, 32.357872, 23.787514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184444, 33.168888, 23.966179>,  <36.516808, 32.845104, 24.026497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184444, 33.168888, 23.966179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252235, 32.836220, 23.754667>,  <37.292912, 32.636620, 23.627760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252235, 32.836220, 23.754667>,  <37.184444, 33.168888, 23.966179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252235, 32.836220, 23.754667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619176, 0.507281, -0.599406,
		0.766745, -0.225821, 0.600922,
		0.169478, -0.831668, -0.528778,
		37.303078, 32.586720, 23.596033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879295, 33.141048, 23.802416>,  <37.184444, 33.168888, 23.966179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879295, 33.141048, 23.802416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707432, 32.920410, 23.516439>,  <37.604313, 32.788029, 23.344854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707432, 32.920410, 23.516439>,  <37.879295, 33.141048, 23.802416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707432, 32.920410, 23.516439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505938, 0.508747, -0.696566,
		0.747943, -0.661002, 0.060482,
		-0.429661, -0.551592, -0.714939,
		37.578533, 32.754932, 23.301958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469521, 32.865555, 23.364622>,  <37.879295, 33.141048, 23.802416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469521, 32.865555, 23.364622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126179, 32.851566, 23.159874>,  <37.920174, 32.843174, 23.037025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126179, 32.851566, 23.159874>,  <38.469521, 32.865555, 23.364622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126179, 32.851566, 23.159874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419498, 0.526563, -0.739427,
		0.295391, -0.849416, -0.437305,
		-0.858351, -0.034972, -0.511870,
		37.868675, 32.841076, 23.006313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685665, 32.955925, 22.593811>,  <38.469521, 32.865555, 23.364622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685665, 32.955925, 22.593811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293129, 33.019337, 22.550289>,  <38.057606, 33.057384, 22.524176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293129, 33.019337, 22.550289>,  <38.685665, 32.955925, 22.593811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293129, 33.019337, 22.550289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171343, 0.464214, -0.868992,
		-0.087255, -0.871420, -0.482716,
		-0.981340, 0.158534, -0.108806,
		37.998726, 33.066898, 22.517647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513935, 33.128819, 21.892946>,  <38.685665, 32.955925, 22.593811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513935, 33.128819, 21.892946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171665, 33.226635, 22.075384>,  <37.966305, 33.285324, 22.184847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171665, 33.226635, 22.075384>,  <38.513935, 33.128819, 21.892946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171665, 33.226635, 22.075384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225044, 0.617801, -0.753443,
		-0.466026, -0.747342, -0.473602,
		-0.855672, 0.244542, 0.456096,
		37.914963, 33.299999, 22.212214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896210, 32.995140, 21.426573>,  <38.513935, 33.128819, 21.892946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896210, 32.995140, 21.426573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816944, 33.284451, 21.691181>,  <37.769386, 33.458035, 21.849947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816944, 33.284451, 21.691181>,  <37.896210, 32.995140, 21.426573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816944, 33.284451, 21.691181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108687, 0.654528, -0.748185,
		-0.974125, -0.220159, -0.051091,
		-0.198160, 0.723273, 0.661520,
		37.757496, 33.501431, 21.889637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362061, 33.471008, 21.190527>,  <37.896210, 32.995140, 21.426573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362061, 33.471008, 21.190527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558338, 33.699131, 21.454033>,  <37.676105, 33.836002, 21.612137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558338, 33.699131, 21.454033>,  <37.362061, 33.471008, 21.190527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558338, 33.699131, 21.454033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028603, 0.766181, -0.641988,
		-0.870862, 0.296177, 0.392274,
		0.490695, 0.570303, 0.658766,
		37.705547, 33.870220, 21.651663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434044, 34.086803, 21.119677>,  <37.362061, 33.471008, 21.190527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434044, 34.086803, 21.119677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269348, 34.449764, 21.085979>,  <37.170532, 34.667542, 21.065762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269348, 34.449764, 21.085979>,  <37.434044, 34.086803, 21.119677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269348, 34.449764, 21.085979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156907, -0.161653, -0.974294,
		-0.897693, -0.387935, 0.208936,
		-0.411738, 0.907400, -0.084245,
		37.145828, 34.721985, 21.060705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695084, 34.019741, 20.859234>,  <37.434044, 34.086803, 21.119677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695084, 34.019741, 20.859234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783215, 34.387821, 20.729813>,  <36.836094, 34.608669, 20.652161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783215, 34.387821, 20.729813>,  <36.695084, 34.019741, 20.859234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783215, 34.387821, 20.729813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321047, -0.244811, -0.914875,
		-0.921077, 0.305451, 0.241488,
		0.220331, 0.920200, -0.323554,
		36.849312, 34.663879, 20.632746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089752, 34.191021, 20.545694>,  <36.695084, 34.019741, 20.859234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089752, 34.191021, 20.545694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384365, 34.426552, 20.412548>,  <36.561134, 34.567871, 20.332661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384365, 34.426552, 20.412548>,  <36.089752, 34.191021, 20.545694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384365, 34.426552, 20.412548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308948, -0.144920, -0.939973,
		-0.601718, 0.795163, 0.075178,
		0.736537, 0.588825, -0.332864,
		36.605328, 34.603199, 20.312689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810192, 34.597591, 20.066740>,  <36.089752, 34.191021, 20.545694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810192, 34.597591, 20.066740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201019, 34.532108, 20.012270>,  <36.435516, 34.492817, 19.979588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201019, 34.532108, 20.012270>,  <35.810192, 34.597591, 20.066740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201019, 34.532108, 20.012270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190366, -0.384959, -0.903088,
		0.095423, 0.908298, -0.407294,
		0.977065, -0.163710, -0.136175,
		36.494137, 34.482994, 19.971418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107929, 34.685974, 19.312067>,  <35.810192, 34.597591, 20.066740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107929, 34.685974, 19.312067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345436, 34.424950, 19.500368>,  <36.487942, 34.268337, 19.613348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345436, 34.424950, 19.500368>,  <36.107929, 34.685974, 19.312067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345436, 34.424950, 19.500368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086589, -0.529833, -0.843670,
		0.799964, 0.541705, -0.258094,
		0.593767, -0.652558, 0.470753,
		36.523567, 34.229183, 19.641594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787678, 34.516354, 19.037014>,  <36.107929, 34.685974, 19.312067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787678, 34.516354, 19.037014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772285, 34.186928, 19.263380>,  <36.763050, 33.989273, 19.399200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772285, 34.186928, 19.263380>,  <36.787678, 34.516354, 19.037014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772285, 34.186928, 19.263380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207323, -0.560593, -0.801719,
		0.977515, 0.086476, 0.192316,
		-0.038482, -0.823564, 0.565917,
		36.760742, 33.939857, 19.433155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196342, 34.297703, 19.598549>,  <36.787678, 34.516354, 19.037014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196342, 34.297703, 19.598549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556293, 34.320976, 19.425650>,  <37.772263, 34.334938, 19.321909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556293, 34.320976, 19.425650>,  <37.196342, 34.297703, 19.598549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556293, 34.320976, 19.425650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436029, 0.096925, -0.894698,
		-0.010157, 0.993590, 0.112588,
		0.899875, 0.058180, -0.432250,
		37.826256, 34.338428, 19.295975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705242, 34.669945, 19.906860>,  <37.196342, 34.297703, 19.598549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705242, 34.669945, 19.906860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314293, 34.728676, 19.845964>,  <37.079723, 34.763912, 19.809427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314293, 34.728676, 19.845964>,  <37.705242, 34.669945, 19.906860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314293, 34.728676, 19.845964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080073, 0.409355, 0.908855,
		0.195763, 0.900484, -0.388337,
		-0.977377, 0.146825, -0.152241,
		37.021080, 34.772724, 19.800293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534939, 35.436287, 19.991791>,  <37.705242, 34.669945, 19.906860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534939, 35.436287, 19.991791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224823, 35.195469, 20.068169>,  <37.038754, 35.050976, 20.113995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224823, 35.195469, 20.068169>,  <37.534939, 35.436287, 19.991791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224823, 35.195469, 20.068169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120846, 0.438127, 0.890753,
		-0.619934, 0.667519, -0.412432,
		-0.775292, -0.602049, 0.190943,
		36.992237, 35.014854, 20.125452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118973, 35.877533, 20.337610>,  <37.534939, 35.436287, 19.991791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118973, 35.877533, 20.337610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043427, 35.495468, 20.428823>,  <36.998096, 35.266232, 20.483551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043427, 35.495468, 20.428823>,  <37.118973, 35.877533, 20.337610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043427, 35.495468, 20.428823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015003, 0.234994, 0.971881,
		-0.981888, 0.180136, -0.058713,
		-0.188868, -0.955159, 0.228035,
		36.986767, 35.208920, 20.497234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521763, 35.811539, 20.698357>,  <37.118973, 35.877533, 20.337610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521763, 35.811539, 20.698357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735367, 35.491833, 20.808628>,  <36.863529, 35.300007, 20.874790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735367, 35.491833, 20.808628>,  <36.521763, 35.811539, 20.698357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735367, 35.491833, 20.808628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104132, 0.261403, 0.959596,
		-0.839038, -0.541145, 0.056364,
		0.534014, -0.799269, 0.275677,
		36.895573, 35.252052, 20.891331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214928, 35.492397, 21.253180>,  <36.521763, 35.811539, 20.698357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214928, 35.492397, 21.253180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587135, 35.350609, 21.290009>,  <36.810463, 35.265537, 21.312107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587135, 35.350609, 21.290009>,  <36.214928, 35.492397, 21.253180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587135, 35.350609, 21.290009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031838, 0.172162, 0.984554,
		-0.364845, -0.919082, 0.148915,
		0.930524, -0.354468, 0.092075,
		36.866291, 35.244267, 21.317631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211807, 34.961727, 21.732872>,  <36.214928, 35.492397, 21.253180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211807, 34.961727, 21.732872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599133, 35.061577, 21.729843>,  <36.831528, 35.121487, 21.728025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599133, 35.061577, 21.729843>,  <36.211807, 34.961727, 21.732872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599133, 35.061577, 21.729843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038611, 0.179598, 0.982982,
		0.246736, -0.951542, 0.183545,
		0.968313, 0.249624, -0.007573,
		36.889626, 35.136463, 21.727571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391037, 34.680161, 22.319563>,  <36.211807, 34.961727, 21.732872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391037, 34.680161, 22.319563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666702, 34.958206, 22.237707>,  <36.832100, 35.125034, 22.188593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666702, 34.958206, 22.237707>,  <36.391037, 34.680161, 22.319563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666702, 34.958206, 22.237707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007019, 0.288805, 0.957362,
		0.724575, -0.658340, 0.203912,
		0.689161, 0.695112, -0.204640,
		36.873451, 35.166740, 22.176315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805416, 34.754158, 22.864122>,  <36.391037, 34.680161, 22.319563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805416, 34.754158, 22.864122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880634, 35.107681, 22.692764>,  <36.925766, 35.319794, 22.589949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880634, 35.107681, 22.692764>,  <36.805416, 34.754158, 22.864122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880634, 35.107681, 22.692764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021910, 0.439844, 0.897807,
		0.981915, -0.159446, 0.102077,
		0.188050, 0.883807, -0.428396,
		36.937050, 35.372822, 22.564245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351509, 35.003822, 23.240387>,  <36.805416, 34.754158, 22.864122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351509, 35.003822, 23.240387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180393, 35.321060, 23.066950>,  <37.077724, 35.511402, 22.962889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180393, 35.321060, 23.066950>,  <37.351509, 35.003822, 23.240387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180393, 35.321060, 23.066950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155793, 0.407825, 0.899671,
		0.890352, 0.452419, -0.050905,
		-0.427789, 0.793093, -0.433591,
		37.052055, 35.558987, 22.936872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717739, 35.563721, 23.581320>,  <37.351509, 35.003822, 23.240387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717739, 35.563721, 23.581320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357544, 35.670490, 23.443987>,  <37.141426, 35.734550, 23.361588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357544, 35.670490, 23.443987>,  <37.717739, 35.563721, 23.581320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357544, 35.670490, 23.443987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208624, 0.427565, 0.879582,
		0.381578, 0.863678, -0.329330,
		-0.900486, 0.266923, -0.343334,
		37.087399, 35.750568, 23.340986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582294, 36.122108, 23.977913>,  <37.717739, 35.563721, 23.581320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582294, 36.122108, 23.977913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225739, 36.026993, 23.823568>,  <37.011806, 35.969925, 23.730961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225739, 36.026993, 23.823568>,  <37.582294, 36.122108, 23.977913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225739, 36.026993, 23.823568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452518, 0.515084, 0.727954,
		0.025654, 0.823497, -0.566740,
		-0.891386, -0.237785, -0.385861,
		36.958324, 35.955658, 23.707809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267536, 36.590900, 24.257500>,  <37.582294, 36.122108, 23.977913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267536, 36.590900, 24.257500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973282, 36.346630, 24.140259>,  <36.796730, 36.200069, 24.069914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973282, 36.346630, 24.140259>,  <37.267536, 36.590900, 24.257500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973282, 36.346630, 24.140259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566493, 0.317407, 0.760486,
		-0.371377, 0.725485, -0.579440,
		-0.735639, -0.610676, -0.293104,
		36.752590, 36.163429, 24.052328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724548, 36.995762, 24.316851>,  <37.267536, 36.590900, 24.257500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724548, 36.995762, 24.316851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596367, 36.617538, 24.339603>,  <36.519459, 36.390606, 24.353256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596367, 36.617538, 24.339603>,  <36.724548, 36.995762, 24.316851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596367, 36.617538, 24.339603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522075, 0.226403, 0.822301,
		-0.790410, 0.233811, -0.566202,
		-0.320453, -0.945555, 0.056884,
		36.500233, 36.333874, 24.356668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103825, 37.071159, 24.543919>,  <36.724548, 36.995762, 24.316851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103825, 37.071159, 24.543919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176857, 36.686321, 24.624941>,  <36.220676, 36.455418, 24.673555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176857, 36.686321, 24.624941>,  <36.103825, 37.071159, 24.543919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176857, 36.686321, 24.624941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398183, 0.116013, 0.909940,
		-0.898952, -0.246790, -0.361910,
		0.182578, -0.962100, 0.202558,
		36.231632, 36.397690, 24.685709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449558, 36.775574, 24.830828>,  <36.103825, 37.071159, 24.543919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449558, 36.775574, 24.830828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733662, 36.526699, 24.962534>,  <35.904125, 36.377373, 25.041557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733662, 36.526699, 24.962534>,  <35.449558, 36.775574, 24.830828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733662, 36.526699, 24.962534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379790, 0.055132, 0.923428,
		-0.592696, -0.780926, -0.197142,
		0.710261, -0.622185, 0.329265,
		35.946739, 36.340042, 25.061314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170578, 36.314404, 25.218784>,  <35.449558, 36.775574, 24.830828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170578, 36.314404, 25.218784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552345, 36.291103, 25.335876>,  <35.781406, 36.277122, 25.406132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552345, 36.291103, 25.335876>,  <35.170578, 36.314404, 25.218784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552345, 36.291103, 25.335876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294425, -0.022785, 0.955403,
		-0.049002, -0.998041, -0.038903,
		0.954418, -0.058271, 0.292732,
		35.838673, 36.273628, 25.423697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245335, 35.685265, 25.586441>,  <35.170578, 36.314404, 25.218784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245335, 35.685265, 25.586441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582001, 35.868820, 25.700298>,  <35.784000, 35.978954, 25.768612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582001, 35.868820, 25.700298>,  <35.245335, 35.685265, 25.586441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582001, 35.868820, 25.700298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209830, -0.207768, 0.955408,
		0.497567, -0.863859, -0.078581,
		0.841664, 0.458891, 0.284642,
		35.834499, 36.006489, 25.785690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548607, 35.168362, 26.101255>,  <35.245335, 35.685265, 25.586441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548607, 35.168362, 26.101255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698914, 35.532700, 26.169554>,  <35.789097, 35.751305, 26.210533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698914, 35.532700, 26.169554>,  <35.548607, 35.168362, 26.101255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698914, 35.532700, 26.169554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093223, -0.146161, 0.984859,
		0.922012, -0.385999, 0.029988,
		0.375771, 0.910847, 0.170746,
		35.811646, 35.805954, 26.220778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940784, 35.214947, 26.721272>,  <35.548607, 35.168362, 26.101255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940784, 35.214947, 26.721272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865818, 35.606380, 26.687204>,  <35.820839, 35.841240, 26.666763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865818, 35.606380, 26.687204>,  <35.940784, 35.214947, 26.721272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865818, 35.606380, 26.687204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314390, 0.022384, 0.949030,
		0.930609, 0.204643, 0.303461,
		-0.187419, 0.978581, -0.085168,
		35.809593, 35.899956, 26.661654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151707, 35.452946, 27.318306>,  <35.940784, 35.214947, 26.721272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151707, 35.452946, 27.318306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914387, 35.747177, 27.187508>,  <35.771996, 35.923714, 27.109028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914387, 35.747177, 27.187508>,  <36.151707, 35.452946, 27.318306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914387, 35.747177, 27.187508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243288, 0.223369, 0.943884,
		0.767338, 0.639560, 0.046432,
		-0.593299, 0.735574, -0.326997,
		35.736397, 35.967850, 27.089409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265030, 36.154755, 27.755680>,  <36.151707, 35.452946, 27.318306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265030, 36.154755, 27.755680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911098, 36.144970, 27.569572>,  <35.698738, 36.139099, 27.457909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911098, 36.144970, 27.569572>,  <36.265030, 36.154755, 27.755680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911098, 36.144970, 27.569572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463867, 0.139709, 0.874819,
		0.043604, 0.989890, -0.134966,
		-0.884831, -0.024461, -0.465269,
		35.645649, 36.137630, 27.429993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852505, 36.458244, 28.220644>,  <36.265030, 36.154755, 27.755680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852505, 36.458244, 28.220644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558361, 36.323318, 27.985537>,  <35.381874, 36.242363, 27.844473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558361, 36.323318, 27.985537>,  <35.852505, 36.458244, 28.220644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558361, 36.323318, 27.985537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617373, -0.024221, 0.786298,
		-0.279465, 0.941081, -0.190436,
		-0.735357, -0.337313, -0.587767,
		35.337753, 36.222126, 27.809206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230030, 36.735561, 28.383602>,  <35.852505, 36.458244, 28.220644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230030, 36.735561, 28.383602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098415, 36.394234, 28.221819>,  <35.019447, 36.189438, 28.124750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098415, 36.394234, 28.221819>,  <35.230030, 36.735561, 28.383602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098415, 36.394234, 28.221819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588924, -0.149380, 0.794264,
		-0.738177, 0.499534, -0.453388,
		-0.329035, -0.853318, -0.404456,
		34.999706, 36.138237, 28.100483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483521, 36.707794, 28.400307>,  <35.230030, 36.735561, 28.383602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483521, 36.707794, 28.400307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549564, 36.320293, 28.326263>,  <34.589191, 36.087795, 28.281837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549564, 36.320293, 28.326263>,  <34.483521, 36.707794, 28.400307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549564, 36.320293, 28.326263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603739, -0.247686, 0.757727,
		-0.779895, -0.013355, -0.625768,
		0.165113, -0.968749, -0.185106,
		34.599098, 36.029671, 28.270731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814129, 36.308212, 28.290518>,  <34.483521, 36.707794, 28.400307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814129, 36.308212, 28.290518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096176, 36.051346, 28.410801>,  <34.265404, 35.897224, 28.482971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096176, 36.051346, 28.410801>,  <33.814129, 36.308212, 28.290518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096176, 36.051346, 28.410801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535427, -0.204152, 0.819536,
		-0.464889, -0.738879, -0.487786,
		0.705121, -0.642168, 0.300707,
		34.307713, 35.858696, 28.501013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411617, 35.856316, 28.638456>,  <33.814129, 36.308212, 28.290518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411617, 35.856316, 28.638456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770290, 35.727467, 28.759905>,  <33.985497, 35.650158, 28.832773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770290, 35.727467, 28.759905>,  <33.411617, 35.856316, 28.638456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770290, 35.727467, 28.759905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415210, -0.374251, 0.829179,
		-0.153469, -0.869581, -0.469336,
		0.896687, -0.322126, 0.303622,
		34.039295, 35.630829, 28.850992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305264, 35.187969, 28.861565>,  <33.411617, 35.856316, 28.638456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305264, 35.187969, 28.861565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635212, 35.313362, 29.049740>,  <33.833179, 35.388599, 29.162645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635212, 35.313362, 29.049740>,  <33.305264, 35.187969, 28.861565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635212, 35.313362, 29.049740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337008, -0.395449, 0.854427,
		0.453886, -0.863335, -0.220548,
		0.824872, 0.313486, 0.470439,
		33.882675, 35.407410, 29.190872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567635, 34.653206, 29.211086>,  <33.305264, 35.187969, 28.861565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567635, 34.653206, 29.211086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757889, 34.939045, 29.416265>,  <33.872044, 35.110550, 29.539373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757889, 34.939045, 29.416265>,  <33.567635, 34.653206, 29.211086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757889, 34.939045, 29.416265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222047, -0.466711, 0.856082,
		0.851153, -0.521085, -0.063312,
		0.475640, 0.714599, 0.512948,
		33.900581, 35.153423, 29.570150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831097, 34.181301, 29.759283>,  <33.567635, 34.653206, 29.211086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831097, 34.181301, 29.759283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852955, 34.565578, 29.868158>,  <33.866070, 34.796143, 29.933483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852955, 34.565578, 29.868158>,  <33.831097, 34.181301, 29.759283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852955, 34.565578, 29.868158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179174, -0.258736, 0.949185,
		0.982299, -0.100636, 0.157992,
		0.054644, 0.960691, 0.272188,
		33.869347, 34.853786, 29.949814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301346, 34.178661, 30.299177>,  <33.831097, 34.181301, 29.759283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301346, 34.178661, 30.299177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049438, 34.488007, 30.328289>,  <33.898293, 34.673615, 30.345757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049438, 34.488007, 30.328289>,  <34.301346, 34.178661, 30.299177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049438, 34.488007, 30.328289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197779, -0.250249, 0.947765,
		0.751179, 0.582482, 0.310555,
		-0.629773, 0.773363, 0.072779,
		33.860508, 34.720016, 30.350122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319843, 34.542107, 31.001905>,  <34.301346, 34.178661, 30.299177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319843, 34.542107, 31.001905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960728, 34.684044, 30.897552>,  <33.745258, 34.769207, 30.834940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960728, 34.684044, 30.897552>,  <34.319843, 34.542107, 31.001905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960728, 34.684044, 30.897552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274340, 0.012825, 0.961547,
		0.344546, 0.934837, 0.085834,
		-0.897789, 0.354845, -0.260882,
		33.691391, 34.790497, 30.819288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187160, 35.062481, 31.614624>,  <34.319843, 34.542107, 31.001905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187160, 35.062481, 31.614624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848785, 34.970284, 31.422264>,  <33.645760, 34.914963, 31.306849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848785, 34.970284, 31.422264>,  <34.187160, 35.062481, 31.614624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848785, 34.970284, 31.422264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470085, -0.103526, 0.876529,
		-0.251823, 0.967550, -0.020777,
		-0.845935, -0.230498, -0.480901,
		33.595005, 34.901134, 31.277994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703922, 35.417606, 32.015827>,  <34.187160, 35.062481, 31.614624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703922, 35.417606, 32.015827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510921, 35.146957, 31.793341>,  <33.395123, 34.984566, 31.659849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510921, 35.146957, 31.793341>,  <33.703922, 35.417606, 32.015827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510921, 35.146957, 31.793341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548406, -0.261781, 0.794180,
		-0.682968, 0.688222, -0.244756,
		-0.482500, -0.676625, -0.556213,
		33.366173, 34.943970, 31.626476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986233, 35.568462, 31.985548>,  <33.703922, 35.417606, 32.015827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986233, 35.568462, 31.985548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007313, 35.184315, 31.876062>,  <33.019958, 34.953827, 31.810371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007313, 35.184315, 31.876062>,  <32.986233, 35.568462, 31.985548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007313, 35.184315, 31.876062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676480, -0.235955, 0.697639,
		-0.734573, 0.148400, -0.662102,
		0.052697, -0.960366, -0.273715,
		33.023121, 34.896206, 31.793947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291611, 35.461510, 32.050533>,  <32.986233, 35.568462, 31.985548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291611, 35.461510, 32.050533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476639, 35.106953, 32.043251>,  <32.587654, 34.894218, 32.038883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476639, 35.106953, 32.043251>,  <32.291611, 35.461510, 32.050533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476639, 35.106953, 32.043251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539192, -0.297564, 0.787863,
		-0.703776, -0.354625, -0.615582,
		0.462570, -0.886396, -0.018207,
		32.615410, 34.841034, 32.037788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773104, 34.965618, 32.239220>,  <32.291611, 35.461510, 32.050533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773104, 34.965618, 32.239220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123425, 34.784088, 32.304966>,  <32.333618, 34.675171, 32.344414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123425, 34.784088, 32.304966>,  <31.773104, 34.965618, 32.239220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123425, 34.784088, 32.304966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354155, -0.372835, 0.857653,
		-0.327933, -0.809349, -0.487252,
		0.875805, -0.453816, 0.164370,
		32.386166, 34.647942, 32.354275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615353, 34.359516, 32.415081>,  <31.773104, 34.965618, 32.239220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615353, 34.359516, 32.415081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983179, 34.402214, 32.566345>,  <32.203873, 34.427834, 32.657104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983179, 34.402214, 32.566345>,  <31.615353, 34.359516, 32.415081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983179, 34.402214, 32.566345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278610, -0.501530, 0.819051,
		0.277088, -0.858530, -0.431450,
		0.919564, 0.106743, 0.378163,
		32.259048, 34.434238, 32.679794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649057, 33.807526, 32.876846>,  <31.615353, 34.359516, 32.415081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649057, 33.807526, 32.876846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970188, 34.017345, 32.990204>,  <32.162868, 34.143238, 33.058216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970188, 34.017345, 32.990204>,  <31.649057, 33.807526, 32.876846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970188, 34.017345, 32.990204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068159, -0.391455, 0.917669,
		0.592301, -0.756047, -0.278519,
		0.802829, 0.524553, 0.283390,
		32.211037, 34.174713, 33.075222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998020, 33.402630, 33.347099>,  <31.649057, 33.807526, 32.876846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998020, 33.402630, 33.347099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144115, 33.765282, 33.431591>,  <32.231773, 33.982872, 33.482285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144115, 33.765282, 33.431591>,  <31.998020, 33.402630, 33.347099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144115, 33.765282, 33.431591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087394, -0.192504, 0.977397,
		0.926802, -0.375444, 0.008924,
		0.365240, 0.906633, 0.211225,
		32.253689, 34.037273, 33.494957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606560, 33.385883, 33.810593>,  <31.998020, 33.402630, 33.347099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606560, 33.385883, 33.810593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433708, 33.742325, 33.866020>,  <32.329998, 33.956188, 33.899277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433708, 33.742325, 33.866020>,  <32.606560, 33.385883, 33.810593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433708, 33.742325, 33.866020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139433, -0.217826, 0.965976,
		0.890966, 0.398109, 0.218379,
		-0.432133, 0.891101, 0.138566,
		32.304070, 34.009655, 33.907589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993496, 33.652519, 34.258411>,  <32.606560, 33.385883, 33.810593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993496, 33.652519, 34.258411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655254, 33.864986, 34.279663>,  <32.452309, 33.992466, 34.292416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655254, 33.864986, 34.279663>,  <32.993496, 33.652519, 34.258411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655254, 33.864986, 34.279663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104670, -0.262579, 0.959217,
		0.523454, 0.805553, 0.277634,
		-0.845600, 0.531166, 0.053131,
		32.401573, 34.024338, 34.295601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934910, 34.059715, 34.904408>,  <32.993496, 33.652519, 34.258411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934910, 34.059715, 34.904408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548592, 34.016525, 34.810101>,  <32.316803, 33.990612, 34.753517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548592, 34.016525, 34.810101>,  <32.934910, 34.059715, 34.904408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548592, 34.016525, 34.810101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200402, -0.266224, 0.942849,
		-0.164570, 0.957844, 0.235479,
		-0.965793, -0.107974, -0.235767,
		32.258854, 33.984135, 34.739372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114410, 34.743954, 35.064777>,  <32.934910, 34.059715, 34.904408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114410, 34.743954, 35.064777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284271, 34.382092, 35.078972>,  <33.386189, 34.164974, 35.087490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284271, 34.382092, 35.078972>,  <33.114410, 34.743954, 35.064777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284271, 34.382092, 35.078972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899208, 0.416890, -0.132767,
		0.105314, 0.088293, 0.990512,
		0.424657, -0.904659, 0.035489,
		33.411667, 34.110695, 35.089619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769825, 34.919945, 35.091526>,  <33.114410, 34.743954, 35.064777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769825, 34.919945, 35.091526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830376, 34.528217, 35.037834>,  <33.866707, 34.293182, 35.005619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830376, 34.528217, 35.037834>,  <33.769825, 34.919945, 35.091526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830376, 34.528217, 35.037834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907326, 0.191546, -0.374259,
		0.392230, -0.065134, 0.917558,
		0.151378, -0.979320, -0.134228,
		33.875790, 34.234421, 34.997566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429062, 34.722523, 35.270878>,  <33.769825, 34.919945, 35.091526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429062, 34.722523, 35.270878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333778, 34.410339, 35.039658>,  <34.276608, 34.223030, 34.900925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333778, 34.410339, 35.039658>,  <34.429062, 34.722523, 35.270878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333778, 34.410339, 35.039658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942580, -0.042322, -0.331288,
		0.234093, -0.623774, 0.745725,
		-0.238210, -0.780458, -0.578050,
		34.262314, 34.176201, 34.866241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052528, 34.322372, 35.164757>,  <34.429062, 34.722523, 35.270878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052528, 34.322372, 35.164757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804478, 34.224167, 34.866718>,  <34.655647, 34.165245, 34.687897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804478, 34.224167, 34.866718>,  <35.052528, 34.322372, 35.164757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804478, 34.224167, 34.866718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744444, 0.115438, -0.657629,
		0.247469, -0.962495, 0.111185,
		-0.620130, -0.245514, -0.745091,
		34.618439, 34.150513, 34.643192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393658, 33.859535, 34.792751>,  <35.052528, 34.322372, 35.164757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393658, 33.859535, 34.792751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138664, 34.001633, 34.519279>,  <34.985668, 34.086891, 34.355198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138664, 34.001633, 34.519279>,  <35.393658, 33.859535, 34.792751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138664, 34.001633, 34.519279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758758, 0.135380, -0.637149,
		-0.133788, -0.924918, -0.355848,
		-0.637485, 0.355246, -0.683676,
		34.947418, 34.108208, 34.314178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773254, 33.836494, 34.160099>,  <35.393658, 33.859535, 34.792751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773254, 33.836494, 34.160099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457031, 34.048374, 34.037174>,  <35.267296, 34.175503, 33.963417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457031, 34.048374, 34.037174>,  <35.773254, 33.836494, 34.160099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457031, 34.048374, 34.037174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536884, 0.358096, -0.763887,
		-0.294579, -0.768888, -0.567481,
		-0.790556, 0.529696, -0.307316,
		35.219864, 34.207283, 33.944981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572086, 33.678215, 33.523556>,  <35.773254, 33.836494, 34.160099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572086, 33.678215, 33.523556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447590, 34.054924, 33.574455>,  <35.372894, 34.280949, 33.604996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447590, 34.054924, 33.574455>,  <35.572086, 33.678215, 33.523556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447590, 34.054924, 33.574455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440424, 0.261591, -0.858835,
		-0.842115, -0.211260, -0.496197,
		-0.311238, 0.941775, 0.127246,
		35.354218, 34.337456, 33.612629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384945, 33.852341, 32.887066>,  <35.572086, 33.678215, 33.523556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384945, 33.852341, 32.887066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434692, 34.197861, 33.082363>,  <35.464542, 34.405170, 33.199543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434692, 34.197861, 33.082363>,  <35.384945, 33.852341, 32.887066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434692, 34.197861, 33.082363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440196, 0.392959, -0.807348,
		-0.889246, 0.315337, -0.331367,
		0.124373, 0.863797, 0.488248,
		35.472004, 34.457001, 33.228836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333015, 34.403454, 32.293064>,  <35.384945, 33.852341, 32.887066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333015, 34.403454, 32.293064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518108, 34.596722, 32.590366>,  <35.629166, 34.712681, 32.768745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518108, 34.596722, 32.590366>,  <35.333015, 34.403454, 32.293064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518108, 34.596722, 32.590366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506942, 0.543577, -0.668979,
		-0.727245, 0.686347, 0.006594,
		0.462736, 0.483168, 0.743252,
		35.656929, 34.741673, 32.813343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481518, 35.037174, 32.109554>,  <35.333015, 34.403454, 32.293064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481518, 35.037174, 32.109554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742096, 35.032822, 32.412998>,  <35.898445, 35.030209, 32.595066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742096, 35.032822, 32.412998>,  <35.481518, 35.037174, 32.109554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742096, 35.032822, 32.412998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589693, 0.636393, -0.497259,
		-0.477364, 0.771289, 0.420995,
		0.651449, -0.010884, 0.758614,
		35.937531, 35.029556, 32.640583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662247, 35.799088, 32.154171>,  <35.481518, 35.037174, 32.109554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662247, 35.799088, 32.154171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948540, 35.600937, 32.351078>,  <36.120316, 35.482048, 32.469223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948540, 35.600937, 32.351078>,  <35.662247, 35.799088, 32.154171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948540, 35.600937, 32.351078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671490, 0.294478, -0.679988,
		0.191888, 0.817243, 0.543409,
		0.715737, -0.495375, 0.492264,
		36.163261, 35.452324, 32.498756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155136, 36.269802, 32.132027>,  <35.662247, 35.799088, 32.154171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155136, 36.269802, 32.132027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336792, 35.924934, 32.221851>,  <36.445786, 35.718014, 32.275745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336792, 35.924934, 32.221851>,  <36.155136, 36.269802, 32.132027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336792, 35.924934, 32.221851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793849, 0.277168, -0.541278,
		0.404430, 0.424084, 0.810302,
		0.454137, -0.862166, 0.224563,
		36.473034, 35.666283, 32.289219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903515, 36.409828, 32.308777>,  <36.155136, 36.269802, 32.132027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903515, 36.409828, 32.308777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885708, 36.039078, 32.159691>,  <36.875023, 35.816628, 32.070240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885708, 36.039078, 32.159691>,  <36.903515, 36.409828, 32.308777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885708, 36.039078, 32.159691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754432, 0.213372, -0.620729,
		0.654866, -0.308825, 0.689766,
		-0.044520, -0.926876, -0.372717,
		36.872353, 35.761013, 32.047874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589306, 36.245033, 32.030106>,  <36.903515, 36.409828, 32.308777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589306, 36.245033, 32.030106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346947, 35.982353, 31.850491>,  <37.201530, 35.824745, 31.742722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346947, 35.982353, 31.850491>,  <37.589306, 36.245033, 32.030106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346947, 35.982353, 31.850491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558208, 0.051229, -0.828118,
		0.566826, -0.752413, 0.335533,
		-0.605898, -0.656696, -0.449041,
		37.165176, 35.785343, 31.715778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008179, 35.907616, 31.590094>,  <37.589306, 36.245033, 32.030106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008179, 35.907616, 31.590094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656303, 35.790913, 31.439880>,  <37.445179, 35.720890, 31.349752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656303, 35.790913, 31.439880>,  <38.008179, 35.907616, 31.590094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656303, 35.790913, 31.439880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377307, 0.052456, -0.924601,
		0.289462, -0.955052, 0.063939,
		-0.879688, -0.291761, -0.375532,
		37.392395, 35.703384, 31.327221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082016, 35.339005, 31.047398>,  <38.008179, 35.907616, 31.590094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082016, 35.339005, 31.047398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726448, 35.511852, 30.986603>,  <37.513107, 35.615559, 30.950127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726448, 35.511852, 30.986603>,  <38.082016, 35.339005, 31.047398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726448, 35.511852, 30.986603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142456, -0.054559, -0.988296,
		-0.435351, -0.900166, -0.013059,
		-0.888918, 0.432116, -0.151986,
		37.459774, 35.641487, 30.941008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859631, 34.929478, 30.447317>,  <38.082016, 35.339005, 31.047398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859631, 34.929478, 30.447317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675644, 35.283821, 30.471600>,  <37.565254, 35.496429, 30.486170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675644, 35.283821, 30.471600>,  <37.859631, 34.929478, 30.447317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675644, 35.283821, 30.471600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010575, 0.062900, -0.997964,
		-0.887876, -0.459667, -0.019564,
		-0.459962, 0.885861, 0.060708,
		37.537655, 35.549580, 30.489813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235268, 34.864342, 30.130909>,  <37.859631, 34.929478, 30.447317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235268, 34.864342, 30.130909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296745, 35.259411, 30.119024>,  <37.333633, 35.496452, 30.111893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296745, 35.259411, 30.119024>,  <37.235268, 34.864342, 30.130909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296745, 35.259411, 30.119024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095331, -0.044750, -0.994439,
		-0.983509, 0.150006, -0.101034,
		0.153694, 0.987672, -0.029712,
		37.342854, 35.555714, 30.110111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825493, 35.118023, 29.568590>,  <37.235268, 34.864342, 30.130909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825493, 35.118023, 29.568590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093285, 35.411858, 29.612726>,  <37.253960, 35.588158, 29.639208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093285, 35.411858, 29.612726>,  <36.825493, 35.118023, 29.568590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093285, 35.411858, 29.612726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102552, 0.055719, -0.993166,
		-0.735717, 0.676221, -0.038031,
		0.669480, 0.734589, 0.110341,
		37.294128, 35.632233, 29.645828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656105, 35.550129, 29.107431>,  <36.825493, 35.118023, 29.568590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656105, 35.550129, 29.107431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033817, 35.652927, 29.189682>,  <37.260445, 35.714607, 29.239033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033817, 35.652927, 29.189682>,  <36.656105, 35.550129, 29.107431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033817, 35.652927, 29.189682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188150, 0.091118, -0.977904,
		-0.270051, 0.962108, 0.037688,
		0.944284, 0.256993, 0.205627,
		37.317101, 35.730026, 29.251369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794945, 36.058250, 28.643515>,  <36.656105, 35.550129, 29.107431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794945, 36.058250, 28.643515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166451, 35.949883, 28.744713>,  <37.389355, 35.884861, 28.805431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166451, 35.949883, 28.744713>,  <36.794945, 36.058250, 28.643515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166451, 35.949883, 28.744713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308619, 0.187104, -0.932602,
		0.205325, 0.944242, 0.257387,
		0.928760, -0.270921, 0.252994,
		37.445080, 35.868607, 28.820612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263939, 36.650093, 28.549549>,  <36.794945, 36.058250, 28.643515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263939, 36.650093, 28.549549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494217, 36.323505, 28.531904>,  <37.632385, 36.127552, 28.521317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494217, 36.323505, 28.531904>,  <37.263939, 36.650093, 28.549549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494217, 36.323505, 28.531904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355588, 0.298580, -0.885667,
		0.736293, 0.494191, 0.462220,
		0.575698, -0.816471, -0.044114,
		37.666927, 36.078564, 28.518669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829182, 36.874928, 28.192596>,  <37.263939, 36.650093, 28.549549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829182, 36.874928, 28.192596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887772, 36.481575, 28.149691>,  <37.922928, 36.245564, 28.123947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887772, 36.481575, 28.149691>,  <37.829182, 36.874928, 28.192596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887772, 36.481575, 28.149691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270725, 0.144146, -0.951803,
		0.951447, 0.110379, 0.287340,
		0.146478, -0.983381, -0.107265,
		37.931717, 36.186562, 28.117512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455379, 36.877563, 27.832325>,  <37.829182, 36.874928, 28.192596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455379, 36.877563, 27.832325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280636, 36.525257, 27.759216>,  <38.175789, 36.313873, 27.715351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280636, 36.525257, 27.759216>,  <38.455379, 36.877563, 27.832325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280636, 36.525257, 27.759216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372871, 0.007601, -0.927852,
		0.818610, -0.473491, 0.325091,
		-0.436859, -0.880766, -0.182773,
		38.149578, 36.261028, 27.704384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000393, 36.356380, 27.630461>,  <38.455379, 36.877563, 27.832325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000393, 36.356380, 27.630461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655571, 36.210907, 27.489267>,  <38.448677, 36.123623, 27.404552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655571, 36.210907, 27.489267>,  <39.000393, 36.356380, 27.630461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655571, 36.210907, 27.489267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444603, -0.208338, -0.871162,
		0.243286, -0.907927, 0.341293,
		-0.862056, -0.363682, -0.352982,
		38.396954, 36.101803, 27.383373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218609, 36.199306, 27.036583>,  <39.000393, 36.356380, 27.630461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218609, 36.199306, 27.036583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842236, 36.073925, 26.985367>,  <38.616413, 35.998695, 26.954638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842236, 36.073925, 26.985367>,  <39.218609, 36.199306, 27.036583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842236, 36.073925, 26.985367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217868, -0.271015, -0.937595,
		0.259191, -0.910109, 0.323298,
		-0.940932, -0.313452, -0.128039,
		38.559956, 35.979889, 26.946955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181122, 35.410233, 26.913858>,  <39.218609, 36.199306, 27.036583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181122, 35.410233, 26.913858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878296, 35.610989, 26.746546>,  <38.696598, 35.731441, 26.646158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878296, 35.610989, 26.746546>,  <39.181122, 35.410233, 26.913858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878296, 35.610989, 26.746546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326910, -0.263310, -0.907633,
		-0.565666, -0.823880, 0.035271,
		-0.757068, 0.501887, -0.418280,
		38.651176, 35.761555, 26.621061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793327, 34.923508, 26.607882>,  <39.181122, 35.410233, 26.913858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793327, 34.923508, 26.607882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707249, 35.264648, 26.417580>,  <38.655602, 35.469334, 26.303398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707249, 35.264648, 26.417580>,  <38.793327, 34.923508, 26.607882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707249, 35.264648, 26.417580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370170, -0.379577, -0.847877,
		-0.903696, -0.358566, -0.234017,
		-0.215192, 0.852849, -0.475753,
		38.642693, 35.520504, 26.274855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557018, 34.801342, 26.003870>,  <38.793327, 34.923508, 26.607882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557018, 34.801342, 26.003870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687531, 35.169605, 25.918148>,  <38.765839, 35.390564, 25.866714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687531, 35.169605, 25.918148>,  <38.557018, 34.801342, 26.003870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687531, 35.169605, 25.918148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303349, -0.316699, -0.898711,
		-0.895278, 0.228220, -0.382613,
		0.326277, 0.920661, -0.214303,
		38.785412, 35.445805, 25.853857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410233, 34.951725, 25.277617>,  <38.557018, 34.801342, 26.003870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410233, 34.951725, 25.277617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687595, 35.222000, 25.377724>,  <38.854012, 35.384167, 25.437788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687595, 35.222000, 25.377724>,  <38.410233, 34.951725, 25.277617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687595, 35.222000, 25.377724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454083, -0.140091, -0.879877,
		-0.559462, 0.723754, -0.403958,
		0.693405, 0.675688, 0.250269,
		38.895618, 35.424706, 25.452805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504948, 35.258095, 24.665297>,  <38.410233, 34.951725, 25.277617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504948, 35.258095, 24.665297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815544, 35.410519, 24.866037>,  <39.001900, 35.501972, 24.986483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815544, 35.410519, 24.866037>,  <38.504948, 35.258095, 24.665297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815544, 35.410519, 24.866037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519907, 0.062565, -0.851929,
		-0.356036, 0.922431, -0.149535,
		0.776489, 0.381061, 0.501853,
		39.048492, 35.524837, 25.016594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702499, 35.902065, 24.358572>,  <38.504948, 35.258095, 24.665297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702499, 35.902065, 24.358572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037838, 35.763248, 24.526730>,  <39.239040, 35.679958, 24.627625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037838, 35.763248, 24.526730>,  <38.702499, 35.902065, 24.358572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037838, 35.763248, 24.526730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475164, 0.087231, -0.875563,
		0.267183, 0.933785, 0.238031,
		0.838351, -0.347039, 0.420394,
		39.289345, 35.659138, 24.652847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225826, 36.368294, 24.171389>,  <38.702499, 35.902065, 24.358572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225826, 36.368294, 24.171389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474083, 36.093060, 24.321766>,  <39.623039, 35.927917, 24.411993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474083, 36.093060, 24.321766>,  <39.225826, 36.368294, 24.171389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474083, 36.093060, 24.321766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538829, 0.025971, -0.842014,
		0.569616, 0.725163, 0.386881,
		0.620646, -0.688087, 0.375946,
		39.660278, 35.886635, 24.434549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910866, 36.619087, 24.202425>,  <39.225826, 36.368294, 24.171389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910866, 36.619087, 24.202425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964237, 36.223656, 24.230425>,  <39.996262, 35.986397, 24.247225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964237, 36.223656, 24.230425>,  <39.910866, 36.619087, 24.202425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964237, 36.223656, 24.230425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682742, 0.040497, -0.729536,
		0.718372, 0.145135, 0.680351,
		0.133433, -0.988583, 0.069998,
		40.004269, 35.927082, 24.251425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638210, 36.483109, 24.362875>,  <39.910866, 36.619087, 24.202425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638210, 36.483109, 24.362875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.482601, 36.174038, 24.162224>,  <40.389236, 35.988594, 24.041832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.482601, 36.174038, 24.162224>,  <40.638210, 36.483109, 24.362875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482601, 36.174038, 24.162224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802020, -0.016165, -0.597079,
		0.453240, -0.634593, 0.625992,
		-0.389021, -0.772678, -0.501629,
		40.365894, 35.942234, 24.011734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221756, 35.957336, 24.195326>,  <40.638210, 36.483109, 24.362875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221756, 35.957336, 24.195326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.951267, 35.811977, 23.938993>,  <40.788975, 35.724762, 23.785194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.951267, 35.811977, 23.938993>,  <41.221756, 35.957336, 24.195326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951267, 35.811977, 23.938993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726717, -0.186340, -0.661180,
		0.120859, -0.912808, 0.390095,
		-0.676221, -0.363398, -0.640833,
		40.748402, 35.702957, 23.746744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483971, 35.219551, 23.935730>,  <41.221756, 35.957336, 24.195326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483971, 35.219551, 23.935730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206692, 35.357357, 23.682497>,  <41.040325, 35.440041, 23.530558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206692, 35.357357, 23.682497>,  <41.483971, 35.219551, 23.935730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206692, 35.357357, 23.682497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655811, -0.062886, -0.752301,
		-0.298989, -0.936674, -0.182343,
		-0.693193, 0.344512, -0.633083,
		40.998734, 35.460712, 23.492573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466507, 34.725849, 23.337181>,  <41.483971, 35.219551, 23.935730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466507, 34.725849, 23.337181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327267, 35.088528, 23.241909>,  <41.243725, 35.306133, 23.184746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327267, 35.088528, 23.241909>,  <41.466507, 34.725849, 23.337181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327267, 35.088528, 23.241909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544840, -0.011083, -0.838467,
		-0.762875, -0.421637, -0.490147,
		-0.348097, 0.906697, -0.238179,
		41.222839, 35.360538, 23.170456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125874, 34.453934, 22.937130>,  <41.466507, 34.725849, 23.337181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125874, 34.453934, 22.937130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363449, 34.132629, 22.955076>,  <42.505993, 33.939846, 22.965845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363449, 34.132629, 22.955076>,  <42.125874, 34.453934, 22.937130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363449, 34.132629, 22.955076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040630, 0.025748, 0.998843,
		-0.803484, -0.595074, -0.017344,
		0.593939, -0.803259, 0.044867,
		42.541630, 33.891651, 22.968536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.709354, 33.832516, 23.175228>,  <42.125874, 34.453934, 22.937130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.709354, 33.832516, 23.175228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.098866, 33.801083, 23.260626>,  <42.332573, 33.782223, 23.311865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.098866, 33.801083, 23.260626>,  <41.709354, 33.832516, 23.175228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.098866, 33.801083, 23.260626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211110, 0.037601, 0.976739,
		-0.084785, -0.996198, 0.020025,
		0.973778, -0.078586, 0.213496,
		42.390999, 33.777508, 23.324675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676453, 33.356564, 23.571999>,  <41.709354, 33.832516, 23.175228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676453, 33.356564, 23.571999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.018883, 33.528229, 23.687206>,  <42.224342, 33.631226, 23.756330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.018883, 33.528229, 23.687206>,  <41.676453, 33.356564, 23.571999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.018883, 33.528229, 23.687206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194115, -0.249490, 0.948722,
		0.479010, -0.868088, -0.130276,
		0.856077, 0.429159, 0.288018,
		42.275707, 33.656975, 23.773611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988266, 32.856236, 23.976789>,  <41.676453, 33.356564, 23.571999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988266, 32.856236, 23.976789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184772, 33.189243, 24.079210>,  <42.302677, 33.389050, 24.140663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184772, 33.189243, 24.079210>,  <41.988266, 32.856236, 23.976789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184772, 33.189243, 24.079210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126900, -0.222426, 0.966656,
		0.861717, -0.507377, -0.003623,
		0.491265, 0.832523, 0.256054,
		42.332153, 33.438999, 24.156027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.485760, 32.686554, 24.518660>,  <41.988266, 32.856236, 23.976789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.485760, 32.686554, 24.518660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.391171, 33.073681, 24.553095>,  <42.334419, 33.305958, 24.573755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.391171, 33.073681, 24.553095>,  <42.485760, 32.686554, 24.518660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.391171, 33.073681, 24.553095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128039, -0.118867, 0.984620,
		0.963166, 0.221809, 0.152027,
		-0.236469, 0.967818, 0.086088,
		42.320229, 33.364025, 24.578920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.620186, 32.778164, 25.215933>,  <42.485760, 32.686554, 24.518660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.620186, 32.778164, 25.215933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450592, 33.128445, 25.123518>,  <42.348835, 33.338615, 25.068069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450592, 33.128445, 25.123518>,  <42.620186, 32.778164, 25.215933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.450592, 33.128445, 25.123518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345708, 0.079298, 0.934985,
		0.837093, 0.476288, 0.269118,
		-0.423982, 0.875706, -0.231036,
		42.323399, 33.391155, 25.054207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770203, 33.371227, 25.778204>,  <42.620186, 32.778164, 25.215933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770203, 33.371227, 25.778204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438179, 33.480377, 25.583660>,  <42.238964, 33.545868, 25.466934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438179, 33.480377, 25.583660>,  <42.770203, 33.371227, 25.778204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.438179, 33.480377, 25.583660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435218, 0.228334, 0.870889,
		0.348699, 0.934559, -0.070769,
		-0.830056, 0.272879, -0.486357,
		42.189163, 33.562241, 25.437754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.455410, 33.922966, 26.182539>,  <42.770203, 33.371227, 25.778204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.455410, 33.922966, 26.182539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143383, 33.827412, 25.951220>,  <41.956165, 33.770081, 25.812428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143383, 33.827412, 25.951220>,  <42.455410, 33.922966, 26.182539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.143383, 33.827412, 25.951220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625384, 0.268462, 0.732683,
		-0.019775, 0.933200, -0.358812,
		-0.780067, -0.238884, -0.578299,
		41.909363, 33.755745, 25.777729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.995007, 34.478348, 26.201168>,  <42.455410, 33.922966, 26.182539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.995007, 34.478348, 26.201168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778618, 34.153736, 26.112835>,  <41.648785, 33.958969, 26.059835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778618, 34.153736, 26.112835>,  <41.995007, 34.478348, 26.201168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778618, 34.153736, 26.112835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667236, 0.254276, 0.700100,
		-0.511999, 0.526084, -0.679038,
		-0.540974, -0.811529, -0.220833,
		41.616325, 33.910278, 26.046585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287296, 34.663853, 26.010927>,  <41.995007, 34.478348, 26.201168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287296, 34.663853, 26.010927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.261791, 34.286743, 26.141842>,  <41.246490, 34.060478, 26.220390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.261791, 34.286743, 26.141842>,  <41.287296, 34.663853, 26.010927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.261791, 34.286743, 26.141842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699131, 0.276222, 0.659483,
		-0.712145, -0.186768, -0.676732,
		-0.063758, -0.942772, 0.327286,
		41.242664, 34.003910, 26.240028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506050, 34.552998, 26.094780>,  <41.287296, 34.663853, 26.010927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506050, 34.552998, 26.094780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665829, 34.239349, 26.284769>,  <40.761696, 34.051159, 26.398762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665829, 34.239349, 26.284769>,  <40.506050, 34.552998, 26.094780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665829, 34.239349, 26.284769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727249, 0.044415, 0.684935,
		-0.558167, -0.619017, -0.552510,
		0.399447, -0.784121, 0.474971,
		40.785664, 34.004112, 26.427259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898430, 34.173546, 26.341856>,  <40.506050, 34.552998, 26.094780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898430, 34.173546, 26.341856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205097, 34.016804, 26.545298>,  <40.389095, 33.922760, 26.667362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205097, 34.016804, 26.545298>,  <39.898430, 34.173546, 26.341856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205097, 34.016804, 26.545298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610385, -0.199138, 0.766664,
		-0.199138, -0.898218, -0.391853,
		-0.766664, 0.391853, -0.508603,
		40.435097, 33.899246, 26.697878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646328, 33.550064, 26.642357>,  <39.898430, 34.173546, 26.341856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646328, 33.550064, 26.642357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949615, 33.675919, 26.870783>,  <40.131588, 33.751431, 27.007839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949615, 33.675919, 26.870783>,  <39.646328, 33.550064, 26.642357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949615, 33.675919, 26.870783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550956, -0.159173, 0.819214,
		0.348653, -0.935771, 0.052664,
		0.758214, 0.314637, 0.571064,
		40.177078, 33.770309, 27.042103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663853, 33.133064, 27.257524>,  <39.646328, 33.550064, 26.642357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663853, 33.133064, 27.257524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897877, 33.437469, 27.369644>,  <40.038292, 33.620113, 27.436916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897877, 33.437469, 27.369644>,  <39.663853, 33.133064, 27.257524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897877, 33.437469, 27.369644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370979, -0.056208, 0.926939,
		0.721167, -0.646297, 0.249435,
		0.585057, 0.761012, 0.280298,
		40.073395, 33.665771, 27.453733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030239, 32.950157, 27.901449>,  <39.663853, 33.133064, 27.257524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030239, 32.950157, 27.901449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039982, 33.349979, 27.894651>,  <40.045826, 33.589874, 27.890574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039982, 33.349979, 27.894651>,  <40.030239, 32.950157, 27.901449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039982, 33.349979, 27.894651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462124, 0.026329, 0.886424,
		0.886481, -0.013733, 0.462562,
		0.024352, 0.999559, -0.016994,
		40.047287, 33.649849, 27.889553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217644, 33.089184, 28.558189>,  <40.030239, 32.950157, 27.901449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217644, 33.089184, 28.558189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046505, 33.410049, 28.391586>,  <39.943821, 33.602570, 28.291624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046505, 33.410049, 28.391586>,  <40.217644, 33.089184, 28.558189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046505, 33.410049, 28.391586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564017, 0.123136, 0.816530,
		0.706279, 0.584268, 0.399751,
		-0.427849, 0.802165, -0.416506,
		39.918152, 33.650700, 28.266634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365082, 33.592598, 28.975336>,  <40.217644, 33.089184, 28.558189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365082, 33.592598, 28.975336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035133, 33.723530, 28.790972>,  <39.837166, 33.802090, 28.680353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035133, 33.723530, 28.790972>,  <40.365082, 33.592598, 28.975336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035133, 33.723530, 28.790972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473236, 0.046181, 0.879724,
		0.309247, 0.943780, 0.116812,
		-0.824872, 0.327332, -0.460912,
		39.787670, 33.821728, 28.652699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215023, 34.407318, 29.218229>,  <40.365082, 33.592598, 28.975336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215023, 34.407318, 29.218229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900387, 34.199604, 29.084591>,  <39.711605, 34.074974, 29.004408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900387, 34.199604, 29.084591>,  <40.215023, 34.407318, 29.218229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900387, 34.199604, 29.084591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443284, 0.098228, 0.890983,
		-0.429855, 0.848938, -0.307456,
		-0.786590, -0.519284, -0.334097,
		39.664410, 34.043819, 28.984362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685604, 34.764126, 29.544926>,  <40.215023, 34.407318, 29.218229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685604, 34.764126, 29.544926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496799, 34.425793, 29.445515>,  <39.383514, 34.222794, 29.385868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496799, 34.425793, 29.445515>,  <39.685604, 34.764126, 29.544926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496799, 34.425793, 29.445515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451428, -0.010245, 0.892249,
		-0.757241, 0.533347, -0.376997,
		-0.472016, -0.845835, -0.248525,
		39.355194, 34.172043, 29.370956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073509, 34.872276, 29.786877>,  <39.685604, 34.764126, 29.544926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073509, 34.872276, 29.786877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047913, 34.484676, 29.691425>,  <39.032555, 34.252117, 29.634155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047913, 34.484676, 29.691425>,  <39.073509, 34.872276, 29.786877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047913, 34.484676, 29.691425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679877, -0.132709, 0.721218,
		-0.730529, 0.208389, -0.650309,
		-0.063992, -0.969001, -0.238627,
		39.028713, 34.193977, 29.619837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292000, 34.755501, 29.756924>,  <39.073509, 34.872276, 29.786877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292000, 34.755501, 29.756924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479347, 34.404354, 29.796896>,  <38.591755, 34.193668, 29.820879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479347, 34.404354, 29.796896>,  <38.292000, 34.755501, 29.756924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479347, 34.404354, 29.796896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513362, -0.178336, 0.839437,
		-0.719090, -0.444467, -0.534189,
		0.468368, -0.877864, 0.099933,
		38.619858, 34.140995, 29.826876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767536, 34.153721, 29.930246>,  <38.292000, 34.755501, 29.756924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767536, 34.153721, 29.930246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116543, 34.034718, 30.085270>,  <38.325947, 33.963314, 30.178284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116543, 34.034718, 30.085270>,  <37.767536, 34.153721, 29.930246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116543, 34.034718, 30.085270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461269, -0.240082, 0.854162,
		-0.161070, -0.924041, -0.346705,
		0.872518, -0.297504, 0.387561,
		38.378300, 33.945465, 30.201538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653404, 33.456955, 30.222046>,  <37.767536, 34.153721, 29.930246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653404, 33.456955, 30.222046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000538, 33.575199, 30.381790>,  <38.208817, 33.646145, 30.477636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000538, 33.575199, 30.381790>,  <37.653404, 33.456955, 30.222046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000538, 33.575199, 30.381790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322539, -0.276223, 0.905356,
		0.377943, -0.914503, -0.144369,
		0.867830, 0.295608, 0.399359,
		38.260887, 33.663883, 30.501598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792423, 32.999454, 30.747889>,  <37.653404, 33.456955, 30.222046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792423, 32.999454, 30.747889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031391, 33.308922, 30.832289>,  <38.174770, 33.494602, 30.882929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031391, 33.308922, 30.832289>,  <37.792423, 32.999454, 30.747889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031391, 33.308922, 30.832289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181369, -0.125941, 0.975317,
		0.781149, -0.620943, 0.065081,
		0.597420, 0.773672, 0.210999,
		38.210617, 33.541023, 30.895588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089283, 32.734650, 31.323389>,  <37.792423, 32.999454, 30.747889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089283, 32.734650, 31.323389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178272, 33.124565, 31.330130>,  <38.231667, 33.358517, 31.334175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178272, 33.124565, 31.330130>,  <38.089283, 32.734650, 31.323389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178272, 33.124565, 31.330130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008045, -0.015450, 0.999848,
		0.974906, -0.222574, 0.004405,
		0.222473, 0.974793, 0.016853,
		38.245014, 33.417004, 31.335186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684826, 32.895519, 31.617985>,  <38.089283, 32.734650, 31.323389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684826, 32.895519, 31.617985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460541, 33.217262, 31.696585>,  <38.325970, 33.410309, 31.743744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460541, 33.217262, 31.696585>,  <38.684826, 32.895519, 31.617985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460541, 33.217262, 31.696585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014173, -0.227956, 0.973568,
		0.827890, 0.548676, 0.116418,
		-0.560712, 0.804357, 0.196498,
		38.292328, 33.458569, 31.755535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983006, 33.144985, 32.165356>,  <38.684826, 32.895519, 31.617985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983006, 33.144985, 32.165356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617180, 33.306652, 32.159370>,  <38.397686, 33.403652, 32.155781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617180, 33.306652, 32.159370>,  <38.983006, 33.144985, 32.165356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617180, 33.306652, 32.159370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019959, 0.082053, 0.996428,
		0.403954, 0.910996, -0.083109,
		-0.914562, 0.404170, -0.014963,
		38.342812, 33.427902, 32.154881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046833, 33.680531, 32.555069>,  <38.983006, 33.144985, 32.165356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046833, 33.680531, 32.555069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.650520, 33.626923, 32.562881>,  <38.412731, 33.594757, 32.567570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.650520, 33.626923, 32.562881>,  <39.046833, 33.680531, 32.555069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650520, 33.626923, 32.562881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013676, 0.044456, 0.998918,
		-0.134743, 0.989981, -0.042214,
		-0.990786, -0.134020, 0.019529,
		38.353283, 33.586716, 32.568741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711460, 34.144039, 33.059914>,  <39.046833, 33.680531, 32.555069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711460, 34.144039, 33.059914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455948, 33.841621, 33.002853>,  <38.302639, 33.660172, 32.968616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455948, 33.841621, 33.002853>,  <38.711460, 34.144039, 33.059914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455948, 33.841621, 33.002853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017107, -0.171409, 0.985052,
		-0.769196, 0.631676, 0.096559,
		-0.638784, -0.756046, -0.142653,
		38.264313, 33.614807, 32.960056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218128, 34.171082, 33.611954>,  <38.711460, 34.144039, 33.059914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218128, 34.171082, 33.611954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190289, 33.794544, 33.479870>,  <38.173584, 33.568623, 33.400620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190289, 33.794544, 33.479870>,  <38.218128, 34.171082, 33.611954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190289, 33.794544, 33.479870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037918, -0.333269, 0.942069,
		-0.996854, 0.053043, 0.058887,
		-0.069595, -0.941339, -0.330209,
		38.169411, 33.512142, 33.380806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599388, 33.826607, 33.947067>,  <38.218128, 34.171082, 33.611954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599388, 33.826607, 33.947067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845631, 33.533318, 33.831551>,  <37.993378, 33.357342, 33.762241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845631, 33.533318, 33.831551>,  <37.599388, 33.826607, 33.947067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845631, 33.533318, 33.831551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134864, -0.459083, 0.878097,
		-0.776425, -0.501618, -0.381503,
		0.615610, -0.733227, -0.288793,
		38.030315, 33.313351, 33.744911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331249, 33.269470, 34.216877>,  <37.599388, 33.826607, 33.947067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331249, 33.269470, 34.216877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704559, 33.153168, 34.132538>,  <37.928547, 33.083385, 34.081936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704559, 33.153168, 34.132538>,  <37.331249, 33.269470, 34.216877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704559, 33.153168, 34.132538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040870, -0.497262, 0.866638,
		-0.356826, -0.817430, -0.452199,
		0.933276, -0.290758, -0.210844,
		37.984543, 33.065941, 34.069286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274967, 32.547791, 34.501423>,  <37.331249, 33.269470, 34.216877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274967, 32.547791, 34.501423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658104, 32.659977, 34.476505>,  <37.887985, 32.727291, 34.461555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658104, 32.659977, 34.476505>,  <37.274967, 32.547791, 34.501423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658104, 32.659977, 34.476505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134288, -0.245360, 0.960086,
		0.253989, -0.927974, -0.272679,
		0.957839, 0.280469, -0.062297,
		37.945457, 32.744118, 34.457817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639732, 31.993431, 34.693340>,  <37.274967, 32.547791, 34.501423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639732, 31.993431, 34.693340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873222, 32.311558, 34.758736>,  <38.013317, 32.502434, 34.797974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873222, 32.311558, 34.758736>,  <37.639732, 31.993431, 34.693340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873222, 32.311558, 34.758736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137918, -0.295549, 0.945320,
		0.800150, -0.529262, -0.282209,
		0.583728, 0.795320, 0.163489,
		38.048340, 32.550152, 34.807781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941254, 31.819599, 35.249020>,  <37.639732, 31.993431, 34.693340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941254, 31.819599, 35.249020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078629, 32.194904, 35.232430>,  <38.161053, 32.420086, 35.222477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078629, 32.194904, 35.232430>,  <37.941254, 31.819599, 35.249020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078629, 32.194904, 35.232430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173129, -0.019842, 0.984699,
		0.923082, -0.345359, -0.169255,
		0.343433, 0.938261, -0.041476,
		38.181660, 32.476383, 35.219986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505222, 31.885283, 35.610981>,  <37.941254, 31.819599, 35.249020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505222, 31.885283, 35.610981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370354, 32.261765, 35.602497>,  <38.289433, 32.487656, 35.597408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370354, 32.261765, 35.602497>,  <38.505222, 31.885283, 35.610981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370354, 32.261765, 35.602497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239098, 0.107397, 0.965038,
		0.910576, 0.320310, -0.261251,
		-0.337169, 0.941205, -0.021208,
		38.269203, 32.544125, 35.596134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082138, 32.375137, 35.918728>,  <38.505222, 31.885283, 35.610981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082138, 32.375137, 35.918728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733910, 32.569267, 35.951115>,  <38.524971, 32.685745, 35.970547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733910, 32.569267, 35.951115>,  <39.082138, 32.375137, 35.918728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733910, 32.569267, 35.951115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304745, 0.402644, 0.863139,
		0.386303, 0.776102, -0.498433,
		-0.870575, 0.485328, 0.080971,
		38.472736, 32.714867, 35.975407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221546, 33.146103, 36.187553>,  <39.082138, 32.375137, 35.918728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221546, 33.146103, 36.187553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826477, 33.103092, 36.233051>,  <38.589436, 33.077286, 36.260349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826477, 33.103092, 36.233051>,  <39.221546, 33.146103, 36.187553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826477, 33.103092, 36.233051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069951, 0.346881, 0.935297,
		-0.140030, 0.931725, -0.335083,
		-0.987673, -0.107530, 0.113749,
		38.530174, 33.070831, 36.267178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030529, 33.799774, 36.367516>,  <39.221546, 33.146103, 36.187553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030529, 33.799774, 36.367516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758232, 33.536564, 36.496262>,  <38.594856, 33.378639, 36.573509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758232, 33.536564, 36.496262>,  <39.030529, 33.799774, 36.367516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758232, 33.536564, 36.496262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110932, 0.341723, 0.933230,
		-0.724079, 0.670991, -0.159628,
		-0.680738, -0.658025, 0.321869,
		38.554012, 33.339157, 36.592823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489285, 34.216816, 36.689407>,  <39.030529, 33.799774, 36.367516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489285, 34.216816, 36.689407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489529, 33.839504, 36.822208>,  <38.489677, 33.613117, 36.901890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489529, 33.839504, 36.822208>,  <38.489285, 34.216816, 36.689407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489529, 33.839504, 36.822208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065277, 0.331331, 0.941254,
		-0.997867, 0.021094, 0.061778,
		0.000614, -0.943279, 0.332001,
		38.489712, 33.556522, 36.921810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946842, 34.252998, 37.245785>,  <38.489285, 34.216816, 36.689407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946842, 34.252998, 37.245785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126587, 33.904648, 37.325424>,  <38.234432, 33.695637, 37.373207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126587, 33.904648, 37.325424>,  <37.946842, 34.252998, 37.245785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126587, 33.904648, 37.325424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121488, 0.280370, 0.952173,
		-0.885051, -0.403682, 0.231789,
		0.449362, -0.870881, 0.199100,
		38.261395, 33.643383, 37.385155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587852, 33.992809, 37.772144>,  <37.946842, 34.252998, 37.245785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587852, 33.992809, 37.772144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936077, 33.795998, 37.774483>,  <38.145012, 33.677910, 37.775887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936077, 33.795998, 37.774483>,  <37.587852, 33.992809, 37.772144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936077, 33.795998, 37.774483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070776, 0.136961, 0.988045,
		-0.486943, -0.859740, 0.154057,
		0.870561, -0.492025, 0.005843,
		38.197247, 33.648392, 37.776237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675949, 33.648029, 38.466034>,  <37.587852, 33.992809, 37.772144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675949, 33.648029, 38.466034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052704, 33.660587, 38.332253>,  <38.278759, 33.668121, 38.251984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052704, 33.660587, 38.332253>,  <37.675949, 33.648029, 38.466034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052704, 33.660587, 38.332253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315866, 0.256125, 0.913580,
		0.114343, -0.966134, 0.231325,
		0.941889, 0.031394, -0.334455,
		38.335270, 33.670006, 38.231915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088902, 33.406013, 39.105213>,  <37.675949, 33.648029, 38.466034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088902, 33.406013, 39.105213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359100, 33.564339, 38.856365>,  <38.521221, 33.659332, 38.707054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359100, 33.564339, 38.856365>,  <38.088902, 33.406013, 39.105213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359100, 33.564339, 38.856365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572619, 0.249973, 0.780783,
		0.464555, -0.883657, -0.057792,
		0.675497, 0.395809, -0.622124,
		38.561749, 33.683083, 38.669727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710136, 33.157249, 39.313011>,  <38.088902, 33.406013, 39.105213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710136, 33.157249, 39.313011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791523, 33.503059, 39.129189>,  <38.840355, 33.710545, 39.018894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791523, 33.503059, 39.129189>,  <38.710136, 33.157249, 39.313011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791523, 33.503059, 39.129189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508130, 0.307968, 0.804338,
		0.836901, -0.397171, -0.376632,
		0.203469, 0.864529, -0.459554,
		38.852562, 33.762417, 38.991322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345543, 33.379169, 39.469421>,  <38.710136, 33.157249, 39.313011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345543, 33.379169, 39.469421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232479, 33.736336, 39.329250>,  <39.164639, 33.950634, 39.245148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232479, 33.736336, 39.329250>,  <39.345543, 33.379169, 39.469421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232479, 33.736336, 39.329250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421707, 0.443808, 0.790694,
		0.861548, 0.075721, -0.501998,
		-0.282663, 0.892917, -0.350430,
		39.147678, 34.004211, 39.224121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938370, 33.774109, 39.447880>,  <39.345543, 33.379169, 39.469421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938370, 33.774109, 39.447880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636436, 34.030952, 39.501427>,  <39.455276, 34.185059, 39.533554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636436, 34.030952, 39.501427>,  <39.938370, 33.774109, 39.447880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636436, 34.030952, 39.501427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526236, 0.471021, 0.707965,
		0.391533, 0.604845, -0.693444,
		-0.754836, 0.642107, 0.133871,
		39.409985, 34.223583, 39.541588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269638, 34.376583, 39.486073>,  <39.938370, 33.774109, 39.447880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269638, 34.376583, 39.486073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915871, 34.430122, 39.664906>,  <39.703609, 34.462246, 39.772205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915871, 34.430122, 39.664906>,  <40.269638, 34.376583, 39.486073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915871, 34.430122, 39.664906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454741, 0.462559, 0.761085,
		-0.104937, 0.876427, -0.469961,
		-0.884420, 0.133845, 0.447086,
		39.650543, 34.470276, 39.799030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143906, 35.038982, 39.556835>,  <40.269638, 34.376583, 39.486073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143906, 35.038982, 39.556835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969704, 34.807629, 39.832752>,  <39.865185, 34.668816, 39.998302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969704, 34.807629, 39.832752>,  <40.143906, 35.038982, 39.556835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969704, 34.807629, 39.832752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576966, 0.408838, 0.707080,
		-0.690976, 0.705919, 0.155659,
		-0.435502, -0.578386, 0.689789,
		39.839054, 34.634113, 40.039688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433071, 35.207001, 40.098721>,  <40.143906, 35.038982, 39.556835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433071, 35.207001, 40.098721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181149, 34.963058, 40.291145>,  <40.029995, 34.816692, 40.406601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181149, 34.963058, 40.291145>,  <40.433071, 35.207001, 40.098721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181149, 34.963058, 40.291145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351800, 0.328199, 0.876654,
		-0.692518, 0.721358, 0.007847,
		-0.629806, -0.609859, 0.481057,
		39.992207, 34.780102, 40.435463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122940, 35.654629, 40.615612>,  <40.433071, 35.207001, 40.098721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122940, 35.654629, 40.615612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.060284, 35.285660, 40.756805>,  <40.022690, 35.064278, 40.841522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.060284, 35.285660, 40.756805>,  <40.122940, 35.654629, 40.615612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060284, 35.285660, 40.756805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006056, 0.356490, 0.934280,
		-0.987637, 0.148485, -0.050255,
		-0.156642, -0.922424, 0.352982,
		40.013290, 35.008934, 40.862701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669239, 35.699615, 41.089676>,  <40.122940, 35.654629, 40.615612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669239, 35.699615, 41.089676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838490, 35.349976, 41.185097>,  <39.940041, 35.140190, 41.242348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838490, 35.349976, 41.185097>,  <39.669239, 35.699615, 41.089676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838490, 35.349976, 41.185097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052770, 0.239063, 0.969569,
		-0.904532, -0.422839, 0.055028,
		0.423127, -0.874103, 0.238553,
		39.965427, 35.087746, 41.256664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286671, 35.319340, 41.744343>,  <39.669239, 35.699615, 41.089676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286671, 35.319340, 41.744343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623306, 35.105576, 41.712994>,  <39.825287, 34.977318, 41.694183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623306, 35.105576, 41.712994>,  <39.286671, 35.319340, 41.744343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623306, 35.105576, 41.712994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061767, -0.048922, 0.996891,
		-0.536581, -0.843809, -0.008163,
		0.841585, -0.534408, -0.078370,
		39.875782, 34.945251, 41.689484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211964, 34.506645, 41.929356>,  <39.286671, 35.319340, 41.744343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211964, 34.506645, 41.929356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558609, 34.671944, 42.041218>,  <39.766594, 34.771122, 42.108337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558609, 34.671944, 42.041218>,  <39.211964, 34.506645, 41.929356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558609, 34.671944, 42.041218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256379, -0.112055, 0.960059,
		0.428082, -0.903697, 0.008841,
		0.866612, 0.413251, 0.279658,
		39.818592, 34.795918, 42.125114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430382, 34.170479, 42.495064>,  <39.211964, 34.506645, 41.929356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430382, 34.170479, 42.495064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600479, 34.529694, 42.540127>,  <39.702538, 34.745224, 42.567165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600479, 34.529694, 42.540127>,  <39.430382, 34.170479, 42.495064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600479, 34.529694, 42.540127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313298, 0.029274, 0.949204,
		0.849125, -0.438938, 0.293802,
		0.425242, 0.898040, 0.112661,
		39.728050, 34.799107, 42.573925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764515, 34.074348, 43.018955>,  <39.430382, 34.170479, 42.495064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764515, 34.074348, 43.018955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728085, 34.472618, 43.011566>,  <39.706226, 34.711578, 43.007133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728085, 34.472618, 43.011566>,  <39.764515, 34.074348, 43.018955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728085, 34.472618, 43.011566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217347, -0.001770, 0.976093,
		0.971836, 0.092911, 0.216568,
		-0.091074, 0.995673, -0.018474,
		39.700764, 34.771320, 43.006023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986206, 34.273540, 43.577381>,  <39.764515, 34.074348, 43.018955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986206, 34.273540, 43.577381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782871, 34.605988, 43.487194>,  <39.660870, 34.805458, 43.433083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782871, 34.605988, 43.487194>,  <39.986206, 34.273540, 43.577381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782871, 34.605988, 43.487194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338497, 0.047899, 0.939748,
		0.791844, 0.554024, 0.256983,
		-0.508334, 0.831121, -0.225464,
		39.630371, 34.855324, 43.419556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132984, 34.647812, 44.102768>,  <39.986206, 34.273540, 43.577381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132984, 34.647812, 44.102768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819099, 34.829018, 43.933529>,  <39.630768, 34.937740, 43.831985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819099, 34.829018, 43.933529>,  <40.132984, 34.647812, 44.102768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819099, 34.829018, 43.933529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319988, 0.288540, 0.902415,
		0.530883, 0.843521, -0.081462,
		-0.784711, 0.453010, -0.423097,
		39.583687, 34.964920, 43.806599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018394, 35.469887, 44.204029>,  <40.132984, 34.647812, 44.102768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018394, 35.469887, 44.204029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693130, 35.238819, 44.175541>,  <39.497974, 35.100178, 44.158447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693130, 35.238819, 44.175541>,  <40.018394, 35.469887, 44.204029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693130, 35.238819, 44.175541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391593, 0.452441, 0.801219,
		-0.430615, 0.679408, -0.594117,
		-0.813157, -0.577670, -0.071224,
		39.449184, 35.065517, 44.154175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548714, 35.922611, 44.473701>,  <40.018394, 35.469887, 44.204029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548714, 35.922611, 44.473701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386814, 35.558350, 44.506893>,  <39.289677, 35.339790, 44.526810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386814, 35.558350, 44.506893>,  <39.548714, 35.922611, 44.473701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386814, 35.558350, 44.506893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399129, 0.257583, 0.879970,
		-0.822725, 0.323043, -0.467725,
		-0.404746, -0.910656, 0.082984,
		39.265388, 35.285152, 44.531788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833488, 35.879051, 44.594845>,  <39.548714, 35.922611, 44.473701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833488, 35.879051, 44.594845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946854, 35.571236, 44.823750>,  <39.014874, 35.386547, 44.961094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946854, 35.571236, 44.823750>,  <38.833488, 35.879051, 44.594845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946854, 35.571236, 44.823750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581736, 0.336442, 0.740534,
		-0.762404, -0.542783, -0.352317,
		0.283414, -0.769541, 0.572261,
		39.031879, 35.340374, 44.995426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203114, 35.633171, 44.930836>,  <38.833488, 35.879051, 44.594845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203114, 35.633171, 44.930836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530209, 35.552521, 45.146484>,  <38.726467, 35.504131, 45.275875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530209, 35.552521, 45.146484>,  <38.203114, 35.633171, 44.930836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530209, 35.552521, 45.146484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438154, 0.389345, 0.810204,
		-0.373264, -0.898753, 0.230039,
		0.817738, -0.201627, 0.539121,
		38.775532, 35.492031, 45.308220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996906, 35.164783, 45.463253>,  <38.203114, 35.633171, 44.930836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996906, 35.164783, 45.463253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293869, 35.422127, 45.537994>,  <38.472046, 35.576534, 45.582840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293869, 35.422127, 45.537994>,  <37.996906, 35.164783, 45.463253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293869, 35.422127, 45.537994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554427, 0.433453, 0.710443,
		0.376078, -0.631037, 0.678496,
		0.742412, 0.643359, 0.186852,
		38.516594, 35.615135, 45.594048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553875, 34.709003, 45.306030>,  <37.996906, 35.164783, 45.463253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553875, 34.709003, 45.306030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298676, 34.836720, 45.025738>,  <38.145557, 34.913349, 44.857563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298676, 34.836720, 45.025738>,  <38.553875, 34.709003, 45.306030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298676, 34.836720, 45.025738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738482, -0.004148, -0.674260,
		-0.218190, -0.947649, -0.233143,
		-0.637995, 0.319288, -0.700727,
		38.107277, 34.932507, 44.815521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594524, 34.282555, 44.693584>,  <38.553875, 34.709003, 45.306030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594524, 34.282555, 44.693584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473186, 34.646038, 44.578880>,  <38.400383, 34.864128, 44.510059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473186, 34.646038, 44.578880>,  <38.594524, 34.282555, 44.693584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473186, 34.646038, 44.578880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740702, 0.035549, -0.670893,
		-0.599453, -0.415911, -0.683867,
		-0.303343, 0.908710, -0.286756,
		38.382183, 34.918652, 44.492855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615894, 34.278049, 43.925320>,  <38.594524, 34.282555, 44.693584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615894, 34.278049, 43.925320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657623, 34.640522, 44.089245>,  <38.682659, 34.858006, 44.187599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657623, 34.640522, 44.089245>,  <38.615894, 34.278049, 43.925320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657623, 34.640522, 44.089245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720514, 0.215174, -0.659211,
		-0.685548, 0.364044, -0.630473,
		0.104320, 0.906185, 0.409811,
		38.688919, 34.912376, 44.212189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350048, 34.830341, 43.706779>,  <38.615894, 34.278049, 43.925320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350048, 34.830341, 43.706779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687096, 34.981945, 43.859798>,  <38.889324, 35.072906, 43.951611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687096, 34.981945, 43.859798>,  <38.350048, 34.830341, 43.706779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687096, 34.981945, 43.859798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392009, 0.055357, -0.918294,
		-0.369215, 0.923737, -0.101928,
		0.842620, 0.379005, 0.382552,
		38.939880, 35.095646, 43.974564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490623, 35.469482, 43.351768>,  <38.350048, 34.830341, 43.706779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490623, 35.469482, 43.351768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824982, 35.323334, 43.515610>,  <39.025597, 35.235645, 43.613914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824982, 35.323334, 43.515610>,  <38.490623, 35.469482, 43.351768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824982, 35.323334, 43.515610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470845, 0.093800, -0.877215,
		0.282092, 0.926123, 0.250442,
		0.835900, -0.365375, 0.409600,
		39.075752, 35.213722, 43.638489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934715, 35.856342, 43.090176>,  <38.490623, 35.469482, 43.351768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934715, 35.856342, 43.090176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179199, 35.561848, 43.206367>,  <39.325890, 35.385151, 43.276085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179199, 35.561848, 43.206367>,  <38.934715, 35.856342, 43.090176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179199, 35.561848, 43.206367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509887, 0.085576, -0.855974,
		0.605338, 0.671295, 0.427701,
		0.611212, -0.736233, 0.290482,
		39.362564, 35.340977, 43.293510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568752, 35.996281, 42.906868>,  <38.934715, 35.856342, 43.090176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568752, 35.996281, 42.906868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661373, 35.612350, 42.970272>,  <39.716946, 35.381992, 43.008312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661373, 35.612350, 42.970272>,  <39.568752, 35.996281, 42.906868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661373, 35.612350, 42.970272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492867, -0.024728, -0.869753,
		0.838727, 0.279520, 0.467338,
		0.231557, -0.959821, 0.158506,
		39.730839, 35.324406, 43.017822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332973, 35.931675, 42.693283>,  <39.568752, 35.996281, 42.906868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332973, 35.931675, 42.693283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178150, 35.563492, 42.671627>,  <40.085255, 35.342583, 42.658634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178150, 35.563492, 42.671627>,  <40.332973, 35.931675, 42.693283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178150, 35.563492, 42.671627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513503, -0.166421, -0.841795,
		0.765831, -0.353628, 0.537075,
		-0.387063, -0.920463, -0.054138,
		40.062031, 35.287354, 42.655384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871132, 35.420174, 42.439297>,  <40.332973, 35.931675, 42.693283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871132, 35.420174, 42.439297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527584, 35.240940, 42.340050>,  <40.321453, 35.133400, 42.280502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527584, 35.240940, 42.340050>,  <40.871132, 35.420174, 42.439297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527584, 35.240940, 42.340050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427867, -0.361397, -0.828445,
		0.281543, -0.817689, 0.502114,
		-0.858873, -0.448080, -0.248114,
		40.269920, 35.106518, 42.265617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186497, 34.847897, 42.010849>,  <40.871132, 35.420174, 42.439297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186497, 34.847897, 42.010849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791630, 34.903759, 41.979897>,  <40.554710, 34.937275, 41.961327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791630, 34.903759, 41.979897>,  <41.186497, 34.847897, 42.010849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791630, 34.903759, 41.979897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026456, -0.334868, -0.941894,
		-0.157452, -0.931858, 0.326878,
		-0.987172, 0.139655, -0.077378,
		40.495480, 34.945656, 41.956684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979332, 34.368786, 41.599037>,  <41.186497, 34.847897, 42.010849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979332, 34.368786, 41.599037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635006, 34.571892, 41.612720>,  <40.428410, 34.693756, 41.620930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635006, 34.571892, 41.612720>,  <40.979332, 34.368786, 41.599037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635006, 34.571892, 41.612720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269455, -0.397713, -0.877051,
		-0.431727, -0.764199, 0.479178,
		-0.860817, 0.507763, 0.034214,
		40.376762, 34.724220, 41.622986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531574, 33.936893, 41.312355>,  <40.979332, 34.368786, 41.599037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531574, 33.936893, 41.312355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354156, 34.295387, 41.310017>,  <40.247704, 34.510483, 41.308613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354156, 34.295387, 41.310017>,  <40.531574, 33.936893, 41.312355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354156, 34.295387, 41.310017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589899, -0.296838, -0.750938,
		-0.674749, -0.329629, 0.660347,
		-0.443547, 0.896232, -0.005843,
		40.221092, 34.564259, 41.308266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865253, 33.793373, 41.234726>,  <40.531574, 33.936893, 41.312355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865253, 33.793373, 41.234726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896957, 34.173103, 41.113075>,  <39.915981, 34.400944, 41.040085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896957, 34.173103, 41.113075>,  <39.865253, 33.793373, 41.234726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896957, 34.173103, 41.113075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344538, -0.260198, -0.901992,
		-0.935420, 0.176278, 0.306456,
		0.079262, 0.949328, -0.304129,
		39.920734, 34.457901, 41.021835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258423, 33.890713, 40.838314>,  <39.865253, 33.793373, 41.234726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258423, 33.890713, 40.838314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.451199, 34.224228, 40.730583>,  <39.566864, 34.424335, 40.665943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.451199, 34.224228, 40.730583>,  <39.258423, 33.890713, 40.838314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451199, 34.224228, 40.730583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351708, -0.097450, -0.931023,
		-0.802519, 0.543422, 0.246284,
		0.481938, 0.833784, -0.269331,
		39.595779, 34.474361, 40.649784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842705, 34.461739, 40.769310>,  <39.258423, 33.890713, 40.838314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842705, 34.461739, 40.769310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163269, 34.500103, 40.533161>,  <39.355610, 34.523121, 40.391472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163269, 34.500103, 40.533161>,  <38.842705, 34.461739, 40.769310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163269, 34.500103, 40.533161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595372, 0.033590, -0.802747,
		-0.057162, 0.994823, 0.084023,
		0.801414, 0.095912, -0.590370,
		39.403694, 34.528877, 40.356049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459972, 34.677017, 40.224880>,  <38.842705, 34.461739, 40.769310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459972, 34.677017, 40.224880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.835659, 34.632244, 40.095055>,  <39.061069, 34.605381, 40.017159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.835659, 34.632244, 40.095055>,  <38.459972, 34.677017, 40.224880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835659, 34.632244, 40.095055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331419, -0.048820, -0.942220,
		0.089621, 0.992516, -0.082950,
		0.939218, -0.111934, -0.324563,
		39.117424, 34.598663, 39.997684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528831, 35.120735, 39.647400>,  <38.459972, 34.677017, 40.224880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528831, 35.120735, 39.647400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780514, 34.810333, 39.629910>,  <38.931522, 34.624092, 39.619415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780514, 34.810333, 39.629910>,  <38.528831, 35.120735, 39.647400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780514, 34.810333, 39.629910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272043, -0.167179, -0.947652,
		0.728076, 0.608163, -0.316297,
		0.629205, -0.776008, -0.043728,
		38.969276, 34.577530, 39.616791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622547, 35.064312, 38.862999>,  <38.528831, 35.120735, 39.647400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622547, 35.064312, 38.862999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807980, 34.732613, 38.987865>,  <38.919239, 34.533592, 39.062786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807980, 34.732613, 38.987865>,  <38.622547, 35.064312, 38.862999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807980, 34.732613, 38.987865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051283, -0.376828, -0.924862,
		0.884571, 0.412737, -0.217215,
		0.463578, -0.829246, 0.312165,
		38.947052, 34.483837, 39.081516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965126, 34.821957, 38.303070>,  <38.622547, 35.064312, 38.862999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965126, 34.821957, 38.303070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955574, 34.499504, 38.539574>,  <38.949841, 34.306034, 38.681477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955574, 34.499504, 38.539574>,  <38.965126, 34.821957, 38.303070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955574, 34.499504, 38.539574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184376, -0.577726, -0.795134,
		0.982566, -0.128003, -0.134833,
		-0.023883, -0.806131, 0.591255,
		38.948410, 34.257664, 38.716949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443512, 34.350536, 38.009586>,  <38.965126, 34.821957, 38.303070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443512, 34.350536, 38.009586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168083, 34.145882, 38.215149>,  <39.002827, 34.023090, 38.338486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168083, 34.145882, 38.215149>,  <39.443512, 34.350536, 38.009586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168083, 34.145882, 38.215149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282619, -0.463295, -0.839931,
		0.667830, -0.723591, 0.174413,
		-0.688571, -0.511638, 0.513903,
		38.961514, 33.992390, 38.369320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511841, 33.869698, 37.649891>,  <39.443512, 34.350536, 38.009586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511841, 33.869698, 37.649891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166122, 33.793289, 37.836010>,  <38.958691, 33.747444, 37.947681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166122, 33.793289, 37.836010>,  <39.511841, 33.869698, 37.649891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166122, 33.793289, 37.836010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257826, -0.626050, -0.735926,
		0.431875, -0.756025, 0.491844,
		-0.864297, -0.191018, 0.465298,
		38.906834, 33.735985, 37.975601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438763, 33.131954, 37.782719>,  <39.511841, 33.869698, 37.649891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438763, 33.131954, 37.782719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066433, 33.276134, 37.806877>,  <38.843037, 33.362640, 37.821373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066433, 33.276134, 37.806877>,  <39.438763, 33.131954, 37.782719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066433, 33.276134, 37.806877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268809, -0.563261, -0.781332,
		-0.247612, -0.743515, 0.621187,
		-0.930822, 0.360449, 0.060394,
		38.787186, 33.384270, 37.824997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082550, 32.546757, 37.537788>,  <39.438763, 33.131954, 37.782719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082550, 32.546757, 37.537788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854374, 32.871662, 37.489075>,  <38.717468, 33.066605, 37.459846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854374, 32.871662, 37.489075>,  <39.082550, 32.546757, 37.537788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854374, 32.871662, 37.489075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269122, -0.324937, -0.906636,
		-0.775997, -0.484407, 0.403955,
		-0.570441, 0.812260, -0.121786,
		38.683243, 33.115341, 37.452538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751202, 32.353024, 37.797218>,  <39.082550, 32.546757, 37.537788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751202, 32.353024, 37.797218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591183, 32.361908, 37.430729>,  <39.495171, 32.367237, 37.210835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591183, 32.361908, 37.430729>,  <39.751202, 32.353024, 37.797218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591183, 32.361908, 37.430729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886496, -0.244308, -0.392986,
		-0.232568, -0.969443, 0.078048,
		-0.400045, 0.022207, -0.916226,
		39.471169, 32.368572, 37.155861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318996, 32.473770, 38.174839>,  <39.751202, 32.353024, 37.797218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318996, 32.473770, 38.174839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091782, 32.144573, 38.173489>,  <39.955452, 31.947054, 38.172680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091782, 32.144573, 38.173489>,  <40.318996, 32.473770, 38.174839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091782, 32.144573, 38.173489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144989, -0.096035, -0.984762,
		0.810130, -0.559872, 0.173877,
		-0.568039, -0.822995, -0.003375,
		39.921371, 31.897675, 38.172478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633015, 32.117397, 37.722481>,  <40.318996, 32.473770, 38.174839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633015, 32.117397, 37.722481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265453, 31.959904, 37.732159>,  <40.044914, 31.865408, 37.737965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265453, 31.959904, 37.732159>,  <40.633015, 32.117397, 37.722481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265453, 31.959904, 37.732159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010932, -0.086722, -0.996173,
		0.394322, -0.915126, 0.083994,
		-0.918907, -0.393731, 0.024193,
		39.989780, 31.841785, 37.739418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575256, 32.270580, 36.898617>,  <40.633015, 32.117397, 37.722481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575256, 32.270580, 36.898617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635597, 32.411777, 36.529263>,  <40.671803, 32.496494, 36.307652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635597, 32.411777, 36.529263>,  <40.575256, 32.270580, 36.898617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635597, 32.411777, 36.529263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987547, -0.095997, 0.124638,
		-0.044645, -0.930688, -0.363078,
		0.150853, 0.352993, -0.923385,
		40.680855, 32.517673, 36.252247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125271, 31.860876, 36.507656>,  <40.575256, 32.270580, 36.898617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125271, 31.860876, 36.507656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.122898, 32.223976, 36.339867>,  <41.121475, 32.441837, 36.239193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.122898, 32.223976, 36.339867>,  <41.125271, 31.860876, 36.507656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122898, 32.223976, 36.339867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998319, 0.029565, 0.049856,
		0.057658, -0.418470, -0.906399,
		-0.005935, 0.907749, -0.419471,
		41.121117, 32.496300, 36.214024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812008, 32.039173, 36.475842>,  <41.125271, 31.860876, 36.507656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812008, 32.039173, 36.475842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.701958, 32.389259, 36.316696>,  <41.635925, 32.599312, 36.221207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.701958, 32.389259, 36.316696>,  <41.812008, 32.039173, 36.475842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.701958, 32.389259, 36.316696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959241, 0.277665, -0.052520,
		0.064507, -0.396099, -0.915939,
		-0.275127, 0.875219, -0.397866,
		41.619419, 32.651825, 36.197338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.185307, 32.175423, 35.778194>,  <41.812008, 32.039173, 36.475842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.185307, 32.175423, 35.778194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080097, 32.517147, 35.957516>,  <42.016972, 32.722179, 36.065109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080097, 32.517147, 35.957516>,  <42.185307, 32.175423, 35.778194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080097, 32.517147, 35.957516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948822, 0.313238, -0.040233,
		-0.174798, 0.414780, -0.892974,
		-0.263026, 0.854306, 0.448306,
		42.001190, 32.773438, 36.092007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.877174, 32.375542, 35.811649>,  <42.185307, 32.175423, 35.778194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.877174, 32.375542, 35.811649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760094, 32.589451, 36.128719>,  <42.689846, 32.717796, 36.318962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760094, 32.589451, 36.128719>,  <42.877174, 32.375542, 35.811649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.760094, 32.589451, 36.128719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952310, 0.237766, 0.191239,
		-0.086202, 0.810852, -0.578868,
		-0.292702, 0.534777, 0.792678,
		42.672283, 32.749886, 36.366524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.152100, 33.105946, 35.747101>,  <42.877174, 32.375542, 35.811649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.152100, 33.105946, 35.747101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121502, 32.979645, 36.125401>,  <43.103142, 32.903866, 36.352383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121502, 32.979645, 36.125401>,  <43.152100, 33.105946, 35.747101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.121502, 32.979645, 36.125401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953538, 0.254048, 0.161943,
		-0.291400, 0.914199, 0.281648,
		-0.076496, -0.315752, 0.945753,
		43.098553, 32.884918, 36.409126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446274, 33.733154, 36.108765>,  <43.152100, 33.105946, 35.747101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.446274, 33.733154, 36.108765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449989, 33.387230, 36.309566>,  <43.452221, 33.179676, 36.430050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449989, 33.387230, 36.309566>,  <43.446274, 33.733154, 36.108765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.449989, 33.387230, 36.309566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908936, 0.216577, 0.356272,
		-0.416832, 0.452983, 0.788072,
		0.009293, -0.864812, 0.502009,
		43.452778, 33.127785, 36.460171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.512638, 33.816589, 36.890331>,  <43.446274, 33.733154, 36.108765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.512638, 33.816589, 36.890331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.703453, 33.503082, 36.731258>,  <43.817944, 33.314980, 36.635815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.703453, 33.503082, 36.731258>,  <43.512638, 33.816589, 36.890331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.703453, 33.503082, 36.731258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878810, 0.419573, 0.227268,
		-0.011268, -0.457902, 0.888931,
		0.477038, -0.783763, -0.397681,
		43.846565, 33.267952, 36.611954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.048309, 33.730793, 37.382908>,  <43.512638, 33.816589, 36.890331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.048309, 33.730793, 37.382908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.139282, 33.601868, 37.015347>,  <44.193867, 33.524513, 36.794811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.139282, 33.601868, 37.015347>,  <44.048309, 33.730793, 37.382908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.139282, 33.601868, 37.015347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868474, 0.493981, 0.041680,
		0.440487, -0.807523, 0.392272,
		0.227433, -0.322318, -0.918904,
		44.207512, 33.505173, 36.739674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.757061, 33.606495, 37.371487>,  <44.048309, 33.730793, 37.382908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.757061, 33.606495, 37.371487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627579, 33.645809, 36.995071>,  <44.549889, 33.669395, 36.769222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627579, 33.645809, 36.995071>,  <44.757061, 33.606495, 37.371487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.627579, 33.645809, 36.995071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899535, 0.340331, -0.273882,
		0.293347, -0.935155, -0.198576,
		-0.323704, 0.098283, -0.941040,
		44.530468, 33.675293, 36.712761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.264542, 33.312355, 36.963234>,  <44.757061, 33.606495, 37.371487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.264542, 33.312355, 36.963234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.095387, 33.589798, 36.729973>,  <44.993893, 33.756264, 36.590015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.095387, 33.589798, 36.729973>,  <45.264542, 33.312355, 36.963234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.095387, 33.589798, 36.729973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893364, 0.211261, -0.396571,
		-0.151867, -0.688676, -0.708986,
		-0.422890, 0.693609, -0.583155,
		44.968521, 33.797882, 36.555027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.365501, 33.156200, 36.229931>,  <45.264542, 33.312355, 36.963234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.365501, 33.156200, 36.229931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.317039, 33.546341, 36.303707>,  <45.287964, 33.780426, 36.347973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.317039, 33.546341, 36.303707>,  <45.365501, 33.156200, 36.229931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.317039, 33.546341, 36.303707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901918, 0.185765, -0.389917,
		-0.414567, 0.119111, -0.902190,
		-0.121152, 0.975348, 0.184440,
		45.280693, 33.838943, 36.359039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.381947, 33.609509, 35.584709>,  <45.365501, 33.156200, 36.229931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.381947, 33.609509, 35.584709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.477192, 33.823788, 35.908768>,  <45.534340, 33.952354, 36.103203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.477192, 33.823788, 35.908768>,  <45.381947, 33.609509, 35.584709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.477192, 33.823788, 35.908768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906738, 0.176292, -0.383077,
		-0.348034, 0.825804, -0.443757,
		0.238115, 0.535695, 0.810143,
		45.548626, 33.984497, 36.151810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.702461, 34.111828, 35.191101>,  <45.381947, 33.609509, 35.584709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.702461, 34.111828, 35.191101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.782944, 34.135696, 35.582191>,  <45.831234, 34.150017, 35.816845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.782944, 34.135696, 35.582191>,  <45.702461, 34.111828, 35.191101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.782944, 34.135696, 35.582191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967012, 0.147081, -0.207980,
		-0.156216, 0.987323, -0.028107,
		0.201210, 0.059670, 0.977729,
		45.843307, 34.153599, 35.875511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.436558, 34.759430, 35.431351>,  <45.702461, 34.111828, 35.191101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.436558, 34.759430, 35.431351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.569904, 35.132584, 35.376808>,  <45.649910, 35.356476, 35.344082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.569904, 35.132584, 35.376808>,  <45.436558, 34.759430, 35.431351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.569904, 35.132584, 35.376808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903260, -0.274582, 0.329737,
		0.270166, -0.233085, -0.934174,
		0.333364, 0.932886, -0.136354,
		45.669914, 35.412449, 35.335903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.017056, 34.783215, 35.013191>,  <45.436558, 34.759430, 35.431351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.017056, 34.783215, 35.013191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.055836, 35.120625, 35.224495>,  <46.079105, 35.323071, 35.351276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.055836, 35.120625, 35.224495>,  <46.017056, 34.783215, 35.013191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.055836, 35.120625, 35.224495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841858, -0.352628, 0.408569,
		0.530919, 0.405111, -0.744319,
		0.096952, 0.843528, 0.528263,
		46.084923, 35.373684, 35.382973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.699688, 34.964470, 34.884487>,  <46.017056, 34.783215, 35.013191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.699688, 34.964470, 34.884487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.577888, 35.105316, 35.238503>,  <46.504810, 35.189823, 35.450912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.577888, 35.105316, 35.238503>,  <46.699688, 34.964470, 34.884487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.577888, 35.105316, 35.238503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811596, -0.390459, 0.434574,
		0.498590, 0.850623, -0.166877,
		-0.304500, 0.352111, 0.885041,
		46.486538, 35.210949, 35.504013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.482559, 35.000763, 35.105495>,  <46.699688, 34.964470, 34.884487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.482559, 35.000763, 35.105495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.813984, 35.203560, 35.200523>,  <48.012840, 35.325237, 35.257542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.813984, 35.203560, 35.200523>,  <47.482559, 35.000763, 35.105495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.813984, 35.203560, 35.200523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542157, 0.620551, 0.566553,
		0.139815, -0.598226, 0.789036,
		0.828564, 0.506993, 0.237570,
		48.062553, 35.355659, 35.271793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.710358, 30.080711, 28.818949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.346050, 29.989962, 28.680944>,  <38.127468, 29.935511, 28.598143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.346050, 29.989962, 28.680944>,  <38.710358, 30.080711, 28.818949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346050, 29.989962, 28.680944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369132, 0.072888, 0.926514,
		-0.185057, 0.971192, -0.150131,
		-0.910766, -0.226877, -0.345010,
		38.072819, 29.921898, 28.577442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220005, 30.634674, 29.091274>,  <38.710358, 30.080711, 28.818949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220005, 30.634674, 29.091274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.027145, 30.292925, 29.013737>,  <37.911430, 30.087875, 28.967215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.027145, 30.292925, 29.013737>,  <38.220005, 30.634674, 29.091274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027145, 30.292925, 29.013737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506992, 0.091658, 0.857064,
		-0.714485, 0.511513, -0.477353,
		-0.482152, -0.854373, -0.193845,
		37.882500, 30.036613, 28.955584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592258, 30.796261, 29.340618>,  <38.220005, 30.634674, 29.091274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592258, 30.796261, 29.340618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.585449, 30.398867, 29.295544>,  <37.581364, 30.160431, 29.268499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.585449, 30.398867, 29.295544>,  <37.592258, 30.796261, 29.340618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585449, 30.398867, 29.295544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461556, -0.092165, 0.882310,
		-0.886948, 0.067031, -0.456980,
		-0.017024, -0.993485, -0.112684,
		37.580341, 30.100821, 29.261738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996880, 30.741484, 29.655155>,  <37.592258, 30.796261, 29.340618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996880, 30.741484, 29.655155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.164539, 30.378767, 29.637091>,  <37.265137, 30.161137, 29.626253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.164539, 30.378767, 29.637091>,  <36.996880, 30.741484, 29.655155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164539, 30.378767, 29.637091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560847, -0.297718, 0.772537,
		-0.713976, -0.298483, -0.633361,
		0.419153, -0.906792, -0.045160,
		37.290287, 30.106730, 29.623543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456387, 30.315907, 29.644821>,  <36.996880, 30.741484, 29.655155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456387, 30.315907, 29.644821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.778893, 30.121119, 29.779161>,  <36.972397, 30.004246, 29.859766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.778893, 30.121119, 29.779161>,  <36.456387, 30.315907, 29.644821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778893, 30.121119, 29.779161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466624, -0.174599, 0.867051,
		-0.363588, -0.855790, -0.368005,
		0.806267, -0.486969, 0.335850,
		37.020771, 29.975029, 29.879917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217804, 29.670982, 29.993858>,  <36.456387, 30.315907, 29.644821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217804, 29.670982, 29.993858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.582325, 29.739052, 30.143826>,  <36.801037, 29.779894, 30.233807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.582325, 29.739052, 30.143826>,  <36.217804, 29.670982, 29.993858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582325, 29.739052, 30.143826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316597, -0.292539, 0.902324,
		0.263232, -0.940990, -0.212714,
		0.911304, 0.170176, 0.374920,
		36.855717, 29.790104, 30.256302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271034, 29.115242, 30.430586>,  <36.217804, 29.670982, 29.993858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271034, 29.115242, 30.430586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.558704, 29.363123, 30.556286>,  <36.731308, 29.511850, 30.631706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.558704, 29.363123, 30.556286>,  <36.271034, 29.115242, 30.430586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558704, 29.363123, 30.556286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291984, -0.140860, 0.945993,
		0.630498, -0.772094, 0.079639,
		0.719178, 0.619700, 0.314252,
		36.774456, 29.549032, 30.650562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408916, 28.893143, 31.080427>,  <36.271034, 29.115242, 30.430586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408916, 28.893143, 31.080427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.515991, 29.278530, 31.077074>,  <36.580238, 29.509762, 31.075062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.515991, 29.278530, 31.077074>,  <36.408916, 28.893143, 31.080427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515991, 29.278530, 31.077074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254511, 0.079101, 0.963830,
		0.929283, -0.255873, 0.266388,
		0.267690, 0.963469, -0.008384,
		36.596298, 29.567572, 31.074558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764015, 28.933588, 31.621807>,  <36.408916, 28.893143, 31.080427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764015, 28.933588, 31.621807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.663124, 29.315582, 31.559345>,  <36.602589, 29.544779, 31.521868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.663124, 29.315582, 31.559345>,  <36.764015, 28.933588, 31.621807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663124, 29.315582, 31.559345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279734, 0.082525, 0.956525,
		0.926354, 0.284941, 0.246327,
		-0.252225, 0.954986, -0.156154,
		36.587456, 29.602077, 31.512499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038830, 29.331514, 32.166389>,  <36.764015, 28.933588, 31.621807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038830, 29.331514, 32.166389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.745399, 29.569748, 32.035458>,  <36.569340, 29.712688, 31.956900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.745399, 29.569748, 32.035458>,  <37.038830, 29.331514, 32.166389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745399, 29.569748, 32.035458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184411, 0.289127, 0.939361,
		0.654106, 0.749458, -0.102265,
		-0.733579, 0.595582, -0.327328,
		36.525326, 29.748423, 31.937260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159248, 29.901501, 32.374577>,  <37.038830, 29.331514, 32.166389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159248, 29.901501, 32.374577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.764343, 29.934801, 32.320335>,  <36.527401, 29.954781, 32.287792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.764343, 29.934801, 32.320335>,  <37.159248, 29.901501, 32.374577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764343, 29.934801, 32.320335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107532, 0.279092, 0.954224,
		0.117286, 0.956649, -0.266584,
		-0.987259, 0.083251, -0.135603,
		36.468166, 29.959776, 32.279655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984970, 30.501949, 32.658752>,  <37.159248, 29.901501, 32.374577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984970, 30.501949, 32.658752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.630772, 30.316103, 32.656651>,  <36.418251, 30.204596, 32.655388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.630772, 30.316103, 32.656651>,  <36.984970, 30.501949, 32.658752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630772, 30.316103, 32.656651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146980, 0.269356, 0.951758,
		-0.440784, 0.843553, -0.306803,
		-0.885498, -0.464614, -0.005258,
		36.365124, 30.176720, 32.655075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463188, 30.975756, 32.910988>,  <36.984970, 30.501949, 32.658752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463188, 30.975756, 32.910988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.323280, 30.610008, 32.992561>,  <36.239338, 30.390560, 33.041508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.323280, 30.610008, 32.992561>,  <36.463188, 30.975756, 32.910988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323280, 30.610008, 32.992561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218741, 0.291377, 0.931264,
		-0.910942, 0.281115, -0.301924,
		-0.349766, -0.914371, 0.203936,
		36.218349, 30.335697, 33.053741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909760, 31.137590, 33.300114>,  <36.463188, 30.975756, 32.910988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909760, 31.137590, 33.300114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.966286, 30.749828, 33.380398>,  <36.000202, 30.517172, 33.428570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.966286, 30.749828, 33.380398>,  <35.909760, 31.137590, 33.300114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966286, 30.749828, 33.380398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352400, 0.140205, 0.925287,
		-0.925118, -0.201493, -0.321804,
		0.141320, -0.969404, 0.200712,
		36.008682, 30.459007, 33.440613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331219, 30.927851, 33.679451>,  <35.909760, 31.137590, 33.300114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331219, 30.927851, 33.679451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.609241, 30.654987, 33.770275>,  <35.776054, 30.491270, 33.824772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.609241, 30.654987, 33.770275>,  <35.331219, 30.927851, 33.679451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609241, 30.654987, 33.770275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193538, 0.126639, 0.972885,
		-0.692417, -0.720155, -0.044003,
		0.695055, -0.682158, 0.227064,
		35.817757, 30.450340, 33.838394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942085, 30.558680, 34.209042>,  <35.331219, 30.927851, 33.679451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942085, 30.558680, 34.209042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.322163, 30.439198, 34.244610>,  <35.550209, 30.367508, 34.265949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.322163, 30.439198, 34.244610>,  <34.942085, 30.558680, 34.209042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322163, 30.439198, 34.244610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028656, 0.200360, 0.979303,
		-0.310340, -0.933076, 0.181821,
		0.950194, -0.298707, 0.088918,
		35.607220, 30.349586, 34.271286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979187, 30.205906, 34.833591>,  <34.942085, 30.558680, 34.209042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979187, 30.205906, 34.833591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.369980, 30.275408, 34.784084>,  <35.604454, 30.317110, 34.754379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.369980, 30.275408, 34.784084>,  <34.979187, 30.205906, 34.833591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369980, 30.275408, 34.784084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083861, 0.220634, 0.971745,
		0.196145, -0.959757, 0.200984,
		0.976982, 0.173748, -0.123762,
		35.663074, 30.327534, 34.746956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362045, 29.809774, 35.368401>,  <34.979187, 30.205906, 34.833591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362045, 29.809774, 35.368401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.619835, 30.100407, 35.273129>,  <35.774509, 30.274786, 35.215965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.619835, 30.100407, 35.273129>,  <35.362045, 29.809774, 35.368401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619835, 30.100407, 35.273129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021994, 0.293761, 0.955626,
		0.764309, -0.621116, 0.173341,
		0.644475, 0.726581, -0.238185,
		35.813179, 30.318380, 35.201672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855106, 29.862804, 35.906624>,  <35.362045, 29.809774, 35.368401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855106, 29.862804, 35.906624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.909191, 30.207874, 35.711681>,  <35.941643, 30.414915, 35.594715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.909191, 30.207874, 35.711681>,  <35.855106, 29.862804, 35.906624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909191, 30.207874, 35.711681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190719, 0.460011, 0.867189,
		0.972288, -0.210203, -0.102328,
		0.135214, 0.862673, -0.487353,
		35.949757, 30.466677, 35.565475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548588, 30.188551, 36.123924>,  <35.855106, 29.862804, 35.906624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548588, 30.188551, 36.123924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.321838, 30.491182, 35.993546>,  <36.185787, 30.672760, 35.915318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.321838, 30.491182, 35.993546>,  <36.548588, 30.188551, 36.123924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321838, 30.491182, 35.993546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188307, 0.504193, 0.842811,
		0.801992, 0.416392, -0.428284,
		-0.566877, 0.756576, -0.325948,
		36.151775, 30.718155, 35.895760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941254, 30.770584, 36.162617>,  <36.548588, 30.188551, 36.123924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941254, 30.770584, 36.162617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.560577, 30.893103, 36.171352>,  <36.332172, 30.966614, 36.176594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.560577, 30.893103, 36.171352>,  <36.941254, 30.770584, 36.162617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560577, 30.893103, 36.171352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212008, 0.603948, 0.768310,
		0.222140, 0.735819, -0.639706,
		-0.951686, 0.306296, 0.021839,
		36.275070, 30.984991, 36.177902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032131, 31.449594, 36.247433>,  <36.941254, 30.770584, 36.162617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032131, 31.449594, 36.247433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.677780, 31.339962, 36.397156>,  <36.465172, 31.274183, 36.486992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.677780, 31.339962, 36.397156>,  <37.032131, 31.449594, 36.247433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677780, 31.339962, 36.397156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158825, 0.578905, 0.799778,
		-0.435894, 0.767951, -0.469305,
		-0.885873, -0.274081, 0.374311,
		36.412018, 31.257738, 36.509449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775211, 31.227760, 36.438068>,  <37.032131, 31.449594, 36.247433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775211, 31.227760, 36.438068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.048454, 31.053694, 36.672672>,  <38.212399, 30.949255, 36.813435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.048454, 31.053694, 36.672672>,  <37.775211, 31.227760, 36.438068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048454, 31.053694, 36.672672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666220, 0.042305, -0.744554,
		0.299191, 0.899357, 0.318814,
		0.683107, -0.435164, 0.586512,
		38.253387, 30.923145, 36.848625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411472, 31.567688, 36.366402>,  <37.775211, 31.227760, 36.438068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411472, 31.567688, 36.366402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.501396, 31.191669, 36.468990>,  <38.555351, 30.966059, 36.530544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.501396, 31.191669, 36.468990>,  <38.411472, 31.567688, 36.366402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501396, 31.191669, 36.468990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622477, -0.063950, -0.780021,
		0.749656, 0.335003, 0.570780,
		0.224808, -0.940044, 0.256472,
		38.568840, 30.909657, 36.545933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125229, 31.554886, 36.236729>,  <38.411472, 31.567688, 36.366402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125229, 31.554886, 36.236729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.029179, 31.168917, 36.279175>,  <38.971550, 30.937334, 36.304642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.029179, 31.168917, 36.279175>,  <39.125229, 31.554886, 36.236729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029179, 31.168917, 36.279175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519309, -0.220045, -0.825771,
		0.820158, -0.143179, 0.553932,
		-0.240123, -0.964925, 0.106117,
		38.957142, 30.879438, 36.311008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775417, 31.283932, 36.045521>,  <39.125229, 31.554886, 36.236729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775417, 31.283932, 36.045521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.497131, 30.999945, 36.001827>,  <39.330162, 30.829552, 35.975609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.497131, 30.999945, 36.001827>,  <39.775417, 31.283932, 36.045521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497131, 30.999945, 36.001827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342542, -0.194236, -0.919205,
		0.631387, -0.676919, 0.378326,
		-0.695711, -0.709967, -0.109236,
		39.288418, 30.786955, 35.969055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137856, 30.743408, 35.812294>,  <39.775417, 31.283932, 36.045521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137856, 30.743408, 35.812294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.766193, 30.619337, 35.731834>,  <39.543198, 30.544895, 35.683559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.766193, 30.619337, 35.731834>,  <40.137856, 30.743408, 35.812294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766193, 30.619337, 35.731834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301773, -0.322073, -0.897330,
		0.213546, -0.894461, 0.392858,
		-0.929156, -0.310176, -0.201147,
		39.487446, 30.526285, 35.671490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175030, 30.040148, 35.674023>,  <40.137856, 30.743408, 35.812294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175030, 30.040148, 35.674023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.844872, 30.161366, 35.483494>,  <39.646778, 30.234097, 35.369175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.844872, 30.161366, 35.483494>,  <40.175030, 30.040148, 35.674023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844872, 30.161366, 35.483494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345202, -0.396701, -0.850566,
		-0.446717, -0.866483, 0.222825,
		-0.825397, 0.303043, -0.476325,
		39.597252, 30.252279, 35.340595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099339, 29.536184, 35.187714>,  <40.175030, 30.040148, 35.674023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099339, 29.536184, 35.187714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.871597, 29.830353, 35.040745>,  <39.734955, 30.006853, 34.952564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.871597, 29.830353, 35.040745>,  <40.099339, 29.536184, 35.187714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871597, 29.830353, 35.040745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122422, -0.366105, -0.922486,
		-0.812929, -0.570198, 0.118410,
		-0.569350, 0.735420, -0.367422,
		39.700794, 30.050978, 34.930519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777142, 29.253077, 34.701740>,  <40.099339, 29.536184, 35.187714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777142, 29.253077, 34.701740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.718723, 29.638084, 34.610329>,  <39.683674, 29.869089, 34.555481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.718723, 29.638084, 34.610329>,  <39.777142, 29.253077, 34.701740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718723, 29.638084, 34.610329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076012, -0.241239, -0.967485,
		-0.986354, -0.123921, 0.108394,
		-0.146041, 0.962521, -0.228527,
		39.674911, 29.926842, 34.541771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295021, 29.221161, 34.084801>,  <39.777142, 29.253077, 34.701740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295021, 29.221161, 34.084801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.484047, 29.573608, 34.091846>,  <39.597462, 29.785076, 34.096073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.484047, 29.573608, 34.091846>,  <39.295021, 29.221161, 34.084801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484047, 29.573608, 34.091846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108891, -0.038539, -0.993306,
		-0.874541, 0.471323, -0.114158,
		0.472567, 0.881118, 0.017619,
		39.625816, 29.837944, 34.097134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030010, 29.594530, 33.522038>,  <39.295021, 29.221161, 34.084801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030010, 29.594530, 33.522038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.349247, 29.821707, 33.602531>,  <39.540791, 29.958012, 33.650829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.349247, 29.821707, 33.602531>,  <39.030010, 29.594530, 33.522038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349247, 29.821707, 33.602531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142036, 0.147236, -0.978850,
		-0.585557, 0.809794, 0.036840,
		0.798091, 0.567940, 0.201235,
		39.588673, 29.992088, 33.662903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928905, 30.313124, 33.298470>,  <39.030010, 29.594530, 33.522038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928905, 30.313124, 33.298470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.325832, 30.265705, 33.312588>,  <39.563988, 30.237253, 33.321060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.325832, 30.265705, 33.312588>,  <38.928905, 30.313124, 33.298470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325832, 30.265705, 33.312588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051966, 0.140613, -0.988700,
		0.112243, 0.982942, 0.145693,
		0.992321, -0.118546, 0.035297,
		39.623528, 30.230141, 33.323177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310043, 31.007826, 33.004028>,  <38.928905, 30.313124, 33.298470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310043, 31.007826, 33.004028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.578476, 30.712772, 32.974247>,  <39.739536, 30.535740, 32.956379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.578476, 30.712772, 32.974247>,  <39.310043, 31.007826, 33.004028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578476, 30.712772, 32.974247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174435, 0.254702, -0.951157,
		0.720569, 0.625319, 0.299595,
		0.671084, -0.737634, -0.074453,
		39.779800, 30.491482, 32.951912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895512, 31.161625, 32.615974>,  <39.310043, 31.007826, 33.004028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895512, 31.161625, 32.615974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.950397, 30.765419, 32.612988>,  <39.983330, 30.527697, 32.611195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.950397, 30.765419, 32.612988>,  <39.895512, 31.161625, 32.615974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950397, 30.765419, 32.612988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323527, 0.051937, -0.944793,
		0.936217, 0.127221, 0.327584,
		0.137211, -0.990514, -0.007464,
		39.991562, 30.468266, 32.610748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519642, 31.047873, 32.358360>,  <39.895512, 31.161625, 32.615974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.519642, 31.047873, 32.358360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.316044, 30.712738, 32.279419>,  <40.193886, 30.511658, 32.232056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.316044, 30.712738, 32.279419>,  <40.519642, 31.047873, 32.358360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316044, 30.712738, 32.279419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209410, 0.101854, -0.972508,
		0.834905, -0.536334, 0.123608,
		-0.508999, -0.837837, -0.197352,
		40.163345, 30.461388, 32.220215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925854, 30.742102, 31.863876>,  <40.519642, 31.047873, 32.358360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.925854, 30.742102, 31.863876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.584064, 30.539013, 31.819897>,  <40.378990, 30.417160, 31.793509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.584064, 30.539013, 31.819897>,  <40.925854, 30.742102, 31.863876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584064, 30.539013, 31.819897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179299, -0.089593, -0.979707,
		0.487570, -0.856848, 0.167590,
		-0.854475, -0.507724, -0.109949,
		40.327721, 30.386696, 31.786913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058151, 30.068157, 31.623302>,  <40.925854, 30.742102, 31.863876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058151, 30.068157, 31.623302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.671135, 30.113993, 31.533209>,  <40.438923, 30.141493, 31.479153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.671135, 30.113993, 31.533209>,  <41.058151, 30.068157, 31.623302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671135, 30.113993, 31.533209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190621, -0.254206, -0.948179,
		-0.165902, -0.960339, 0.224113,
		-0.967543, 0.114584, -0.225234,
		40.380871, 30.148369, 31.465639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802826, 29.417986, 31.250509>,  <41.058151, 30.068157, 31.623302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802826, 29.417986, 31.250509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.562687, 29.717882, 31.139172>,  <40.418606, 29.897820, 31.072369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.562687, 29.717882, 31.139172>,  <40.802826, 29.417986, 31.250509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562687, 29.717882, 31.139172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270109, -0.137506, -0.952960,
		-0.752746, -0.647289, -0.119960,
		-0.600345, 0.749740, -0.278346,
		40.382584, 29.942804, 31.055668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325432, 29.154638, 30.729403>,  <40.802826, 29.417986, 31.250509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325432, 29.154638, 30.729403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.300076, 29.550577, 30.678522>,  <40.284863, 29.788141, 30.647995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.300076, 29.550577, 30.678522>,  <40.325432, 29.154638, 30.729403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300076, 29.550577, 30.678522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357891, -0.096430, -0.928771,
		-0.931609, -0.104402, -0.348145,
		-0.063394, 0.989849, -0.127200,
		40.281055, 29.847532, 30.640362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.018536, 29.303379, 29.992712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.193520, 29.650307, 30.087696>,  <40.298508, 29.858463, 30.144686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.193520, 29.650307, 30.087696>,  <40.018536, 29.303379, 29.992712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193520, 29.650307, 30.087696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295477, 0.110765, -0.948907,
		-0.849308, 0.485271, -0.207818,
		0.437458, 0.867320, 0.237460,
		40.324757, 29.910503, 30.158934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705185, 29.861258, 29.501696>,  <40.018536, 29.303379, 29.992712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705185, 29.861258, 29.501696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.053467, 30.018005, 29.620569>,  <40.262436, 30.112055, 29.691893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.053467, 30.018005, 29.620569>,  <39.705185, 29.861258, 29.501696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053467, 30.018005, 29.620569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205400, 0.259297, -0.943703,
		-0.446868, 0.882724, 0.145280,
		0.870701, 0.391871, 0.297183,
		40.314678, 30.135567, 29.709724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677788, 30.594437, 29.169250>,  <39.705185, 29.861258, 29.501696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677788, 30.594437, 29.169250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.062531, 30.519949, 29.249405>,  <40.293377, 30.475256, 29.297497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.062531, 30.519949, 29.249405>,  <39.677788, 30.594437, 29.169250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062531, 30.519949, 29.249405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232493, 0.170484, -0.957540,
		0.144149, 0.967604, 0.207275,
		0.961857, -0.186218, 0.200386,
		40.351086, 30.464083, 29.309521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121021, 31.160147, 28.905762>,  <39.677788, 30.594437, 29.169250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121021, 31.160147, 28.905762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.386494, 30.867123, 28.966272>,  <40.545776, 30.691309, 29.002579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.386494, 30.867123, 28.966272>,  <40.121021, 31.160147, 28.905762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386494, 30.867123, 28.966272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356029, 0.131499, -0.925177,
		0.657853, 0.667882, 0.348085,
		0.663681, -0.732559, 0.151278,
		40.585598, 30.647354, 29.011656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647049, 31.418592, 28.618967>,  <40.121021, 31.160147, 28.905762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647049, 31.418592, 28.618967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.730015, 31.029682, 28.662161>,  <40.779797, 30.796337, 28.688078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.730015, 31.029682, 28.662161>,  <40.647049, 31.418592, 28.618967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730015, 31.029682, 28.662161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356018, -0.027791, -0.934066,
		0.911169, 0.232187, 0.340382,
		0.207418, -0.972274, 0.107985,
		40.792240, 30.737999, 28.694557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293503, 31.371948, 28.356853>,  <40.647049, 31.418592, 28.618967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293503, 31.371948, 28.356853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.120472, 31.014305, 28.310471>,  <41.016655, 30.799719, 28.282640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.120472, 31.014305, 28.310471>,  <41.293503, 31.371948, 28.356853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120472, 31.014305, 28.310471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367835, -0.057595, -0.928106,
		0.823150, -0.444128, 0.353799,
		-0.432575, -0.894110, -0.115957,
		40.990700, 30.746073, 28.275684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680122, 31.023069, 27.868599>,  <41.293503, 31.371948, 28.356853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680122, 31.023069, 27.868599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.356430, 30.788103, 27.864861>,  <41.162216, 30.647123, 27.862617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.356430, 30.788103, 27.864861>,  <41.680122, 31.023069, 27.868599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356430, 30.788103, 27.864861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018150, -0.009097, -0.999794,
		0.587211, -0.809233, 0.018024,
		-0.809230, -0.587417, -0.009346,
		41.113663, 30.611877, 27.862057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.853458, 30.448835, 27.373423>,  <41.680122, 31.023069, 27.868599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.853458, 30.448835, 27.373423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.455135, 30.424063, 27.400351>,  <41.216141, 30.409199, 27.416508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.455135, 30.424063, 27.400351>,  <41.853458, 30.448835, 27.373423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455135, 30.424063, 27.400351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056232, -0.166025, -0.984517,
		0.072149, -0.984175, 0.161847,
		-0.995807, -0.061931, 0.067321,
		41.156395, 30.405483, 27.420547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700127, 29.752512, 27.027452>,  <41.853458, 30.448835, 27.373423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.700127, 29.752512, 27.027452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.392281, 30.007725, 27.017595>,  <41.207573, 30.160852, 27.011681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.392281, 30.007725, 27.017595>,  <41.700127, 29.752512, 27.027452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392281, 30.007725, 27.017595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079050, -0.133505, -0.987890,
		-0.633597, -0.758346, 0.153184,
		-0.769614, 0.638034, -0.024641,
		41.161396, 30.199135, 27.010202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136833, 29.433426, 26.596468>,  <41.700127, 29.752512, 27.027452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136833, 29.433426, 26.596468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.077164, 29.828789, 26.585176>,  <41.041363, 30.066006, 26.578402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.077164, 29.828789, 26.585176>,  <41.136833, 29.433426, 26.596468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077164, 29.828789, 26.585176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100899, -0.043616, -0.993940,
		-0.983649, -0.145423, 0.106236,
		-0.149176, 0.988407, -0.028230,
		41.032410, 30.125311, 26.576708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604092, 29.492956, 26.054825>,  <41.136833, 29.433426, 26.596468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604092, 29.492956, 26.054825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.773132, 29.850513, 26.114645>,  <40.874557, 30.065048, 26.150537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.773132, 29.850513, 26.114645>,  <40.604092, 29.492956, 26.054825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773132, 29.850513, 26.114645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072449, 0.131160, -0.988710,
		-0.903416, 0.428664, -0.009333,
		0.422601, 0.893892, 0.149549,
		40.899914, 30.118681, 26.159510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493931, 29.806305, 25.444962>,  <40.604092, 29.492956, 26.054825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493931, 29.806305, 25.444962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.717537, 30.103956, 25.591263>,  <40.851700, 30.282547, 25.679043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.717537, 30.103956, 25.591263>,  <40.493931, 29.806305, 25.444962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717537, 30.103956, 25.591263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001742, 0.440059, -0.897967,
		-0.829154, 0.502617, 0.244704,
		0.559018, 0.744127, 0.365752,
		40.885242, 30.327194, 25.700989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275711, 30.533714, 25.161629>,  <40.493931, 29.806305, 25.444962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275711, 30.533714, 25.161629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.659245, 30.594248, 25.257742>,  <40.889366, 30.630568, 25.315411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.659245, 30.594248, 25.257742>,  <40.275711, 30.533714, 25.161629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659245, 30.594248, 25.257742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212948, 0.176594, -0.960972,
		-0.187860, 0.972580, 0.137098,
		0.958834, 0.151334, 0.240284,
		40.946896, 30.639648, 25.329826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589100, 31.242235, 24.927740>,  <40.275711, 30.533714, 25.161629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589100, 31.242235, 24.927740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.895481, 30.987785, 24.964964>,  <41.079311, 30.835115, 24.987299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.895481, 30.987785, 24.964964>,  <40.589100, 31.242235, 24.927740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895481, 30.987785, 24.964964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348891, 0.289713, -0.891258,
		0.539991, 0.715130, 0.443845,
		0.765953, -0.636125, 0.093060,
		41.125267, 30.796947, 24.992882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114643, 31.595009, 24.627525>,  <40.589100, 31.242235, 24.927740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114643, 31.595009, 24.627525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.267319, 31.225292, 24.627682>,  <41.358925, 31.003462, 24.627775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.267319, 31.225292, 24.627682>,  <41.114643, 31.595009, 24.627525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.267319, 31.225292, 24.627682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433083, 0.178469, -0.883509,
		0.816549, 0.337396, 0.468414,
		0.381690, -0.924290, 0.000392,
		41.381824, 30.948006, 24.627800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687363, 31.749947, 24.391771>,  <41.114643, 31.595009, 24.627525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.687363, 31.749947, 24.391771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.666729, 31.354990, 24.331915>,  <41.654346, 31.118015, 24.296001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.666729, 31.354990, 24.331915>,  <41.687363, 31.749947, 24.391771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.666729, 31.354990, 24.331915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529593, 0.099991, -0.842338,
		0.846682, -0.122703, 0.517758,
		-0.051587, -0.987393, -0.149643,
		41.651253, 31.058771, 24.287022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.384151, 31.583368, 24.242153>,  <41.687363, 31.749947, 24.391771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.384151, 31.583368, 24.242153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.151997, 31.297255, 24.086452>,  <42.012703, 31.125586, 23.993032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.151997, 31.297255, 24.086452>,  <42.384151, 31.583368, 24.242153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.151997, 31.297255, 24.086452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452081, 0.114567, -0.884589,
		0.677328, -0.689378, 0.256873,
		-0.580387, -0.715285, -0.389254,
		41.977882, 31.082668, 23.969677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.877022, 31.055571, 23.858597>,  <42.384151, 31.583368, 24.242153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.877022, 31.055571, 23.858597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.509529, 31.001638, 23.710140>,  <42.289032, 30.969278, 23.621067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.509529, 31.001638, 23.710140>,  <42.877022, 31.055571, 23.858597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.509529, 31.001638, 23.710140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369885, 0.035191, -0.928411,
		0.138241, -0.990243, 0.017541,
		-0.918735, -0.134833, -0.371142,
		42.233910, 30.961189, 23.598797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.861717, 30.506258, 23.358063>,  <42.877022, 31.055571, 23.858597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.861717, 30.506258, 23.358063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.550602, 30.740139, 23.265831>,  <42.363934, 30.880468, 23.210491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.550602, 30.740139, 23.265831>,  <42.861717, 30.506258, 23.358063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.550602, 30.740139, 23.265831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316114, 0.046825, -0.947565,
		-0.543248, -0.809895, -0.221253,
		-0.777788, 0.584704, -0.230581,
		42.317265, 30.915550, 23.196657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.845329, 30.364725, 22.662424>,  <42.861717, 30.506258, 23.358063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.845329, 30.364725, 22.662424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.550282, 30.634764, 22.667448>,  <42.373253, 30.796787, 22.670464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.550282, 30.634764, 22.667448>,  <42.845329, 30.364725, 22.662424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.550282, 30.634764, 22.667448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277247, 0.319784, -0.906020,
		-0.615668, -0.664818, -0.423048,
		-0.737622, 0.675097, 0.012562,
		42.328995, 30.837294, 22.671217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.490604, 30.190723, 22.085726>,  <42.845329, 30.364725, 22.662424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.490604, 30.190723, 22.085726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.402752, 30.566948, 22.189348>,  <42.350040, 30.792683, 22.251522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.402752, 30.566948, 22.189348>,  <42.490604, 30.190723, 22.085726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.402752, 30.566948, 22.189348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165511, 0.297612, -0.940230,
		-0.961441, -0.163627, -0.221038,
		-0.219631, 0.940560, 0.259054,
		42.336864, 30.849115, 22.267065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882092, 30.505478, 21.628323>,  <42.490604, 30.190723, 22.085726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882092, 30.505478, 21.628323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.124352, 30.791267, 21.768450>,  <42.269707, 30.962740, 21.852526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.124352, 30.791267, 21.768450>,  <41.882092, 30.505478, 21.628323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124352, 30.791267, 21.768450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241810, 0.254175, -0.936442,
		-0.758103, 0.651863, -0.018826,
		0.605646, 0.714472, 0.350318,
		42.306046, 31.005610, 21.873545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595684, 31.082027, 21.388502>,  <41.882092, 30.505478, 21.628323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595684, 31.082027, 21.388502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.992737, 31.063671, 21.433363>,  <42.230968, 31.052658, 21.460279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.992737, 31.063671, 21.433363>,  <41.595684, 31.082027, 21.388502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992737, 31.063671, 21.433363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120675, 0.290140, -0.949345,
		0.011026, 0.955883, 0.293540,
		0.992631, -0.045890, 0.112153,
		42.290527, 31.049904, 21.467009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163906, 30.668379, 20.964361>,  <41.595684, 31.082027, 21.388502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163906, 30.668379, 20.964361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.845695, 30.859192, 20.814919>,  <40.654770, 30.973679, 20.725254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.845695, 30.859192, 20.814919>,  <41.163906, 30.668379, 20.964361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845695, 30.859192, 20.814919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520638, -0.222730, 0.824213,
		0.309963, 0.850195, 0.425548,
		-0.795525, 0.477032, -0.373606,
		40.607037, 31.002302, 20.702837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848095, 31.294065, 21.252359>,  <41.163906, 30.668379, 20.964361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848095, 31.294065, 21.252359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.559502, 31.084570, 21.071184>,  <40.386345, 30.958872, 20.962479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.559502, 31.084570, 21.071184>,  <40.848095, 31.294065, 21.252359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559502, 31.084570, 21.071184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498296, -0.061473, 0.864825,
		-0.480787, 0.849657, -0.216625,
		-0.721488, -0.523741, -0.452936,
		40.343056, 30.927448, 20.935303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262604, 31.537830, 21.683575>,  <40.848095, 31.294065, 21.252359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262604, 31.537830, 21.683575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.154301, 31.209852, 21.481831>,  <40.089317, 31.013065, 21.360785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.154301, 31.209852, 21.481831>,  <40.262604, 31.537830, 21.683575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154301, 31.209852, 21.481831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727513, -0.168816, 0.665001,
		-0.630409, 0.546982, -0.550813,
		-0.270758, -0.819946, -0.504360,
		40.073074, 30.963869, 21.330523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602272, 31.620333, 21.478998>,  <40.262604, 31.537830, 21.683575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602272, 31.620333, 21.478998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.648468, 31.223021, 21.476112>,  <39.676186, 30.984632, 21.474380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.648468, 31.223021, 21.476112>,  <39.602272, 31.620333, 21.478998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648468, 31.223021, 21.476112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601725, -0.075741, 0.795104,
		-0.790309, -0.087486, -0.606430,
		0.115492, -0.993282, -0.007216,
		39.683117, 30.925035, 21.473948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910007, 31.288769, 21.346273>,  <39.602272, 31.620333, 21.478998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910007, 31.288769, 21.346273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.142090, 31.019699, 21.529959>,  <39.281338, 30.858257, 21.640169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.142090, 31.019699, 21.529959>,  <38.910007, 31.288769, 21.346273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142090, 31.019699, 21.529959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590834, 0.040466, 0.805778,
		-0.560607, -0.738833, -0.373959,
		0.580203, -0.672673, 0.459213,
		39.316151, 30.817898, 21.667723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412334, 30.833250, 21.674795>,  <38.910007, 31.288769, 21.346273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412334, 30.833250, 21.674795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.771423, 30.814281, 21.849997>,  <38.986877, 30.802900, 21.955118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.771423, 30.814281, 21.849997>,  <38.412334, 30.833250, 21.674795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771423, 30.814281, 21.849997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434582, 0.067981, 0.898063,
		-0.072365, -0.996559, 0.040419,
		0.897720, -0.047423, 0.438006,
		39.040741, 30.800055, 21.981398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253887, 30.324226, 22.310188>,  <38.412334, 30.833250, 21.674795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253887, 30.324226, 22.310188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.606602, 30.489113, 22.401871>,  <38.818230, 30.588045, 22.456881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.606602, 30.489113, 22.401871>,  <38.253887, 30.324226, 22.310188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606602, 30.489113, 22.401871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283692, 0.075314, 0.955953,
		0.376799, -0.907967, 0.183353,
		0.881783, 0.412218, 0.229205,
		38.871136, 30.612778, 22.470633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557308, 29.882954, 22.833956>,  <38.253887, 30.324226, 22.310188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557308, 29.882954, 22.833956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.744919, 30.230839, 22.895422>,  <38.857483, 30.439569, 22.932301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.744919, 30.230839, 22.895422>,  <38.557308, 29.882954, 22.833956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744919, 30.230839, 22.895422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069275, -0.137224, 0.988115,
		0.880464, -0.474095, -0.004112,
		0.469024, 0.869715, 0.153663,
		38.885628, 30.491753, 22.941521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106567, 29.720858, 23.383566>,  <38.557308, 29.882954, 22.833956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106567, 29.720858, 23.383566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.069546, 30.118799, 23.400070>,  <39.047333, 30.357563, 23.409973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.069546, 30.118799, 23.400070>,  <39.106567, 29.720858, 23.383566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069546, 30.118799, 23.400070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032223, -0.044412, 0.998493,
		0.995186, 0.091089, 0.036168,
		-0.092559, 0.994852, 0.041263,
		39.041779, 30.417255, 23.412449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601131, 29.913069, 23.864733>,  <39.106567, 29.720858, 23.383566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601131, 29.913069, 23.864733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.381001, 30.246674, 23.848911>,  <39.248924, 30.446836, 23.839418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.381001, 30.246674, 23.848911>,  <39.601131, 29.913069, 23.864733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381001, 30.246674, 23.848911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053817, 0.011843, 0.998481,
		0.833214, 0.551618, 0.038367,
		-0.550325, 0.834013, -0.039554,
		39.215904, 30.496878, 23.837046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915054, 30.399391, 24.461008>,  <39.601131, 29.913069, 23.864733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915054, 30.399391, 24.461008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.536026, 30.498539, 24.380346>,  <39.308609, 30.558027, 24.331949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.536026, 30.498539, 24.380346>,  <39.915054, 30.399391, 24.461008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536026, 30.498539, 24.380346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219049, -0.044431, 0.974702,
		0.232638, 0.967774, 0.096397,
		-0.947574, 0.247868, -0.201653,
		39.251755, 30.572899, 24.319851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707081, 31.100687, 24.823902>,  <39.915054, 30.399391, 24.461008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707081, 31.100687, 24.823902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.380074, 30.880028, 24.757751>,  <39.183868, 30.747633, 24.718061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.380074, 30.880028, 24.757751>,  <39.707081, 31.100687, 24.823902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380074, 30.880028, 24.757751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152825, -0.069062, 0.985837,
		-0.555256, 0.831213, -0.027846,
		-0.817518, -0.551647, -0.165377,
		39.134819, 30.714533, 24.708138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254044, 31.406048, 25.325573>,  <39.707081, 31.100687, 24.823902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254044, 31.406048, 25.325573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.095856, 31.055296, 25.216257>,  <39.000942, 30.844845, 25.150667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.095856, 31.055296, 25.216257>,  <39.254044, 31.406048, 25.325573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095856, 31.055296, 25.216257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461120, -0.067776, 0.884745,
		-0.794336, 0.475911, -0.377542,
		-0.395472, -0.876878, -0.273289,
		38.977215, 30.792233, 25.134270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544659, 31.443226, 25.560076>,  <39.254044, 31.406048, 25.325573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544659, 31.443226, 25.560076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.640007, 31.059660, 25.498541>,  <38.697216, 30.829521, 25.461620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.640007, 31.059660, 25.498541>,  <38.544659, 31.443226, 25.560076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640007, 31.059660, 25.498541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433510, -0.246805, 0.866693,
		-0.869050, -0.139907, -0.474530,
		0.238373, -0.958913, -0.153835,
		38.711517, 30.771986, 25.452391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100960, 31.185959, 25.877991>,  <38.544659, 31.443226, 25.560076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100960, 31.185959, 25.877991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.366756, 30.887918, 25.855099>,  <38.526234, 30.709095, 25.841364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.366756, 30.887918, 25.855099>,  <38.100960, 31.185959, 25.877991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366756, 30.887918, 25.855099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157254, -0.214287, 0.964029,
		-0.730561, -0.631592, -0.259562,
		0.664494, -0.745099, -0.057229,
		38.566105, 30.664389, 25.837931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809937, 30.657930, 26.205721>,  <38.100960, 31.185959, 25.877991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809937, 30.657930, 26.205721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.193455, 30.544329, 26.208847>,  <38.423565, 30.476168, 26.210722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.193455, 30.544329, 26.208847>,  <37.809937, 30.657930, 26.205721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193455, 30.544329, 26.208847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087847, -0.270188, 0.958792,
		-0.270188, -0.919968, -0.284003,
		-0.958792, 0.284003, -0.007815,
		38.481091, 30.459127, 26.211191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773743, 29.903786, 26.300049>,  <37.809937, 30.657930, 26.205721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773743, 29.903786, 26.300049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.145267, 29.998058, 26.414425>,  <38.368183, 30.054623, 26.483049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.145267, 29.998058, 26.414425>,  <37.773743, 29.903786, 26.300049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145267, 29.998058, 26.414425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255111, -0.152941, 0.954739,
		0.268746, -0.959720, -0.081928,
		0.928813, 0.235682, 0.285938,
		38.423912, 30.068762, 26.500206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024231, 29.353020, 26.630907>,  <37.773743, 29.903786, 26.300049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024231, 29.353020, 26.630907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.240673, 29.663986, 26.759171>,  <38.370541, 29.850567, 26.836128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.240673, 29.663986, 26.759171>,  <38.024231, 29.353020, 26.630907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240673, 29.663986, 26.759171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201153, -0.250585, 0.946966,
		0.816541, -0.576914, 0.020786,
		0.541109, 0.777417, 0.320661,
		38.403008, 29.897211, 26.855370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425041, 29.045351, 27.114601>,  <38.024231, 29.353020, 26.630907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425041, 29.045351, 27.114601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.428547, 29.431692, 27.218182>,  <38.430653, 29.663496, 27.280331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.428547, 29.431692, 27.218182>,  <38.425041, 29.045351, 27.114601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428547, 29.431692, 27.218182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181393, -0.253130, 0.950275,
		0.983372, -0.055303, 0.172979,
		0.008766, 0.965851, 0.258952,
		38.431175, 29.721447, 27.295868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714603, 29.010101, 27.731033>,  <38.425041, 29.045351, 27.114601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714603, 29.010101, 27.731033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.528145, 29.363726, 27.744572>,  <38.416271, 29.575901, 27.752695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.528145, 29.363726, 27.744572>,  <38.714603, 29.010101, 27.731033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528145, 29.363726, 27.744572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386275, -0.237794, 0.891204,
		0.795928, 0.402355, 0.452337,
		-0.466144, 0.884061, 0.033847,
		38.388302, 29.628944, 27.754726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739555, 29.198135, 28.451788>,  <38.714603, 29.010101, 27.731033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739555, 29.198135, 28.451788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.458515, 29.440628, 28.302746>,  <38.289890, 29.586124, 28.213322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.458515, 29.440628, 28.302746>,  <38.739555, 29.198135, 28.451788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458515, 29.440628, 28.302746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543377, -0.118999, 0.831012,
		0.459446, 0.786335, 0.413021,
		-0.702603, 0.606231, -0.372603,
		38.247734, 29.622498, 28.190966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.658905, 29.460594, 33.030720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.390907, 29.756863, 33.010651>,  <40.230110, 29.934624, 32.998611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.390907, 29.756863, 33.010651>,  <40.658905, 29.460594, 33.030720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390907, 29.756863, 33.010651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166454, 0.215740, 0.962159,
		0.723468, 0.636286, -0.267832,
		-0.669990, 0.740673, -0.050168,
		40.189911, 29.979065, 32.995602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942585, 30.052216, 33.413849>,  <40.658905, 29.460594, 33.030720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942585, 30.052216, 33.413849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.546894, 30.102907, 33.384548>,  <40.309479, 30.133324, 33.366970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.546894, 30.102907, 33.384548>,  <40.942585, 30.052216, 33.413849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546894, 30.102907, 33.384548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069309, 0.035239, 0.996973,
		0.128929, 0.991311, -0.026076,
		-0.989229, 0.126731, -0.073250,
		40.250126, 30.140926, 33.362572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713367, 30.629847, 33.855686>,  <40.942585, 30.052216, 33.413849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713367, 30.629847, 33.855686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.356750, 30.457947, 33.798466>,  <40.142780, 30.354807, 33.764133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.356750, 30.457947, 33.798466>,  <40.713367, 30.629847, 33.855686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356750, 30.457947, 33.798466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268967, 0.248210, 0.930617,
		-0.364425, 0.868163, -0.336879,
		-0.891544, -0.429750, -0.143054,
		40.089287, 30.329021, 33.755550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193047, 31.015968, 34.189522>,  <40.713367, 30.629847, 33.855686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193047, 31.015968, 34.189522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.019852, 30.658758, 34.140484>,  <39.915936, 30.444431, 34.111061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.019852, 30.658758, 34.140484>,  <40.193047, 31.015968, 34.189522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019852, 30.658758, 34.140484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485382, 0.116382, 0.866521,
		-0.759559, 0.434693, -0.483850,
		-0.432983, -0.893027, -0.122593,
		39.889957, 30.390850, 34.103706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544575, 31.183544, 34.237789>,  <40.193047, 31.015968, 34.189522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544575, 31.183544, 34.237789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.588669, 30.794474, 34.319519>,  <39.615124, 30.561031, 34.368557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.588669, 30.794474, 34.319519>,  <39.544575, 31.183544, 34.237789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588669, 30.794474, 34.319519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584066, 0.102940, 0.805153,
		-0.804186, -0.208096, -0.556759,
		0.110236, -0.972676, 0.204325,
		39.621738, 30.502670, 34.380817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833443, 30.930687, 34.375736>,  <39.544575, 31.183544, 34.237789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833443, 30.930687, 34.375736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.099251, 30.696108, 34.560986>,  <39.258736, 30.555361, 34.672134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.099251, 30.696108, 34.560986>,  <38.833443, 30.930687, 34.375736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099251, 30.696108, 34.560986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588020, -0.027927, 0.808364,
		-0.461129, -0.809506, -0.363401,
		0.664524, -0.586447, 0.463128,
		39.298607, 30.520174, 34.699924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458187, 30.465731, 34.761078>,  <38.833443, 30.930687, 34.375736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458187, 30.465731, 34.761078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.814030, 30.404665, 34.933258>,  <39.027534, 30.368025, 35.036568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.814030, 30.404665, 34.933258>,  <38.458187, 30.465731, 34.761078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814030, 30.404665, 34.933258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449618, -0.127114, 0.884130,
		-0.080255, -0.980070, -0.181720,
		0.889608, -0.152660, 0.430456,
		39.080914, 30.358866, 35.062393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276520, 30.146851, 35.324810>,  <38.458187, 30.465731, 34.761078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276520, 30.146851, 35.324810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.642982, 30.260235, 35.438160>,  <38.862862, 30.328266, 35.506172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.642982, 30.260235, 35.438160>,  <38.276520, 30.146851, 35.324810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642982, 30.260235, 35.438160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283698, -0.040842, 0.958043,
		0.283141, -0.958114, 0.043000,
		0.916159, 0.283460, 0.283379,
		38.917831, 30.345272, 35.523174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331909, 29.864998, 35.919048>,  <38.276520, 30.146851, 35.324810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331909, 29.864998, 35.919048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.643883, 30.114910, 35.933750>,  <38.831066, 30.264856, 35.942570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.643883, 30.114910, 35.933750>,  <38.331909, 29.864998, 35.919048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643883, 30.114910, 35.933750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175410, 0.161843, 0.971102,
		0.600775, -0.763845, 0.235820,
		0.779937, 0.624779, 0.036754,
		38.877865, 30.302343, 35.944775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714054, 29.630169, 36.517441>,  <38.331909, 29.864998, 35.919048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714054, 29.630169, 36.517441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.812714, 30.012787, 36.455235>,  <38.871910, 30.242357, 36.417912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.812714, 30.012787, 36.455235>,  <38.714054, 29.630169, 36.517441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812714, 30.012787, 36.455235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149122, 0.196020, 0.969195,
		0.957562, -0.215865, 0.190991,
		0.246653, 0.956545, -0.155511,
		38.886711, 30.299751, 36.408581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051907, 29.812696, 37.067020>,  <38.714054, 29.630169, 36.517441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051907, 29.812696, 37.067020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.914585, 30.149643, 36.900860>,  <38.832191, 30.351810, 36.801163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.914585, 30.149643, 36.900860>,  <39.051907, 29.812696, 37.067020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914585, 30.149643, 36.900860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311964, 0.314897, 0.896392,
		0.885900, 0.437327, 0.154682,
		-0.343307, 0.842368, -0.415398,
		38.811592, 30.402353, 36.776241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105812, 30.257833, 37.539307>,  <39.051907, 29.812696, 37.067020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105812, 30.257833, 37.539307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.840645, 30.469858, 37.327808>,  <38.681545, 30.597073, 37.200909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.840645, 30.469858, 37.327808>,  <39.105812, 30.257833, 37.539307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840645, 30.469858, 37.327808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464719, 0.262386, 0.845689,
		0.587002, 0.806342, 0.072388,
		-0.662921, 0.530061, -0.528744,
		38.641769, 30.628876, 37.169186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015884, 31.000282, 37.770100>,  <39.105812, 30.257833, 37.539307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015884, 31.000282, 37.770100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.676479, 30.885702, 37.592125>,  <38.472836, 30.816954, 37.485340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.676479, 30.885702, 37.592125>,  <39.015884, 31.000282, 37.770100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676479, 30.885702, 37.592125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524653, 0.565007, 0.636793,
		0.068983, 0.773766, -0.629704,
		-0.848517, -0.286449, -0.444935,
		38.421925, 30.799768, 37.458645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632240, 31.569317, 37.499981>,  <39.015884, 31.000282, 37.770100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632240, 31.569317, 37.499981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.400555, 31.258352, 37.598076>,  <38.261543, 31.071774, 37.656933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.400555, 31.258352, 37.598076>,  <38.632240, 31.569317, 37.499981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400555, 31.258352, 37.598076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547770, 0.593982, 0.589181,
		-0.603705, 0.206926, -0.769885,
		-0.579214, -0.777411, 0.245242,
		38.226791, 31.025129, 37.671650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400101, 32.309132, 37.319744>,  <38.632240, 31.569317, 37.499981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400101, 32.309132, 37.319744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.423496, 32.693836, 37.212723>,  <38.437534, 32.924660, 37.148510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.423496, 32.693836, 37.212723>,  <38.400101, 32.309132, 37.319744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423496, 32.693836, 37.212723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403017, -0.222454, -0.887745,
		-0.913322, 0.159756, 0.374595,
		0.058492, 0.961765, -0.267556,
		38.441044, 32.982365, 37.132458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690819, 32.453033, 36.990181>,  <38.400101, 32.309132, 37.319744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690819, 32.453033, 36.990181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.950478, 32.731400, 36.867340>,  <38.106274, 32.898418, 36.793636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.950478, 32.731400, 36.867340>,  <37.690819, 32.453033, 36.990181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950478, 32.731400, 36.867340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294098, -0.142708, -0.945061,
		-0.701509, 0.703801, 0.112029,
		0.649147, 0.695916, -0.307098,
		38.145222, 32.940174, 36.775211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298927, 32.789082, 36.567913>,  <37.690819, 32.453033, 36.990181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298927, 32.789082, 36.567913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.682014, 32.858631, 36.476219>,  <37.911865, 32.900360, 36.421204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.682014, 32.858631, 36.476219>,  <37.298927, 32.789082, 36.567913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682014, 32.858631, 36.476219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232869, 0.000523, -0.972508,
		-0.168970, 0.984769, 0.040990,
		0.957717, 0.173870, -0.229234,
		37.969330, 32.910793, 36.407448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270695, 33.215626, 35.949551>,  <37.298927, 32.789082, 36.567913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270695, 33.215626, 35.949551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.642326, 33.067699, 35.952473>,  <37.865307, 32.978943, 35.954227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.642326, 33.067699, 35.952473>,  <37.270695, 33.215626, 35.949551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642326, 33.067699, 35.952473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031511, 0.059450, -0.997734,
		0.368539, 0.927203, 0.066887,
		0.929078, -0.369811, 0.007308,
		37.921051, 32.956757, 35.954666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774563, 33.724258, 35.408089>,  <37.270695, 33.215626, 35.949551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774563, 33.724258, 35.408089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.923183, 33.359154, 35.475998>,  <38.012356, 33.140091, 35.516743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.923183, 33.359154, 35.475998>,  <37.774563, 33.724258, 35.408089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923183, 33.359154, 35.475998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357671, -0.028020, -0.933427,
		0.856751, 0.407537, 0.316056,
		0.371550, -0.912759, 0.169770,
		38.034649, 33.085327, 35.526928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494015, 33.773590, 35.210403>,  <37.774563, 33.724258, 35.408089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494015, 33.773590, 35.210403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.396854, 33.385571, 35.210014>,  <38.338558, 33.152760, 35.209782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.396854, 33.385571, 35.210014>,  <38.494015, 33.773590, 35.210403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396854, 33.385571, 35.210014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285366, -0.070502, -0.955822,
		0.927127, -0.232447, 0.293945,
		-0.242902, -0.970050, -0.000968,
		38.323982, 33.094555, 35.209724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010765, 33.447678, 34.818394>,  <38.494015, 33.773590, 35.210403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010765, 33.447678, 34.818394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.729000, 33.163925, 34.808773>,  <38.559940, 32.993675, 34.803001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.729000, 33.163925, 34.808773>,  <39.010765, 33.447678, 34.818394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729000, 33.163925, 34.808773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036373, 0.069917, -0.996889,
		0.708854, -0.701350, -0.075052,
		-0.704416, -0.709380, -0.024051,
		38.517673, 32.951111, 34.801559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186253, 33.020409, 34.372425>,  <39.010765, 33.447678, 34.818394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186253, 33.020409, 34.372425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.798668, 32.922539, 34.386539>,  <38.566116, 32.863815, 34.395008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.798668, 32.922539, 34.386539>,  <39.186253, 33.020409, 34.372425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798668, 32.922539, 34.386539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053981, 0.070129, -0.996076,
		0.241242, -0.967065, -0.081160,
		-0.968962, -0.244677, 0.035286,
		38.507980, 32.849136, 34.397125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135479, 32.553173, 33.783279>,  <39.186253, 33.020409, 34.372425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135479, 32.553173, 33.783279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.776829, 32.707546, 33.870106>,  <38.561638, 32.800171, 33.922203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.776829, 32.707546, 33.870106>,  <39.135479, 32.553173, 33.783279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776829, 32.707546, 33.870106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170047, 0.152513, -0.973562,
		-0.408835, -0.909833, -0.071120,
		-0.896626, 0.385933, 0.217067,
		38.507839, 32.823326, 33.935226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617256, 32.228848, 33.374577>,  <39.135479, 32.553173, 33.783279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617256, 32.228848, 33.374577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.436329, 32.572163, 33.471531>,  <38.327774, 32.778152, 33.529705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.436329, 32.572163, 33.471531>,  <38.617256, 32.228848, 33.374577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436329, 32.572163, 33.471531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289334, 0.115866, -0.950190,
		-0.843622, -0.499916, 0.195924,
		-0.452314, 0.858289, 0.242390,
		38.300636, 32.829651, 33.544247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089153, 32.296631, 32.853073>,  <38.617256, 32.228848, 33.374577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089153, 32.296631, 32.853073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.138535, 32.663326, 33.005051>,  <38.168163, 32.883343, 33.096237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.138535, 32.663326, 33.005051>,  <38.089153, 32.296631, 32.853073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138535, 32.663326, 33.005051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274696, 0.399479, -0.874619,
		-0.953573, 0.003608, 0.301142,
		0.123456, 0.916735, 0.379941,
		38.175571, 32.938347, 33.119034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479359, 32.646641, 32.670952>,  <38.089153, 32.296631, 32.853073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479359, 32.646641, 32.670952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.708405, 32.958775, 32.771507>,  <37.845833, 33.146053, 32.831841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.708405, 32.958775, 32.771507>,  <37.479359, 32.646641, 32.670952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708405, 32.958775, 32.771507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046967, 0.337355, -0.940205,
		-0.818478, 0.526569, 0.229824,
		0.572615, 0.780332, 0.251386,
		37.880188, 33.192875, 32.846924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025440, 33.251312, 32.570900>,  <37.479359, 32.646641, 32.670952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025440, 33.251312, 32.570900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.410439, 33.359692, 32.565453>,  <37.641438, 33.424717, 32.562183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.410439, 33.359692, 32.565453>,  <37.025440, 33.251312, 32.570900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410439, 33.359692, 32.565453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102584, 0.317044, -0.942847,
		-0.251143, 0.908885, 0.332949,
		0.962499, 0.270944, -0.013614,
		37.699188, 33.440975, 32.561367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025169, 33.790810, 32.156578>,  <37.025440, 33.251312, 32.570900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025169, 33.790810, 32.156578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.407124, 33.672466, 32.146225>,  <37.636295, 33.601460, 32.140011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.407124, 33.672466, 32.146225>,  <37.025169, 33.790810, 32.156578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407124, 33.672466, 32.146225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063971, 0.290013, -0.954882,
		0.290013, 0.910144, 0.295855,
		0.954882, -0.295855, -0.025885,
		37.693588, 33.583710, 32.138458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088207, 34.527439, 32.365402>,  <37.025169, 33.790810, 32.156578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088207, 34.527439, 32.365402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.873867, 34.865021, 32.355495>,  <36.745262, 35.067570, 32.349552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.873867, 34.865021, 32.355495>,  <37.088207, 34.527439, 32.365402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873867, 34.865021, 32.355495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553307, -0.328849, 0.765317,
		0.637744, 0.423799, 0.643177,
		-0.535848, 0.843951, -0.024769,
		36.713112, 35.118206, 32.348064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074818, 34.744469, 33.100986>,  <37.088207, 34.527439, 32.365402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074818, 34.744469, 33.100986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.784550, 34.936504, 32.903843>,  <36.610390, 35.051723, 32.785557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.784550, 34.936504, 32.903843>,  <37.074818, 34.744469, 33.100986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784550, 34.936504, 32.903843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657542, -0.273002, 0.702217,
		0.202573, 0.833658, 0.513788,
		-0.725674, 0.480087, -0.492863,
		36.566849, 35.080532, 32.755985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706863, 35.171608, 33.640545>,  <37.074818, 34.744469, 33.100986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706863, 35.171608, 33.640545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.478146, 35.111576, 33.317924>,  <36.340916, 35.075558, 33.124352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.478146, 35.111576, 33.317924>,  <36.706863, 35.171608, 33.640545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478146, 35.111576, 33.317924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803342, -0.096993, 0.587566,
		-0.166410, 0.983905, -0.065104,
		-0.571794, -0.150078, -0.806553,
		36.306606, 35.066551, 33.075958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065174, 35.335915, 33.904728>,  <36.706863, 35.171608, 33.640545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065174, 35.335915, 33.904728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.951904, 35.172722, 33.557541>,  <35.883942, 35.074806, 33.349228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.951904, 35.172722, 33.557541>,  <36.065174, 35.335915, 33.904728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951904, 35.172722, 33.557541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901120, -0.196634, 0.386416,
		-0.328323, 0.891562, -0.311963,
		-0.283172, -0.407985, -0.867964,
		35.866951, 35.050327, 33.297153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476517, 35.603771, 33.847439>,  <36.065174, 35.335915, 33.904728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476517, 35.603771, 33.847439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.484055, 35.264229, 33.636124>,  <35.488579, 35.060505, 33.509335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.484055, 35.264229, 33.636124>,  <35.476517, 35.603771, 33.847439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484055, 35.264229, 33.636124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688636, -0.394092, 0.608665,
		-0.724863, 0.352328, -0.591979,
		0.018845, -0.848856, -0.528288,
		35.489708, 35.009571, 33.477638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821941, 35.513569, 33.699036>,  <35.476517, 35.603771, 33.847439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821941, 35.513569, 33.699036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.992939, 35.152222, 33.685333>,  <35.095539, 34.935413, 33.677113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.992939, 35.152222, 33.685333>,  <34.821941, 35.513569, 33.699036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992939, 35.152222, 33.685333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678318, -0.345587, 0.648424,
		-0.597606, -0.253958, -0.760508,
		0.427495, -0.903369, -0.034261,
		35.121189, 34.881210, 33.675056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384228, 35.131233, 33.561916>,  <34.821941, 35.513569, 33.699036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384228, 35.131233, 33.561916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.623123, 34.844589, 33.706017>,  <34.766460, 34.672604, 33.792477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.623123, 34.844589, 33.706017>,  <34.384228, 35.131233, 33.561916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623123, 34.844589, 33.706017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723711, -0.287850, 0.627204,
		-0.345766, -0.635300, -0.690535,
		0.597234, -0.716614, 0.360245,
		34.802296, 34.629604, 33.814091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940918, 34.600761, 33.636642>,  <34.384228, 35.131233, 33.561916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940918, 34.600761, 33.636642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.260071, 34.460514, 33.832787>,  <34.451561, 34.376366, 33.950474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.260071, 34.460514, 33.832787>,  <33.940918, 34.600761, 33.636642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260071, 34.460514, 33.832787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601907, -0.507933, 0.616208,
		0.033017, -0.786812, -0.616309,
		0.797883, -0.350616, 0.490358,
		34.499435, 34.355328, 33.979893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808224, 33.895546, 33.701527>,  <33.940918, 34.600761, 33.636642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808224, 33.895546, 33.701527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.079327, 33.963005, 33.987801>,  <34.241989, 34.003479, 34.159565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.079327, 33.963005, 33.987801>,  <33.808224, 33.895546, 33.701527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079327, 33.963005, 33.987801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604127, -0.427107, 0.672763,
		0.419132, -0.888334, -0.187591,
		0.677760, 0.168648, 0.715681,
		34.282654, 34.013599, 34.202503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860657, 33.219658, 34.094757>,  <33.808224, 33.895546, 33.701527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860657, 33.219658, 34.094757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.988689, 33.510029, 34.338257>,  <34.065510, 33.684254, 34.484356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.988689, 33.510029, 34.338257>,  <33.860657, 33.219658, 34.094757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988689, 33.510029, 34.338257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588327, -0.351337, 0.728309,
		0.742577, -0.591260, 0.314629,
		0.320080, 0.725929, 0.608749,
		34.084713, 33.727806, 34.520882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278290, 32.994324, 34.784996>,  <33.860657, 33.219658, 34.094757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278290, 32.994324, 34.784996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.102730, 33.349213, 34.841858>,  <33.997395, 33.562145, 34.875977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.102730, 33.349213, 34.841858>,  <34.278290, 32.994324, 34.784996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102730, 33.349213, 34.841858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447540, -0.353040, 0.821627,
		0.779150, 0.296992, 0.552016,
		-0.438900, 0.887220, 0.142156,
		33.971058, 33.615379, 34.884506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296692, 33.019360, 35.483685>,  <34.278290, 32.994324, 34.784996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296692, 33.019360, 35.483685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.016979, 33.257290, 35.325092>,  <33.849152, 33.400047, 35.229939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.016979, 33.257290, 35.325092>,  <34.296692, 33.019360, 35.483685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016979, 33.257290, 35.325092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647325, -0.291596, 0.704231,
		0.303284, 0.749102, 0.588952,
		-0.699277, 0.594826, -0.396476,
		33.807198, 33.435738, 35.206150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.667801, 35.538704, 29.061939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284622, 35.632504, 28.995794>,  <38.054714, 35.688782, 28.956108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284622, 35.632504, 28.995794>,  <38.667801, 35.538704, 29.061939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284622, 35.632504, 28.995794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119932, 0.196317, 0.973178,
		0.260672, 0.952087, -0.159938,
		-0.957949, 0.234498, -0.165360,
		37.997238, 35.702854, 28.946186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579769, 35.919579, 29.510921>,  <38.667801, 35.538704, 29.061939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579769, 35.919579, 29.510921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190117, 35.878967, 29.430157>,  <37.956326, 35.854599, 29.381699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190117, 35.878967, 29.430157>,  <38.579769, 35.919579, 29.510921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190117, 35.878967, 29.430157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218376, 0.192716, 0.956647,
		-0.058218, 0.975988, -0.209902,
		-0.974127, -0.101531, -0.201912,
		37.897881, 35.848507, 29.369583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237404, 36.427544, 29.880726>,  <38.579769, 35.919579, 29.510921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237404, 36.427544, 29.880726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927780, 36.194874, 29.780741>,  <37.742004, 36.055271, 29.720749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927780, 36.194874, 29.780741>,  <38.237404, 36.427544, 29.880726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927780, 36.194874, 29.780741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320664, 0.019773, 0.946987,
		-0.545898, 0.813179, -0.201828,
		-0.774060, -0.581678, -0.249963,
		37.695560, 36.020370, 29.705751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651402, 36.828583, 30.207638>,  <38.237404, 36.427544, 29.880726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651402, 36.828583, 30.207638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562672, 36.443077, 30.148382>,  <37.509434, 36.211773, 30.112829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562672, 36.443077, 30.148382>,  <37.651402, 36.828583, 30.207638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562672, 36.443077, 30.148382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482837, -0.023425, 0.875397,
		-0.847150, 0.265709, -0.460147,
		-0.221822, -0.963769, -0.148139,
		37.496124, 36.153946, 30.103941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861790, 36.714798, 30.463856>,  <37.651402, 36.828583, 30.207638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861790, 36.714798, 30.463856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059978, 36.367451, 30.472294>,  <37.178890, 36.159042, 30.477356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059978, 36.367451, 30.472294>,  <36.861790, 36.714798, 30.463856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059978, 36.367451, 30.472294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292662, -0.144022, 0.945308,
		-0.817839, -0.474543, -0.325497,
		0.495467, -0.868370, 0.021094,
		37.208618, 36.106941, 30.478622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309105, 36.231274, 30.755960>,  <36.861790, 36.714798, 30.463856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309105, 36.231274, 30.755960> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654800, 36.033016, 30.790434>,  <36.862217, 35.914062, 30.811119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654800, 36.033016, 30.790434>,  <36.309105, 36.231274, 30.755960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654800, 36.033016, 30.790434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292446, -0.355575, 0.887717,
		-0.409346, -0.792404, -0.452251,
		0.864240, -0.495643, 0.086182,
		36.914074, 35.884323, 30.816290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141659, 35.566334, 31.005566>,  <36.309105, 36.231274, 30.755960>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141659, 35.566334, 31.005566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530262, 35.611061, 31.089148>,  <36.763424, 35.637897, 31.139297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530262, 35.611061, 31.089148>,  <36.141659, 35.566334, 31.005566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530262, 35.611061, 31.089148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173983, -0.262171, 0.949208,
		0.160925, -0.958521, -0.235247,
		0.971511, 0.111822, 0.208956,
		36.821716, 35.644608, 31.151834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436653, 34.862682, 31.213882>,  <36.141659, 35.566334, 31.005566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436653, 34.862682, 31.213882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647179, 35.169624, 31.360392>,  <36.773495, 35.353790, 31.448298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647179, 35.169624, 31.360392>,  <36.436653, 34.862682, 31.213882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647179, 35.169624, 31.360392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313080, -0.225610, 0.922540,
		0.790552, -0.600221, 0.121501,
		0.526316, 0.767355, 0.366274,
		36.805073, 35.399830, 31.470274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796810, 34.515900, 31.688440>,  <36.436653, 34.862682, 31.213882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796810, 34.515900, 31.688440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812916, 34.898743, 31.803204>,  <36.822578, 35.128448, 31.872063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812916, 34.898743, 31.803204>,  <36.796810, 34.515900, 31.688440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812916, 34.898743, 31.803204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375830, -0.251547, 0.891895,
		0.925813, -0.143744, 0.349582,
		0.040268, 0.957111, 0.286909,
		36.824997, 35.185875, 31.889277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520409, 34.521935, 31.761957>,  <36.796810, 34.515900, 31.688440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520409, 34.521935, 31.761957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737778, 34.186607, 31.779459>,  <37.868198, 33.985413, 31.789961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737778, 34.186607, 31.779459>,  <37.520409, 34.521935, 31.761957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737778, 34.186607, 31.779459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373987, 0.195108, -0.906679,
		0.751548, 0.509075, 0.419546,
		0.543424, -0.838318, 0.043754,
		37.900806, 33.935112, 31.792585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186245, 34.719929, 31.524971>,  <37.520409, 34.521935, 31.761957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186245, 34.719929, 31.524971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199917, 34.325703, 31.458652>,  <38.208118, 34.089165, 31.418861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199917, 34.325703, 31.458652>,  <38.186245, 34.719929, 31.524971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199917, 34.325703, 31.458652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355004, 0.167047, -0.919819,
		0.934240, -0.027418, 0.355590,
		0.034181, -0.985568, -0.165796,
		38.210171, 34.030033, 31.408915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807255, 34.644691, 31.199535>,  <38.186245, 34.719929, 31.524971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807255, 34.644691, 31.199535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597958, 34.314938, 31.113176>,  <38.472382, 34.117085, 31.061361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597958, 34.314938, 31.113176>,  <38.807255, 34.644691, 31.199535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597958, 34.314938, 31.113176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483245, -0.078359, -0.871971,
		0.701923, -0.560579, 0.439381,
		-0.523238, -0.824385, -0.215895,
		38.440987, 34.067623, 31.048409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356709, 34.199680, 30.974735>,  <38.807255, 34.644691, 31.199535>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356709, 34.199680, 30.974735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029121, 34.010784, 30.844332>,  <38.832569, 33.897446, 30.766090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029121, 34.010784, 30.844332>,  <39.356709, 34.199680, 30.974735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029121, 34.010784, 30.844332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420937, -0.108272, -0.900605,
		0.390006, -0.874794, 0.287455,
		-0.818967, -0.472242, -0.326007,
		38.783432, 33.869110, 30.746531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542740, 33.559277, 30.532101>,  <39.356709, 34.199680, 30.974735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542740, 33.559277, 30.532101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172993, 33.673962, 30.431427>,  <38.951145, 33.742775, 30.371023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172993, 33.673962, 30.431427>,  <39.542740, 33.559277, 30.532101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172993, 33.673962, 30.431427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217479, -0.146012, -0.965082,
		-0.313453, -0.946823, 0.072614,
		-0.924365, 0.286716, -0.251682,
		38.895683, 33.759975, 30.355923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268032, 33.024025, 30.092098>,  <39.542740, 33.559277, 30.532101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268032, 33.024025, 30.092098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085651, 33.368259, 30.001324>,  <38.976223, 33.574799, 29.946859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085651, 33.368259, 30.001324>,  <39.268032, 33.024025, 30.092098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085651, 33.368259, 30.001324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345598, -0.063774, -0.936213,
		-0.820164, -0.505297, -0.268339,
		-0.455953, 0.860586, -0.226934,
		38.948864, 33.626434, 29.933243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972290, 32.857555, 29.525810>,  <39.268032, 33.024025, 30.092098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972290, 32.857555, 29.525810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967442, 33.257507, 29.529577>,  <38.964535, 33.497478, 29.531837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967442, 33.257507, 29.529577>,  <38.972290, 32.857555, 29.525810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967442, 33.257507, 29.529577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358507, 0.013137, -0.933434,
		-0.933448, -0.007936, -0.358624,
		-0.012119, 0.999882, 0.009418,
		38.963806, 33.557472, 29.532402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701385, 33.118725, 28.871943>,  <38.972290, 32.857555, 29.525810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701385, 33.118725, 28.871943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876228, 33.438412, 29.036963>,  <38.981133, 33.630222, 29.135975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876228, 33.438412, 29.036963>,  <38.701385, 33.118725, 28.871943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876228, 33.438412, 29.036963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318868, 0.291193, -0.901958,
		-0.840989, 0.525800, -0.127562,
		0.437105, 0.799213, 0.412551,
		39.007359, 33.678177, 29.160728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499344, 33.736637, 28.485420>,  <38.701385, 33.118725, 28.871943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499344, 33.736637, 28.485420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847492, 33.868053, 28.632122>,  <39.056381, 33.946903, 28.720144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847492, 33.868053, 28.632122>,  <38.499344, 33.736637, 28.485420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847492, 33.868053, 28.632122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353274, 0.102190, -0.929922,
		-0.342998, 0.938945, -0.027122,
		0.870373, 0.328543, 0.366756,
		39.108604, 33.966618, 28.742149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718998, 34.250797, 28.043484>,  <38.499344, 33.736637, 28.485420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718998, 34.250797, 28.043484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051216, 34.117058, 28.221657>,  <39.250546, 34.036812, 28.328562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051216, 34.117058, 28.221657>,  <38.718998, 34.250797, 28.043484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051216, 34.117058, 28.221657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501727, 0.101922, -0.859000,
		0.241808, 0.936921, 0.252403,
		0.830541, -0.334351, 0.445433,
		39.300377, 34.016754, 28.355288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202286, 34.672245, 27.830416>,  <38.718998, 34.250797, 28.043484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202286, 34.672245, 27.830416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424599, 34.366524, 27.961222>,  <39.557987, 34.183090, 28.039705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424599, 34.366524, 27.961222>,  <39.202286, 34.672245, 27.830416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424599, 34.366524, 27.961222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621701, 0.120984, -0.773855,
		0.551898, 0.633403, 0.542411,
		0.555785, -0.764306, 0.327016,
		39.591335, 34.137234, 28.059326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972996, 34.898972, 27.732792>,  <39.202286, 34.672245, 27.830416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972996, 34.898972, 27.732792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019875, 34.507675, 27.801277>,  <40.048000, 34.272900, 27.842369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019875, 34.507675, 27.801277>,  <39.972996, 34.898972, 27.732792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019875, 34.507675, 27.801277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728456, -0.032501, -0.684321,
		0.674994, 0.204920, 0.708795,
		0.117194, -0.978239, 0.171213,
		40.055035, 34.214203, 27.852640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746399, 34.751980, 27.876276>,  <39.972996, 34.898972, 27.732792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746399, 34.751980, 27.876276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563374, 34.419689, 27.749445>,  <40.453560, 34.220314, 27.673347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563374, 34.419689, 27.749445>,  <40.746399, 34.751980, 27.876276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563374, 34.419689, 27.749445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600116, -0.025380, -0.799510,
		0.656124, -0.556108, 0.510143,
		-0.457562, -0.830722, -0.317077,
		40.426105, 34.170471, 27.654322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237965, 34.273582, 27.647348>,  <40.746399, 34.751980, 27.876276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237965, 34.273582, 27.647348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911743, 34.113754, 27.479918>,  <40.716011, 34.017857, 27.379459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911743, 34.113754, 27.479918>,  <41.237965, 34.273582, 27.647348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911743, 34.113754, 27.479918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524694, -0.205537, -0.826106,
		0.244058, -0.893361, 0.377282,
		-0.815556, -0.399575, -0.418579,
		40.667076, 33.993881, 27.354343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.149109, 30.467257, 26.226246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.424587, 30.729742, 26.349588>,  <35.589874, 30.887234, 26.423594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.424587, 30.729742, 26.349588>,  <35.149109, 30.467257, 26.226246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424587, 30.729742, 26.349588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260072, -0.173410, 0.949890,
		0.676802, -0.734380, 0.051236,
		0.688695, 0.656213, 0.308356,
		35.631195, 30.926605, 26.442095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471542, 30.170897, 26.803371>,  <35.149109, 30.467257, 26.226246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471542, 30.170897, 26.803371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.608814, 30.544451, 26.843546>,  <35.691177, 30.768583, 26.867651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.608814, 30.544451, 26.843546>,  <35.471542, 30.170897, 26.803371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608814, 30.544451, 26.843546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070903, -0.080867, 0.994200,
		0.936591, -0.348307, 0.038464,
		0.343177, 0.933886, 0.100436,
		35.711769, 30.824615, 26.873676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734421, 30.141291, 27.349596>,  <35.471542, 30.170897, 26.803371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734421, 30.141291, 27.349596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.682919, 30.537102, 27.323486>,  <35.652016, 30.774588, 27.307821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.682919, 30.537102, 27.323486>,  <35.734421, 30.141291, 27.349596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682919, 30.537102, 27.323486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194241, 0.039380, 0.980163,
		0.972467, 0.138882, 0.187136,
		-0.128758, 0.989526, -0.065272,
		35.644291, 30.833960, 27.303905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160378, 30.392811, 27.917248>,  <35.734421, 30.141291, 27.349596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160378, 30.392811, 27.917248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.875618, 30.642643, 27.788809>,  <35.704762, 30.792542, 27.711744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.875618, 30.642643, 27.788809>,  <36.160378, 30.392811, 27.917248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875618, 30.642643, 27.788809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296743, 0.146879, 0.943594,
		0.636513, 0.767024, 0.080777,
		-0.711895, 0.624581, -0.321099,
		35.662048, 30.830017, 27.692478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370556, 31.100462, 28.289501>,  <36.160378, 30.392811, 27.917248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370556, 31.100462, 28.289501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.984898, 31.055447, 28.193365>,  <35.753502, 31.028439, 28.135683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.984898, 31.055447, 28.193365>,  <36.370556, 31.100462, 28.289501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984898, 31.055447, 28.193365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247305, 0.052468, 0.967516,
		-0.096272, 0.992261, -0.078417,
		-0.964143, -0.112537, -0.240340,
		35.695656, 31.021685, 28.121264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005238, 31.565275, 28.821888>,  <36.370556, 31.100462, 28.289501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005238, 31.565275, 28.821888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.684834, 31.377874, 28.672813>,  <35.492592, 31.265434, 28.583368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.684834, 31.377874, 28.672813>,  <36.005238, 31.565275, 28.821888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684834, 31.377874, 28.672813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432889, 0.023268, 0.901147,
		-0.413517, 0.883156, -0.221447,
		-0.801006, -0.468501, -0.372687,
		35.444530, 31.237324, 28.561007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376511, 31.953480, 29.044445>,  <36.005238, 31.565275, 28.821888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376511, 31.953480, 29.044445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.232639, 31.594383, 28.942705>,  <35.146317, 31.378925, 28.881660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.232639, 31.594383, 28.942705>,  <35.376511, 31.953480, 29.044445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232639, 31.594383, 28.942705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581269, 0.002339, 0.813708,
		-0.729905, 0.440516, -0.522670,
		-0.359674, -0.897741, -0.254351,
		35.124737, 31.325060, 28.866400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629387, 32.021957, 29.007181>,  <35.376511, 31.953480, 29.044445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629387, 32.021957, 29.007181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.715996, 31.635216, 29.061298>,  <34.767960, 31.403170, 29.093769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.715996, 31.635216, 29.061298>,  <34.629387, 32.021957, 29.007181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715996, 31.635216, 29.061298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522201, 0.002391, 0.852819,
		-0.824879, -0.255302, -0.504377,
		0.216521, -0.966858, 0.135291,
		34.780952, 31.345158, 29.101885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094242, 31.741957, 29.339611>,  <34.629387, 32.021957, 29.007181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094242, 31.741957, 29.339611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.328640, 31.423815, 29.401602>,  <34.469280, 31.232929, 29.438797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.328640, 31.423815, 29.401602>,  <34.094242, 31.741957, 29.339611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328640, 31.423815, 29.401602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468925, -0.176878, 0.865346,
		-0.660844, -0.579764, -0.476612,
		0.585999, -0.795353, 0.154977,
		34.504440, 31.185209, 29.448095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627666, 31.156296, 29.590830>,  <34.094242, 31.741957, 29.339611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627666, 31.156296, 29.590830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.995640, 31.036194, 29.691685>,  <34.216423, 30.964132, 29.752197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.995640, 31.036194, 29.691685>,  <33.627666, 31.156296, 29.590830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995640, 31.036194, 29.691685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351008, -0.344148, 0.870836,
		-0.174701, -0.889611, -0.421985,
		0.919931, -0.300256, 0.252138,
		34.271618, 30.946117, 29.767326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663761, 30.547470, 29.993248>,  <33.627666, 31.156296, 29.590830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663761, 30.547470, 29.993248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.008835, 30.702913, 30.122713>,  <34.215878, 30.796179, 30.200392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.008835, 30.702913, 30.122713>,  <33.663761, 30.547470, 29.993248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008835, 30.702913, 30.122713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245014, -0.238718, 0.939671,
		0.442428, -0.889942, -0.110724,
		0.862685, 0.388608, 0.323664,
		34.267639, 30.819496, 30.219812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939610, 30.084156, 30.490038>,  <33.663761, 30.547470, 29.993248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939610, 30.084156, 30.490038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.125786, 30.430504, 30.563404>,  <34.237492, 30.638311, 30.607424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.125786, 30.430504, 30.563404>,  <33.939610, 30.084156, 30.490038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125786, 30.430504, 30.563404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091578, -0.159005, 0.983021,
		0.880331, -0.474331, 0.005288,
		0.465436, 0.865868, 0.183415,
		34.265415, 30.690264, 30.618429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464882, 29.970106, 30.925413>,  <33.939610, 30.084156, 30.490038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464882, 29.970106, 30.925413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.357677, 30.352398, 30.973997>,  <34.293354, 30.581772, 31.003147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.357677, 30.352398, 30.973997>,  <34.464882, 29.970106, 30.925413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357677, 30.352398, 30.973997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159462, -0.168342, 0.972745,
		0.950126, 0.241343, 0.197520,
		-0.268016, 0.955727, 0.121461,
		34.277271, 30.639116, 31.010435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738705, 30.223568, 31.585009>,  <34.464882, 29.970106, 30.925413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738705, 30.223568, 31.585009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.420639, 30.453403, 31.507479>,  <34.229801, 30.591305, 31.460960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.420639, 30.453403, 31.507479>,  <34.738705, 30.223568, 31.585009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420639, 30.453403, 31.507479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261825, -0.037015, 0.964405,
		0.546961, 0.817606, 0.179874,
		-0.795161, 0.574588, -0.193824,
		34.182091, 30.625780, 31.449331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578655, 30.474073, 31.421917>,  <34.738705, 30.223568, 31.585009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578655, 30.474073, 31.421917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.879463, 30.289082, 31.609779>,  <36.059948, 30.178087, 31.722496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.879463, 30.289082, 31.609779>,  <35.578655, 30.474073, 31.421917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879463, 30.289082, 31.609779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597129, 0.176297, -0.782532,
		0.279105, 0.868927, 0.408738,
		0.752023, -0.462478, 0.469656,
		36.105068, 30.150339, 31.750675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182426, 30.834553, 31.273005>,  <35.578655, 30.474073, 31.421917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182426, 30.834553, 31.273005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.335129, 30.473637, 31.353146>,  <36.426750, 30.257088, 31.401230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.335129, 30.473637, 31.353146>,  <36.182426, 30.834553, 31.273005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335129, 30.473637, 31.353146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489581, 0.013545, -0.871853,
		0.783949, 0.430921, 0.446914,
		0.381753, -0.902288, 0.200351,
		36.449654, 30.202950, 31.413252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966179, 30.791584, 31.196012>,  <36.182426, 30.834553, 31.273005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966179, 30.791584, 31.196012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.885872, 30.403416, 31.142378>,  <36.837688, 30.170515, 31.110197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.885872, 30.403416, 31.142378>,  <36.966179, 30.791584, 31.196012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885872, 30.403416, 31.142378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567598, -0.003671, -0.823297,
		0.798451, -0.241400, 0.551545,
		-0.200769, -0.970419, -0.134087,
		36.825642, 30.112289, 31.102152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612484, 30.512869, 31.001972>,  <36.966179, 30.791584, 31.196012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612484, 30.512869, 31.001972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.339512, 30.248640, 30.876793>,  <37.175728, 30.090103, 30.801685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.339512, 30.248640, 30.876793>,  <37.612484, 30.512869, 31.001972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339512, 30.248640, 30.876793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488099, -0.093124, -0.867806,
		0.544106, -0.744965, 0.385975,
		-0.682429, -0.660572, -0.312947,
		37.134785, 30.050468, 30.782909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058369, 30.075026, 30.666147>,  <37.612484, 30.512869, 31.001972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058369, 30.075026, 30.666147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.694897, 29.946117, 30.559982>,  <37.476814, 29.868773, 30.496283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.694897, 29.946117, 30.559982>,  <38.058369, 30.075026, 30.666147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694897, 29.946117, 30.559982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319818, -0.128678, -0.938700,
		0.268362, -0.937861, 0.219995,
		-0.908679, -0.322270, -0.265413,
		37.422295, 29.849436, 30.480358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033154, 29.314440, 30.321327>,  <38.058369, 30.075026, 30.666147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033154, 29.314440, 30.321327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.740334, 29.544794, 30.175753>,  <37.564640, 29.683006, 30.088408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.740334, 29.544794, 30.175753>,  <38.033154, 29.314440, 30.321327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740334, 29.544794, 30.175753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337952, -0.156863, -0.927999,
		-0.591511, -0.802339, -0.079790,
		-0.732054, 0.575887, -0.363939,
		37.520718, 29.717560, 30.066570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972244, 28.996286, 29.717493>,  <38.033154, 29.314440, 30.321327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972244, 28.996286, 29.717493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.760815, 29.333488, 29.677589>,  <37.633957, 29.535810, 29.653646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.760815, 29.333488, 29.677589>,  <37.972244, 28.996286, 29.717493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760815, 29.333488, 29.677589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234047, 0.031759, -0.971706,
		-0.815986, -0.536966, -0.214090,
		-0.528572, 0.843006, -0.099760,
		37.602242, 29.586390, 29.647661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504002, 28.870144, 29.151157>,  <37.972244, 28.996286, 29.717493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504002, 28.870144, 29.151157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.530117, 29.266703, 29.196539>,  <37.545788, 29.504637, 29.223768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.530117, 29.266703, 29.196539>,  <37.504002, 28.870144, 29.151157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530117, 29.266703, 29.196539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332043, 0.085633, -0.939369,
		-0.941002, 0.099005, -0.323595,
		0.065292, 0.991395, 0.113455,
		37.549706, 29.564121, 29.230576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017612, 29.234217, 28.580963>,  <37.504002, 28.870144, 29.151157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017612, 29.234217, 28.580963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.309509, 29.482328, 28.696012>,  <37.484650, 29.631195, 28.765041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.309509, 29.482328, 28.696012>,  <37.017612, 29.234217, 28.580963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309509, 29.482328, 28.696012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260805, 0.136336, -0.955716,
		-0.632023, 0.772443, -0.062281,
		0.729745, 0.620278, 0.287624,
		37.528431, 29.668411, 28.782299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925320, 29.859278, 28.094801>,  <37.017612, 29.234217, 28.580963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925320, 29.859278, 28.094801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.298588, 29.854513, 28.238497>,  <37.522549, 29.851654, 28.324715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.298588, 29.854513, 28.238497>,  <36.925320, 29.859278, 28.094801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298588, 29.854513, 28.238497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357749, 0.127479, -0.925076,
		-0.034778, 0.991770, 0.123221,
		0.933170, -0.011909, 0.359238,
		37.578537, 29.850941, 28.346268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233624, 30.305553, 27.731348>,  <36.925320, 29.859278, 28.094801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233624, 30.305553, 27.731348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.552254, 30.125692, 27.892981>,  <37.743431, 30.017776, 27.989960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.552254, 30.125692, 27.892981>,  <37.233624, 30.305553, 27.731348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552254, 30.125692, 27.892981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555619, 0.281127, -0.782468,
		0.238241, 0.847809, 0.473774,
		0.796574, -0.449653, 0.404082,
		37.791225, 29.990797, 28.014206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800449, 30.828447, 27.713814>,  <37.233624, 30.305553, 27.731348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800449, 30.828447, 27.713814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.982643, 30.473406, 27.741205>,  <38.091961, 30.260380, 27.757639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.982643, 30.473406, 27.741205>,  <37.800449, 30.828447, 27.713814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982643, 30.473406, 27.741205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671635, 0.292132, -0.680857,
		0.584327, 0.356113, 0.729209,
		0.455487, -0.887605, 0.068477,
		38.119289, 30.207125, 27.761747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561989, 30.917723, 27.683157>,  <37.800449, 30.828447, 27.713814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561989, 30.917723, 27.683157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.531387, 30.536980, 27.564421>,  <38.513027, 30.308535, 27.493179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.531387, 30.536980, 27.564421>,  <38.561989, 30.917723, 27.683157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531387, 30.536980, 27.564421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509243, 0.218651, -0.832384,
		0.857215, -0.214844, 0.468000,
		-0.076504, -0.951858, -0.296839,
		38.508434, 30.251423, 27.475368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179783, 30.871002, 27.313824>,  <38.561989, 30.917723, 27.683157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179783, 30.871002, 27.313824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.942997, 30.576042, 27.183708>,  <38.800926, 30.399065, 27.105639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.942997, 30.576042, 27.183708>,  <39.179783, 30.871002, 27.313824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942997, 30.576042, 27.183708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421311, 0.060942, -0.904866,
		0.687073, -0.672700, 0.274599,
		-0.591969, -0.737401, -0.325287,
		38.765408, 30.354822, 27.086123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854839, 30.590239, 27.472679>,  <39.179783, 30.871002, 27.313824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854839, 30.590239, 27.472679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.250023, 30.529619, 27.460205>,  <40.487133, 30.493248, 27.452721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.250023, 30.529619, 27.460205>,  <39.854839, 30.590239, 27.472679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250023, 30.529619, 27.460205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001733, -0.190708, 0.981645,
		-0.154706, -0.969879, -0.188149,
		0.987959, -0.151540, -0.031184,
		40.546410, 30.484156, 27.450850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037376, 29.962919, 27.812349>,  <39.854839, 30.590239, 27.472679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037376, 29.962919, 27.812349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.394276, 30.143505, 27.815763>,  <40.608414, 30.251858, 27.817812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.394276, 30.143505, 27.815763>,  <40.037376, 29.962919, 27.812349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394276, 30.143505, 27.815763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143120, -0.300684, 0.942924,
		0.428265, -0.840100, -0.332898,
		0.892248, 0.451466, 0.008537,
		40.661949, 30.278944, 27.818325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412643, 29.598715, 28.283709>,  <40.037376, 29.962919, 27.812349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412643, 29.598715, 28.283709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.578678, 29.962427, 28.271641>,  <40.678299, 30.180655, 28.264400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.578678, 29.962427, 28.271641>,  <40.412643, 29.598715, 28.283709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578678, 29.962427, 28.271641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156296, -0.038603, 0.986955,
		0.896254, -0.414390, -0.158141,
		0.415090, 0.909280, -0.030169,
		40.703205, 30.235210, 28.262590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065224, 29.508327, 28.576778>,  <40.412643, 29.598715, 28.283709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065224, 29.508327, 28.576778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.970356, 29.892633, 28.634308>,  <40.913437, 30.123217, 28.668825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.970356, 29.892633, 28.634308>,  <41.065224, 29.508327, 28.576778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970356, 29.892633, 28.634308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116166, -0.118938, 0.986083,
		0.964498, 0.250573, -0.083400,
		-0.237166, 0.960764, 0.143824,
		40.899204, 30.180862, 28.677456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468884, 29.677944, 29.121998>,  <41.065224, 29.508327, 28.576778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468884, 29.677944, 29.121998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.195827, 29.968403, 29.089218>,  <41.031994, 30.142679, 29.069550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.195827, 29.968403, 29.089218>,  <41.468884, 29.677944, 29.121998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195827, 29.968403, 29.089218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006201, 0.106382, 0.994306,
		0.730731, 0.679258, -0.068117,
		-0.682637, 0.726148, -0.081949,
		40.991035, 30.186247, 29.064632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.582008, 30.093000, 29.687777>,  <41.468884, 29.677944, 29.121998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.582008, 30.093000, 29.687777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.219727, 30.209082, 29.564175>,  <41.002357, 30.278730, 29.490013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.219727, 30.209082, 29.564175>,  <41.582008, 30.093000, 29.687777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219727, 30.209082, 29.564175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269509, 0.168462, 0.948148,
		0.327209, 0.942021, -0.074365,
		-0.905704, 0.290201, -0.309006,
		40.948017, 30.296143, 29.471474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426079, 30.683092, 30.231804>,  <41.582008, 30.093000, 29.687777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426079, 30.683092, 30.231804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.095604, 30.524759, 30.071438>,  <40.897320, 30.429760, 29.975218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.095604, 30.524759, 30.071438>,  <41.426079, 30.683092, 30.231804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095604, 30.524759, 30.071438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404241, -0.079187, 0.911218,
		-0.392436, 0.914903, -0.094588,
		-0.826186, -0.395831, -0.400917,
		40.847748, 30.406010, 29.951162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891644, 30.996834, 30.550102>,  <41.426079, 30.683092, 30.231804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891644, 30.996834, 30.550102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.710865, 30.664715, 30.419659>,  <40.602398, 30.465443, 30.341393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.710865, 30.664715, 30.419659>,  <40.891644, 30.996834, 30.550102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710865, 30.664715, 30.419659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462387, -0.094577, 0.881620,
		-0.762850, 0.549234, -0.341176,
		-0.451948, -0.830299, -0.326107,
		40.575279, 30.415625, 30.321827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245377, 31.161945, 30.588667>,  <40.891644, 30.996834, 30.550102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245377, 31.161945, 30.588667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.276978, 30.763924, 30.612761>,  <40.295940, 30.525110, 30.627216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.276978, 30.763924, 30.612761>,  <40.245377, 31.161945, 30.588667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276978, 30.763924, 30.612761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591218, 0.001880, 0.806509,
		-0.802633, -0.099330, -0.588145,
		0.079005, -0.995053, 0.060234,
		40.300678, 30.465408, 30.630831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590336, 30.876255, 30.855742>,  <40.245377, 31.161945, 30.588667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590336, 30.876255, 30.855742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.819565, 30.553705, 30.914192>,  <39.957100, 30.360176, 30.949263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.819565, 30.553705, 30.914192>,  <39.590336, 30.876255, 30.855742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819565, 30.553705, 30.914192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487617, -0.192205, 0.851638,
		-0.658652, -0.559302, -0.503349,
		0.573068, -0.806374, 0.146129,
		39.991486, 30.311792, 30.958031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148087, 30.304260, 31.132263>,  <39.590336, 30.876255, 30.855742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148087, 30.304260, 31.132263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.529472, 30.255573, 31.242599>,  <39.758305, 30.226362, 31.308802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.529472, 30.255573, 31.242599>,  <39.148087, 30.304260, 31.132263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529472, 30.255573, 31.242599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295238, -0.191429, 0.936050,
		-0.061129, -0.973930, -0.218456,
		0.953466, -0.121716, 0.275839,
		39.815514, 30.219059, 31.325352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133072, 29.773338, 31.684439>,  <39.148087, 30.304260, 31.132263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133072, 29.773338, 31.684439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.504799, 29.917284, 31.717571>,  <39.727837, 30.003651, 31.737450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.504799, 29.917284, 31.717571>,  <39.133072, 29.773338, 31.684439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504799, 29.917284, 31.717571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056885, -0.082118, 0.994998,
		0.364865, -0.929384, -0.055843,
		0.929321, 0.359863, 0.082830,
		39.783596, 30.025244, 31.742420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509834, 29.307968, 32.010147>,  <39.133072, 29.773338, 31.684439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509834, 29.307968, 32.010147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.697842, 29.655340, 32.073288>,  <39.810646, 29.863764, 32.111172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.697842, 29.655340, 32.073288>,  <39.509834, 29.307968, 32.010147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697842, 29.655340, 32.073288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013939, -0.171509, 0.985084,
		0.882547, -0.465207, -0.068507,
		0.470018, 0.868428, 0.157849,
		39.838848, 29.915869, 32.120644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041813, 29.172228, 32.586731>,  <39.509834, 29.307968, 32.010147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041813, 29.172228, 32.586731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.027767, 29.571884, 32.595551>,  <40.019341, 29.811678, 32.600842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.027767, 29.571884, 32.595551>,  <40.041813, 29.172228, 32.586731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027767, 29.571884, 32.595551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011348, -0.022461, 0.999683,
		0.999319, 0.034856, 0.012127,
		-0.035117, 0.999140, 0.022050,
		40.017231, 29.871626, 32.602165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.450996, 33.447048, 27.378592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.143101, 33.607559, 27.180006>,  <40.958363, 33.703865, 27.060856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.143101, 33.607559, 27.180006>,  <41.450996, 33.447048, 27.378592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143101, 33.607559, 27.180006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413193, -0.279627, -0.866649,
		-0.486589, -0.872231, 0.049436,
		-0.769742, 0.401275, -0.496463,
		40.912178, 33.727943, 27.031067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404613, 32.968430, 26.901302>,  <41.450996, 33.447048, 27.378592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404613, 32.968430, 26.901302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.210793, 33.292130, 26.768446>,  <41.094498, 33.486351, 26.688732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.210793, 33.292130, 26.768446>,  <41.404613, 32.968430, 26.901302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210793, 33.292130, 26.768446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406077, -0.128210, -0.904800,
		-0.774796, -0.573299, -0.266495,
		-0.484554, 0.809253, -0.332140,
		41.065426, 33.534904, 26.668804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041519, 32.747772, 26.393805>,  <41.404613, 32.968430, 26.901302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041519, 32.747772, 26.393805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.109497, 33.138065, 26.338585>,  <41.150284, 33.372242, 26.305452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.109497, 33.138065, 26.338585>,  <41.041519, 32.747772, 26.393805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109497, 33.138065, 26.338585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489321, -0.205151, -0.847631,
		-0.855385, 0.076502, -0.512313,
		0.169947, 0.975736, -0.138049,
		41.160480, 33.430786, 26.297171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901672, 32.918636, 25.702951>,  <41.041519, 32.747772, 26.393805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901672, 32.918636, 25.702951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.126034, 33.228943, 25.818588>,  <41.260651, 33.415127, 25.887970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.126034, 33.228943, 25.818588>,  <40.901672, 32.918636, 25.702951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126034, 33.228943, 25.818588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459511, -0.001262, -0.888171,
		-0.688650, 0.631017, -0.357181,
		0.560902, 0.775768, 0.289090,
		41.294304, 33.461674, 25.905315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832577, 33.458611, 25.200136>,  <40.901672, 32.918636, 25.702951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832577, 33.458611, 25.200136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.182384, 33.538410, 25.376963>,  <41.392269, 33.586288, 25.483059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.182384, 33.538410, 25.376963>,  <40.832577, 33.458611, 25.200136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182384, 33.538410, 25.376963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422487, 0.134260, -0.896370,
		-0.238176, 0.970657, 0.033127,
		0.874515, 0.199498, 0.442068,
		41.444740, 33.598259, 25.509583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125999, 33.902412, 24.814997>,  <40.832577, 33.458611, 25.200136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125999, 33.902412, 24.814997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.466072, 33.810223, 25.004343>,  <41.670116, 33.754910, 25.117950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.466072, 33.810223, 25.004343>,  <41.125999, 33.902412, 24.814997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466072, 33.810223, 25.004343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522227, 0.254984, -0.813795,
		0.066857, 0.939077, 0.337141,
		0.850182, -0.230473, 0.473364,
		41.721127, 33.741081, 25.146353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519135, 34.382774, 24.631071>,  <41.125999, 33.902412, 24.814997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.519135, 34.382774, 24.631071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.796520, 34.130962, 24.771244>,  <41.962952, 33.979874, 24.855349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.796520, 34.130962, 24.771244>,  <41.519135, 34.382774, 24.631071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796520, 34.130962, 24.771244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411369, -0.053360, -0.909906,
		0.591512, 0.775142, 0.221966,
		0.693462, -0.629530, 0.350432,
		42.004559, 33.942104, 24.876373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231815, 34.670910, 24.619184>,  <41.519135, 34.382774, 24.631071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.231815, 34.670910, 24.619184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.268623, 34.272770, 24.607744>,  <42.290707, 34.033886, 24.600880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.268623, 34.272770, 24.607744>,  <42.231815, 34.670910, 24.619184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.268623, 34.272770, 24.607744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476488, 0.069233, -0.876451,
		0.874352, 0.067019, 0.480642,
		0.092015, -0.995347, -0.028601,
		42.296227, 33.974167, 24.599163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.012928, 34.486782, 24.532461>,  <42.231815, 34.670910, 24.619184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.012928, 34.486782, 24.532461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.796528, 34.178570, 24.397646>,  <42.666687, 33.993641, 24.316757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.796528, 34.178570, 24.397646>,  <43.012928, 34.486782, 24.532461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.796528, 34.178570, 24.397646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368890, 0.142734, -0.918448,
		0.755803, -0.621211, 0.207023,
		-0.541001, -0.770535, -0.337037,
		42.634228, 33.947411, 24.296535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.536079, 34.122726, 24.119413>,  <43.012928, 34.486782, 24.532461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.536079, 34.122726, 24.119413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.170330, 33.996609, 24.017824>,  <42.950878, 33.920937, 23.956871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.170330, 33.996609, 24.017824>,  <43.536079, 34.122726, 24.119413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.170330, 33.996609, 24.017824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295606, -0.091290, -0.950938,
		0.276644, -0.944592, 0.176678,
		-0.914377, -0.315298, -0.253972,
		42.896015, 33.902020, 23.941633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.601376, 33.511074, 23.741600>,  <43.536079, 34.122726, 24.119413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.601376, 33.511074, 23.741600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.241634, 33.616287, 23.601896>,  <43.025791, 33.679417, 23.518074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.241634, 33.616287, 23.601896>,  <43.601376, 33.511074, 23.741600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.241634, 33.616287, 23.601896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287711, -0.245466, -0.925726,
		-0.329230, -0.933037, 0.145081,
		-0.899350, 0.263036, -0.349260,
		42.971828, 33.695198, 23.497118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.458336, 32.975166, 23.151703>,  <43.601376, 33.511074, 23.741600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.458336, 32.975166, 23.151703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.179375, 33.253460, 23.082903>,  <43.011997, 33.420437, 23.041622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.179375, 33.253460, 23.082903>,  <43.458336, 32.975166, 23.151703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.179375, 33.253460, 23.082903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053867, -0.188431, -0.980608,
		-0.714655, -0.693141, 0.093935,
		-0.697400, 0.695736, -0.172001,
		42.970154, 33.462181, 23.031303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.968250, 32.720119, 22.646896>,  <43.458336, 32.975166, 23.151703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.968250, 32.720119, 22.646896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.934734, 33.116795, 22.607857>,  <42.914623, 33.354801, 22.584433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.934734, 33.116795, 22.607857>,  <42.968250, 32.720119, 22.646896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934734, 33.116795, 22.607857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033648, -0.095072, -0.994901,
		-0.995915, -0.086649, -0.025402,
		-0.083792, 0.991692, -0.097599,
		42.909595, 33.414303, 22.578577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.664207, 32.756180, 21.922058>,  <42.968250, 32.720119, 22.646896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.664207, 32.756180, 21.922058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.788975, 33.110035, 22.060698>,  <42.863834, 33.322346, 22.143881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.788975, 33.110035, 22.060698>,  <42.664207, 32.756180, 21.922058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788975, 33.110035, 22.060698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433281, 0.192215, -0.880523,
		-0.845563, 0.424822, -0.323341,
		0.311914, 0.884636, 0.346597,
		42.882549, 33.375427, 22.164677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.877441, 32.096123, 22.302460>,  <42.664207, 32.756180, 21.922058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.877441, 32.096123, 22.302460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.684669, 31.771591, 22.170103>,  <42.569004, 31.576872, 22.090689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.684669, 31.771591, 22.170103>,  <42.877441, 32.096123, 22.302460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.684669, 31.771591, 22.170103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396975, -0.134485, 0.907924,
		-0.781123, 0.568913, -0.257264,
		-0.481932, -0.811327, -0.330893,
		42.540089, 31.528193, 22.070835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224651, 32.200680, 22.294071>,  <42.877441, 32.096123, 22.302460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.224651, 32.200680, 22.294071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.227959, 31.800962, 22.308752>,  <42.229942, 31.561132, 22.317560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.227959, 31.800962, 22.308752>,  <42.224651, 32.200680, 22.294071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.227959, 31.800962, 22.308752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524321, 0.026919, 0.851095,
		-0.851481, -0.026281, -0.523727,
		0.008269, -0.999292, 0.036701,
		42.230438, 31.501175, 22.319763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669605, 31.968040, 22.676004>,  <42.224651, 32.200680, 22.294071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669605, 31.968040, 22.676004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.861439, 31.617382, 22.691452>,  <41.976540, 31.406986, 22.700720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.861439, 31.617382, 22.691452>,  <41.669605, 31.968040, 22.676004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.861439, 31.617382, 22.691452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476970, -0.223487, 0.850031,
		-0.736548, -0.426077, -0.525315,
		0.479579, -0.876648, 0.038617,
		42.005314, 31.354387, 22.703037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183628, 31.505049, 22.815216>,  <41.669605, 31.968040, 22.676004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183628, 31.505049, 22.815216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.531059, 31.340525, 22.925774>,  <41.739517, 31.241810, 22.992107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.531059, 31.340525, 22.925774>,  <41.183628, 31.505049, 22.815216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.531059, 31.340525, 22.925774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423788, -0.327436, 0.844505,
		-0.256850, -0.850654, -0.458712,
		0.868581, -0.411307, 0.276395,
		41.791634, 31.217131, 23.008692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996464, 30.859394, 23.124922>,  <41.183628, 31.505049, 22.815216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996464, 30.859394, 23.124922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.372616, 30.869953, 23.260561>,  <41.598309, 30.876287, 23.341944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.372616, 30.869953, 23.260561>,  <40.996464, 30.859394, 23.124922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372616, 30.869953, 23.260561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309494, -0.347055, 0.885306,
		0.141054, -0.937473, -0.318195,
		0.940381, 0.026397, 0.339096,
		41.654732, 30.877872, 23.362289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219265, 30.138988, 23.447409>,  <40.996464, 30.859394, 23.124922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219265, 30.138988, 23.447409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.451889, 30.417461, 23.615747>,  <41.591465, 30.584545, 23.716751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.451889, 30.417461, 23.615747>,  <41.219265, 30.138988, 23.447409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451889, 30.417461, 23.615747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303841, -0.294002, 0.906225,
		0.754628, -0.654898, 0.040548,
		0.581564, 0.696183, 0.420847,
		41.626358, 30.626316, 23.742002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452087, 29.802679, 24.041771>,  <41.219265, 30.138988, 23.447409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.452087, 29.802679, 24.041771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.514488, 30.190975, 24.114798>,  <41.551929, 30.423952, 24.158613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.514488, 30.190975, 24.114798>,  <41.452087, 29.802679, 24.041771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514488, 30.190975, 24.114798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125427, -0.163863, 0.978477,
		0.979761, -0.175543, 0.096193,
		0.156002, 0.970739, 0.182565,
		41.561291, 30.482197, 24.169567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993614, 29.846609, 24.631893>,  <41.452087, 29.802679, 24.041771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.993614, 29.846609, 24.631893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.778698, 30.183474, 24.613657>,  <41.649746, 30.385593, 24.602716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.778698, 30.183474, 24.613657>,  <41.993614, 29.846609, 24.631893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778698, 30.183474, 24.613657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131244, -0.030093, 0.990893,
		0.833122, 0.538383, 0.126697,
		-0.537293, 0.842163, -0.045588,
		41.617512, 30.436123, 24.599981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074112, 29.994560, 25.221918>,  <41.993614, 29.846609, 24.631893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074112, 29.994560, 25.221918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.779343, 30.251928, 25.139017>,  <41.602482, 30.406349, 25.089275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.779343, 30.251928, 25.139017>,  <42.074112, 29.994560, 25.221918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.779343, 30.251928, 25.139017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202093, 0.082872, 0.975854,
		0.645057, 0.761016, 0.068960,
		-0.736925, 0.643418, -0.207253,
		41.558266, 30.444954, 25.076841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157967, 30.681326, 25.685583>,  <42.074112, 29.994560, 25.221918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.157967, 30.681326, 25.685583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.776901, 30.652830, 25.567358>,  <41.548264, 30.635733, 25.496424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.776901, 30.652830, 25.567358>,  <42.157967, 30.681326, 25.685583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.776901, 30.652830, 25.567358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297151, 0.012620, 0.954747,
		-0.064285, 0.997379, -0.033191,
		-0.952664, -0.071239, -0.295561,
		41.491100, 30.631458, 25.478689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784580, 31.175119, 26.034838>,  <42.157967, 30.681326, 25.685583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784580, 31.175119, 26.034838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.491928, 30.923733, 25.929201>,  <41.316338, 30.772900, 25.865820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.491928, 30.923733, 25.929201>,  <41.784580, 31.175119, 26.034838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491928, 30.923733, 25.929201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383467, 0.059117, 0.921661,
		-0.563621, 0.775586, -0.284249,
		-0.731631, -0.628468, -0.264092,
		41.272438, 30.735193, 25.849974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223434, 31.398020, 26.283594>,  <41.784580, 31.175119, 26.034838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223434, 31.398020, 26.283594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.130978, 31.010767, 26.245035>,  <41.075504, 30.778416, 26.221899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.130978, 31.010767, 26.245035>,  <41.223434, 31.398020, 26.283594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130978, 31.010767, 26.245035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148374, -0.062846, 0.986932,
		-0.961540, 0.242424, -0.129119,
		-0.231141, -0.968133, -0.096399,
		41.061634, 30.720327, 26.216116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698750, 31.353165, 26.649828>,  <41.223434, 31.398020, 26.283594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698750, 31.353165, 26.649828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.811455, 30.970369, 26.622181>,  <40.879078, 30.740692, 26.605593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.811455, 30.970369, 26.622181>,  <40.698750, 31.353165, 26.649828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811455, 30.970369, 26.622181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127823, -0.108834, 0.985807,
		-0.950931, -0.268932, -0.152991,
		0.281766, -0.956990, -0.069118,
		40.895985, 30.683271, 26.601446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160652, 31.025808, 26.975035>,  <40.698750, 31.353165, 26.649828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160652, 31.025808, 26.975035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.464542, 30.765835, 26.983086>,  <40.646877, 30.609850, 26.987915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.464542, 30.765835, 26.983086>,  <40.160652, 31.025808, 26.975035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464542, 30.765835, 26.983086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001225, 0.029520, 0.999563,
		-0.650245, -0.759417, 0.021631,
		0.759724, -0.649934, 0.020126,
		40.692459, 30.570854, 26.989124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565174, 30.422758, 26.824844>,  <40.160652, 31.025808, 26.975035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565174, 30.422758, 26.824844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.187435, 30.323277, 26.738718>,  <38.960793, 30.263588, 26.687042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.187435, 30.323277, 26.738718>,  <39.565174, 30.422758, 26.824844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187435, 30.323277, 26.738718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159803, 0.225297, -0.961096,
		0.287541, -0.942012, -0.173013,
		-0.944343, -0.248706, -0.215318,
		38.904133, 30.248667, 26.674122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732861, 30.019226, 26.163849>,  <39.565174, 30.422758, 26.824844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732861, 30.019226, 26.163849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.359028, 30.161459, 26.168274>,  <39.134727, 30.246798, 26.170929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.359028, 30.161459, 26.168274>,  <39.732861, 30.019226, 26.163849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359028, 30.161459, 26.168274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004460, 0.019387, -0.999802,
		-0.355725, -0.934444, -0.016533,
		-0.934580, 0.355581, 0.011064,
		39.078655, 30.268133, 26.171593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340443, 29.628649, 25.638498>,  <39.732861, 30.019226, 26.163849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340443, 29.628649, 25.638498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.120327, 29.956242, 25.703552>,  <38.988258, 30.152798, 25.742584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.120327, 29.956242, 25.703552>,  <39.340443, 29.628649, 25.638498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120327, 29.956242, 25.703552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216158, 0.048411, -0.975158,
		-0.806511, -0.571772, 0.150389,
		-0.550288, 0.818983, 0.162637,
		38.955242, 30.201937, 25.752344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786423, 29.515415, 25.264481>,  <39.340443, 29.628649, 25.638498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786423, 29.515415, 25.264481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.786716, 29.910522, 25.326851>,  <38.786892, 30.147587, 25.364273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.786716, 29.910522, 25.326851>,  <38.786423, 29.515415, 25.264481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786716, 29.910522, 25.326851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040585, 0.155826, -0.986950,
		-0.999176, -0.005601, 0.040203,
		0.000736, 0.987768, 0.155925,
		38.786938, 30.206854, 25.373629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352406, 29.728985, 24.786436>,  <38.786423, 29.515415, 25.264481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352406, 29.728985, 24.786436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.538883, 30.064558, 24.898762>,  <38.650768, 30.265902, 24.966158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.538883, 30.064558, 24.898762>,  <38.352406, 29.728985, 24.786436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538883, 30.064558, 24.898762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024606, 0.304999, -0.952035,
		-0.884342, 0.450740, 0.121545,
		0.466191, 0.838933, 0.280815,
		38.678741, 30.316238, 24.983006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971180, 30.179768, 24.525448>,  <38.352406, 29.728985, 24.786436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971180, 30.179768, 24.525448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.332787, 30.341423, 24.581209>,  <38.549751, 30.438417, 24.614666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.332787, 30.341423, 24.581209>,  <37.971180, 30.179768, 24.525448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332787, 30.341423, 24.581209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021798, 0.282080, -0.959143,
		-0.426950, 0.870116, 0.246194,
		0.904012, 0.404140, 0.139401,
		38.603989, 30.462666, 24.623030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011230, 30.837759, 24.025043>,  <37.971180, 30.179768, 24.525448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011230, 30.837759, 24.025043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.394402, 30.806053, 24.135382>,  <38.624306, 30.787029, 24.201586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.394402, 30.806053, 24.135382>,  <38.011230, 30.837759, 24.025043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394402, 30.806053, 24.135382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286685, 0.218534, -0.932767,
		0.013654, 0.972605, 0.232064,
		0.957927, -0.079265, 0.275848,
		38.681778, 30.782274, 24.218136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798298, 31.489349, 24.286209>,  <38.011230, 30.837759, 24.025043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798298, 31.489349, 24.286209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.469913, 31.690960, 24.178888>,  <37.272884, 31.811926, 24.114496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.469913, 31.690960, 24.178888>,  <37.798298, 31.489349, 24.286209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469913, 31.690960, 24.178888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515382, -0.451839, 0.728164,
		0.245783, 0.736070, 0.630707,
		-0.820958, 0.504025, -0.268303,
		37.223625, 31.842167, 24.098398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577728, 31.798059, 24.867838>,  <37.798298, 31.489349, 24.286209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577728, 31.798059, 24.867838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.248005, 31.768681, 24.643293>,  <37.050171, 31.751053, 24.508566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.248005, 31.768681, 24.643293>,  <37.577728, 31.798059, 24.867838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248005, 31.768681, 24.643293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515410, -0.312916, 0.797770,
		-0.234255, 0.946936, 0.220082,
		-0.824304, -0.073449, -0.561362,
		37.000713, 31.746647, 24.474884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110363, 32.280148, 25.184797>,  <37.577728, 31.798059, 24.867838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110363, 32.280148, 25.184797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.896790, 32.010723, 24.980356>,  <36.768646, 31.849068, 24.857691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.896790, 32.010723, 24.980356>,  <37.110363, 32.280148, 25.184797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896790, 32.010723, 24.980356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609729, -0.112060, 0.784649,
		-0.585784, 0.730587, -0.350857,
		-0.533937, -0.673562, -0.511103,
		36.736610, 31.808655, 24.827026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462727, 32.379238, 25.384670>,  <37.110363, 32.280148, 25.184797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462727, 32.379238, 25.384670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.446270, 32.015713, 25.218603>,  <36.436398, 31.797598, 25.118963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.446270, 32.015713, 25.218603>,  <36.462727, 32.379238, 25.384670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446270, 32.015713, 25.218603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643277, -0.293853, 0.706997,
		-0.764527, 0.296156, -0.572529,
		-0.041142, -0.908813, -0.415169,
		36.433926, 31.743069, 25.094053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754082, 32.283344, 25.299288>,  <36.462727, 32.379238, 25.384670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754082, 32.283344, 25.299288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.932743, 31.926401, 25.325193>,  <36.039940, 31.712234, 25.340736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.932743, 31.926401, 25.325193>,  <35.754082, 32.283344, 25.299288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932743, 31.926401, 25.325193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541118, -0.211782, 0.813843,
		-0.712526, -0.398549, -0.577465,
		0.446653, -0.892361, 0.064762,
		36.066738, 31.658693, 25.344622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222897, 31.817104, 25.588230>,  <35.754082, 32.283344, 25.299288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222897, 31.817104, 25.588230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.552883, 31.593359, 25.620579>,  <35.750877, 31.459112, 25.639988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.552883, 31.593359, 25.620579>,  <35.222897, 31.817104, 25.588230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552883, 31.593359, 25.620579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256456, -0.242979, 0.935517,
		-0.503643, -0.792512, -0.343902,
		0.824969, -0.559362, 0.080870,
		35.800373, 31.425550, 25.644840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002064, 31.185163, 25.764242>,  <35.222897, 31.817104, 25.588230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002064, 31.185163, 25.764242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.385014, 31.170168, 25.878805>,  <35.614784, 31.161171, 25.947542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.385014, 31.170168, 25.878805>,  <35.002064, 31.185163, 25.764242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385014, 31.170168, 25.878805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288740, -0.151570, 0.945334,
		0.007973, -0.987735, -0.155934,
		0.957374, -0.037488, 0.286408,
		35.672226, 31.158922, 25.964727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.584633, 36.463127, 22.793463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.753635, 36.108768, 22.870073>,  <40.855038, 35.896152, 22.916039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.753635, 36.108768, 22.870073>,  <40.584633, 36.463127, 22.793463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753635, 36.108768, 22.870073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694876, -0.180933, 0.695996,
		-0.581926, -0.427147, -0.692032,
		0.422504, -0.885894, 0.191524,
		40.880386, 35.842999, 22.927530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143105, 35.874126, 22.609999>,  <40.584633, 36.463127, 22.793463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143105, 35.874126, 22.609999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.399147, 35.755360, 22.893436>,  <40.552773, 35.684101, 23.063499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.399147, 35.755360, 22.893436>,  <40.143105, 35.874126, 22.609999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399147, 35.755360, 22.893436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767368, -0.201952, 0.608574,
		-0.037591, -0.933305, -0.357112,
		0.640104, -0.296913, 0.708597,
		40.591179, 35.666286, 23.106016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801682, 35.280140, 22.943155>,  <40.143105, 35.874126, 22.609999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801682, 35.280140, 22.943155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.078823, 35.433064, 23.187710>,  <40.245110, 35.524818, 23.334442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.078823, 35.433064, 23.187710>,  <39.801682, 35.280140, 22.943155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078823, 35.433064, 23.187710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565239, -0.238501, 0.789698,
		0.447725, -0.892724, 0.050850,
		0.692855, 0.382309, 0.611385,
		40.286678, 35.547756, 23.371126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824516, 34.875957, 23.564230>,  <39.801682, 35.280140, 22.943155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824516, 34.875957, 23.564230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.013309, 35.203129, 23.695824>,  <40.126587, 35.399429, 23.774780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.013309, 35.203129, 23.695824>,  <39.824516, 34.875957, 23.564230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013309, 35.203129, 23.695824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371775, -0.153701, 0.915511,
		0.799384, -0.554413, 0.231540,
		0.471983, 0.817926, 0.328983,
		40.154903, 35.448505, 23.794519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314087, 34.690140, 24.150513>,  <39.824516, 34.875957, 23.564230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314087, 34.690140, 24.150513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.194176, 35.070560, 24.180559>,  <40.122231, 35.298813, 24.198587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.194176, 35.070560, 24.180559>,  <40.314087, 34.690140, 24.150513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194176, 35.070560, 24.180559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258174, -0.156674, 0.953310,
		0.918411, 0.266389, 0.292503,
		-0.299779, 0.951047, 0.075116,
		40.104240, 35.355873, 24.203094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226559, 34.745884, 24.825163>,  <40.314087, 34.690140, 24.150513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226559, 34.745884, 24.825163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.067711, 35.094883, 24.711287>,  <39.972401, 35.304283, 24.642962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.067711, 35.094883, 24.711287>,  <40.226559, 34.745884, 24.825163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067711, 35.094883, 24.711287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457960, 0.080434, 0.885327,
		0.795340, 0.481960, 0.367625,
		-0.397123, 0.872493, -0.284691,
		39.948574, 35.356632, 24.625879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347828, 35.195435, 25.305445>,  <40.226559, 34.745884, 24.825163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347828, 35.195435, 25.305445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.035961, 35.361320, 25.117769>,  <39.848843, 35.460850, 25.005163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.035961, 35.361320, 25.117769>,  <40.347828, 35.195435, 25.305445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035961, 35.361320, 25.117769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475765, 0.094869, 0.874441,
		0.407153, 0.904994, 0.123340,
		-0.779662, 0.414712, -0.469191,
		39.802063, 35.485733, 24.977013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136829, 35.696388, 25.795755>,  <40.347828, 35.195435, 25.305445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136829, 35.696388, 25.795755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.823753, 35.660324, 25.549417>,  <39.635906, 35.638687, 25.401615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.823753, 35.660324, 25.549417>,  <40.136829, 35.696388, 25.795755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823753, 35.660324, 25.549417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601083, 0.366282, 0.710307,
		0.161533, 0.926125, -0.340879,
		-0.782691, -0.090158, -0.615845,
		39.588947, 35.633278, 25.364664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761871, 36.346004, 25.724905>,  <40.136829, 35.696388, 25.795755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761871, 36.346004, 25.724905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.500015, 36.053467, 25.648411>,  <39.342899, 35.877945, 25.602514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.500015, 36.053467, 25.648411>,  <39.761871, 36.346004, 25.724905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500015, 36.053467, 25.648411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606413, 0.357033, 0.710486,
		-0.451336, 0.581083, -0.677229,
		-0.654644, -0.731348, -0.191235,
		39.303623, 35.834061, 25.591040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144119, 36.696609, 25.771683>,  <39.761871, 36.346004, 25.724905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144119, 36.696609, 25.771683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.023556, 36.315449, 25.785156>,  <38.951218, 36.086754, 25.793240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.023556, 36.315449, 25.785156>,  <39.144119, 36.696609, 25.771683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023556, 36.315449, 25.785156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564384, 0.206771, 0.799197,
		-0.768519, 0.221877, -0.600124,
		-0.301412, -0.952899, 0.033684,
		38.933132, 36.029579, 25.795261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462666, 36.690578, 25.775904>,  <39.144119, 36.696609, 25.771683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462666, 36.690578, 25.775904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.549892, 36.323967, 25.910023>,  <38.602226, 36.104000, 25.990494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.549892, 36.323967, 25.910023>,  <38.462666, 36.690578, 25.775904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549892, 36.323967, 25.910023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621518, 0.134466, 0.771773,
		-0.752438, -0.376689, -0.540317,
		0.218064, -0.916528, 0.335297,
		38.615311, 36.049007, 26.010612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716652, 36.402454, 25.999159>,  <38.462666, 36.690578, 25.775904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716652, 36.402454, 25.999159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.998947, 36.212570, 26.209522>,  <38.168324, 36.098640, 26.335741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.998947, 36.212570, 26.209522>,  <37.716652, 36.402454, 25.999159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998947, 36.212570, 26.209522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527776, 0.142941, 0.837270,
		-0.472632, -0.868459, -0.149659,
		0.705742, -0.474707, 0.525910,
		38.210670, 36.070160, 26.367296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031689, 36.205795, 25.808973>,  <37.716652, 36.402454, 25.999159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031689, 36.205795, 25.808973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.647858, 36.204300, 25.696404>,  <36.417561, 36.203403, 25.628862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.647858, 36.204300, 25.696404>,  <37.031689, 36.205795, 25.808973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647858, 36.204300, 25.696404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270729, -0.285598, -0.919315,
		-0.076937, -0.958342, 0.275066,
		-0.959576, -0.003739, -0.281424,
		36.359985, 36.203178, 25.611977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903130, 35.581779, 25.470976>,  <37.031689, 36.205795, 25.808973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903130, 35.581779, 25.470976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.616863, 35.827942, 25.338852>,  <36.445103, 35.975639, 25.259577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.616863, 35.827942, 25.338852>,  <36.903130, 35.581779, 25.470976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616863, 35.827942, 25.338852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096482, -0.381281, -0.919411,
		-0.691752, -0.689856, 0.213492,
		-0.715661, 0.615406, -0.330310,
		36.402164, 36.012562, 25.239759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378136, 35.202099, 25.087290>,  <36.903130, 35.581779, 25.470976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378136, 35.202099, 25.087290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.338593, 35.580803, 24.964735>,  <36.314869, 35.808025, 24.891203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.338593, 35.580803, 24.964735>,  <36.378136, 35.202099, 25.087290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338593, 35.580803, 24.964735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104901, -0.296263, -0.949328,
		-0.989557, -0.125986, -0.070029,
		-0.098855, 0.946761, -0.306385,
		36.308937, 35.864830, 24.872820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973495, 35.188728, 24.532724>,  <36.378136, 35.202099, 25.087290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973495, 35.188728, 24.532724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.151535, 35.540985, 24.467781>,  <36.258358, 35.752338, 24.428816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.151535, 35.540985, 24.467781>,  <35.973495, 35.188728, 24.532724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151535, 35.540985, 24.467781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157389, -0.255418, -0.953934,
		-0.881541, 0.399044, -0.252290,
		0.445101, 0.880639, -0.162356,
		36.285065, 35.805176, 24.419075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839870, 35.225464, 23.883892>,  <35.973495, 35.188728, 24.532724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839870, 35.225464, 23.883892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.126785, 35.499767, 23.933252>,  <36.298935, 35.664349, 23.962868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.126785, 35.499767, 23.933252>,  <35.839870, 35.225464, 23.883892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126785, 35.499767, 23.933252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284926, -0.127061, -0.950091,
		-0.635857, 0.716649, -0.286531,
		0.717289, 0.685762, 0.123400,
		36.341972, 35.705498, 23.970272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723557, 35.745319, 23.336342>,  <35.839870, 35.225464, 23.883892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723557, 35.745319, 23.336342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.105640, 35.806328, 23.437775>,  <36.334892, 35.842934, 23.498634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.105640, 35.806328, 23.437775>,  <35.723557, 35.745319, 23.336342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105640, 35.806328, 23.437775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262063, -0.038019, -0.964302,
		-0.137436, 0.987569, -0.076287,
		0.955214, 0.152522, 0.253580,
		36.392204, 35.852085, 23.513849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965988, 36.239590, 22.796349>,  <35.723557, 35.745319, 23.336342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965988, 36.239590, 22.796349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.296818, 36.071182, 22.945312>,  <36.495316, 35.970139, 23.034691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.296818, 36.071182, 22.945312>,  <35.965988, 36.239590, 22.796349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296818, 36.071182, 22.945312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335816, -0.161192, -0.928033,
		0.450751, 0.892613, 0.008068,
		0.827074, -0.421021, 0.372411,
		36.544941, 35.944878, 23.057035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582180, 36.636467, 22.516459>,  <35.965988, 36.239590, 22.796349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582180, 36.636467, 22.516459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.704002, 36.275108, 22.637203>,  <36.777096, 36.058292, 22.709650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.704002, 36.275108, 22.637203>,  <36.582180, 36.636467, 22.516459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704002, 36.275108, 22.637203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374575, -0.177791, -0.909991,
		0.875752, 0.390211, 0.284243,
		0.304553, -0.903397, 0.301864,
		36.795368, 36.004089, 22.727762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200222, 36.526997, 22.038574>,  <36.582180, 36.636467, 22.516459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200222, 36.526997, 22.038574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.134670, 36.162514, 22.189749>,  <37.095337, 35.943825, 22.280455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.134670, 36.162514, 22.189749>,  <37.200222, 36.526997, 22.038574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134670, 36.162514, 22.189749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365097, -0.411939, -0.834872,
		0.916431, 0.001162, 0.400190,
		-0.163883, -0.911211, 0.377938,
		37.085506, 35.889149, 22.303131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789871, 35.954815, 21.876440>,  <37.200222, 36.526997, 22.038574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789871, 35.954815, 21.876440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.515007, 35.686123, 21.987146>,  <37.350090, 35.524910, 22.053570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.515007, 35.686123, 21.987146>,  <37.789871, 35.954815, 21.876440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515007, 35.686123, 21.987146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247473, -0.574586, -0.780133,
		0.683061, -0.467582, 0.561065,
		-0.687157, -0.671727, 0.276764,
		37.308861, 35.484604, 22.070175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154621, 35.239708, 21.788349>,  <37.789871, 35.954815, 21.876440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154621, 35.239708, 21.788349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.755451, 35.217308, 21.775587>,  <37.515949, 35.203869, 21.767929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.755451, 35.217308, 21.775587>,  <38.154621, 35.239708, 21.788349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755451, 35.217308, 21.775587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055393, -0.492166, -0.868737,
		0.032944, -0.868698, 0.494245,
		-0.997921, -0.055997, -0.031906,
		37.456074, 35.200508, 21.766016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987072, 34.544300, 21.486574>,  <38.154621, 35.239708, 21.788349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987072, 34.544300, 21.486574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.655567, 34.760971, 21.430374>,  <37.456665, 34.890976, 21.396654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.655567, 34.760971, 21.430374>,  <37.987072, 34.544300, 21.486574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655567, 34.760971, 21.430374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098843, -0.388817, -0.915997,
		-0.550809, -0.745252, 0.375777,
		-0.828758, 0.541683, -0.140501,
		37.406940, 34.923477, 21.388224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549957, 34.633743, 21.897959>,  <37.987072, 34.544300, 21.486574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549957, 34.633743, 21.897959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.152264, 34.600662, 21.925245>,  <37.913647, 34.580814, 21.941616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.152264, 34.600662, 21.925245>,  <38.549957, 34.633743, 21.897959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152264, 34.600662, 21.925245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107179, -0.780752, 0.615580,
		0.002349, 0.619344, 0.785116,
		-0.994237, -0.082702, 0.068215,
		37.853992, 34.575851, 21.945709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108368, 34.608143, 22.572981>,  <38.549957, 34.633743, 21.897959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108368, 34.608143, 22.572981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.948788, 34.370358, 22.293709>,  <37.853039, 34.227688, 22.126146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.948788, 34.370358, 22.293709>,  <38.108368, 34.608143, 22.572981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948788, 34.370358, 22.293709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044810, -0.747846, 0.662358,
		-0.915877, 0.295532, 0.271715,
		-0.398949, -0.594463, -0.698178,
		37.829102, 34.192020, 22.084255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628273, 34.331326, 22.921946>,  <38.108368, 34.608143, 22.572981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628273, 34.331326, 22.921946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.679741, 34.093018, 22.604832>,  <37.710621, 33.950031, 22.414564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.679741, 34.093018, 22.604832>,  <37.628273, 34.331326, 22.921946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679741, 34.093018, 22.604832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155502, -0.801659, 0.577202,
		-0.979420, 0.049013, -0.195790,
		0.128666, -0.595769, -0.792783,
		37.718342, 33.914288, 22.366997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008404, 33.864128, 22.924280>,  <37.628273, 34.331326, 22.921946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008404, 33.864128, 22.924280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.273849, 33.704243, 22.671347>,  <37.433117, 33.608311, 22.519587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.273849, 33.704243, 22.671347>,  <37.008404, 33.864128, 22.924280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273849, 33.704243, 22.671347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228586, -0.913198, 0.337369,
		-0.712299, -0.079338, -0.697378,
		0.663611, -0.399718, -0.632334,
		37.472931, 33.584328, 22.481646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741619, 33.414307, 22.555689>,  <37.008404, 33.864128, 22.924280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741619, 33.414307, 22.555689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.119926, 33.284763, 22.545504>,  <37.346909, 33.207039, 22.539392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.119926, 33.284763, 22.545504>,  <36.741619, 33.414307, 22.555689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119926, 33.284763, 22.545504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261072, -0.804377, 0.533684,
		-0.193318, -0.498092, -0.845300,
		0.945764, -0.323855, -0.025463,
		37.403656, 33.187607, 22.537865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744114, 32.797462, 22.345976>,  <36.741619, 33.414307, 22.555689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744114, 32.797462, 22.345976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.093410, 32.810089, 22.540478>,  <37.302990, 32.817665, 22.657179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.093410, 32.810089, 22.540478>,  <36.744114, 32.797462, 22.345976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093410, 32.810089, 22.540478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279539, -0.784907, 0.552972,
		0.399124, -0.618808, -0.676591,
		0.873246, 0.031570, 0.486257,
		37.355385, 32.819561, 22.686356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125561, 32.098095, 22.351130>,  <36.744114, 32.797462, 22.345976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125561, 32.098095, 22.351130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.242359, 32.320995, 22.662054>,  <37.312439, 32.454735, 22.848608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.242359, 32.320995, 22.662054>,  <37.125561, 32.098095, 22.351130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242359, 32.320995, 22.662054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233990, -0.746409, 0.622995,
		0.927354, -0.363797, -0.087560,
		0.291999, 0.557248, 0.777310,
		37.329960, 32.488171, 22.895247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351181, 31.560558, 22.847275>,  <37.125561, 32.098095, 22.351130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351181, 31.560558, 22.847275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.334084, 31.879696, 23.087812>,  <37.323826, 32.071178, 23.232136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.334084, 31.879696, 23.087812>,  <37.351181, 31.560558, 22.847275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334084, 31.879696, 23.087812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159869, -0.599600, 0.784169,
		0.986212, -0.062619, 0.153179,
		-0.042742, 0.797846, 0.601344,
		37.321262, 32.119049, 23.268215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749866, 31.380917, 23.417311>,  <37.351181, 31.560558, 22.847275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749866, 31.380917, 23.417311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.505753, 31.671560, 23.543545>,  <37.359283, 31.845947, 23.619286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.505753, 31.671560, 23.543545>,  <37.749866, 31.380917, 23.417311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505753, 31.671560, 23.543545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187132, -0.519328, 0.833834,
		0.769763, 0.449820, 0.452909,
		-0.610284, 0.726609, 0.315584,
		37.322666, 31.889544, 23.638220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335342, 31.448654, 23.820282>,  <37.749866, 31.380917, 23.417311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335342, 31.448654, 23.820282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.615086, 31.163527, 23.841394>,  <38.782932, 30.992449, 23.854061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.615086, 31.163527, 23.841394>,  <38.335342, 31.448654, 23.820282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615086, 31.163527, 23.841394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283128, 0.208462, -0.936153,
		0.656306, 0.669649, 0.347609,
		0.699357, -0.712821, 0.052782,
		38.824894, 30.949680, 23.857229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926682, 31.745285, 23.493448>,  <38.335342, 31.448654, 23.820282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926682, 31.745285, 23.493448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.960548, 31.347517, 23.468290>,  <38.980869, 31.108856, 23.453196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.960548, 31.347517, 23.468290>,  <38.926682, 31.745285, 23.493448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960548, 31.347517, 23.468290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316992, 0.086723, -0.944455,
		0.944641, 0.060030, 0.322567,
		0.084669, -0.994422, -0.062893,
		38.985950, 31.049191, 23.449423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506142, 31.592775, 23.087360>,  <38.926682, 31.745285, 23.493448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506142, 31.592775, 23.087360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.306942, 31.247812, 23.051035>,  <39.187424, 31.040834, 23.029240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.306942, 31.247812, 23.051035>,  <39.506142, 31.592775, 23.087360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306942, 31.247812, 23.051035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303937, -0.075506, -0.949695,
		0.812169, -0.500550, 0.299720,
		-0.498000, -0.862409, -0.090812,
		39.157543, 30.989090, 23.023790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020519, 31.103848, 22.878485>,  <39.506142, 31.592775, 23.087360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020519, 31.103848, 22.878485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.680649, 30.928537, 22.761202>,  <39.476727, 30.823351, 22.690832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.680649, 30.928537, 22.761202>,  <40.020519, 31.103848, 22.878485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680649, 30.928537, 22.761202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393786, -0.157585, -0.905593,
		0.350694, -0.884919, 0.306482,
		-0.849674, -0.438275, -0.293205,
		39.425747, 30.797054, 22.673241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230038, 30.651258, 22.556847>,  <40.020519, 31.103848, 22.878485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230038, 30.651258, 22.556847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.854862, 30.667961, 22.419140>,  <39.629757, 30.677982, 22.336515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.854862, 30.667961, 22.419140>,  <40.230038, 30.651258, 22.556847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854862, 30.667961, 22.419140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340873, -0.071620, -0.937377,
		-0.063782, -0.996558, 0.052948,
		-0.937944, 0.041740, -0.344268,
		39.573479, 30.680489, 22.315859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158646, 29.976864, 22.174229>,  <40.230038, 30.651258, 22.556847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158646, 29.976864, 22.174229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.890091, 30.230785, 22.021252>,  <39.728958, 30.383139, 21.929464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.890091, 30.230785, 22.021252>,  <40.158646, 29.976864, 22.174229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890091, 30.230785, 22.021252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280014, -0.260506, -0.923975,
		-0.686170, -0.727436, -0.002852,
		-0.671389, 0.634802, -0.382443,
		39.688675, 30.421227, 21.906519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039494, 29.687229, 21.561672>,  <40.158646, 29.976864, 22.174229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039494, 29.687229, 21.561672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.907013, 30.062195, 21.518661>,  <39.827526, 30.287174, 21.492855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.907013, 30.062195, 21.518661>,  <40.039494, 29.687229, 21.561672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907013, 30.062195, 21.518661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383258, 0.029519, -0.923170,
		-0.862218, -0.346965, -0.369048,
		-0.331202, 0.937413, -0.107525,
		39.807652, 30.343418, 21.486404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803761, 29.832647, 20.841335>,  <40.039494, 29.687229, 21.561672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803761, 29.832647, 20.841335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.873970, 30.207371, 20.962383>,  <39.916096, 30.432205, 21.035011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.873970, 30.207371, 20.962383>,  <39.803761, 29.832647, 20.841335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873970, 30.207371, 20.962383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481890, 0.186290, -0.856200,
		-0.858472, 0.296111, -0.418741,
		0.175523, 0.936810, 0.302618,
		39.926628, 30.488415, 21.053169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474293, 30.252605, 20.348427>,  <39.803761, 29.832647, 20.841335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474293, 30.252605, 20.348427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.766148, 30.442476, 20.545330>,  <39.941261, 30.556398, 20.663473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.766148, 30.442476, 20.545330>,  <39.474293, 30.252605, 20.348427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766148, 30.442476, 20.545330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498362, 0.123825, -0.858081,
		-0.468264, 0.871407, -0.146213,
		0.729633, 0.474675, 0.492259,
		39.985039, 30.584879, 20.693008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.159458, 31.086496, 36.695805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.552044, 31.148426, 36.650616>,  <35.787594, 31.185583, 36.623505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.552044, 31.148426, 36.650616>,  <35.159458, 31.086496, 36.695805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552044, 31.148426, 36.650616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075799, -0.227810, -0.970751,
		-0.176030, 0.961318, -0.211851,
		0.981462, 0.154823, -0.112969,
		35.846481, 31.194874, 36.616726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113804, 31.445396, 36.141495>,  <35.159458, 31.086496, 36.695805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113804, 31.445396, 36.141495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.488750, 31.307688, 36.162746>,  <35.713718, 31.225063, 36.175499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.488750, 31.307688, 36.162746>,  <35.113804, 31.445396, 36.141495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488750, 31.307688, 36.162746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077726, -0.355387, -0.931482,
		0.339565, 0.869009, -0.359887,
		0.937366, -0.344271, 0.053132,
		35.769958, 31.204407, 36.178684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394661, 31.690348, 35.550159>,  <35.113804, 31.445396, 36.141495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394661, 31.690348, 35.550159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.644146, 31.390179, 35.637653>,  <35.793839, 31.210077, 35.690147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.644146, 31.390179, 35.637653>,  <35.394661, 31.690348, 35.550159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644146, 31.390179, 35.637653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060439, -0.325294, -0.943679,
		0.779312, 0.575367, -0.248246,
		0.623715, -0.750424, 0.218731,
		35.831261, 31.165051, 35.703274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942162, 31.566099, 34.885551>,  <35.394661, 31.690348, 35.550159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942162, 31.566099, 34.885551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.959381, 31.235102, 35.109482>,  <35.969711, 31.036503, 35.243839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.959381, 31.235102, 35.109482>,  <35.942162, 31.566099, 34.885551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959381, 31.235102, 35.109482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155731, -0.547937, -0.821896,
		0.986861, 0.122563, 0.105279,
		0.043048, -0.827492, 0.559824,
		35.972294, 30.986855, 35.277428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531769, 31.271597, 34.748764>,  <35.942162, 31.566099, 34.885551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531769, 31.271597, 34.748764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.277103, 30.992949, 34.881058>,  <36.124306, 30.825760, 34.960434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.277103, 30.992949, 34.881058>,  <36.531769, 31.271597, 34.748764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277103, 30.992949, 34.881058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112685, -0.508320, -0.853764,
		0.762868, -0.506288, 0.402125,
		-0.636659, -0.696622, 0.330730,
		36.086105, 30.783962, 34.980278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956406, 30.597092, 34.751530>,  <36.531769, 31.271597, 34.748764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956406, 30.597092, 34.751530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.564198, 30.532999, 34.706078>,  <36.328873, 30.494543, 34.678806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.564198, 30.532999, 34.706078>,  <36.956406, 30.597092, 34.751530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564198, 30.532999, 34.706078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182707, -0.531467, -0.827140,
		0.072143, -0.831786, 0.550388,
		-0.980517, -0.160232, -0.113632,
		36.270042, 30.484930, 34.671989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837936, 29.950237, 34.405453>,  <36.956406, 30.597092, 34.751530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837936, 29.950237, 34.405453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.467026, 30.098555, 34.384796>,  <36.244480, 30.187544, 34.372402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.467026, 30.098555, 34.384796>,  <36.837936, 29.950237, 34.405453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467026, 30.098555, 34.384796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093328, -0.362551, -0.927279,
		-0.362551, -0.855027, 0.370791,
		0.927279, -0.370791, 0.051645,
		36.188843, 30.209791, 34.369301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530369, 29.410076, 34.088711>,  <36.837936, 29.950237, 34.405453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530369, 29.410076, 34.088711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.305431, 29.731846, 34.012108>,  <36.170467, 29.924908, 33.966145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.305431, 29.731846, 34.012108>,  <36.530369, 29.410076, 34.088711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305431, 29.731846, 34.012108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061107, -0.271388, -0.960528,
		-0.824643, -0.528444, 0.201769,
		-0.562343, 0.804423, -0.191507,
		36.136730, 29.973173, 33.954655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093346, 29.101665, 33.609768>,  <36.530369, 29.410076, 34.088711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093346, 29.101665, 33.609768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.065430, 29.499491, 33.578838>,  <36.048679, 29.738186, 33.560280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.065430, 29.499491, 33.578838>,  <36.093346, 29.101665, 33.609768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065430, 29.499491, 33.578838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109739, -0.084693, -0.990345,
		-0.991507, -0.060629, 0.115053,
		-0.069788, 0.994561, -0.077320,
		36.044495, 29.797859, 33.555641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575798, 29.230494, 33.107155>,  <36.093346, 29.101665, 33.609768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575798, 29.230494, 33.107155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.760338, 29.585348, 33.102337>,  <35.871063, 29.798260, 33.099445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.760338, 29.585348, 33.102337>,  <35.575798, 29.230494, 33.107155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760338, 29.585348, 33.102337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062738, -0.046167, -0.996962,
		-0.884996, 0.459195, -0.076957,
		0.461353, 0.887135, -0.012049,
		35.898743, 29.851488, 33.098721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225674, 29.662352, 32.557228>,  <35.575798, 29.230494, 33.107155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225674, 29.662352, 32.557228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.587971, 29.829775, 32.583885>,  <35.805347, 29.930229, 32.599880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.587971, 29.829775, 32.583885>,  <35.225674, 29.662352, 32.557228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587971, 29.829775, 32.583885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055011, 0.039806, -0.997692,
		-0.420243, 0.907318, 0.013029,
		0.905742, 0.418557, 0.066641,
		35.859692, 29.955341, 32.603878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227203, 30.276213, 32.086727>,  <35.225674, 29.662352, 32.557228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227203, 30.276213, 32.086727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.606037, 30.159628, 32.140514>,  <35.833336, 30.089678, 32.172787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.606037, 30.159628, 32.140514>,  <35.227203, 30.276213, 32.086727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606037, 30.159628, 32.140514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170209, 0.100836, -0.980235,
		0.272143, 0.951253, 0.145109,
		0.947084, -0.291463, 0.134470,
		35.890163, 30.072189, 32.180855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712494, 30.814480, 32.168915>,  <35.227203, 30.276213, 32.086727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712494, 30.814480, 32.168915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.339848, 30.851242, 32.028259>,  <34.116261, 30.873301, 31.943867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.339848, 30.851242, 32.028259>,  <34.712494, 30.814480, 32.168915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339848, 30.851242, 32.028259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338608, 0.132058, 0.931614,
		0.132058, 0.986972, -0.091907,
		-0.931614, 0.091907, -0.351636,
		34.060364, 30.878815, 31.922768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427631, 31.314011, 32.591728>,  <34.712494, 30.814480, 32.168915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427631, 31.314011, 32.591728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.105576, 31.136673, 32.434147>,  <33.912342, 31.030270, 32.339600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.105576, 31.136673, 32.434147>,  <34.427631, 31.314011, 32.591728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105576, 31.136673, 32.434147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515745, 0.195386, 0.834165,
		-0.292850, 0.874797, -0.385966,
		-0.805137, -0.443345, -0.393954,
		33.864033, 31.003670, 32.315960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860241, 31.827965, 32.702175>,  <34.427631, 31.314011, 32.591728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860241, 31.827965, 32.702175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.675510, 31.480659, 32.629692>,  <33.564674, 31.272276, 32.586201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.675510, 31.480659, 32.629692>,  <33.860241, 31.827965, 32.702175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675510, 31.480659, 32.629692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793734, 0.313379, 0.521324,
		-0.395859, 0.384594, -0.833896,
		-0.461824, -0.868263, -0.181211,
		33.536964, 31.220181, 32.575329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155590, 31.877617, 32.351116>,  <33.860241, 31.827965, 32.702175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155590, 31.877617, 32.351116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.153942, 31.533390, 32.554844>,  <33.152954, 31.326855, 32.677082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.153942, 31.533390, 32.554844>,  <33.155590, 31.877617, 32.351116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153942, 31.533390, 32.554844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712925, 0.359688, 0.601966,
		-0.701228, -0.360626, -0.615002,
		-0.004124, -0.860566, 0.509322,
		33.152706, 31.275221, 32.707642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408981, 31.714933, 32.520008>,  <33.155590, 31.877617, 32.351116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408981, 31.714933, 32.520008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.604076, 31.470848, 32.769726>,  <32.721134, 31.324396, 32.919556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.604076, 31.470848, 32.769726>,  <32.408981, 31.714933, 32.520008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604076, 31.470848, 32.769726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766609, 0.042734, 0.640691,
		-0.417638, -0.791083, -0.446952,
		0.487740, -0.610214, 0.624299,
		32.750397, 31.287785, 32.957016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827244, 31.353752, 32.772884>,  <32.408981, 31.714933, 32.520008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827244, 31.353752, 32.772884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.129864, 31.290058, 33.026585>,  <32.311436, 31.251841, 33.178806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.129864, 31.290058, 33.026585>,  <31.827244, 31.353752, 32.772884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129864, 31.290058, 33.026585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641003, 0.011362, 0.767454,
		-0.129415, -0.987175, -0.093477,
		0.756549, -0.159239, 0.634253,
		32.356827, 31.242287, 33.216862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608257, 30.860706, 33.277939>,  <31.827244, 31.353752, 32.772884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608257, 30.860706, 33.277939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.926575, 31.022835, 33.457909>,  <32.117565, 31.120111, 33.565891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.926575, 31.022835, 33.457909>,  <31.608257, 30.860706, 33.277939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926575, 31.022835, 33.457909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534925, 0.122246, 0.836009,
		0.283852, -0.905963, 0.314100,
		0.795790, 0.405322, 0.449923,
		32.165314, 31.144430, 33.592884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593019, 30.554155, 33.889206>,  <31.608257, 30.860706, 33.277939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593019, 30.554155, 33.889206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.825274, 30.876198, 33.937641>,  <31.964626, 31.069424, 33.966702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.825274, 30.876198, 33.937641>,  <31.593019, 30.554155, 33.889206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825274, 30.876198, 33.937641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379790, 0.136282, 0.914979,
		0.720155, -0.577258, 0.384902,
		0.580634, 0.805109, 0.121092,
		31.999464, 31.117731, 33.973969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790527, 30.408689, 34.603737>,  <31.593019, 30.554155, 33.889206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790527, 30.408689, 34.603737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.839525, 30.795420, 34.514080>,  <31.868923, 31.027458, 34.460285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.839525, 30.795420, 34.514080>,  <31.790527, 30.408689, 34.603737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839525, 30.795420, 34.514080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431632, 0.255267, 0.865178,
		0.893694, -0.009232, 0.448582,
		0.122495, 0.966827, -0.224146,
		31.876274, 31.085468, 34.446835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130783, 30.690866, 35.094109>,  <31.790527, 30.408689, 34.603737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130783, 30.690866, 35.094109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.951502, 31.011360, 34.935547>,  <31.843933, 31.203657, 34.840412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.951502, 31.011360, 34.935547>,  <32.130783, 30.690866, 35.094109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951502, 31.011360, 34.935547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274725, 0.298517, 0.914010,
		0.850669, 0.518566, 0.086322,
		-0.448206, 0.801235, -0.396402,
		31.817039, 31.251730, 34.816628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116550, 31.120945, 35.649075>,  <32.130783, 30.690866, 35.094109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116550, 31.120945, 35.649075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.857937, 31.258507, 35.376686>,  <31.702768, 31.341043, 35.213253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.857937, 31.258507, 35.376686>,  <32.116550, 31.120945, 35.649075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857937, 31.258507, 35.376686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462209, 0.533558, 0.708293,
		0.606923, 0.772688, -0.186008,
		-0.646535, 0.343905, -0.680972,
		31.663977, 31.361677, 35.172394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020569, 31.894688, 35.764149>,  <32.116550, 31.120945, 35.649075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020569, 31.894688, 35.764149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.695250, 31.757998, 35.575779>,  <31.500057, 31.675983, 35.462757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.695250, 31.757998, 35.575779>,  <32.020569, 31.894688, 35.764149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695250, 31.757998, 35.575779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581715, 0.460541, 0.670455,
		-0.012231, 0.819223, -0.573344,
		-0.813301, -0.341723, -0.470921,
		31.451260, 31.655481, 35.434502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617290, 32.494488, 35.900749>,  <32.020569, 31.894688, 35.764149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617290, 32.494488, 35.900749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.380827, 32.191235, 35.790642>,  <31.238949, 32.009285, 35.724579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.380827, 32.191235, 35.790642>,  <31.617290, 32.494488, 35.900749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380827, 32.191235, 35.790642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684214, 0.290669, 0.668852,
		-0.427066, 0.583737, -0.690554,
		-0.591157, -0.758131, -0.275266,
		31.203480, 31.963795, 35.708061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.020750, 32.889805, 35.843544>,  <31.617290, 32.494488, 35.900749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.020750, 32.889805, 35.843544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.912056, 32.508919, 35.899315>,  <30.846840, 32.280388, 35.932777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.912056, 32.508919, 35.899315>,  <31.020750, 32.889805, 35.843544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912056, 32.508919, 35.899315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562405, 0.274686, 0.779903,
		-0.780936, 0.133513, -0.610174,
		-0.271734, -0.952219, 0.139424,
		30.830536, 32.223251, 35.941143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394157, 33.048000, 35.147064>,  <31.020750, 32.889805, 35.843544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394157, 33.048000, 35.147064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.440586, 33.432468, 35.247200>,  <31.468443, 33.663151, 35.307281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.440586, 33.432468, 35.247200>,  <31.394157, 33.048000, 35.147064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440586, 33.432468, 35.247200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175465, 0.228240, -0.957663,
		-0.977619, 0.155084, -0.142160,
		0.116071, 0.961174, 0.250343,
		31.475407, 33.720821, 35.322304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236776, 33.362514, 34.603363>,  <31.394157, 33.048000, 35.147064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236776, 33.362514, 34.603363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.454378, 33.638721, 34.794041>,  <31.584940, 33.804447, 34.908447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.454378, 33.638721, 34.794041>,  <31.236776, 33.362514, 34.603363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454378, 33.638721, 34.794041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264696, 0.397881, -0.878423,
		-0.796238, 0.604046, 0.033671,
		0.544005, 0.690520, 0.476697,
		31.617580, 33.845879, 34.937050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028992, 34.114109, 34.468388>,  <31.236776, 33.362514, 34.603363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028992, 34.114109, 34.468388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.420132, 34.095310, 34.549976>,  <31.654816, 34.084030, 34.598930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.420132, 34.095310, 34.549976>,  <31.028992, 34.114109, 34.468388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420132, 34.095310, 34.549976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205390, 0.403288, -0.891725,
		-0.040347, 0.913865, 0.404008,
		0.977848, -0.047001, 0.203970,
		31.713486, 34.081211, 34.611168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247154, 34.731453, 34.322807>,  <31.028992, 34.114109, 34.468388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247154, 34.731453, 34.322807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.580416, 34.512276, 34.292839>,  <31.780373, 34.380768, 34.274857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.580416, 34.512276, 34.292839>,  <31.247154, 34.731453, 34.322807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580416, 34.512276, 34.292839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148335, 0.351911, -0.924205,
		0.532776, 0.758893, 0.374475,
		0.833155, -0.547942, -0.074919,
		31.830362, 34.347893, 34.270363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785706, 35.191360, 34.058548>,  <31.247154, 34.731453, 34.322807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785706, 35.191360, 34.058548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.942335, 34.826946, 34.006889>,  <32.036312, 34.608295, 33.975895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.942335, 34.826946, 34.006889>,  <31.785706, 35.191360, 34.058548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942335, 34.826946, 34.006889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279186, 0.251376, -0.926750,
		0.876769, 0.326835, 0.352781,
		0.391575, -0.911037, -0.129151,
		32.059807, 34.553635, 33.968143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522358, 35.243320, 33.749546>,  <31.785706, 35.191360, 34.058548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522358, 35.243320, 33.749546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.413109, 34.862522, 33.694263>,  <32.347557, 34.634041, 33.661095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.413109, 34.862522, 33.694263>,  <32.522358, 35.243320, 33.749546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413109, 34.862522, 33.694263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434930, 0.005941, -0.900445,
		0.858044, -0.306043, 0.412430,
		-0.273125, -0.951999, -0.138205,
		32.331173, 34.576923, 33.652802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107353, 34.992455, 33.510529>,  <32.522358, 35.243320, 33.749546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107353, 34.992455, 33.510529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.839184, 34.719559, 33.393848>,  <32.678284, 34.555820, 33.323841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.839184, 34.719559, 33.393848>,  <33.107353, 34.992455, 33.510529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839184, 34.719559, 33.393848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360407, 0.044212, -0.931746,
		0.648570, -0.729792, 0.216242,
		-0.670421, -0.682238, -0.291697,
		32.638058, 34.514889, 33.306339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448460, 34.542374, 33.080162>,  <33.107353, 34.992455, 33.510529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448460, 34.542374, 33.080162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.065582, 34.497440, 32.973457>,  <32.835857, 34.470482, 32.909435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.065582, 34.497440, 32.973457>,  <33.448460, 34.542374, 33.080162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065582, 34.497440, 32.973457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270735, -0.021482, -0.962414,
		0.102380, -0.993438, 0.050974,
		-0.957195, -0.112332, -0.266759,
		32.778423, 34.463741, 32.893429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397106, 33.956913, 32.717518>,  <33.448460, 34.542374, 33.080162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397106, 33.956913, 32.717518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.093971, 34.185925, 32.592365>,  <32.912090, 34.323330, 32.517273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.093971, 34.185925, 32.592365>,  <33.397106, 33.956913, 32.717518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093971, 34.185925, 32.592365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406904, 0.039880, -0.912600,
		-0.510008, -0.818917, -0.263186,
		-0.757840, 0.572525, -0.312882,
		32.866619, 34.357681, 32.498501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348541, 33.760784, 32.138374>,  <33.397106, 33.956913, 32.717518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348541, 33.760784, 32.138374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.109711, 34.081242, 32.122063>,  <32.966412, 34.273518, 32.112274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.109711, 34.081242, 32.122063>,  <33.348541, 33.760784, 32.138374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109711, 34.081242, 32.122063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387932, 0.243878, -0.888838,
		-0.702143, -0.546527, -0.456404,
		-0.597080, 0.801144, -0.040778,
		32.930588, 34.321587, 32.109829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973690, 33.653484, 31.452137>,  <33.348541, 33.760784, 32.138374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973690, 33.653484, 31.452137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.986309, 34.037834, 31.562216>,  <32.993881, 34.268444, 31.628263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.986309, 34.037834, 31.562216>,  <32.973690, 33.653484, 31.452137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986309, 34.037834, 31.562216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297061, 0.253878, -0.920489,
		-0.954337, 0.110789, -0.277428,
		0.031547, 0.960870, 0.275197,
		32.995773, 34.326096, 31.644775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706013, 33.951157, 30.915165>,  <32.973690, 33.653484, 31.452137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706013, 33.951157, 30.915165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.934593, 34.210018, 31.117012>,  <33.071739, 34.365334, 31.238119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.934593, 34.210018, 31.117012>,  <32.706013, 33.951157, 30.915165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934593, 34.210018, 31.117012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238185, 0.457640, -0.856641,
		-0.785311, 0.609718, 0.107376,
		0.571449, 0.647155, 0.504616,
		33.106030, 34.404163, 31.268396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582458, 34.565186, 30.575907>,  <32.706013, 33.951157, 30.915165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582458, 34.565186, 30.575907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.901237, 34.666485, 30.795267>,  <33.092506, 34.727264, 30.926884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.901237, 34.666485, 30.795267>,  <32.582458, 34.565186, 30.575907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901237, 34.666485, 30.795267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443657, 0.370715, -0.815928,
		-0.409933, 0.893552, 0.183084,
		0.796946, 0.253249, 0.548399,
		33.140320, 34.742458, 30.959787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605793, 35.328423, 30.508562>,  <32.582458, 34.565186, 30.575907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605793, 35.328423, 30.508562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.962498, 35.170856, 30.597633>,  <33.176521, 35.076317, 30.651075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.962498, 35.170856, 30.597633>,  <32.605793, 35.328423, 30.508562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962498, 35.170856, 30.597633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375849, 0.370780, -0.849270,
		0.251973, 0.841044, 0.478701,
		0.891766, -0.393913, 0.222679,
		33.230026, 35.052681, 30.664436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147144, 35.836323, 30.420170>,  <32.605793, 35.328423, 30.508562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147144, 35.836323, 30.420170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.366043, 35.501549, 30.416985>,  <33.497383, 35.300686, 30.415073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.366043, 35.501549, 30.416985>,  <33.147144, 35.836323, 30.420170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366043, 35.501549, 30.416985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555600, 0.370376, -0.744399,
		0.625961, 0.402948, 0.667687,
		0.547249, -0.836932, -0.007963,
		33.530216, 35.250469, 30.414597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778538, 36.065243, 30.400990>,  <33.147144, 35.836323, 30.420170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778538, 36.065243, 30.400990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.801018, 35.692883, 30.256624>,  <33.814507, 35.469467, 30.170006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.801018, 35.692883, 30.256624>,  <33.778538, 36.065243, 30.400990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801018, 35.692883, 30.256624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558473, 0.328956, -0.761509,
		0.827617, -0.158759, 0.538374,
		0.056205, -0.930905, -0.360912,
		33.817879, 35.413612, 30.148350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418037, 36.188335, 30.186584>,  <33.778538, 36.065243, 30.400990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418037, 36.188335, 30.186584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.267078, 35.868366, 29.999950>,  <34.176502, 35.676384, 29.887970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.267078, 35.868366, 29.999950>,  <34.418037, 36.188335, 30.186584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267078, 35.868366, 29.999950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363808, 0.335264, -0.869046,
		0.851596, -0.497722, 0.164490,
		-0.377396, -0.799920, -0.466585,
		34.153858, 35.628391, 29.859976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944206, 35.798073, 29.807314>,  <34.418037, 36.188335, 30.186584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944206, 35.798073, 29.807314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.613148, 35.683018, 29.614534>,  <34.414513, 35.613987, 29.498867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.613148, 35.683018, 29.614534>,  <34.944206, 35.798073, 29.807314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613148, 35.683018, 29.614534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429524, 0.228134, -0.873764,
		0.361275, -0.930173, -0.065267,
		-0.827641, -0.287635, -0.481951,
		34.364857, 35.596729, 29.469950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242561, 35.405937, 29.330191>,  <34.944206, 35.798073, 29.807314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242561, 35.405937, 29.330191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.871258, 35.457809, 29.190752>,  <34.648476, 35.488934, 29.107088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.871258, 35.457809, 29.190752>,  <35.242561, 35.405937, 29.330191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871258, 35.457809, 29.190752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361202, 0.090766, -0.928060,
		-0.088709, -0.987393, -0.131095,
		-0.928258, 0.129679, -0.348596,
		34.592781, 35.496712, 29.086174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148697, 34.901909, 28.817934>,  <35.242561, 35.405937, 29.330191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148697, 34.901909, 28.817934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.883419, 35.190048, 28.736675>,  <34.724251, 35.362934, 28.687920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.883419, 35.190048, 28.736675>,  <35.148697, 34.901909, 28.817934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883419, 35.190048, 28.736675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463650, 0.182340, -0.867053,
		-0.587540, -0.669214, -0.454917,
		-0.663193, 0.720351, -0.203149,
		34.684460, 35.406155, 28.675730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905807, 34.779606, 28.164146>,  <35.148697, 34.901909, 28.817934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905807, 34.779606, 28.164146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.824360, 35.170944, 28.178997>,  <34.775494, 35.405746, 28.187906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.824360, 35.170944, 28.178997>,  <34.905807, 34.779606, 28.164146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824360, 35.170944, 28.178997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349118, 0.107982, -0.930836,
		-0.914689, -0.176573, -0.363545,
		-0.203617, 0.978347, 0.037125,
		34.763275, 35.464447, 28.190134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660690, 35.051426, 27.537374>,  <34.905807, 34.779606, 28.164146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660690, 35.051426, 27.537374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.768169, 35.386108, 27.728252>,  <34.832657, 35.586918, 27.842779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.768169, 35.386108, 27.728252>,  <34.660690, 35.051426, 27.537374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768169, 35.386108, 27.728252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433358, 0.337432, -0.835668,
		-0.860233, 0.431341, -0.271927,
		0.268701, 0.836711, 0.477195,
		34.848778, 35.637123, 27.871410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465816, 35.565525, 27.071421>,  <34.660690, 35.051426, 27.537374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465816, 35.565525, 27.071421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.748131, 35.741257, 27.293720>,  <34.917519, 35.846695, 27.427101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.748131, 35.741257, 27.293720>,  <34.465816, 35.565525, 27.071421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748131, 35.741257, 27.293720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362714, 0.449766, -0.816180,
		-0.608525, 0.777628, 0.158090,
		0.705787, 0.439325, 0.555750,
		34.959866, 35.873055, 27.460445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481533, 36.271950, 26.890327>,  <34.465816, 35.565525, 27.071421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481533, 36.271950, 26.890327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.845501, 36.212223, 27.045120>,  <35.063881, 36.176388, 27.137997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.845501, 36.212223, 27.045120>,  <34.481533, 36.271950, 26.890327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845501, 36.212223, 27.045120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413657, 0.257810, -0.873168,
		0.030608, 0.954589, 0.296351,
		0.909918, -0.149314, 0.386981,
		35.118477, 36.167431, 27.161215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883617, 36.831337, 26.633669>,  <34.481533, 36.271950, 26.890327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883617, 36.831337, 26.633669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.169312, 36.588982, 26.773825>,  <35.340729, 36.443569, 26.857918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.169312, 36.588982, 26.773825>,  <34.883617, 36.831337, 26.633669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169312, 36.588982, 26.773825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527496, 0.136948, -0.838447,
		0.460019, 0.783676, 0.417415,
		0.714234, -0.605886, 0.350387,
		35.383583, 36.407215, 26.878941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614765, 37.194050, 26.533331>,  <34.883617, 36.831337, 26.633669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614765, 37.194050, 26.533331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.677765, 36.799911, 26.559517>,  <35.715565, 36.563427, 26.575228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.677765, 36.799911, 26.559517>,  <35.614765, 37.194050, 26.533331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677765, 36.799911, 26.559517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670978, 0.058136, -0.739195,
		0.724558, 0.160345, 0.670302,
		0.157495, -0.985348, 0.065464,
		35.725014, 36.504307, 26.579157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296875, 37.061382, 26.484856>,  <35.614765, 37.194050, 26.533331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296875, 37.061382, 26.484856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.169651, 36.694729, 26.388008>,  <36.093319, 36.474735, 26.329901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.169651, 36.694729, 26.388008>,  <36.296875, 37.061382, 26.484856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169651, 36.694729, 26.388008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704234, -0.057444, -0.707640,
		0.634739, -0.395578, 0.663796,
		-0.318058, -0.916634, -0.242117,
		36.074234, 36.419739, 26.315372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860245, 36.831806, 26.146351>,  <36.296875, 37.061382, 26.484856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860245, 36.831806, 26.146351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.554024, 36.589561, 26.059477>,  <36.370293, 36.444214, 26.007353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.554024, 36.589561, 26.059477>,  <36.860245, 36.831806, 26.146351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554024, 36.589561, 26.059477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440293, -0.247006, -0.863209,
		0.469120, -0.756457, 0.455740,
		-0.765551, -0.605608, -0.217187,
		36.324360, 36.407879, 25.994320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292629, 36.238609, 26.548452>,  <36.860245, 36.831806, 26.146351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292629, 36.238609, 26.548452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.660767, 36.121101, 26.651726>,  <37.881649, 36.050598, 26.713690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.660767, 36.121101, 26.651726>,  <37.292629, 36.238609, 26.548452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660767, 36.121101, 26.651726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267083, 0.010155, 0.963620,
		-0.285705, -0.955822, -0.069115,
		0.920348, -0.293770, 0.258185,
		37.936871, 36.032970, 26.729181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256542, 35.675873, 26.874470>,  <37.292629, 36.238609, 26.548452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256542, 35.675873, 26.874470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.595284, 35.807648, 27.041473>,  <37.798527, 35.886711, 27.141676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.595284, 35.807648, 27.041473>,  <37.256542, 35.675873, 26.874470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595284, 35.807648, 27.041473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377022, -0.181809, 0.908185,
		0.375095, -0.926508, -0.029761,
		0.846852, 0.329435, 0.417510,
		37.849339, 35.906479, 27.166727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517773, 35.178226, 27.399076>,  <37.256542, 35.675873, 26.874470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517773, 35.178226, 27.399076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.724842, 35.501751, 27.510674>,  <37.849083, 35.695866, 27.577631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.724842, 35.501751, 27.510674>,  <37.517773, 35.178226, 27.399076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724842, 35.501751, 27.510674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158819, -0.229578, 0.960245,
		0.840708, -0.541403, 0.009608,
		0.517674, 0.808812, 0.278993,
		37.880146, 35.744396, 27.594372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003040, 34.904083, 28.005053>,  <37.517773, 35.178226, 27.399076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003040, 34.904083, 28.005053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.972702, 35.301147, 28.042732>,  <37.954498, 35.539387, 28.065340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.972702, 35.301147, 28.042732>,  <38.003040, 34.904083, 28.005053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972702, 35.301147, 28.042732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224099, -0.109026, 0.968449,
		0.971610, 0.052346, 0.230724,
		-0.075849, 0.992660, 0.094200,
		37.949947, 35.598946, 28.070992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399979, 35.044601, 28.619392>,  <38.003040, 34.904083, 28.005053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399979, 35.044601, 28.619392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.159683, 35.359844, 28.565722>,  <38.015507, 35.548988, 28.533520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.159683, 35.359844, 28.565722>,  <38.399979, 35.044601, 28.619392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159683, 35.359844, 28.565722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082929, 0.105500, 0.990955,
		0.795134, 0.606431, 0.001979,
		-0.600737, 0.788106, -0.134177,
		37.979462, 35.596275, 28.525469>
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
