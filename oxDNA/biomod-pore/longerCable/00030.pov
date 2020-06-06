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
	<24.511829, 35.481728, 35.004417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.360592, 35.113216, 35.040825>,  <24.269850, 34.892109, 35.062672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.360592, 35.113216, 35.040825>,  <24.511829, 35.481728, 35.004417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.360592, 35.113216, 35.040825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569765, -0.309066, -0.761476,
		0.729666, -0.236047, 0.641770,
		-0.378093, -0.921282, 0.091023,
		24.247164, 34.836830, 35.068130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.013235, 34.848370, 35.145977>,  <24.511829, 35.481728, 35.004417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.013235, 34.848370, 35.145977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.696123, 34.792152, 34.908745>,  <24.505856, 34.758423, 34.766403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.696123, 34.792152, 34.908745>,  <25.013235, 34.848370, 35.145977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.696123, 34.792152, 34.908745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607064, -0.269096, -0.747703,
		-0.054514, -0.952804, 0.298651,
		-0.792781, -0.140540, -0.593083,
		24.458288, 34.749992, 34.730820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.780161, 34.120796, 34.925159>,  <25.013235, 34.848370, 35.145977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.780161, 34.120796, 34.925159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.769840, 34.423851, 34.664291>,  <24.763649, 34.605682, 34.507771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.769840, 34.423851, 34.664291>,  <24.780161, 34.120796, 34.925159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.769840, 34.423851, 34.664291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765898, -0.404278, -0.499959,
		-0.642444, -0.512392, -0.569843,
		-0.025800, 0.757637, -0.652166,
		24.762100, 34.651142, 34.468643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.209053, 33.926563, 34.496048>,  <24.780161, 34.120796, 34.925159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.209053, 33.926563, 34.496048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.185802, 34.300655, 34.356354>,  <25.171852, 34.525112, 34.272537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.185802, 34.300655, 34.356354>,  <25.209053, 33.926563, 34.496048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.185802, 34.300655, 34.356354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829555, -0.149372, -0.538076,
		-0.555392, -0.320986, -0.767143,
		-0.058125, 0.935230, -0.349236,
		25.168365, 34.581226, 34.251583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.760157, 34.379265, 34.129467>,  <25.209053, 33.926563, 34.496048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.760157, 34.379265, 34.129467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.907324, 34.488731, 33.773998>,  <25.995625, 34.554413, 33.560715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.907324, 34.488731, 33.773998>,  <25.760157, 34.379265, 34.129467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.907324, 34.488731, 33.773998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327801, -0.856182, -0.399373,
		-0.870164, 0.438244, -0.225294,
		0.367916, 0.273668, -0.888675,
		26.017698, 34.570831, 33.507397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.270128, 34.455299, 33.453041>,  <25.760157, 34.379265, 34.129467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.270128, 34.455299, 33.453041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.639278, 34.347645, 33.342861>,  <25.860767, 34.283054, 33.276752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.639278, 34.347645, 33.342861>,  <25.270128, 34.455299, 33.453041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.639278, 34.347645, 33.342861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382271, -0.726802, -0.570639,
		-0.046617, 0.631923, -0.773628,
		0.922874, -0.269134, -0.275447,
		25.916142, 34.266903, 33.260227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.354734, 34.341690, 32.750355>,  <25.270128, 34.455299, 33.453041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.354734, 34.341690, 32.750355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.647833, 34.107460, 32.889027>,  <25.823692, 33.966923, 32.972229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.647833, 34.107460, 32.889027>,  <25.354734, 34.341690, 32.750355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.647833, 34.107460, 32.889027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345100, -0.758838, -0.552332,
		0.586507, 0.285078, -0.758116,
		0.732745, -0.585572, 0.346684,
		25.867657, 33.931789, 32.993031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.604082, 34.019886, 32.148724>,  <25.354734, 34.341690, 32.750355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.604082, 34.019886, 32.148724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.707819, 33.782726, 32.453674>,  <25.770061, 33.640430, 32.636642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.707819, 33.782726, 32.453674>,  <25.604082, 34.019886, 32.148724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.707819, 33.782726, 32.453674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243320, -0.804030, -0.542523,
		0.934632, -0.044803, -0.352782,
		0.259341, -0.592898, 0.762374,
		25.785622, 33.604858, 32.682388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.140137, 33.500584, 31.917774>,  <25.604082, 34.019886, 32.148724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.140137, 33.500584, 31.917774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.942455, 33.364128, 32.237621>,  <25.823847, 33.282253, 32.429531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.942455, 33.364128, 32.237621>,  <26.140137, 33.500584, 31.917774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.942455, 33.364128, 32.237621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267723, -0.815367, -0.513324,
		0.827097, -0.467762, 0.311624,
		-0.494201, -0.341139, 0.799618,
		25.794195, 33.261787, 32.477509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.295675, 32.777988, 31.902882>,  <26.140137, 33.500584, 31.917774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.295675, 32.777988, 31.902882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.958452, 32.824200, 32.112988>,  <25.756119, 32.851925, 32.239052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.958452, 32.824200, 32.112988>,  <26.295675, 32.777988, 31.902882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.958452, 32.824200, 32.112988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457929, -0.666379, -0.588421,
		0.282048, -0.736609, 0.614700,
		-0.843060, 0.115526, 0.525265,
		25.705534, 32.858856, 32.270569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.149467, 32.125767, 31.853828>,  <26.295675, 32.777988, 31.902882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.149467, 32.125767, 31.853828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816517, 32.320404, 31.959944>,  <25.616747, 32.437187, 32.023613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816517, 32.320404, 31.959944>,  <26.149467, 32.125767, 31.853828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.816517, 32.320404, 31.959944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552480, -0.690733, -0.466535,
		-0.043770, -0.534898, 0.843782,
		-0.832376, 0.486593, 0.265287,
		25.566803, 32.466381, 32.039532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.576036, 31.802862, 31.552248>,  <26.149467, 32.125767, 31.853828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.576036, 31.802862, 31.552248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.311527, 32.045238, 31.729132>,  <25.152821, 32.190666, 31.835262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.311527, 32.045238, 31.729132>,  <25.576036, 31.802862, 31.552248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.311527, 32.045238, 31.729132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740461, -0.432851, -0.514157,
		-0.120138, -0.667439, 0.734910,
		-0.661275, 0.605942, 0.442210,
		25.113144, 32.227020, 31.861795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.037024, 31.260380, 31.270252>,  <25.576036, 31.802862, 31.552248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.037024, 31.260380, 31.270252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.193897, 30.902559, 31.356016>,  <25.288021, 30.687868, 31.407475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.193897, 30.902559, 31.356016>,  <25.037024, 31.260380, 31.270252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.193897, 30.902559, 31.356016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919832, 0.383881, -0.080896,
		-0.009943, 0.228948, 0.973388,
		0.392186, -0.894549, 0.214410,
		25.311554, 30.634195, 31.420340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.966019, 32.011166, 30.894648>,  <25.037024, 31.260380, 31.270252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.966019, 32.011166, 30.894648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.677082, 32.148941, 31.134510>,  <24.503719, 32.231606, 31.278427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.677082, 32.148941, 31.134510>,  <24.966019, 32.011166, 30.894648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.677082, 32.148941, 31.134510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690330, 0.307950, 0.654684,
		0.040831, 0.886866, -0.460219,
		-0.722342, 0.344434, 0.599656,
		24.460379, 32.252270, 31.314407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.101906, 32.808220, 31.055477>,  <24.966019, 32.011166, 30.894648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.101906, 32.808220, 31.055477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.894590, 32.603756, 31.329729>,  <24.770201, 32.481075, 31.494280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.894590, 32.603756, 31.329729>,  <25.101906, 32.808220, 31.055477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.894590, 32.603756, 31.329729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620051, 0.327551, 0.712915,
		-0.588995, 0.794621, 0.147182,
		-0.518287, -0.511164, 0.685631,
		24.739103, 32.450405, 31.535418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.850113, 33.347633, 31.597750>,  <25.101906, 32.808220, 31.055477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.850113, 33.347633, 31.597750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.886190, 32.971798, 31.729837>,  <24.907837, 32.746296, 31.809090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.886190, 32.971798, 31.729837>,  <24.850113, 33.347633, 31.597750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.886190, 32.971798, 31.729837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472886, 0.332214, 0.816096,
		-0.876495, 0.082548, 0.474281,
		0.090196, -0.939585, 0.330220,
		24.913250, 32.689922, 31.828903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.456860, 33.168118, 32.317566>,  <24.850113, 33.347633, 31.597750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.456860, 33.168118, 32.317566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.779463, 32.936478, 32.269909>,  <24.973024, 32.797493, 32.241314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.779463, 32.936478, 32.269909>,  <24.456860, 33.168118, 32.317566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.779463, 32.936478, 32.269909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380126, 0.353556, 0.854694,
		-0.452827, -0.734605, 0.505275,
		0.806506, -0.579097, -0.119143,
		25.021414, 32.762749, 32.234165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.582939, 32.860756, 32.907207>,  <24.456860, 33.168118, 32.317566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.582939, 32.860756, 32.907207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.944208, 32.848225, 32.735954>,  <25.160969, 32.840706, 32.633202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.944208, 32.848225, 32.735954>,  <24.582939, 32.860756, 32.907207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.944208, 32.848225, 32.735954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367952, 0.570206, 0.734491,
		0.221110, -0.820904, 0.526524,
		0.903173, -0.031332, -0.428131,
		25.215160, 32.838825, 32.607513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.099915, 32.658390, 33.394318>,  <24.582939, 32.860756, 32.907207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.099915, 32.658390, 33.394318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.276159, 32.891396, 33.121105>,  <25.381907, 33.031200, 32.957176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.276159, 32.891396, 33.121105>,  <25.099915, 32.658390, 33.394318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.276159, 32.891396, 33.121105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363594, 0.579865, 0.729079,
		0.820769, -0.569587, 0.043694,
		0.440610, 0.582519, -0.683033,
		25.408342, 33.066151, 32.916195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.685911, 32.916363, 33.750862>,  <25.099915, 32.658390, 33.394318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.685911, 32.916363, 33.750862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693214, 33.143776, 33.421879>,  <25.697598, 33.280224, 33.224491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693214, 33.143776, 33.421879>,  <25.685911, 32.916363, 33.750862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.693214, 33.143776, 33.421879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488921, 0.712455, 0.503353,
		0.872137, -0.411306, -0.264961,
		0.018259, 0.568538, -0.822455,
		25.698692, 33.314339, 33.175144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.404146, 33.233448, 33.709274>,  <25.685911, 32.916363, 33.750862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.404146, 33.233448, 33.709274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.134092, 33.469769, 33.532574>,  <25.972059, 33.611561, 33.426552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.134092, 33.469769, 33.532574>,  <26.404146, 33.233448, 33.709274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.134092, 33.469769, 33.532574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396867, 0.795672, 0.457605,
		0.621844, 0.133628, -0.771656,
		-0.675134, 0.590804, -0.441751,
		25.931553, 33.647011, 33.400047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.767664, 33.345737, 33.038376>,  <26.404146, 33.233448, 33.709274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.767664, 33.345737, 33.038376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472855, 33.585659, 32.913780>,  <26.295969, 33.729614, 32.839024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472855, 33.585659, 32.913780>,  <26.767664, 33.345737, 33.038376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.472855, 33.585659, 32.913780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475322, 0.787646, 0.392025,
		0.480483, 0.140874, -0.865616,
		-0.737025, 0.599807, -0.311490,
		26.251747, 33.765602, 32.820332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.087023, 33.893917, 32.840630>,  <26.767664, 33.345737, 33.038376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.087023, 33.893917, 32.840630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733503, 34.016972, 32.981628>,  <26.521391, 34.090805, 33.066227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733503, 34.016972, 32.981628>,  <27.087023, 33.893917, 32.840630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.733503, 34.016972, 32.981628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464369, 0.668713, 0.580676,
		-0.057085, 0.676892, -0.733865,
		-0.883800, 0.307636, 0.352501,
		26.468363, 34.109264, 33.087379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.998945, 34.664021, 32.747665>,  <27.087023, 33.893917, 32.840630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.998945, 34.664021, 32.747665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.807350, 34.495022, 33.055450>,  <26.692392, 34.393623, 33.240120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.807350, 34.495022, 33.055450>,  <26.998945, 34.664021, 32.747665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.807350, 34.495022, 33.055450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392288, 0.681133, 0.618198,
		-0.785291, 0.597958, -0.160513,
		-0.478987, -0.422497, 0.769459,
		26.663654, 34.368271, 33.286289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.151110, 34.982597, 32.034260>,  <26.998945, 34.664021, 32.747665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.151110, 34.982597, 32.034260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477371, 34.814362, 31.875359>,  <27.673128, 34.713421, 31.780018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477371, 34.814362, 31.875359>,  <27.151110, 34.982597, 32.034260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.477371, 34.814362, 31.875359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571425, -0.478325, -0.666843,
		0.090450, 0.770915, -0.630483,
		0.815655, -0.420590, -0.397255,
		27.722067, 34.688183, 31.756182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.149275, 34.942192, 31.325151>,  <27.151110, 34.982597, 32.034260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.149275, 34.942192, 31.325151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394413, 34.643528, 31.428629>,  <27.541496, 34.464329, 31.490715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394413, 34.643528, 31.428629>,  <27.149275, 34.942192, 31.325151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.394413, 34.643528, 31.428629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399984, -0.575456, -0.713346,
		0.681492, 0.333699, -0.651317,
		0.612847, -0.746656, 0.258695,
		27.578268, 34.419533, 31.506237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490234, 34.741550, 30.712900>,  <27.149275, 34.942192, 31.325151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490234, 34.741550, 30.712900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497000, 34.439625, 30.975189>,  <27.501059, 34.258469, 31.132563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497000, 34.439625, 30.975189>,  <27.490234, 34.741550, 30.712900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.497000, 34.439625, 30.975189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207557, -0.644180, -0.736174,
		0.978077, -0.123647, -0.167564,
		0.016916, -0.754813, 0.655721,
		27.502075, 34.213181, 31.171906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.984913, 34.145462, 30.690714>,  <27.490234, 34.741550, 30.712900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.984913, 34.145462, 30.690714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601677, 34.118011, 30.801966>,  <27.371737, 34.101540, 30.868717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601677, 34.118011, 30.801966>,  <27.984913, 34.145462, 30.690714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.601677, 34.118011, 30.801966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213418, -0.476665, -0.852786,
		0.191101, -0.876402, 0.442040,
		-0.958089, -0.068629, 0.278131,
		27.314251, 34.097424, 30.885405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.941132, 34.283611, 29.908630>,  <27.984913, 34.145462, 30.690714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.941132, 34.283611, 29.908630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653202, 34.381317, 29.648727>,  <27.480444, 34.439941, 29.492785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653202, 34.381317, 29.648727>,  <27.941132, 34.283611, 29.908630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.653202, 34.381317, 29.648727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487463, -0.488529, -0.723684,
		-0.494225, -0.837650, 0.232560,
		-0.719806, 0.244299, -0.649767,
		27.437254, 34.454597, 29.453800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.590885, 33.686005, 29.565281>,  <27.941132, 34.283611, 29.908630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.590885, 33.686005, 29.565281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.582815, 34.010330, 29.331297>,  <27.577972, 34.204926, 29.190907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.582815, 34.010330, 29.331297>,  <27.590885, 33.686005, 29.565281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.582815, 34.010330, 29.331297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484228, -0.503953, -0.715231,
		-0.874710, -0.297682, -0.382451,
		-0.020174, 0.810813, -0.584958,
		27.576763, 34.253574, 29.155809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.295612, 33.410053, 28.895679>,  <27.590885, 33.686005, 29.565281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.295612, 33.410053, 28.895679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.504932, 33.749096, 28.860533>,  <27.630526, 33.952522, 28.839445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.504932, 33.749096, 28.860533>,  <27.295612, 33.410053, 28.895679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.504932, 33.749096, 28.860533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606241, -0.442771, -0.660625,
		-0.598855, 0.292437, -0.745556,
		0.523302, 0.847605, -0.087868,
		27.661922, 34.003376, 28.834171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.418068, 33.485569, 28.173040>,  <27.295612, 33.410053, 28.895679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.418068, 33.485569, 28.173040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.692680, 33.707508, 28.361006>,  <27.857449, 33.840672, 28.473785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.692680, 33.707508, 28.361006>,  <27.418068, 33.485569, 28.173040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.692680, 33.707508, 28.361006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726279, -0.492610, -0.479431,
		-0.034527, 0.670433, -0.741166,
		0.686533, 0.554846, 0.469913,
		27.898640, 33.873962, 28.501980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.852964, 33.747547, 27.632574>,  <27.418068, 33.485569, 28.173040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.852964, 33.747547, 27.632574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047586, 33.731945, 27.981686>,  <28.164360, 33.722584, 28.191153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047586, 33.731945, 27.981686>,  <27.852964, 33.747547, 27.632574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.047586, 33.731945, 27.981686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763890, -0.465788, -0.446669,
		0.423952, 0.884036, -0.196836,
		0.486555, -0.039005, 0.872779,
		28.193554, 33.720245, 28.243519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.537346, 33.952625, 27.360922>,  <27.852964, 33.747547, 27.632574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.537346, 33.952625, 27.360922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.591135, 33.782410, 27.718878>,  <28.623409, 33.680279, 27.933651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.591135, 33.782410, 27.718878>,  <28.537346, 33.952625, 27.360922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.591135, 33.782410, 27.718878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753330, -0.542791, -0.371312,
		0.643748, 0.724080, 0.247582,
		0.134474, -0.425542, 0.894891,
		28.631477, 33.654747, 27.987345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.111935, 33.779327, 27.134375>,  <28.537346, 33.952625, 27.360922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.111935, 33.779327, 27.134375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.011148, 33.548126, 27.444838>,  <28.950678, 33.409405, 27.631115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.011148, 33.548126, 27.444838>,  <29.111935, 33.779327, 27.134375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011148, 33.548126, 27.444838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452333, -0.779373, -0.433559,
		0.855517, 0.241841, 0.457825,
		-0.251964, -0.578006, 0.776159,
		28.935560, 33.374725, 27.677685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390911, 33.048138, 26.995384>,  <29.111935, 33.779327, 27.134375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390911, 33.048138, 26.995384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.565609, 32.846184, 27.293201>,  <29.670427, 32.725010, 27.471891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.565609, 32.846184, 27.293201>,  <29.390911, 33.048138, 26.995384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565609, 32.846184, 27.293201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621816, 0.428662, 0.655434,
		-0.650077, -0.749226, -0.126730,
		0.436744, -0.504885, 0.744544,
		29.696632, 32.694717, 27.516565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888905, 32.645264, 27.356413>,  <29.390911, 33.048138, 26.995384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888905, 32.645264, 27.356413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165613, 32.701157, 27.639801>,  <29.331638, 32.734692, 27.809834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165613, 32.701157, 27.639801>,  <28.888905, 32.645264, 27.356413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165613, 32.701157, 27.639801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693222, 0.403268, 0.597343,
		-0.202234, -0.904351, 0.375835,
		0.691769, 0.139734, 0.708470,
		29.373144, 32.743076, 27.852343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.689960, 32.403961, 28.002207>,  <28.888905, 32.645264, 27.356413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.689960, 32.403961, 28.002207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956078, 32.698868, 28.049225>,  <29.115747, 32.875813, 28.077436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956078, 32.698868, 28.049225>,  <28.689960, 32.403961, 28.002207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956078, 32.698868, 28.049225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673843, 0.525201, 0.519712,
		0.321433, -0.424968, 0.846217,
		0.665295, 0.737270, 0.117545,
		29.155666, 32.920048, 28.084488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410770, 32.836224, 28.508677>,  <28.689960, 32.403961, 28.002207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.410770, 32.836224, 28.508677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.710442, 33.067818, 28.379988>,  <28.890245, 33.206776, 28.302774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.710442, 33.067818, 28.379988>,  <28.410770, 32.836224, 28.508677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.710442, 33.067818, 28.379988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409211, 0.786515, 0.462538,
		0.520842, -0.214871, 0.826168,
		0.749179, 0.578986, -0.321722,
		28.935196, 33.241512, 28.283470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.780165, 33.181335, 29.182470>,  <28.410770, 32.836224, 28.508677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.780165, 33.181335, 29.182470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753899, 33.337433, 28.815123>,  <28.738138, 33.431091, 28.594715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753899, 33.337433, 28.815123>,  <28.780165, 33.181335, 29.182470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.753899, 33.337433, 28.815123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628434, 0.698723, 0.341844,
		0.775086, 0.599582, 0.199358,
		-0.065667, 0.390242, -0.918368,
		28.734198, 33.454506, 28.539612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.988213, 33.891338, 29.241837>,  <28.780165, 33.181335, 29.182470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.988213, 33.891338, 29.241837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.746347, 33.827805, 28.929644>,  <28.601229, 33.789684, 28.742327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.746347, 33.827805, 28.929644>,  <28.988213, 33.891338, 29.241837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.746347, 33.827805, 28.929644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640004, 0.680188, 0.357406,
		0.474107, 0.715623, -0.512939,
		-0.604663, -0.158835, -0.780483,
		28.564949, 33.780155, 28.695499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871889, 34.524979, 29.105671>,  <28.988213, 33.891338, 29.241837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871889, 34.524979, 29.105671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592184, 34.316154, 28.910328>,  <28.424362, 34.190861, 28.793123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592184, 34.316154, 28.910328>,  <28.871889, 34.524979, 29.105671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592184, 34.316154, 28.910328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666537, 0.723054, 0.181441,
		0.258385, 0.452381, -0.853574,
		-0.699260, -0.522057, -0.488355,
		28.382406, 34.159538, 28.763821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492744, 34.927238, 28.622866>,  <28.871889, 34.524979, 29.105671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.492744, 34.927238, 28.622866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241327, 34.634438, 28.728024>,  <28.090477, 34.458759, 28.791119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241327, 34.634438, 28.728024>,  <28.492744, 34.927238, 28.622866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.241327, 34.634438, 28.728024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652327, 0.680209, 0.334343,
		-0.423563, 0.038654, -0.905041,
		-0.628541, -0.731998, 0.262896,
		28.052765, 34.414837, 28.806892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687344, 35.397148, 27.972557>,  <28.492744, 34.927238, 28.622866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.687344, 35.397148, 27.972557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.873274, 35.625069, 27.701481>,  <28.984833, 35.761822, 27.538836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.873274, 35.625069, 27.701481>,  <28.687344, 35.397148, 27.972557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.873274, 35.625069, 27.701481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576888, 0.385729, 0.720009,
		0.671666, -0.725631, -0.149414,
		0.464828, 0.569801, -0.677689,
		29.012722, 35.796009, 27.498175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.271210, 34.993462, 27.684683>,  <28.687344, 35.397148, 27.972557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.271210, 34.993462, 27.684683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288538, 35.390709, 27.728203>,  <29.298935, 35.629059, 27.754314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288538, 35.390709, 27.728203>,  <29.271210, 34.993462, 27.684683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288538, 35.390709, 27.728203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660146, -0.110195, 0.743010,
		0.749887, 0.039638, -0.660378,
		0.043319, 0.993119, 0.108801,
		29.301535, 35.688644, 27.760843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008810, 35.167183, 27.616472>,  <29.271210, 34.993462, 27.684683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.008810, 35.167183, 27.616472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.767174, 35.400036, 27.834166>,  <29.622192, 35.539749, 27.964783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.767174, 35.400036, 27.834166>,  <30.008810, 35.167183, 27.616472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.767174, 35.400036, 27.834166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602449, -0.113445, 0.790054,
		0.521659, 0.805139, -0.282175,
		-0.604093, 0.582135, 0.544235,
		29.585945, 35.574677, 27.997437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586258, 35.235329, 28.224623>,  <30.008810, 35.167183, 27.616472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586258, 35.235329, 28.224623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827337, 35.346210, 27.925314>,  <30.971985, 35.412739, 27.745729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827337, 35.346210, 27.925314>,  <30.586258, 35.235329, 28.224623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827337, 35.346210, 27.925314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597075, 0.465445, 0.653347,
		0.529394, -0.840544, 0.115007,
		0.602697, 0.277210, -0.748272,
		31.008146, 35.429375, 27.700832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028709, 35.515892, 28.641750>,  <30.586258, 35.235329, 28.224623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028709, 35.515892, 28.641750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195515, 35.539509, 28.278957>,  <31.295599, 35.553677, 28.061281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195515, 35.539509, 28.278957>,  <31.028709, 35.515892, 28.641750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195515, 35.539509, 28.278957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799842, 0.450111, 0.397055,
		0.431684, -0.891018, 0.140481,
		0.417015, 0.059039, -0.906980,
		31.320620, 35.557220, 28.006863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723595, 35.423576, 28.804813>,  <31.028709, 35.515892, 28.641750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723595, 35.423576, 28.804813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681654, 35.600277, 28.448418>,  <31.656490, 35.706295, 28.234579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681654, 35.600277, 28.448418>,  <31.723595, 35.423576, 28.804813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681654, 35.600277, 28.448418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749197, 0.624269, 0.221343,
		0.653996, -0.644319, -0.396410,
		-0.104851, 0.441747, -0.890992,
		31.650198, 35.732800, 28.181120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434803, 35.183662, 28.698339>,  <31.723595, 35.423576, 28.804813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434803, 35.183662, 28.698339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248840, 35.508801, 28.557972>,  <32.137260, 35.703884, 28.473751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248840, 35.508801, 28.557972>,  <32.434803, 35.183662, 28.698339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248840, 35.508801, 28.557972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631765, 0.582257, 0.511712,
		0.620266, 0.016203, -0.784224,
		-0.464911, 0.812843, -0.350918,
		32.109367, 35.752655, 28.452696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944477, 35.468185, 28.312479>,  <32.434803, 35.183662, 28.698339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944477, 35.468185, 28.312479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682640, 35.763012, 28.379700>,  <32.525539, 35.939907, 28.420033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682640, 35.763012, 28.379700>,  <32.944477, 35.468185, 28.312479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682640, 35.763012, 28.379700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703979, 0.513280, 0.490874,
		0.275551, 0.439625, -0.854869,
		-0.654588, 0.737071, 0.168052,
		32.486263, 35.984135, 28.430115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160206, 36.059219, 27.994408>,  <32.944477, 35.468185, 28.312479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160206, 36.059219, 27.994408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951847, 36.107582, 28.332415>,  <32.826832, 36.136600, 28.535219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951847, 36.107582, 28.332415>,  <33.160206, 36.059219, 27.994408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951847, 36.107582, 28.332415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762961, 0.509903, 0.397353,
		-0.382833, 0.851692, -0.357853,
		-0.520894, 0.120908, 0.845015,
		32.795578, 36.143856, 28.585918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181374, 36.745541, 28.141552>,  <33.160206, 36.059219, 27.994408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181374, 36.745541, 28.141552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147972, 36.505730, 28.459946>,  <33.127930, 36.361843, 28.650982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147972, 36.505730, 28.459946>,  <33.181374, 36.745541, 28.141552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147972, 36.505730, 28.459946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886028, 0.320886, 0.334643,
		-0.456048, 0.733211, 0.504402,
		-0.083508, -0.599528, 0.795985,
		33.122921, 36.325871, 28.698742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979477, 37.035831, 28.798820>,  <33.181374, 36.745541, 28.141552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979477, 37.035831, 28.798820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209198, 36.715210, 28.865391>,  <33.347031, 36.522839, 28.905333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209198, 36.715210, 28.865391>,  <32.979477, 37.035831, 28.798820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209198, 36.715210, 28.865391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702501, 0.586909, 0.402529,
		-0.420325, -0.114257, 0.900151,
		0.574299, -0.801550, 0.166427,
		33.381489, 36.474747, 28.915319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069477, 36.786659, 29.441099>,  <32.979477, 37.035831, 28.798820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069477, 36.786659, 29.441099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396816, 36.713097, 29.223297>,  <33.593220, 36.668961, 29.092617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396816, 36.713097, 29.223297>,  <33.069477, 36.786659, 29.441099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396816, 36.713097, 29.223297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495553, 0.705642, 0.506454,
		0.291086, -0.684287, 0.668596,
		0.818349, -0.183903, -0.544503,
		33.642323, 36.657925, 29.059946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799187, 36.604366, 29.773506>,  <33.069477, 36.786659, 29.441099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799187, 36.604366, 29.773506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860023, 36.795235, 29.427286>,  <33.896526, 36.909756, 29.219555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860023, 36.795235, 29.427286>,  <33.799187, 36.604366, 29.773506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860023, 36.795235, 29.427286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459514, 0.741195, 0.489362,
		0.875052, -0.472158, -0.106542,
		0.152088, 0.477175, -0.865548,
		33.905651, 36.938389, 29.167622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571228, 36.632385, 29.685841>,  <33.799187, 36.604366, 29.773506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571228, 36.632385, 29.685841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375359, 36.953171, 29.548981>,  <34.257835, 37.145641, 29.466866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375359, 36.953171, 29.548981>,  <34.571228, 36.632385, 29.685841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375359, 36.953171, 29.548981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736897, 0.590409, 0.329242,
		0.466048, -0.090906, -0.880077,
		-0.489675, 0.801968, -0.342148,
		34.228455, 37.193760, 29.446337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174770, 37.038990, 29.698669>,  <34.571228, 36.632385, 29.685841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174770, 37.038990, 29.698669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858345, 37.268440, 29.613651>,  <34.668491, 37.406109, 29.562641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858345, 37.268440, 29.613651>,  <35.174770, 37.038990, 29.698669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858345, 37.268440, 29.613651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568636, 0.817623, 0.090252,
		0.225551, -0.049465, -0.972975,
		-0.791062, 0.573625, -0.212543,
		34.621025, 37.440529, 29.549889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325226, 37.440376, 29.055822>,  <35.174770, 37.038990, 29.698669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325226, 37.440376, 29.055822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082054, 37.648746, 29.295509>,  <34.936153, 37.773769, 29.439322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082054, 37.648746, 29.295509>,  <35.325226, 37.440376, 29.055822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082054, 37.648746, 29.295509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633959, 0.772835, -0.028687,
		-0.478041, 0.362440, -0.800071,
		-0.607926, 0.520926, 0.599218,
		34.899677, 37.805023, 29.475275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474537, 38.154675, 29.176399>,  <35.325226, 37.440376, 29.055822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474537, 38.154675, 29.176399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818058, 38.234062, 28.987474>,  <36.024170, 38.281693, 28.874121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818058, 38.234062, 28.987474>,  <35.474537, 38.154675, 29.176399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818058, 38.234062, 28.987474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018261, -0.933189, -0.358922,
		-0.511988, 0.299617, -0.805045,
		0.858799, 0.198464, -0.472310,
		36.075699, 38.293602, 28.845781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438675, 37.990868, 28.430243>,  <35.474537, 38.154675, 29.176399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438675, 37.990868, 28.430243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830658, 37.990227, 28.509920>,  <36.065849, 37.989841, 28.557728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830658, 37.990227, 28.509920>,  <35.438675, 37.990868, 28.430243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830658, 37.990227, 28.509920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090542, -0.887113, -0.452584,
		0.177436, 0.461549, -0.869189,
		0.979958, -0.001607, 0.199196,
		36.124645, 37.989746, 28.569679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759232, 37.901546, 27.842897>,  <35.438675, 37.990868, 28.430243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759232, 37.901546, 27.842897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012627, 37.756783, 28.116457>,  <36.164661, 37.669922, 28.280592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012627, 37.756783, 28.116457>,  <35.759232, 37.901546, 27.842897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012627, 37.756783, 28.116457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141650, -0.814688, -0.562333,
		0.760679, 0.453103, -0.464827,
		0.633484, -0.361912, 0.683898,
		36.202671, 37.648209, 28.321627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348614, 37.884510, 27.372147>,  <35.759232, 37.901546, 27.842897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348614, 37.884510, 27.372147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980793, 37.944851, 27.227003>,  <35.760101, 37.981056, 27.139917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980793, 37.944851, 27.227003>,  <36.348614, 37.884510, 27.372147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980793, 37.944851, 27.227003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366478, 0.662479, -0.653311,
		0.141833, -0.733734, -0.664468,
		-0.919553, 0.150852, -0.362859,
		35.704926, 37.990105, 27.118145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867363, 38.422955, 27.717356>,  <36.348614, 37.884510, 27.372147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867363, 38.422955, 27.717356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196445, 38.533379, 27.916132>,  <37.393894, 38.599632, 28.035397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196445, 38.533379, 27.916132>,  <36.867363, 38.422955, 27.717356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196445, 38.533379, 27.916132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415991, -0.888147, -0.195310,
		0.387438, 0.367404, -0.845521,
		0.822705, 0.276058, 0.496939,
		37.443256, 38.616196, 28.065214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449493, 38.337009, 27.337816>,  <36.867363, 38.422955, 27.717356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449493, 38.337009, 27.337816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589539, 38.325764, 27.712330>,  <37.673565, 38.319016, 27.937038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589539, 38.325764, 27.712330>,  <37.449493, 38.337009, 27.337816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589539, 38.325764, 27.712330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486715, -0.848563, -0.207484,
		0.800332, 0.528346, -0.283406,
		0.350111, -0.028118, 0.936286,
		37.694572, 38.317329, 27.993216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086594, 38.070049, 27.348042>,  <37.449493, 38.337009, 27.337816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086594, 38.070049, 27.348042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020386, 37.975754, 27.731089>,  <37.980663, 37.919178, 27.960917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020386, 37.975754, 27.731089>,  <38.086594, 38.070049, 27.348042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020386, 37.975754, 27.731089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476010, -0.869512, -0.131772,
		0.863724, 0.434025, 0.256132,
		-0.165518, -0.235736, 0.957618,
		37.970730, 37.905033, 28.018373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628635, 37.678711, 27.606388>,  <38.086594, 38.070049, 27.348042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628635, 37.678711, 27.606388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328487, 37.573021, 27.848751>,  <38.148399, 37.509605, 27.994169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328487, 37.573021, 27.848751>,  <38.628635, 37.678711, 27.606388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328487, 37.573021, 27.848751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454088, -0.872166, 0.182017,
		0.480357, 0.411716, 0.774434,
		-0.750374, -0.264228, 0.605906,
		38.103374, 37.493752, 28.030523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026516, 37.304039, 28.140585>,  <38.628635, 37.678711, 27.606388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026516, 37.304039, 28.140585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641125, 37.200840, 28.111866>,  <38.409889, 37.138920, 28.094635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641125, 37.200840, 28.111866>,  <39.026516, 37.304039, 28.140585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641125, 37.200840, 28.111866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236274, -0.945134, 0.225600,
		-0.126064, 0.200396, 0.971570,
		-0.963474, -0.257997, -0.071799,
		38.352081, 37.123440, 28.090326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247330, 36.626415, 28.431591>,  <39.026516, 37.304039, 28.140585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247330, 36.626415, 28.431591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541054, 36.357658, 28.392931>,  <39.717289, 36.196404, 28.369734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541054, 36.357658, 28.392931>,  <39.247330, 36.626415, 28.431591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541054, 36.357658, 28.392931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412994, -0.329212, -0.849150,
		0.538720, 0.663459, -0.519234,
		0.734314, -0.671894, -0.096651,
		39.761349, 36.156090, 28.363935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442909, 36.623795, 27.707851>,  <39.247330, 36.626415, 28.431591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442909, 36.623795, 27.707851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598423, 36.278316, 27.836149>,  <39.691730, 36.071030, 27.913128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598423, 36.278316, 27.836149>,  <39.442909, 36.623795, 27.707851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598423, 36.278316, 27.836149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367656, -0.464652, -0.805560,
		0.844794, 0.195264, -0.498192,
		0.388782, -0.863696, 0.320745,
		39.715057, 36.019207, 27.932373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814068, 36.348843, 27.145866>,  <39.442909, 36.623795, 27.707851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814068, 36.348843, 27.145866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710072, 36.044830, 27.384111>,  <39.647675, 35.862423, 27.527058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710072, 36.044830, 27.384111>,  <39.814068, 36.348843, 27.145866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710072, 36.044830, 27.384111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220582, -0.553767, -0.802923,
		0.940080, -0.340132, -0.023677,
		-0.259988, -0.760034, 0.595612,
		39.632076, 35.816818, 27.562796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210327, 35.821365, 26.899849>,  <39.814068, 36.348843, 27.145866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210327, 35.821365, 26.899849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898018, 35.674644, 27.102175>,  <39.710632, 35.586613, 27.223570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898018, 35.674644, 27.102175>,  <40.210327, 35.821365, 26.899849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898018, 35.674644, 27.102175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244941, -0.565056, -0.787855,
		0.574804, -0.739030, 0.351334,
		-0.780772, -0.366807, 0.505815,
		39.663788, 35.564602, 27.253920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252785, 35.135437, 26.629452>,  <40.210327, 35.821365, 26.899849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252785, 35.135437, 26.629452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913055, 35.112247, 26.839327>,  <39.709217, 35.098335, 26.965252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913055, 35.112247, 26.839327>,  <40.252785, 35.135437, 26.629452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913055, 35.112247, 26.839327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356676, -0.669713, -0.651357,
		0.389152, -0.740353, 0.548122,
		-0.849319, -0.057975, 0.524686,
		39.658260, 35.094856, 26.996733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121391, 34.490612, 26.709768>,  <40.252785, 35.135437, 26.629452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121391, 34.490612, 26.709768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761353, 34.660980, 26.746469>,  <39.545330, 34.763199, 26.768490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761353, 34.660980, 26.746469>,  <40.121391, 34.490612, 26.709768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761353, 34.660980, 26.746469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355764, -0.596932, -0.719099,
		-0.251504, -0.679903, 0.688824,
		-0.900099, 0.425915, 0.091754,
		39.491322, 34.788754, 26.773996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568607, 33.932289, 26.809340>,  <40.121391, 34.490612, 26.709768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568607, 33.932289, 26.809340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375668, 34.265598, 26.701271>,  <39.259903, 34.465584, 26.636429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375668, 34.265598, 26.701271>,  <39.568607, 33.932289, 26.809340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375668, 34.265598, 26.701271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408049, -0.486653, -0.772441,
		-0.775136, -0.262342, 0.574754,
		-0.482349, 0.833274, -0.270174,
		39.230961, 34.515579, 26.620218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996914, 33.695053, 26.644634>,  <39.568607, 33.932289, 26.809340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996914, 33.695053, 26.644634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010685, 34.049282, 26.459345>,  <39.018948, 34.261818, 26.348171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010685, 34.049282, 26.459345>,  <38.996914, 33.695053, 26.644634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010685, 34.049282, 26.459345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423038, -0.407013, -0.809555,
		-0.905458, 0.223828, 0.360620,
		0.034424, 0.885574, -0.463221,
		39.021011, 34.314953, 26.320379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382389, 33.735065, 26.326324>,  <38.996914, 33.695053, 26.644634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382389, 33.735065, 26.326324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580936, 34.021111, 26.129456>,  <38.700066, 34.192738, 26.011333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580936, 34.021111, 26.129456>,  <38.382389, 33.735065, 26.326324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580936, 34.021111, 26.129456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437152, -0.283915, -0.853399,
		-0.750009, 0.638757, 0.171684,
		0.496371, 0.715109, -0.492173,
		38.729847, 34.235641, 25.981804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861546, 34.021584, 25.993649>,  <38.382389, 33.735065, 26.326324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861546, 34.021584, 25.993649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201611, 34.108898, 25.801994>,  <38.405651, 34.161285, 25.687002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201611, 34.108898, 25.801994>,  <37.861546, 34.021584, 25.993649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201611, 34.108898, 25.801994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420691, -0.265582, -0.867459,
		-0.316602, 0.939052, -0.133959,
		0.850166, 0.218284, -0.479134,
		38.456661, 34.174385, 25.658255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766888, 34.550102, 25.475740>,  <37.861546, 34.021584, 25.993649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766888, 34.550102, 25.475740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096458, 34.352089, 25.365400>,  <38.294201, 34.233280, 25.299196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096458, 34.352089, 25.365400>,  <37.766888, 34.550102, 25.475740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096458, 34.352089, 25.365400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413415, -0.192117, -0.890045,
		0.387604, 0.847370, -0.362942,
		0.823925, -0.495030, -0.275850,
		38.343636, 34.203579, 25.282646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943176, 34.847359, 24.811420>,  <37.766888, 34.550102, 25.475740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943176, 34.847359, 24.811420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142712, 34.500736, 24.817719>,  <38.262432, 34.292763, 24.821497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142712, 34.500736, 24.817719>,  <37.943176, 34.847359, 24.811420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142712, 34.500736, 24.817719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233375, -0.151795, -0.960466,
		0.834685, 0.475440, -0.277952,
		0.498835, -0.866554, 0.015746,
		38.292362, 34.240768, 24.822443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329018, 34.849300, 24.249067>,  <37.943176, 34.847359, 24.811420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329018, 34.849300, 24.249067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352863, 34.458988, 24.333265>,  <38.367172, 34.224800, 24.383783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352863, 34.458988, 24.333265>,  <38.329018, 34.849300, 24.249067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352863, 34.458988, 24.333265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028613, -0.212452, -0.976752,
		0.997811, 0.052210, -0.040586,
		0.059619, -0.975776, 0.210493,
		38.370750, 34.166256, 24.396414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760315, 34.600376, 23.716398>,  <38.329018, 34.849300, 24.249067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760315, 34.600376, 23.716398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577400, 34.273338, 23.856356>,  <38.467651, 34.077114, 23.940331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577400, 34.273338, 23.856356>,  <38.760315, 34.600376, 23.716398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577400, 34.273338, 23.856356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101056, -0.438665, -0.892951,
		0.883557, -0.372979, 0.283220,
		-0.457290, -0.817594, 0.349894,
		38.440212, 34.028061, 23.961325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163456, 34.069714, 23.465267>,  <38.760315, 34.600376, 23.716398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163456, 34.069714, 23.465267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806526, 33.912846, 23.554670>,  <38.592369, 33.818726, 23.608313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806526, 33.912846, 23.554670>,  <39.163456, 34.069714, 23.465267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806526, 33.912846, 23.554670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005130, -0.486307, -0.873773,
		0.451362, -0.780837, 0.431933,
		-0.892326, -0.392172, 0.223507,
		38.538830, 33.795193, 23.621723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172432, 33.311687, 23.307392>,  <39.163456, 34.069714, 23.465267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172432, 33.311687, 23.307392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787430, 33.420193, 23.307528>,  <38.556427, 33.485298, 23.307610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787430, 33.420193, 23.307528>,  <39.172432, 33.311687, 23.307392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787430, 33.420193, 23.307528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143330, -0.507502, -0.849646,
		-0.230308, -0.817836, 0.527354,
		-0.962504, 0.271266, 0.000339,
		38.498680, 33.501572, 23.307629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888420, 32.711266, 23.025505>,  <39.172432, 33.311687, 23.307392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888420, 32.711266, 23.025505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613071, 32.998455, 22.984209>,  <38.447861, 33.170769, 22.959431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613071, 32.998455, 22.984209>,  <38.888420, 32.711266, 23.025505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613071, 32.998455, 22.984209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191272, -0.316964, -0.928950,
		-0.699685, -0.619717, 0.355517,
		-0.688373, 0.717973, -0.103240,
		38.406559, 33.213848, 22.953238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288193, 32.426308, 22.647635>,  <38.888420, 32.711266, 23.025505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288193, 32.426308, 22.647635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260292, 32.823658, 22.611103>,  <38.243553, 33.062069, 22.589184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260292, 32.823658, 22.611103>,  <38.288193, 32.426308, 22.647635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260292, 32.823658, 22.611103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273916, -0.107107, -0.955771,
		-0.959221, -0.041651, 0.279572,
		-0.069753, 0.993375, -0.091331,
		38.239365, 33.121670, 22.583704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684906, 32.518520, 22.284725>,  <38.288193, 32.426308, 22.647635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684906, 32.518520, 22.284725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877876, 32.861706, 22.214115>,  <37.993656, 33.067619, 22.171749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877876, 32.861706, 22.214115>,  <37.684906, 32.518520, 22.284725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877876, 32.861706, 22.214115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392241, 0.031402, -0.919326,
		-0.783209, 0.512743, 0.351679,
		0.482421, 0.857968, -0.176525,
		38.022602, 33.119095, 22.161158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241333, 33.000526, 21.897833>,  <37.684906, 32.518520, 22.284725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241333, 33.000526, 21.897833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596516, 33.164154, 21.813745>,  <37.809628, 33.262329, 21.763292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596516, 33.164154, 21.813745>,  <37.241333, 33.000526, 21.897833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596516, 33.164154, 21.813745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247903, 0.040701, -0.967930,
		-0.387394, 0.911595, 0.137550,
		0.887958, 0.409069, -0.210220,
		37.862904, 33.286877, 21.750679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081821, 33.570904, 21.438835>,  <37.241333, 33.000526, 21.897833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081821, 33.570904, 21.438835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470390, 33.490055, 21.389059>,  <37.703533, 33.441544, 21.359194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470390, 33.490055, 21.389059>,  <37.081821, 33.570904, 21.438835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470390, 33.490055, 21.389059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112465, 0.069741, -0.991205,
		0.209026, 0.976874, 0.045016,
		0.971422, -0.202125, -0.124442,
		37.761818, 33.429417, 21.351727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295486, 33.940613, 20.868240>,  <37.081821, 33.570904, 21.438835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295486, 33.940613, 20.868240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562206, 33.644371, 20.901415>,  <37.722240, 33.466625, 20.921320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562206, 33.644371, 20.901415>,  <37.295486, 33.940613, 20.868240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562206, 33.644371, 20.901415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010328, -0.102097, -0.994721,
		0.745164, 0.664138, -0.060430,
		0.666801, -0.740606, 0.082938,
		37.762245, 33.422188, 20.926296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800255, 34.082947, 20.230503>,  <37.295486, 33.940613, 20.868240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800255, 34.082947, 20.230503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865139, 33.709732, 20.358961>,  <37.904068, 33.485806, 20.436035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865139, 33.709732, 20.358961>,  <37.800255, 34.082947, 20.230503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865139, 33.709732, 20.358961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021552, -0.328728, -0.944179,
		0.986521, 0.146235, -0.073432,
		0.162211, -0.933034, 0.321146,
		37.913803, 33.429821, 20.455305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385727, 33.779392, 19.781435>,  <37.800255, 34.082947, 20.230503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385727, 33.779392, 19.781435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163013, 33.494297, 19.952082>,  <38.029385, 33.323242, 20.054470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163013, 33.494297, 19.952082>,  <38.385727, 33.779392, 19.781435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163013, 33.494297, 19.952082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037399, -0.491560, -0.870040,
		0.829817, -0.500377, 0.247036,
		-0.556781, -0.712735, 0.426618,
		37.995979, 33.280476, 20.080067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687279, 33.180599, 19.597391>,  <38.385727, 33.779392, 19.781435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687279, 33.180599, 19.597391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306026, 33.076027, 19.658318>,  <38.077274, 33.013283, 19.694874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306026, 33.076027, 19.658318>,  <38.687279, 33.180599, 19.597391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306026, 33.076027, 19.658318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030186, -0.583063, -0.811866,
		0.301060, -0.769214, 0.563624,
		-0.953127, -0.261434, 0.152317,
		38.020088, 32.997597, 19.704012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706928, 32.517471, 19.487814>,  <38.687279, 33.180599, 19.597391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706928, 32.517471, 19.487814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316837, 32.600151, 19.456289>,  <38.082783, 32.649761, 19.437374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316837, 32.600151, 19.456289>,  <38.706928, 32.517471, 19.487814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316837, 32.600151, 19.456289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054988, -0.571581, -0.818701,
		-0.214274, -0.794084, 0.568786,
		-0.975224, 0.206702, -0.078810,
		38.024269, 32.662163, 19.432646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415607, 31.825520, 19.333891>,  <38.706928, 32.517471, 19.487814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415607, 31.825520, 19.333891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126034, 32.086319, 19.243715>,  <37.952290, 32.242798, 19.189610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126034, 32.086319, 19.243715>,  <38.415607, 31.825520, 19.333891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126034, 32.086319, 19.243715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413490, -0.671662, -0.614732,
		-0.552221, -0.351808, 0.755832,
		-0.723931, 0.651997, -0.225437,
		37.908855, 32.281918, 19.176085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823082, 31.455191, 19.457418>,  <38.415607, 31.825520, 19.333891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823082, 31.455191, 19.457418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767120, 31.741804, 19.184067>,  <37.733543, 31.913773, 19.020056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767120, 31.741804, 19.184067>,  <37.823082, 31.455191, 19.457418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767120, 31.741804, 19.184067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211917, -0.695843, -0.686217,
		-0.967222, 0.048816, 0.249197,
		-0.139904, 0.716534, -0.683379,
		37.725151, 31.956764, 18.979053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259212, 31.251261, 19.063293>,  <37.823082, 31.455191, 19.457418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259212, 31.251261, 19.063293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426750, 31.519558, 18.818449>,  <37.527271, 31.680536, 18.671543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426750, 31.519558, 18.818449>,  <37.259212, 31.251261, 19.063293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426750, 31.519558, 18.818449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140456, -0.618120, -0.773434,
		-0.897131, 0.409920, -0.164684,
		0.418841, 0.670741, -0.612110,
		37.552402, 31.720779, 18.634815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723721, 31.305433, 18.445374>,  <37.259212, 31.251261, 19.063293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723721, 31.305433, 18.445374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072048, 31.448818, 18.310810>,  <37.281044, 31.534849, 18.230072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072048, 31.448818, 18.310810>,  <36.723721, 31.305433, 18.445374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072048, 31.448818, 18.310810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017857, -0.660804, -0.750346,
		-0.491274, 0.659426, -0.569041,
		0.870822, 0.358464, -0.336411,
		37.333294, 31.556358, 18.209887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598156, 31.379637, 17.739014>,  <36.723721, 31.305433, 18.445374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598156, 31.379637, 17.739014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997257, 31.371801, 17.764660>,  <37.236717, 31.367100, 17.780048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997257, 31.371801, 17.764660>,  <36.598156, 31.379637, 17.739014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997257, 31.371801, 17.764660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042206, -0.559513, -0.827746,
		0.052090, 0.828590, -0.557428,
		0.997750, -0.019590, 0.064116,
		37.296581, 31.365925, 17.783895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860706, 31.429680, 17.029972>,  <36.598156, 31.379637, 17.739014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860706, 31.429680, 17.029972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187782, 31.316408, 17.230452>,  <37.384026, 31.248446, 17.350739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187782, 31.316408, 17.230452>,  <36.860706, 31.429680, 17.029972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187782, 31.316408, 17.230452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358708, -0.430311, -0.828349,
		0.450243, 0.857112, -0.250280,
		0.817686, -0.283181, 0.501197,
		37.433086, 31.231455, 17.380812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547379, 31.676813, 16.744150>,  <36.860706, 31.429680, 17.029972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547379, 31.676813, 16.744150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651897, 31.359537, 16.964178>,  <37.714607, 31.169172, 17.096195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651897, 31.359537, 16.964178>,  <37.547379, 31.676813, 16.744150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651897, 31.359537, 16.964178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291116, -0.478575, -0.828383,
		0.920313, 0.376588, 0.105860,
		0.261297, -0.793188, 0.550069,
		37.730286, 31.121580, 17.129198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174217, 31.528978, 16.478861>,  <37.547379, 31.676813, 16.744150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174217, 31.528978, 16.478861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052422, 31.189329, 16.651501>,  <37.979343, 30.985540, 16.755085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052422, 31.189329, 16.651501>,  <38.174217, 31.528978, 16.478861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052422, 31.189329, 16.651501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222073, -0.503912, -0.834719,
		0.926265, -0.158319, 0.342005,
		-0.304492, -0.849121, 0.431598,
		37.961075, 30.934593, 16.780981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726643, 31.083719, 16.532528>,  <38.174217, 31.528978, 16.478861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726643, 31.083719, 16.532528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404335, 30.847317, 16.547743>,  <38.210949, 30.705475, 16.556871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404335, 30.847317, 16.547743>,  <38.726643, 31.083719, 16.532528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404335, 30.847317, 16.547743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305369, -0.469649, -0.828360,
		0.507432, -0.655850, 0.558903,
		-0.805768, -0.591008, 0.038038,
		38.162605, 30.670013, 16.559155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973167, 30.476006, 16.285437>,  <38.726643, 31.083719, 16.532528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973167, 30.476006, 16.285437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573528, 30.475605, 16.268440>,  <38.333744, 30.475365, 16.258244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573528, 30.475605, 16.268440>,  <38.973167, 30.476006, 16.285437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573528, 30.475605, 16.268440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040485, -0.326771, -0.944236,
		-0.012937, -0.945103, 0.326516,
		-0.999097, -0.001003, -0.042490,
		38.273800, 30.475304, 16.255693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954521, 30.073196, 15.752227>,  <38.973167, 30.476006, 16.285437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954521, 30.073196, 15.752227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586544, 30.229874, 15.758929>,  <38.365757, 30.323879, 15.762951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586544, 30.229874, 15.758929>,  <38.954521, 30.073196, 15.752227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586544, 30.229874, 15.758929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090522, -0.170629, -0.981168,
		-0.381459, -0.904136, 0.192426,
		-0.919943, 0.391694, 0.016757,
		38.310562, 30.347382, 15.763956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626610, 29.733719, 15.200489>,  <38.954521, 30.073196, 15.752227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626610, 29.733719, 15.200489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367771, 30.032377, 15.262177>,  <38.212467, 30.211573, 15.299191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367771, 30.032377, 15.262177>,  <38.626610, 29.733719, 15.200489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367771, 30.032377, 15.262177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293676, -0.057436, -0.954178,
		-0.703573, -0.662740, 0.256438,
		-0.647101, 0.746644, 0.154220,
		38.173641, 30.256371, 15.308443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917267, 29.523060, 14.843662>,  <38.626610, 29.733719, 15.200489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917267, 29.523060, 14.843662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963520, 29.917362, 14.892506>,  <37.991272, 30.153944, 14.921811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963520, 29.917362, 14.892506>,  <37.917267, 29.523060, 14.843662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963520, 29.917362, 14.892506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264421, 0.149045, -0.952821,
		-0.957450, 0.077887, 0.277890,
		0.115631, 0.985758, 0.122108,
		37.998211, 30.213089, 14.929138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418171, 29.830748, 14.435351>,  <37.917267, 29.523060, 14.843662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418171, 29.830748, 14.435351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666084, 30.134895, 14.513023>,  <37.814835, 30.317383, 14.559627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666084, 30.134895, 14.513023>,  <37.418171, 29.830748, 14.435351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666084, 30.134895, 14.513023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025492, 0.266811, -0.963412,
		-0.784357, 0.592159, 0.184749,
		0.619786, 0.760368, 0.194180,
		37.852020, 30.363007, 14.571278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053619, 30.419624, 14.204113>,  <37.418171, 29.830748, 14.435351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053619, 30.419624, 14.204113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450001, 30.470745, 14.187751>,  <37.687832, 30.501417, 14.177934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450001, 30.470745, 14.187751>,  <37.053619, 30.419624, 14.204113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450001, 30.470745, 14.187751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060648, 0.154630, -0.986109,
		-0.119700, 0.979672, 0.160983,
		0.990956, 0.127800, -0.040906,
		37.747288, 30.509085, 14.175479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074104, 30.922132, 13.712146>,  <37.053619, 30.419624, 14.204113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074104, 30.922132, 13.712146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441757, 30.766611, 13.737542>,  <37.662350, 30.673298, 13.752780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441757, 30.766611, 13.737542>,  <37.074104, 30.922132, 13.712146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441757, 30.766611, 13.737542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105554, 0.087780, -0.990532,
		0.379548, 0.917130, 0.121721,
		0.919131, -0.388802, 0.063490,
		37.717495, 30.649971, 13.756589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580643, 31.451622, 13.596263>,  <37.074104, 30.922132, 13.712146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580643, 31.451622, 13.596263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665417, 31.072046, 13.502796>,  <37.716282, 30.844301, 13.446716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665417, 31.072046, 13.502796>,  <37.580643, 31.451622, 13.596263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665417, 31.072046, 13.502796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073247, 0.253849, -0.964466,
		0.974534, 0.187291, 0.123307,
		0.211937, -0.948938, -0.233666,
		37.728996, 30.787365, 13.432696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161079, 31.468773, 13.076041>,  <37.580643, 31.451622, 13.596263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161079, 31.468773, 13.076041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962795, 31.124691, 13.028176>,  <37.843822, 30.918242, 12.999457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962795, 31.124691, 13.028176>,  <38.161079, 31.468773, 13.076041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962795, 31.124691, 13.028176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024004, 0.151300, -0.988196,
		0.868154, -0.486990, -0.095650,
		-0.495714, -0.860203, -0.119662,
		37.814079, 30.866631, 12.992277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738136, 31.618935, 13.436850>,  <38.161079, 31.468773, 13.076041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738136, 31.618935, 13.436850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.044430, 31.809359, 13.609835>,  <39.228207, 31.923613, 13.713626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.044430, 31.809359, 13.609835>,  <38.738136, 31.618935, 13.436850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044430, 31.809359, 13.609835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129439, 0.544576, -0.828663,
		-0.630000, 0.690511, 0.355379,
		0.765732, 0.476058, 0.432462,
		39.274151, 31.952175, 13.739573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741623, 32.388203, 13.542629>,  <38.738136, 31.618935, 13.436850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741623, 32.388203, 13.542629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118294, 32.273586, 13.472052>,  <39.344296, 32.204819, 13.429705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118294, 32.273586, 13.472052>,  <38.741623, 32.388203, 13.542629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118294, 32.273586, 13.472052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002564, 0.530437, -0.847721,
		0.336497, 0.797830, 0.500237,
		0.941681, -0.286538, -0.176444,
		39.400799, 32.187626, 13.419118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376911, 32.215919, 12.793656>,  <38.741623, 32.388203, 13.542629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376911, 32.215919, 12.793656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772881, 32.265778, 12.766791>,  <39.010464, 32.295692, 12.750672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772881, 32.265778, 12.766791>,  <38.376911, 32.215919, 12.793656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772881, 32.265778, 12.766791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086914, 0.160494, -0.983203,
		-0.111768, 0.979136, 0.169711,
		0.989926, 0.124641, -0.067162,
		39.069859, 32.303169, 12.746643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005337, 31.890829, 12.413147>,  <38.376911, 32.215919, 12.793656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005337, 31.890829, 12.413147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333351, 32.020687, 12.224615>,  <39.530159, 32.098602, 12.111496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333351, 32.020687, 12.224615>,  <39.005337, 31.890829, 12.413147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333351, 32.020687, 12.224615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514211, -0.056374, 0.855809,
		0.251263, -0.944154, -0.213165,
		0.820033, 0.324645, -0.471330,
		39.579361, 32.118080, 12.083216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622265, 31.456676, 12.521901>,  <39.005337, 31.890829, 12.413147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622265, 31.456676, 12.521901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720280, 31.839510, 12.460004>,  <39.779091, 32.069210, 12.422865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720280, 31.839510, 12.460004>,  <39.622265, 31.456676, 12.521901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720280, 31.839510, 12.460004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358421, 0.058874, 0.931702,
		0.900828, -0.283768, -0.328612,
		0.245040, 0.957084, -0.154744,
		39.793793, 32.126637, 12.413581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293549, 31.505266, 12.733189>,  <39.622265, 31.456676, 12.521901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293549, 31.505266, 12.733189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069790, 31.824167, 12.823932>,  <39.935535, 32.015507, 12.878377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069790, 31.824167, 12.823932>,  <40.293549, 31.505266, 12.733189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069790, 31.824167, 12.823932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278886, -0.076704, 0.957256,
		0.780575, 0.598753, -0.179435,
		-0.559397, 0.797252, 0.226857,
		39.901970, 32.063343, 12.891989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613235, 31.940729, 13.216490>,  <40.293549, 31.505266, 12.733189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613235, 31.940729, 13.216490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228809, 32.022541, 13.290803>,  <39.998154, 32.071629, 13.335391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228809, 32.022541, 13.290803>,  <40.613235, 31.940729, 13.216490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228809, 32.022541, 13.290803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176705, -0.061956, 0.982312,
		0.212423, 0.976897, 0.023402,
		-0.961068, 0.204530, 0.185784,
		39.940491, 32.083900, 13.346538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668518, 32.373917, 13.776529>,  <40.613235, 31.940729, 13.216490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668518, 32.373917, 13.776529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313087, 32.194118, 13.739888>,  <40.099831, 32.086239, 13.717903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313087, 32.194118, 13.739888>,  <40.668518, 32.373917, 13.776529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313087, 32.194118, 13.739888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017139, -0.167020, 0.985804,
		-0.458411, 0.877531, 0.140707,
		-0.888575, -0.449492, -0.091604,
		40.046516, 32.059273, 13.712407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199432, 32.637550, 14.195997>,  <40.668518, 32.373917, 13.776529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199432, 32.637550, 14.195997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102322, 32.253906, 14.137794>,  <40.044056, 32.023720, 14.102871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102322, 32.253906, 14.137794>,  <40.199432, 32.637550, 14.195997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102322, 32.253906, 14.137794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051203, -0.162458, 0.985386,
		-0.968730, 0.231779, 0.088550,
		-0.242777, -0.959107, -0.145510,
		40.029488, 31.966175, 14.094141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930912, 32.497025, 14.791290>,  <40.199432, 32.637550, 14.195997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930912, 32.497025, 14.791290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975117, 32.138145, 14.620255>,  <40.001640, 31.922819, 14.517634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975117, 32.138145, 14.620255>,  <39.930912, 32.497025, 14.791290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975117, 32.138145, 14.620255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161120, -0.408360, 0.898489,
		-0.980728, -0.168186, 0.099428,
		0.110511, -0.897193, -0.427588,
		40.008270, 31.868988, 14.491979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526146, 32.079887, 15.041398>,  <39.930912, 32.497025, 14.791290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526146, 32.079887, 15.041398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809086, 31.826523, 14.915896>,  <39.978851, 31.674503, 14.840595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809086, 31.826523, 14.915896>,  <39.526146, 32.079887, 15.041398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809086, 31.826523, 14.915896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219450, -0.225152, 0.949288,
		-0.671934, -0.740334, -0.020258,
		0.707352, -0.633413, -0.313753,
		40.021290, 31.636499, 14.821771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471531, 31.491306, 15.503598>,  <39.526146, 32.079887, 15.041398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471531, 31.491306, 15.503598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842110, 31.468824, 15.354712>,  <40.064457, 31.455336, 15.265381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842110, 31.468824, 15.354712>,  <39.471531, 31.491306, 15.503598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842110, 31.468824, 15.354712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355488, -0.194600, 0.914199,
		-0.123816, -0.979271, -0.160306,
		0.926444, -0.056205, -0.372214,
		40.120041, 31.451962, 15.243049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684982, 30.894127, 15.912862>,  <39.471531, 31.491306, 15.503598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684982, 30.894127, 15.912862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016914, 31.035978, 15.740529>,  <40.216076, 31.121090, 15.637130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016914, 31.035978, 15.740529>,  <39.684982, 30.894127, 15.912862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016914, 31.035978, 15.740529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537401, -0.300002, 0.788162,
		0.150255, -0.885572, -0.439529,
		0.829833, 0.354629, -0.430831,
		40.265865, 31.142366, 15.611279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219452, 30.381632, 15.881685>,  <39.684982, 30.894127, 15.912862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219452, 30.381632, 15.881685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.425266, 30.723015, 15.848536>,  <40.548756, 30.927845, 15.828646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.425266, 30.723015, 15.848536>,  <40.219452, 30.381632, 15.881685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425266, 30.723015, 15.848536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532504, -0.242285, 0.811010,
		0.672082, -0.461423, -0.579132,
		0.514534, 0.853456, -0.082874,
		40.579628, 30.979052, 15.823673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940392, 30.236094, 15.966859>,  <40.219452, 30.381632, 15.881685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940392, 30.236094, 15.966859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.862392, 30.611973, 16.079247>,  <40.815594, 30.837500, 16.146679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.862392, 30.611973, 16.079247>,  <40.940392, 30.236094, 15.966859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.862392, 30.611973, 16.079247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522649, -0.142854, 0.840494,
		0.829949, 0.310740, -0.463277,
		-0.194994, 0.939699, 0.280970,
		40.803894, 30.893883, 16.163538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549706, 30.299227, 16.226774>,  <40.940392, 30.236094, 15.966859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549706, 30.299227, 16.226774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327698, 30.601412, 16.366047>,  <41.194492, 30.782722, 16.449610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327698, 30.601412, 16.366047>,  <41.549706, 30.299227, 16.226774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327698, 30.601412, 16.366047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472131, -0.058522, 0.879583,
		0.684868, 0.652573, -0.324197,
		-0.555020, 0.755462, 0.348180,
		41.161190, 30.828051, 16.470501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.941387, 30.701044, 16.607157>,  <41.549706, 30.299227, 16.226774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.941387, 30.701044, 16.607157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.582367, 30.826677, 16.730930>,  <41.366955, 30.902058, 16.805195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.582367, 30.826677, 16.730930>,  <41.941387, 30.701044, 16.607157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.582367, 30.826677, 16.730930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338419, 0.040903, 0.940106,
		0.282616, 0.948513, -0.143005,
		-0.897553, 0.314084, 0.309435,
		41.313103, 30.920902, 16.823761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.119308, 31.225254, 17.019007>,  <41.941387, 30.701044, 16.607157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.119308, 31.225254, 17.019007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747364, 31.128262, 17.129684>,  <41.524197, 31.070066, 17.196091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747364, 31.128262, 17.129684>,  <42.119308, 31.225254, 17.019007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747364, 31.128262, 17.129684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253224, 0.123769, 0.959457,
		-0.266897, 0.962228, -0.053686,
		-0.929862, -0.242482, 0.276693,
		41.468407, 31.055517, 17.212692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.893948, 31.683199, 17.573936>,  <42.119308, 31.225254, 17.019007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.893948, 31.683199, 17.573936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.653614, 31.373009, 17.651545>,  <41.509415, 31.186895, 17.698111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.653614, 31.373009, 17.651545>,  <41.893948, 31.683199, 17.573936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653614, 31.373009, 17.651545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033052, 0.218408, 0.975298,
		-0.798693, 0.592401, -0.105595,
		-0.600830, -0.775473, 0.194021,
		41.473366, 31.140368, 17.709751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354046, 31.994564, 18.016516>,  <41.893948, 31.683199, 17.573936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354046, 31.994564, 18.016516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322880, 31.599077, 18.067686>,  <41.304180, 31.361784, 18.098389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322880, 31.599077, 18.067686>,  <41.354046, 31.994564, 18.016516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.322880, 31.599077, 18.067686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145711, 0.138234, 0.979622,
		-0.986254, 0.057689, -0.154838,
		-0.077917, -0.988718, 0.127928,
		41.299503, 31.302462, 18.106064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819885, 31.920147, 18.477741>,  <41.354046, 31.994564, 18.016516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819885, 31.920147, 18.477741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.027073, 31.577988, 18.477560>,  <41.151386, 31.372692, 18.477451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.027073, 31.577988, 18.477560>,  <40.819885, 31.920147, 18.477741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.027073, 31.577988, 18.477560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027440, -0.017147, 0.999477,
		-0.854960, -0.517684, -0.032354,
		0.517968, -0.855400, -0.000455,
		41.182465, 31.321367, 18.477423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522053, 31.525843, 19.040436>,  <40.819885, 31.920147, 18.477741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522053, 31.525843, 19.040436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869160, 31.346045, 18.955643>,  <41.077423, 31.238165, 18.904768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869160, 31.346045, 18.955643>,  <40.522053, 31.525843, 19.040436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869160, 31.346045, 18.955643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226912, -0.021128, 0.973686,
		-0.442148, -0.893032, 0.083662,
		0.867765, -0.449497, -0.211981,
		41.129490, 31.211195, 18.892048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614239, 30.924599, 19.444458>,  <40.522053, 31.525843, 19.040436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614239, 30.924599, 19.444458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978470, 31.046061, 19.332289>,  <41.197010, 31.118937, 19.264988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978470, 31.046061, 19.332289>,  <40.614239, 30.924599, 19.444458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978470, 31.046061, 19.332289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279836, 0.046409, 0.958925,
		0.304196, -0.951651, -0.042714,
		0.910581, 0.303654, -0.280424,
		41.251644, 31.137157, 19.248161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060818, 30.707287, 20.003666>,  <40.614239, 30.924599, 19.444458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060818, 30.707287, 20.003666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293587, 30.974644, 19.818359>,  <41.433250, 31.135057, 19.707174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293587, 30.974644, 19.818359>,  <41.060818, 30.707287, 20.003666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.293587, 30.974644, 19.818359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459455, 0.199822, 0.865432,
		0.671018, -0.716467, -0.190814,
		0.581925, 0.668391, -0.463269,
		41.468163, 31.175161, 19.679379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703304, 30.752882, 20.375486>,  <41.060818, 30.707287, 20.003666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703304, 30.752882, 20.375486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.724899, 31.083588, 20.151505>,  <41.737858, 31.282011, 20.017117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.724899, 31.083588, 20.151505>,  <41.703304, 30.752882, 20.375486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.724899, 31.083588, 20.151505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560572, 0.438971, 0.702184,
		0.826343, -0.351803, -0.439762,
		0.053988, 0.826764, -0.559952,
		41.741096, 31.331617, 19.983519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475761, 31.099051, 20.369556>,  <41.703304, 30.752882, 20.375486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475761, 31.099051, 20.369556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.245861, 31.400372, 20.241682>,  <42.107922, 31.581163, 20.164957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.245861, 31.400372, 20.241682>,  <42.475761, 31.099051, 20.369556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.245861, 31.400372, 20.241682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389906, 0.595551, 0.702348,
		0.719470, 0.279025, -0.636009,
		-0.574749, 0.753302, -0.319688,
		42.073437, 31.626362, 20.145775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.868881, 31.699812, 20.336437>,  <42.475761, 31.099051, 20.369556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.868881, 31.699812, 20.336437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490437, 31.821762, 20.380121>,  <42.263371, 31.894932, 20.406332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490437, 31.821762, 20.380121>,  <42.868881, 31.699812, 20.336437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.490437, 31.821762, 20.380121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266303, 0.540529, 0.798067,
		0.184282, 0.784142, -0.592590,
		-0.946109, 0.304878, 0.109210,
		42.206604, 31.913225, 20.412884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.869957, 32.423019, 20.232473>,  <42.868881, 31.699812, 20.336437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.869957, 32.423019, 20.232473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.564034, 32.299065, 20.458405>,  <42.380478, 32.224693, 20.593964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.564034, 32.299065, 20.458405>,  <42.869957, 32.423019, 20.232473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.564034, 32.299065, 20.458405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251089, 0.664022, 0.704293,
		-0.593309, 0.680475, -0.430045,
		-0.764813, -0.309884, 0.564830,
		42.334591, 32.206100, 20.627853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.635017, 32.993183, 20.445572>,  <42.869957, 32.423019, 20.232473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.635017, 32.993183, 20.445572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.474068, 32.723709, 20.693520>,  <42.377499, 32.562023, 20.842289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.474068, 32.723709, 20.693520>,  <42.635017, 32.993183, 20.445572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.474068, 32.723709, 20.693520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055400, 0.693782, 0.718051,
		-0.913797, 0.254586, -0.316483,
		-0.402376, -0.673686, 0.619871,
		42.353355, 32.521603, 20.879480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192112, 33.392738, 20.917871>,  <42.635017, 32.993183, 20.445572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.192112, 33.392738, 20.917871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255497, 33.040573, 21.096649>,  <42.293526, 32.829273, 21.203917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255497, 33.040573, 21.096649>,  <42.192112, 33.392738, 20.917871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.255497, 33.040573, 21.096649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002710, 0.453050, 0.891481,
		-0.987362, -0.140053, 0.074177,
		0.158460, -0.880415, 0.446944,
		42.303036, 32.776447, 21.230732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626217, 33.303886, 21.395321>,  <42.192112, 33.392738, 20.917871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626217, 33.303886, 21.395321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911362, 33.050732, 21.516172>,  <42.082447, 32.898838, 21.588682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911362, 33.050732, 21.516172>,  <41.626217, 33.303886, 21.395321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911362, 33.050732, 21.516172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165486, 0.266838, 0.949427,
		-0.681501, -0.726808, 0.085484,
		0.712861, -0.632889, 0.302127,
		42.125221, 32.860867, 21.606810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307247, 33.019588, 21.963711>,  <41.626217, 33.303886, 21.395321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307247, 33.019588, 21.963711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.703243, 32.981903, 22.005753>,  <41.940842, 32.959293, 22.030977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.703243, 32.981903, 22.005753>,  <41.307247, 33.019588, 21.963711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.703243, 32.981903, 22.005753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066578, 0.344905, 0.936274,
		-0.124456, -0.933898, 0.335180,
		0.989989, -0.094210, 0.105103,
		42.000240, 32.953640, 22.037283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374741, 32.799156, 22.582790>,  <41.307247, 33.019588, 21.963711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.374741, 32.799156, 22.582790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734673, 32.958538, 22.511757>,  <41.950630, 33.054169, 22.469137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734673, 32.958538, 22.511757>,  <41.374741, 32.799156, 22.582790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.734673, 32.958538, 22.511757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030187, 0.349226, 0.936552,
		0.435195, -0.848099, 0.302216,
		0.899830, 0.398459, -0.177583,
		42.004623, 33.078075, 22.458483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.751316, 32.475582, 23.045002>,  <41.374741, 32.799156, 22.582790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.751316, 32.475582, 23.045002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.956997, 32.801914, 22.939161>,  <42.080406, 32.997715, 22.875656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.956997, 32.801914, 22.939161>,  <41.751316, 32.475582, 23.045002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.956997, 32.801914, 22.939161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032024, 0.290034, 0.956481,
		0.857072, -0.500297, 0.123009,
		0.514201, 0.815833, -0.264602,
		42.111256, 33.046665, 22.859781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255768, 32.658161, 23.635239>,  <41.751316, 32.475582, 23.045002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255768, 32.658161, 23.635239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192863, 33.001163, 23.439299>,  <42.155121, 33.206966, 23.321735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192863, 33.001163, 23.439299>,  <42.255768, 32.658161, 23.635239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192863, 33.001163, 23.439299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156771, 0.511406, 0.844918,
		0.975035, 0.056076, -0.214855,
		-0.157257, 0.857508, -0.489848,
		42.145687, 33.258415, 23.292345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540260, 33.118435, 24.052168>,  <42.255768, 32.658161, 23.635239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540260, 33.118435, 24.052168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.358131, 33.380802, 23.811354>,  <42.248856, 33.538223, 23.666864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.358131, 33.380802, 23.811354>,  <42.540260, 33.118435, 24.052168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.358131, 33.380802, 23.811354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039114, 0.690281, 0.722484,
		0.889467, 0.305415, -0.339956,
		-0.455322, 0.655923, -0.602036,
		42.221535, 33.577579, 23.630743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.951313, 33.747700, 24.112343>,  <42.540260, 33.118435, 24.052168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.951313, 33.747700, 24.112343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586246, 33.859470, 23.993034>,  <42.367207, 33.926533, 23.921450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586246, 33.859470, 23.993034>,  <42.951313, 33.747700, 24.112343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.586246, 33.859470, 23.993034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032848, 0.677276, 0.734995,
		0.407391, 0.680600, -0.608947,
		-0.912663, 0.279428, -0.298272,
		42.312447, 33.943298, 23.903553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.944084, 34.472931, 24.134277>,  <42.951313, 33.747700, 24.112343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.944084, 34.472931, 24.134277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.564888, 34.346504, 24.149345>,  <42.337372, 34.270649, 24.158386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.564888, 34.346504, 24.149345>,  <42.944084, 34.472931, 24.134277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.564888, 34.346504, 24.149345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187598, 0.650390, 0.736070,
		-0.257150, 0.690718, -0.675856,
		-0.947988, -0.316070, 0.037671,
		42.280491, 34.251682, 24.160646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.589882, 35.056629, 24.348965>,  <42.944084, 34.472931, 24.134277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.589882, 35.056629, 24.348965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.312981, 34.781975, 24.437792>,  <42.146839, 34.617180, 24.491087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.312981, 34.781975, 24.437792>,  <42.589882, 35.056629, 24.348965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.312981, 34.781975, 24.437792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286328, 0.543795, 0.788862,
		-0.662423, 0.482508, -0.573047,
		-0.692252, -0.686639, 0.222067,
		42.105305, 34.575981, 24.504412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032429, 35.396969, 24.479204>,  <42.589882, 35.056629, 24.348965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032429, 35.396969, 24.479204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997818, 35.045322, 24.666679>,  <41.977051, 34.834335, 24.779163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997818, 35.045322, 24.666679>,  <42.032429, 35.396969, 24.479204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997818, 35.045322, 24.666679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042948, 0.473305, 0.879851,
		-0.995323, 0.056001, -0.078710,
		-0.086527, -0.879117, 0.468687,
		41.971859, 34.781586, 24.807285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518841, 35.564270, 25.013086>,  <42.032429, 35.396969, 24.479204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.518841, 35.564270, 25.013086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674950, 35.210209, 25.114439>,  <41.768616, 34.997772, 25.175251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674950, 35.210209, 25.114439>,  <41.518841, 35.564270, 25.013086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674950, 35.210209, 25.114439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098281, 0.233582, 0.967357,
		-0.915440, -0.402432, 0.004166,
		0.390268, -0.885148, 0.253382,
		41.792030, 34.944664, 25.190454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243889, 35.518093, 25.674786>,  <41.518841, 35.564270, 25.013086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243889, 35.518093, 25.674786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.547928, 35.258224, 25.669296>,  <41.730350, 35.102303, 25.666002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.547928, 35.258224, 25.669296>,  <41.243889, 35.518093, 25.674786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.547928, 35.258224, 25.669296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224092, 0.242244, 0.943981,
		-0.609951, -0.720589, 0.329714,
		0.760094, -0.649668, -0.013722,
		41.775955, 35.063324, 25.665180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138153, 35.133106, 26.231171>,  <41.243889, 35.518093, 25.674786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138153, 35.133106, 26.231171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.524174, 35.068111, 26.148924>,  <41.755787, 35.029114, 26.099577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.524174, 35.068111, 26.148924>,  <41.138153, 35.133106, 26.231171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524174, 35.068111, 26.148924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220390, 0.078660, 0.972235,
		-0.141799, -0.983571, 0.111721,
		0.965050, -0.162484, -0.205615,
		41.813690, 35.019367, 26.087240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339314, 34.773483, 26.774893>,  <41.138153, 35.133106, 26.231171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339314, 34.773483, 26.774893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684124, 34.901268, 26.617485>,  <41.891010, 34.977940, 26.523041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684124, 34.901268, 26.617485>,  <41.339314, 34.773483, 26.774893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684124, 34.901268, 26.617485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356053, 0.170917, 0.918702,
		0.360755, -0.932056, 0.033586,
		0.862022, 0.319468, -0.393521,
		41.942730, 34.997108, 26.499430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.862358, 34.363056, 27.136078>,  <41.339314, 34.773483, 26.774893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.862358, 34.363056, 27.136078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.019321, 34.709637, 27.012611>,  <42.113499, 34.917583, 26.938532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.019321, 34.709637, 27.012611>,  <41.862358, 34.363056, 27.136078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.019321, 34.709637, 27.012611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366223, 0.160656, 0.916554,
		0.843738, -0.472708, -0.254271,
		0.392412, 0.866451, -0.308668,
		42.137047, 34.969570, 26.920012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.450951, 34.492222, 27.537054>,  <41.862358, 34.363056, 27.136078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.450951, 34.492222, 27.537054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342945, 34.853397, 27.403313>,  <42.278141, 35.070103, 27.323067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342945, 34.853397, 27.403313>,  <42.450951, 34.492222, 27.537054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342945, 34.853397, 27.403313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172234, 0.386946, 0.905874,
		0.947328, 0.187007, -0.259996,
		-0.270009, 0.902940, -0.334355,
		42.261944, 35.124279, 27.303005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.040012, 34.795349, 27.785496>,  <42.450951, 34.492222, 27.537054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.040012, 34.795349, 27.785496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.145653, 34.533833, 28.069132>,  <43.209038, 34.376923, 28.239313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.145653, 34.533833, 28.069132>,  <43.040012, 34.795349, 27.785496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.145653, 34.533833, 28.069132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053509, -0.743992, -0.666043,
		0.963010, 0.137958, -0.231471,
		0.264098, -0.653792, 0.709090,
		43.224884, 34.337696, 28.281858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.688549, 34.467876, 27.639410>,  <43.040012, 34.795349, 27.785496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.688549, 34.467876, 27.639410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.495708, 34.181095, 27.840824>,  <43.380005, 34.009026, 27.961674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.495708, 34.181095, 27.840824>,  <43.688549, 34.467876, 27.639410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.495708, 34.181095, 27.840824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159845, -0.637072, -0.754049,
		0.861410, -0.283040, 0.421736,
		-0.482102, -0.716957, 0.503537,
		43.351078, 33.966007, 27.991886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.074642, 33.920975, 27.678761>,  <43.688549, 34.467876, 27.639410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.074642, 33.920975, 27.678761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.705826, 33.772221, 27.721735>,  <43.484535, 33.682968, 27.747520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.705826, 33.772221, 27.721735>,  <44.074642, 33.920975, 27.678761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.705826, 33.772221, 27.721735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136174, -0.571419, -0.809281,
		0.362354, -0.731559, 0.577513,
		-0.922039, -0.371889, 0.107437,
		43.429214, 33.660652, 27.753965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.118973, 33.131809, 27.860891>,  <44.074642, 33.920975, 27.678761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.118973, 33.131809, 27.860891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.760151, 33.220207, 27.707817>,  <43.544857, 33.273247, 27.615973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.760151, 33.220207, 27.707817>,  <44.118973, 33.131809, 27.860891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.760151, 33.220207, 27.707817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066161, -0.789051, -0.610755,
		-0.436932, -0.573201, 0.693203,
		-0.897058, 0.220995, -0.382684,
		43.491032, 33.286507, 27.593012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.846062, 32.566196, 27.746283>,  <44.118973, 33.131809, 27.860891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.846062, 32.566196, 27.746283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.607342, 32.783920, 27.510469>,  <43.464108, 32.914555, 27.368982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.607342, 32.783920, 27.510469>,  <43.846062, 32.566196, 27.746283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.607342, 32.783920, 27.510469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029615, -0.749166, -0.661720,
		-0.801844, -0.377455, 0.463222,
		-0.596799, 0.544314, -0.589536,
		43.428299, 32.947212, 27.333609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.278053, 32.112961, 27.626528>,  <43.846062, 32.566196, 27.746283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.278053, 32.112961, 27.626528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290142, 32.398190, 27.346352>,  <43.297394, 32.569328, 27.178246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290142, 32.398190, 27.346352>,  <43.278053, 32.112961, 27.626528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.290142, 32.398190, 27.346352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164058, -0.694796, -0.700245,
		-0.985988, -0.093750, -0.137983,
		0.030222, 0.713070, -0.700441,
		43.299210, 32.612110, 27.136219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.105179, 31.739548, 27.069489>,  <43.278053, 32.112961, 27.626528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.105179, 31.739548, 27.069489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.197742, 32.079952, 26.880924>,  <43.253281, 32.284195, 26.767786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.197742, 32.079952, 26.880924>,  <43.105179, 31.739548, 27.069489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.197742, 32.079952, 26.880924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014742, -0.481439, -0.876355,
		-0.972745, 0.209747, -0.098864,
		0.231410, 0.851013, -0.471409,
		43.267166, 32.335255, 26.739502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.548256, 31.877392, 26.536844>,  <43.105179, 31.739548, 27.069489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.548256, 31.877392, 26.536844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.888515, 32.051952, 26.419575>,  <43.092670, 32.156689, 26.349213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.888515, 32.051952, 26.419575>,  <42.548256, 31.877392, 26.536844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.888515, 32.051952, 26.419575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086813, -0.433390, -0.897016,
		-0.518519, 0.788496, -0.330777,
		0.850648, 0.436404, -0.293172,
		43.143711, 32.182873, 26.331623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351402, 32.117252, 25.863733>,  <42.548256, 31.877392, 26.536844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.351402, 32.117252, 25.863733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.750885, 32.107994, 25.881844>,  <42.990574, 32.102440, 25.892710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.750885, 32.107994, 25.881844>,  <42.351402, 32.117252, 25.863733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.750885, 32.107994, 25.881844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032190, -0.401420, -0.915328,
		0.039364, 0.915602, -0.400155,
		0.998706, -0.023150, 0.045275,
		43.050495, 32.101048, 25.895426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.627159, 32.313438, 25.197046>,  <42.351402, 32.117252, 25.863733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.627159, 32.313438, 25.197046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.952457, 32.129921, 25.340229>,  <43.147636, 32.019810, 25.426138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.952457, 32.129921, 25.340229>,  <42.627159, 32.313438, 25.197046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.952457, 32.129921, 25.340229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096873, -0.499812, -0.860699,
		0.573794, 0.734640, -0.362027,
		0.813250, -0.458794, 0.357956,
		43.196434, 31.992283, 25.447617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.183769, 32.290802, 24.636847>,  <42.627159, 32.313438, 25.197046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.183769, 32.290802, 24.636847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.300858, 32.007565, 24.893883>,  <43.371109, 31.837622, 25.048103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.300858, 32.007565, 24.893883>,  <43.183769, 32.290802, 24.636847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.300858, 32.007565, 24.893883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217410, -0.605137, -0.765860,
		0.931154, 0.363888, -0.023191,
		0.292721, -0.708092, 0.642589,
		43.388676, 31.795137, 25.086658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.913151, 32.057465, 24.434187>,  <43.183769, 32.290802, 24.636847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.913151, 32.057465, 24.434187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725082, 31.757706, 24.620670>,  <43.612244, 31.577850, 24.732561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725082, 31.757706, 24.620670>,  <43.913151, 32.057465, 24.434187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725082, 31.757706, 24.620670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208569, -0.607617, -0.766355,
		0.857579, -0.263078, 0.441982,
		-0.470167, -0.749394, 0.466210,
		43.584034, 31.532887, 24.760532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.067665, 31.465570, 24.063103>,  <43.913151, 32.057465, 24.434187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.067665, 31.465570, 24.063103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.840294, 31.254938, 24.315960>,  <43.703873, 31.128559, 24.467674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.840294, 31.254938, 24.315960>,  <44.067665, 31.465570, 24.063103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.840294, 31.254938, 24.315960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097816, -0.806148, -0.583573,
		0.816898, -0.269885, 0.509745,
		-0.568427, -0.526581, 0.632141,
		43.669765, 31.096964, 24.505602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.386116, 30.849972, 24.129734>,  <44.067665, 31.465570, 24.063103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.386116, 30.849972, 24.129734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005962, 30.756556, 24.211926>,  <43.777870, 30.700506, 24.261240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005962, 30.756556, 24.211926>,  <44.386116, 30.849972, 24.129734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.005962, 30.756556, 24.211926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022189, -0.709776, -0.704078,
		0.310273, -0.664588, 0.679745,
		-0.950388, -0.233539, 0.205477,
		43.720844, 30.686493, 24.273569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.260696, 30.161629, 24.135441>,  <44.386116, 30.849972, 24.129734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.260696, 30.161629, 24.135441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.899490, 30.315361, 24.058655>,  <43.682766, 30.407600, 24.012583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.899490, 30.315361, 24.058655>,  <44.260696, 30.161629, 24.135441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.899490, 30.315361, 24.058655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055615, -0.547660, -0.834850,
		-0.425988, -0.743209, 0.515921,
		-0.903018, 0.384329, -0.191963,
		43.628586, 30.430660, 24.001066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.872974, 29.601624, 23.760258>,  <44.260696, 30.161629, 24.135441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.872974, 29.601624, 23.760258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688061, 29.947302, 23.680799>,  <43.577114, 30.154709, 23.633125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688061, 29.947302, 23.680799>,  <43.872974, 29.601624, 23.760258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.688061, 29.947302, 23.680799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251881, -0.342767, -0.905023,
		-0.850207, -0.368341, 0.376130,
		-0.462282, 0.864197, -0.198645,
		43.549377, 30.206560, 23.621206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.148170, 29.376547, 23.575764>,  <43.872974, 29.601624, 23.760258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.148170, 29.376547, 23.575764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.197018, 29.750990, 23.443830>,  <43.226326, 29.975657, 23.364672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.197018, 29.750990, 23.443830>,  <43.148170, 29.376547, 23.575764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.197018, 29.750990, 23.443830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525872, -0.220813, -0.821402,
		-0.841752, 0.273760, 0.465306,
		0.122122, 0.936107, -0.329832,
		43.233654, 30.031822, 23.344881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.471886, 29.554287, 23.286013>,  <43.148170, 29.376547, 23.575764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.471886, 29.554287, 23.286013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.755531, 29.776106, 23.111824>,  <42.925716, 29.909197, 23.007311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.755531, 29.776106, 23.111824>,  <42.471886, 29.554287, 23.286013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.755531, 29.776106, 23.111824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292496, -0.330607, -0.897299,
		-0.641566, 0.763659, -0.072234,
		0.709112, 0.554548, -0.435473,
		42.968266, 29.942471, 22.981182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.095299, 30.035248, 22.697788>,  <42.471886, 29.554287, 23.286013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.095299, 30.035248, 22.697788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481792, 30.048758, 22.595615>,  <42.713688, 30.056864, 22.534311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481792, 30.048758, 22.595615>,  <42.095299, 30.035248, 22.697788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.481792, 30.048758, 22.595615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240175, -0.240890, -0.940366,
		-0.093291, 0.969965, -0.224645,
		0.966236, 0.033774, -0.255434,
		42.771664, 30.058889, 22.518986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111103, 30.452316, 22.156803>,  <42.095299, 30.035248, 22.697788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.111103, 30.452316, 22.156803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463459, 30.265381, 22.126816>,  <42.674873, 30.153219, 22.108824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463459, 30.265381, 22.126816>,  <42.111103, 30.452316, 22.156803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.463459, 30.265381, 22.126816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114249, -0.056244, -0.991859,
		0.459318, 0.882287, -0.102938,
		0.880894, -0.467339, -0.074966,
		42.727726, 30.125179, 22.104326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.427483, 30.711060, 21.535404>,  <42.111103, 30.452316, 22.156803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.427483, 30.711060, 21.535404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.627460, 30.371778, 21.605383>,  <42.747448, 30.168209, 21.647371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.627460, 30.371778, 21.605383>,  <42.427483, 30.711060, 21.535404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.627460, 30.371778, 21.605383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009462, -0.207342, -0.978223,
		0.866007, 0.487400, -0.111684,
		0.499942, -0.848204, 0.174948,
		42.777443, 30.117317, 21.657867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.059189, 30.643864, 21.164503>,  <42.427483, 30.711060, 21.535404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.059189, 30.643864, 21.164503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948303, 30.266453, 21.237062>,  <42.881771, 30.040007, 21.280598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948303, 30.266453, 21.237062>,  <43.059189, 30.643864, 21.164503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948303, 30.266453, 21.237062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093898, -0.161289, -0.982430,
		0.956208, -0.289378, -0.043884,
		-0.277216, -0.943528, 0.181398,
		42.865139, 29.983395, 21.291481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.388992, 30.271786, 20.644901>,  <43.059189, 30.643864, 21.164503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.388992, 30.271786, 20.644901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119255, 29.995354, 20.748962>,  <42.957413, 29.829494, 20.811399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119255, 29.995354, 20.748962>,  <43.388992, 30.271786, 20.644901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119255, 29.995354, 20.748962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028289, -0.376225, -0.926096,
		0.737880, -0.617143, 0.273253,
		-0.674338, -0.691078, 0.260151,
		42.916954, 29.788031, 20.827007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.479092, 29.600424, 20.345682>,  <43.388992, 30.271786, 20.644901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.479092, 29.600424, 20.345682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.089680, 29.574162, 20.433260>,  <42.856033, 29.558405, 20.485806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.089680, 29.574162, 20.433260>,  <43.479092, 29.600424, 20.345682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.089680, 29.574162, 20.433260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173503, -0.411321, -0.894825,
		0.148807, -0.909123, 0.389041,
		-0.973526, -0.065656, 0.218942,
		42.797623, 29.554464, 20.498943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.207249, 28.893137, 20.163078>,  <43.479092, 29.600424, 20.345682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.207249, 28.893137, 20.163078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877079, 29.118895, 20.167749>,  <42.678978, 29.254349, 20.170551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877079, 29.118895, 20.167749>,  <43.207249, 28.893137, 20.163078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.877079, 29.118895, 20.167749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339456, -0.479712, -0.809102,
		-0.451042, -0.671821, 0.587552,
		-0.825428, 0.564387, 0.011684,
		42.629452, 29.288214, 20.171253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.719055, 28.520145, 19.923666>,  <43.207249, 28.893137, 20.163078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.719055, 28.520145, 19.923666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520802, 28.866226, 19.893263>,  <42.401852, 29.073875, 19.875021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520802, 28.866226, 19.893263>,  <42.719055, 28.520145, 19.923666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520802, 28.866226, 19.893263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537600, -0.374339, -0.755550,
		-0.682156, -0.333611, 0.650666,
		-0.495630, 0.865202, -0.076009,
		42.372112, 29.125786, 19.870461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.107410, 28.338614, 19.721062>,  <42.719055, 28.520145, 19.923666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.107410, 28.338614, 19.721062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074589, 28.722034, 19.611923>,  <42.054897, 28.952087, 19.546440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074589, 28.722034, 19.611923>,  <42.107410, 28.338614, 19.721062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.074589, 28.722034, 19.611923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491418, -0.277090, -0.825669,
		-0.867050, 0.066333, 0.493785,
		-0.082054, 0.958552, -0.272848,
		42.049973, 29.009600, 19.530069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337601, 28.470312, 19.811926>,  <42.107410, 28.338614, 19.721062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337601, 28.470312, 19.811926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553795, 28.678797, 19.547739>,  <41.683510, 28.803888, 19.389227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553795, 28.678797, 19.547739>,  <41.337601, 28.470312, 19.811926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553795, 28.678797, 19.547739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595828, -0.317124, -0.737849,
		-0.594026, 0.792319, 0.139153,
		0.540483, 0.521213, -0.660466,
		41.715939, 28.835161, 19.349600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845383, 28.765387, 19.454126>,  <41.337601, 28.470312, 19.811926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845383, 28.765387, 19.454126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159443, 28.762695, 19.206421>,  <41.347881, 28.761080, 19.057798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159443, 28.762695, 19.206421>,  <40.845383, 28.765387, 19.454126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159443, 28.762695, 19.206421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526356, -0.534128, -0.661556,
		-0.326315, 0.845377, -0.422915,
		0.785155, -0.006728, -0.619263,
		41.394989, 28.760677, 19.020641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531456, 28.923832, 18.778992>,  <40.845383, 28.765387, 19.454126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531456, 28.923832, 18.778992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.891975, 28.771900, 18.695677>,  <41.108288, 28.680740, 18.645687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.891975, 28.771900, 18.695677>,  <40.531456, 28.923832, 18.778992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.891975, 28.771900, 18.695677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388276, -0.495138, -0.777226,
		0.192084, 0.781388, -0.593748,
		0.901302, -0.379831, -0.208286,
		41.162365, 28.657951, 18.633190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604382, 29.174349, 18.159706>,  <40.531456, 28.923832, 18.778992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604382, 29.174349, 18.159706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824715, 28.851612, 18.245106>,  <40.956917, 28.657970, 18.296347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824715, 28.851612, 18.245106>,  <40.604382, 29.174349, 18.159706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824715, 28.851612, 18.245106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303185, -0.431775, -0.849499,
		0.777597, 0.403206, -0.482460,
		0.550837, -0.806843, 0.213501,
		40.989967, 28.609560, 18.309156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969582, 29.063662, 17.501030>,  <40.604382, 29.174349, 18.159706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969582, 29.063662, 17.501030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965908, 28.727009, 17.717020>,  <40.963703, 28.525017, 17.846615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965908, 28.727009, 17.717020>,  <40.969582, 29.063662, 17.501030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965908, 28.727009, 17.717020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210842, -0.526230, -0.823789,
		0.977477, -0.121412, -0.172620,
		-0.009180, -0.841630, 0.539976,
		40.963154, 28.474520, 17.879013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840012, 28.588631, 16.929293>,  <40.969582, 29.063662, 17.501030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840012, 28.588631, 16.929293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792824, 28.370571, 17.261292>,  <40.764511, 28.239735, 17.460491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792824, 28.370571, 17.261292>,  <40.840012, 28.588631, 16.929293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792824, 28.370571, 17.261292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390177, -0.743163, -0.543572,
		0.913151, -0.387971, -0.125034,
		-0.117970, -0.545149, 0.829998,
		40.757431, 28.207027, 17.510290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183826, 27.944382, 16.750875>,  <40.840012, 28.588631, 16.929293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183826, 27.944382, 16.750875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911125, 27.913546, 17.041880>,  <40.747505, 27.895044, 17.216482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911125, 27.913546, 17.041880>,  <41.183826, 27.944382, 16.750875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911125, 27.913546, 17.041880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508950, -0.664373, -0.547338,
		0.525535, -0.743415, 0.413700,
		-0.681750, -0.077093, 0.727512,
		40.706600, 27.890417, 17.260134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130013, 27.247110, 16.730597>,  <41.183826, 27.944382, 16.750875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.130013, 27.247110, 16.730597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808983, 27.417463, 16.897686>,  <40.616364, 27.519676, 16.997940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808983, 27.417463, 16.897686>,  <41.130013, 27.247110, 16.730597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808983, 27.417463, 16.897686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592759, -0.648134, -0.478079,
		0.067135, -0.631305, 0.772623,
		-0.802577, 0.425883, 0.417725,
		40.568211, 27.545229, 17.023003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739346, 26.723516, 16.897671>,  <41.130013, 27.247110, 16.730597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739346, 26.723516, 16.897671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464764, 27.014387, 16.897797>,  <40.300014, 27.188910, 16.897871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464764, 27.014387, 16.897797>,  <40.739346, 26.723516, 16.897671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464764, 27.014387, 16.897797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676237, -0.638207, -0.367962,
		-0.267373, -0.252800, 0.929841,
		-0.686451, 0.727175, 0.000313,
		40.258827, 27.232540, 16.897890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070591, 26.406193, 17.036522>,  <40.739346, 26.723516, 16.897671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070591, 26.406193, 17.036522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958260, 26.757574, 16.881884>,  <39.890862, 26.968403, 16.789101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958260, 26.757574, 16.881884>,  <40.070591, 26.406193, 17.036522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958260, 26.757574, 16.881884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658421, -0.469405, -0.588337,
		-0.698297, 0.089323, 0.710213,
		-0.280825, 0.878453, -0.386597,
		39.874012, 27.021111, 16.765905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346355, 26.340771, 16.873734>,  <40.070591, 26.406193, 17.036522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346355, 26.340771, 16.873734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470245, 26.669075, 16.681725>,  <39.544579, 26.866058, 16.566519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470245, 26.669075, 16.681725>,  <39.346355, 26.340771, 16.873734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470245, 26.669075, 16.681725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500259, -0.288658, -0.816344,
		-0.808586, 0.492978, 0.321188,
		0.309725, 0.820761, -0.480022,
		39.563164, 26.915304, 16.537718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673588, 26.729879, 16.658247>,  <39.346355, 26.340771, 16.873734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673588, 26.729879, 16.658247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995216, 26.792274, 16.428768>,  <39.188194, 26.829712, 16.291080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995216, 26.792274, 16.428768>,  <38.673588, 26.729879, 16.658247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995216, 26.792274, 16.428768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564950, -0.100101, -0.819031,
		-0.185186, 0.982674, 0.007636,
		0.804075, 0.155988, -0.573699,
		39.236439, 26.839071, 16.256659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225250, 26.099934, 16.586344>,  <38.673588, 26.729879, 16.658247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225250, 26.099934, 16.586344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175480, 25.720284, 16.702051>,  <38.145618, 25.492493, 16.771477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175480, 25.720284, 16.702051>,  <38.225250, 26.099934, 16.586344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175480, 25.720284, 16.702051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523073, 0.184990, 0.831970,
		-0.843156, 0.254829, 0.473444,
		-0.124427, -0.949126, 0.289270,
		38.138153, 25.435545, 16.788832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078194, 26.158947, 17.203945>,  <38.225250, 26.099934, 16.586344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078194, 26.158947, 17.203945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198517, 25.777693, 17.190973>,  <38.270710, 25.548941, 17.183189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198517, 25.777693, 17.190973>,  <38.078194, 26.158947, 17.203945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198517, 25.777693, 17.190973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311905, 0.066187, 0.947805,
		-0.901238, -0.295222, 0.317196,
		0.300807, -0.953133, -0.032431,
		38.288757, 25.491753, 17.181244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788048, 25.827089, 17.762335>,  <38.078194, 26.158947, 17.203945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788048, 25.827089, 17.762335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111355, 25.615332, 17.659225>,  <38.305340, 25.488277, 17.597361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111355, 25.615332, 17.659225>,  <37.788048, 25.827089, 17.762335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111355, 25.615332, 17.659225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326563, 0.038747, 0.944381,
		-0.489963, -0.847490, 0.204199,
		0.808265, -0.529396, -0.257774,
		38.353836, 25.456512, 17.581894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785194, 25.360014, 18.346004>,  <37.788048, 25.827089, 17.762335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785194, 25.360014, 18.346004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159821, 25.360147, 18.205809>,  <38.384598, 25.360228, 18.121691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159821, 25.360147, 18.205809>,  <37.785194, 25.360014, 18.346004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159821, 25.360147, 18.205809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344953, -0.177934, 0.921600,
		-0.062056, -0.984042, -0.166762,
		0.936566, 0.000335, -0.350491,
		38.440792, 25.360247, 18.100662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176201, 24.890232, 18.761307>,  <37.785194, 25.360014, 18.346004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176201, 24.890232, 18.761307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.462326, 25.106953, 18.584768>,  <38.633999, 25.236984, 18.478846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.462326, 25.106953, 18.584768>,  <38.176201, 24.890232, 18.761307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462326, 25.106953, 18.584768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459810, 0.110669, 0.881094,
		0.526219, -0.833190, -0.169963,
		0.715310, 0.541799, -0.441346,
		38.676918, 25.269493, 18.452364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793468, 24.664352, 18.933332>,  <38.176201, 24.890232, 18.761307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793468, 24.664352, 18.933332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859947, 25.042717, 18.821886>,  <38.899834, 25.269735, 18.755018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859947, 25.042717, 18.821886>,  <38.793468, 24.664352, 18.933332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859947, 25.042717, 18.821886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493396, 0.164865, 0.854038,
		0.853779, -0.279407, -0.439309,
		0.166197, 0.945913, -0.278616,
		38.909805, 25.326490, 18.738300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485493, 24.743402, 19.188618>,  <38.793468, 24.664352, 18.933332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485493, 24.743402, 19.188618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372875, 25.121349, 19.121731>,  <39.305305, 25.348118, 19.081598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372875, 25.121349, 19.121731>,  <39.485493, 24.743402, 19.188618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372875, 25.121349, 19.121731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577576, 0.306036, 0.756801,
		0.766251, 0.116489, -0.631893,
		-0.281541, 0.944866, -0.167219,
		39.288414, 25.404810, 19.071566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183777, 25.229557, 19.341349>,  <39.485493, 24.743402, 19.188618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183777, 25.229557, 19.341349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879379, 25.489056, 19.342625>,  <39.696739, 25.644754, 19.343390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879379, 25.489056, 19.342625>,  <40.183777, 25.229557, 19.341349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879379, 25.489056, 19.342625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435799, 0.507549, 0.743286,
		0.480587, 0.567027, -0.668966,
		-0.760996, 0.648749, 0.003188,
		39.651081, 25.683680, 19.343580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333824, 26.004257, 19.171019>,  <40.183777, 25.229557, 19.341349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333824, 26.004257, 19.171019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019806, 25.993240, 19.418549>,  <39.831394, 25.986629, 19.567066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019806, 25.993240, 19.418549>,  <40.333824, 26.004257, 19.171019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019806, 25.993240, 19.418549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465084, 0.633649, 0.618212,
		-0.409144, 0.773130, -0.484634,
		-0.785047, -0.027542, 0.618824,
		39.784290, 25.984978, 19.604197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312233, 26.613949, 19.379492>,  <40.333824, 26.004257, 19.171019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312233, 26.613949, 19.379492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079407, 26.429403, 19.647326>,  <39.939709, 26.318676, 19.808025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079407, 26.429403, 19.647326>,  <40.312233, 26.613949, 19.379492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079407, 26.429403, 19.647326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425347, 0.529056, 0.734289,
		-0.693021, 0.712211, -0.111707,
		-0.582067, -0.461363, 0.669583,
		39.904785, 26.290995, 19.848200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035706, 27.159859, 19.808516>,  <40.312233, 26.613949, 19.379492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035706, 27.159859, 19.808516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994522, 26.819109, 20.013926>,  <39.969810, 26.614658, 20.137171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994522, 26.819109, 20.013926>,  <40.035706, 27.159859, 19.808516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994522, 26.819109, 20.013926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367155, 0.447261, 0.815570,
		-0.924444, 0.272515, 0.266719,
		-0.102962, -0.851876, 0.513523,
		39.963634, 26.563545, 20.167982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754551, 27.370951, 20.390675>,  <40.035706, 27.159859, 19.808516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754551, 27.370951, 20.390675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874023, 27.007154, 20.506342>,  <39.945705, 26.788877, 20.575743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874023, 27.007154, 20.506342>,  <39.754551, 27.370951, 20.390675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874023, 27.007154, 20.506342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391362, 0.393075, 0.832063,
		-0.870418, -0.135348, 0.473342,
		0.298677, -0.909491, 0.289169,
		39.963627, 26.734306, 20.593092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523766, 27.300108, 21.057365>,  <39.754551, 27.370951, 20.390675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523766, 27.300108, 21.057365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832390, 27.051588, 21.002699>,  <40.017563, 26.902475, 20.969898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832390, 27.051588, 21.002699>,  <39.523766, 27.300108, 21.057365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832390, 27.051588, 21.002699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406178, 0.315790, 0.857494,
		-0.489604, -0.717120, 0.496011,
		0.771562, -0.621301, -0.136666,
		40.063858, 26.865198, 20.961699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591427, 26.795877, 21.643393>,  <39.523766, 27.300108, 21.057365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591427, 26.795877, 21.643393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945740, 26.831659, 21.461235>,  <40.158329, 26.853128, 21.351940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945740, 26.831659, 21.461235>,  <39.591427, 26.795877, 21.643393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945740, 26.831659, 21.461235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444221, 0.120663, 0.887755,
		0.134365, -0.988654, 0.067143,
		0.885784, 0.089457, -0.455394,
		40.211475, 26.858496, 21.324617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040985, 26.357712, 21.959023>,  <39.591427, 26.795877, 21.643393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040985, 26.357712, 21.959023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290417, 26.615330, 21.781776>,  <40.440075, 26.769901, 21.675428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290417, 26.615330, 21.781776>,  <40.040985, 26.357712, 21.959023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290417, 26.615330, 21.781776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411653, 0.211354, 0.886494,
		0.664598, -0.735210, -0.133327,
		0.623580, 0.644046, -0.443117,
		40.477489, 26.808544, 21.648842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546425, 26.367729, 22.465172>,  <40.040985, 26.357712, 21.959023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546425, 26.367729, 22.465172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.649326, 26.656374, 22.208080>,  <40.711067, 26.829561, 22.053825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.649326, 26.656374, 22.208080>,  <40.546425, 26.367729, 22.465172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649326, 26.656374, 22.208080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480877, 0.481320, 0.732864,
		0.838201, -0.497601, -0.223187,
		0.257249, 0.721613, -0.642727,
		40.726501, 26.872858, 22.015263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328438, 26.468409, 22.431318>,  <40.546425, 26.367729, 22.465172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.328438, 26.468409, 22.431318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169636, 26.812273, 22.302715>,  <41.074352, 27.018593, 22.225554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169636, 26.812273, 22.302715>,  <41.328438, 26.468409, 22.431318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169636, 26.812273, 22.302715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563246, 0.504776, 0.654183,
		0.724665, 0.078629, -0.684601,
		-0.397007, 0.859662, -0.321506,
		41.050533, 27.070171, 22.206263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869915, 26.933567, 22.530867>,  <41.328438, 26.468409, 22.431318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.869915, 26.933567, 22.530867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570076, 27.194235, 22.484509>,  <41.390171, 27.350636, 22.456694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570076, 27.194235, 22.484509>,  <41.869915, 26.933567, 22.530867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570076, 27.194235, 22.484509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455567, 0.634984, 0.623902,
		0.480167, 0.414879, -0.772862,
		-0.749599, 0.651667, -0.115893,
		41.345196, 27.389734, 22.449741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231228, 27.579685, 22.551081>,  <41.869915, 26.933567, 22.530867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.231228, 27.579685, 22.551081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842426, 27.627493, 22.631992>,  <41.609146, 27.656178, 22.680538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842426, 27.627493, 22.631992>,  <42.231228, 27.579685, 22.551081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.842426, 27.627493, 22.631992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217561, 0.782927, 0.582832,
		-0.088708, 0.610525, -0.787014,
		-0.972007, 0.119521, 0.202278,
		41.550823, 27.663349, 22.692677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219543, 28.315584, 22.415989>,  <42.231228, 27.579685, 22.551081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219543, 28.315584, 22.415989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.951363, 28.175604, 22.677685>,  <41.790455, 28.091616, 22.834702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.951363, 28.175604, 22.677685>,  <42.219543, 28.315584, 22.415989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.951363, 28.175604, 22.677685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152837, 0.797729, 0.583325,
		-0.726040, 0.491084, -0.481355,
		-0.670452, -0.349949, 0.654239,
		41.750225, 28.070620, 22.873957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768845, 28.845472, 22.608282>,  <42.219543, 28.315584, 22.415989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768845, 28.845472, 22.608282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.714748, 28.595451, 22.915792>,  <41.682289, 28.445438, 23.100300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.714748, 28.595451, 22.915792>,  <41.768845, 28.845472, 22.608282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714748, 28.595451, 22.915792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099328, 0.780550, 0.617151,
		-0.985821, 0.007106, -0.167650,
		-0.135245, -0.625053, 0.768777,
		41.674175, 28.407936, 23.146425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394596, 29.150053, 23.148626>,  <41.768845, 28.845472, 22.608282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394596, 29.150053, 23.148626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546379, 28.843430, 23.355856>,  <41.637451, 28.659456, 23.480194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546379, 28.843430, 23.355856>,  <41.394596, 29.150053, 23.148626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546379, 28.843430, 23.355856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078359, 0.584567, 0.807553,
		-0.921884, -0.265838, 0.281886,
		0.379459, -0.766558, 0.518073,
		41.660217, 28.613462, 23.511278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165607, 29.215223, 23.878567>,  <41.394596, 29.150053, 23.148626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165607, 29.215223, 23.878567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.463577, 28.949942, 23.907536>,  <41.642361, 28.790771, 23.924917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.463577, 28.949942, 23.907536>,  <41.165607, 29.215223, 23.878567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.463577, 28.949942, 23.907536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167122, 0.290596, 0.942138,
		-0.645877, -0.689718, 0.327309,
		0.744925, -0.663206, 0.072422,
		41.687054, 28.750980, 23.929262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983887, 28.817831, 24.444130>,  <41.165607, 29.215223, 23.878567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983887, 28.817831, 24.444130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380619, 28.775480, 24.415680>,  <41.618660, 28.750071, 24.398611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380619, 28.775480, 24.415680>,  <40.983887, 28.817831, 24.444130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380619, 28.775480, 24.415680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105058, 0.361933, 0.926265,
		-0.072328, -0.926172, 0.370100,
		0.991832, -0.105877, -0.071124,
		41.678169, 28.743717, 24.394342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171543, 28.528776, 25.128105>,  <40.983887, 28.817831, 24.444130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171543, 28.528776, 25.128105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.504066, 28.681370, 24.966415>,  <41.703579, 28.772926, 24.869402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.504066, 28.681370, 24.966415>,  <41.171543, 28.528776, 25.128105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.504066, 28.681370, 24.966415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304805, 0.295255, 0.905493,
		0.464780, -0.875954, 0.129170,
		0.831309, 0.381484, -0.404224,
		41.753460, 28.795815, 24.845148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688255, 28.349766, 25.643873>,  <41.171543, 28.528776, 25.128105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688255, 28.349766, 25.643873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848911, 28.655846, 25.442616>,  <41.945305, 28.839493, 25.321861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848911, 28.655846, 25.442616>,  <41.688255, 28.349766, 25.643873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848911, 28.655846, 25.442616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317255, 0.399125, 0.860261,
		0.859088, -0.505142, -0.082458,
		0.401643, 0.765200, -0.503142,
		41.969406, 28.885405, 25.291674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.468250, 28.425882, 25.771706>,  <41.688255, 28.349766, 25.643873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.468250, 28.425882, 25.771706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322979, 28.786497, 25.677612>,  <42.235817, 29.002867, 25.621157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322979, 28.786497, 25.677612>,  <42.468250, 28.425882, 25.771706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322979, 28.786497, 25.677612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466495, 0.394493, 0.791680,
		0.806528, 0.177781, -0.563832,
		-0.363174, 0.901537, -0.235235,
		42.214027, 29.056959, 25.607042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.775951, 28.858599, 26.228144>,  <42.468250, 28.425882, 25.771706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.775951, 28.858599, 26.228144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528008, 29.127337, 26.065960>,  <42.379242, 29.288578, 25.968649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528008, 29.127337, 26.065960>,  <42.775951, 28.858599, 26.228144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528008, 29.127337, 26.065960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111231, 0.586708, 0.802123,
		0.776786, 0.452108, -0.438408,
		-0.619864, 0.671842, -0.405459,
		42.342049, 29.328890, 25.944323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.084518, 29.432810, 26.352541>,  <42.775951, 28.858599, 26.228144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.084518, 29.432810, 26.352541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700180, 29.524700, 26.290575>,  <42.469578, 29.579834, 26.253395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700180, 29.524700, 26.290575>,  <43.084518, 29.432810, 26.352541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.700180, 29.524700, 26.290575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009629, 0.586445, 0.809932,
		0.276910, 0.776729, -0.565696,
		-0.960847, 0.229726, -0.154914,
		42.411926, 29.593618, 26.244101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.051167, 30.005213, 26.647547>,  <43.084518, 29.432810, 26.352541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.051167, 30.005213, 26.647547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.658504, 29.932476, 26.624594>,  <42.422909, 29.888834, 26.610823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.658504, 29.932476, 26.624594>,  <43.051167, 30.005213, 26.647547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.658504, 29.932476, 26.624594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135256, 0.451926, 0.881742,
		-0.134403, 0.873325, -0.468229,
		-0.981653, -0.181840, -0.057382,
		42.364010, 29.877924, 26.607380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.693714, 30.634798, 26.787773>,  <43.051167, 30.005213, 26.647547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.693714, 30.634798, 26.787773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452244, 30.332762, 26.890078>,  <42.307362, 30.151541, 26.951460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452244, 30.332762, 26.890078>,  <42.693714, 30.634798, 26.787773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452244, 30.332762, 26.890078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098380, 0.388916, 0.916005,
		-0.791136, 0.527810, -0.309065,
		-0.603677, -0.755090, 0.255759,
		42.271141, 30.106236, 26.966805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.288673, 31.010813, 27.223738>,  <42.693714, 30.634798, 26.787773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.288673, 31.010813, 27.223738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232876, 30.621906, 27.298828>,  <42.199398, 30.388563, 27.343882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232876, 30.621906, 27.298828>,  <42.288673, 31.010813, 27.223738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232876, 30.621906, 27.298828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062758, 0.197877, 0.978216,
		-0.988232, 0.124675, -0.088621,
		-0.139495, -0.972266, 0.187724,
		42.191029, 30.330227, 27.355145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724274, 31.015577, 27.660990>,  <42.288673, 31.010813, 27.223738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724274, 31.015577, 27.660990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.887356, 30.658619, 27.738352>,  <41.985207, 30.444445, 27.784769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.887356, 30.658619, 27.738352>,  <41.724274, 31.015577, 27.660990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.887356, 30.658619, 27.738352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321478, 0.057962, 0.945141,
		-0.854651, -0.447514, -0.263254,
		0.407706, -0.892396, 0.193403,
		42.009666, 30.390900, 27.796373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202381, 30.639795, 28.085506>,  <41.724274, 31.015577, 27.660990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202381, 30.639795, 28.085506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563339, 30.485949, 28.163221>,  <41.779915, 30.393641, 28.209850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563339, 30.485949, 28.163221>,  <41.202381, 30.639795, 28.085506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563339, 30.485949, 28.163221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208264, 0.005425, 0.978058,
		-0.377232, -0.923060, -0.075206,
		0.902399, -0.384618, 0.194287,
		41.834061, 30.370564, 28.221508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057259, 30.110044, 28.578655>,  <41.202381, 30.639795, 28.085506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057259, 30.110044, 28.578655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448311, 30.185526, 28.615812>,  <41.682941, 30.230814, 28.638105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448311, 30.185526, 28.615812>,  <41.057259, 30.110044, 28.578655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448311, 30.185526, 28.615812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068178, -0.133483, 0.988703,
		0.198973, -0.972920, -0.117631,
		0.977631, 0.188705, 0.092891,
		41.741600, 30.242138, 28.643681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328991, 29.473576, 28.791588>,  <41.057259, 30.110044, 28.578655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.328991, 29.473576, 28.791588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597698, 29.753086, 28.889925>,  <41.758923, 29.920792, 28.948927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597698, 29.753086, 28.889925>,  <41.328991, 29.473576, 28.791588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597698, 29.753086, 28.889925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032004, -0.304189, 0.952074,
		0.740068, -0.647442, -0.181981,
		0.671770, 0.698776, 0.245841,
		41.799229, 29.962719, 28.963676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870983, 29.176897, 29.234545>,  <41.328991, 29.473576, 28.791588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870983, 29.176897, 29.234545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910152, 29.567089, 29.313383>,  <41.933655, 29.801205, 29.360685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910152, 29.567089, 29.313383>,  <41.870983, 29.176897, 29.234545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910152, 29.567089, 29.313383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093048, -0.206155, 0.974086,
		0.990835, -0.077044, -0.110953,
		0.097921, 0.975482, 0.197096,
		41.939529, 29.859734, 29.372513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582645, 29.292698, 29.625586>,  <41.870983, 29.176897, 29.234545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582645, 29.292698, 29.625586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.326710, 29.595301, 29.679703>,  <42.173149, 29.776863, 29.712173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.326710, 29.595301, 29.679703>,  <42.582645, 29.292698, 29.625586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326710, 29.595301, 29.679703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250934, 0.039262, 0.967208,
		0.726389, 0.652805, -0.214955,
		-0.639837, 0.756508, 0.135291,
		42.134758, 29.822252, 29.720289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.012779, 29.775663, 30.079700>,  <42.582645, 29.292698, 29.625586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.012779, 29.775663, 30.079700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624771, 29.863516, 30.121309>,  <42.391968, 29.916227, 30.146275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624771, 29.863516, 30.121309>,  <43.012779, 29.775663, 30.079700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624771, 29.863516, 30.121309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102765, -0.017177, 0.994557,
		0.220224, 0.975432, -0.005908,
		-0.970021, 0.219633, 0.104023,
		42.333763, 29.929405, 30.152515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.033070, 30.266634, 30.598158>,  <43.012779, 29.775663, 30.079700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.033070, 30.266634, 30.598158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.671780, 30.095648, 30.582882>,  <42.455006, 29.993057, 30.573717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.671780, 30.095648, 30.582882>,  <43.033070, 30.266634, 30.598158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.671780, 30.095648, 30.582882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005202, -0.078071, 0.996934,
		-0.429134, 0.900655, 0.068292,
		-0.903226, -0.427463, -0.038188,
		42.400810, 29.967409, 30.571426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701454, 29.779850, 31.128206>,  <43.033070, 30.266634, 30.598158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701454, 29.779850, 31.128206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.898140, 30.028370, 31.372240>,  <43.016151, 30.177481, 31.518660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.898140, 30.028370, 31.372240>,  <42.701454, 29.779850, 31.128206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.898140, 30.028370, 31.372240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848006, 0.182569, 0.497549,
		0.197748, -0.762002, 0.616643,
		0.491713, 0.621306, 0.610080,
		43.045654, 30.214760, 31.555265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.368320, 29.696749, 31.751696>,  <42.701454, 29.779850, 31.128206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.368320, 29.696749, 31.751696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.572266, 30.036697, 31.804991>,  <42.694633, 30.240667, 31.836967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.572266, 30.036697, 31.804991>,  <42.368320, 29.696749, 31.751696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.572266, 30.036697, 31.804991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678322, 0.301931, 0.669864,
		0.529071, -0.431918, 0.730432,
		0.509866, 0.849874, 0.133236,
		42.725227, 30.291660, 31.844961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.218063, 29.833006, 32.379604>,  <42.368320, 29.696749, 31.751696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.218063, 29.833006, 32.379604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.380581, 30.178600, 32.260643>,  <42.478092, 30.385958, 32.189266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.380581, 30.178600, 32.260643>,  <42.218063, 29.833006, 32.379604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.380581, 30.178600, 32.260643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622733, 0.500006, 0.601828,
		0.668678, -0.059313, 0.741183,
		0.406292, 0.863988, -0.297407,
		42.502468, 30.437798, 32.171421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.383953, 30.203180, 32.942131>,  <42.218063, 29.833006, 32.379604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.383953, 30.203180, 32.942131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387291, 30.474977, 32.648678>,  <42.389294, 30.638056, 32.472607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387291, 30.474977, 32.648678>,  <42.383953, 30.203180, 32.942131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387291, 30.474977, 32.648678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332746, 0.693736, 0.638757,
		0.942980, 0.238786, 0.231886,
		0.008342, 0.679494, -0.733634,
		42.389793, 30.678825, 32.428589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732193, 30.850126, 33.227070>,  <42.383953, 30.203180, 32.942131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732193, 30.850126, 33.227070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.455307, 30.913774, 32.945496>,  <42.289177, 30.951963, 32.776550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.455307, 30.913774, 32.945496>,  <42.732193, 30.850126, 33.227070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.455307, 30.913774, 32.945496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458386, 0.656440, 0.599141,
		0.557424, 0.737406, -0.381459,
		-0.692215, 0.159120, -0.703931,
		42.247643, 30.961510, 32.734318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.500652, 31.478975, 33.433796>,  <42.732193, 30.850126, 33.227070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.500652, 31.478975, 33.433796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231632, 31.374372, 33.156872>,  <42.070221, 31.311611, 32.990719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231632, 31.374372, 33.156872>,  <42.500652, 31.478975, 33.433796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.231632, 31.374372, 33.156872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650255, 0.655462, 0.384106,
		0.353337, 0.708508, -0.610876,
		-0.672549, -0.261506, -0.692310,
		42.029869, 31.295921, 32.949181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.235245, 32.067745, 33.117332>,  <42.500652, 31.478975, 33.433796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.235245, 32.067745, 33.117332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.959652, 31.790274, 33.033325>,  <41.794296, 31.623791, 32.982922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.959652, 31.790274, 33.033325>,  <42.235245, 32.067745, 33.117332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.959652, 31.790274, 33.033325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702423, 0.567677, 0.429353,
		-0.178610, 0.443341, -0.878378,
		-0.688985, -0.693680, -0.210020,
		41.752956, 31.582170, 32.970318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609894, 32.518070, 32.909813>,  <42.235245, 32.067745, 33.117332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609894, 32.518070, 32.909813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490719, 32.152870, 33.021282>,  <41.419212, 31.933750, 33.088165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490719, 32.152870, 33.021282>,  <41.609894, 32.518070, 32.909813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490719, 32.152870, 33.021282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837395, 0.390120, 0.382853,
		-0.458261, -0.119293, -0.880776,
		-0.297936, -0.913004, 0.278672,
		41.401337, 31.878969, 33.104885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930988, 32.470066, 32.703201>,  <41.609894, 32.518070, 32.909813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930988, 32.470066, 32.703201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942535, 32.222282, 33.016998>,  <40.949463, 32.073612, 33.205276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942535, 32.222282, 33.016998>,  <40.930988, 32.470066, 32.703201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942535, 32.222282, 33.016998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681962, 0.561598, 0.468546,
		-0.730818, -0.548521, -0.406239,
		0.028864, -0.619461, 0.784496,
		40.951195, 32.036446, 33.252346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385319, 32.584106, 33.181969>,  <40.930988, 32.470066, 32.703201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385319, 32.584106, 33.181969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519295, 32.279545, 33.403988>,  <40.599682, 32.096806, 33.537197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519295, 32.279545, 33.403988>,  <40.385319, 32.584106, 33.181969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519295, 32.279545, 33.403988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688710, 0.204181, 0.695693,
		-0.643035, -0.615281, -0.455999,
		0.334940, -0.761406, 0.555045,
		40.619778, 32.051125, 33.570503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772350, 32.123066, 33.321171>,  <40.385319, 32.584106, 33.181969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772350, 32.123066, 33.321171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071548, 32.134270, 33.586414>,  <40.251068, 32.140991, 33.745560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071548, 32.134270, 33.586414>,  <39.772350, 32.123066, 33.321171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071548, 32.134270, 33.586414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643112, 0.277518, 0.713716,
		-0.164036, -0.960312, 0.225595,
		0.747997, 0.028008, 0.663111,
		40.295948, 32.142673, 33.785347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567844, 31.604626, 33.768837>,  <39.772350, 32.123066, 33.321171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567844, 31.604626, 33.768837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781948, 31.911531, 33.910149>,  <39.910412, 32.095676, 33.994934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781948, 31.911531, 33.910149>,  <39.567844, 31.604626, 33.768837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781948, 31.911531, 33.910149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691282, 0.157550, 0.705200,
		0.485416, -0.621678, 0.614725,
		0.535258, 0.767264, 0.353278,
		39.942524, 32.141712, 34.016132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504135, 31.642897, 34.497921>,  <39.567844, 31.604626, 33.768837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504135, 31.642897, 34.497921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625076, 32.024158, 34.494308>,  <39.697639, 32.252914, 34.492142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625076, 32.024158, 34.494308>,  <39.504135, 31.642897, 34.497921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625076, 32.024158, 34.494308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641292, 0.210416, 0.737882,
		0.705215, -0.217306, 0.674870,
		0.302350, 0.953154, -0.009032,
		39.715782, 32.310104, 34.491600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743134, 31.731825, 35.142643>,  <39.504135, 31.642897, 34.497921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743134, 31.731825, 35.142643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631062, 32.085976, 34.994263>,  <39.563820, 32.298466, 34.905235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631062, 32.085976, 34.994263>,  <39.743134, 31.731825, 35.142643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631062, 32.085976, 34.994263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665069, 0.099626, 0.740107,
		0.692230, 0.454072, 0.560924,
		-0.280179, 0.885378, -0.370953,
		39.547009, 32.351589, 34.882977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831459, 32.212482, 35.735363>,  <39.743134, 31.731825, 35.142643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831459, 32.212482, 35.735363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572941, 32.393204, 35.489376>,  <39.417831, 32.501637, 35.341785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572941, 32.393204, 35.489376>,  <39.831459, 32.212482, 35.735363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572941, 32.393204, 35.489376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572286, 0.246110, 0.782252,
		0.504774, 0.857498, 0.099502,
		-0.646291, 0.451804, -0.614964,
		39.379055, 32.528744, 35.304886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797298, 32.966503, 35.952351>,  <39.831459, 32.212482, 35.735363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797298, 32.966503, 35.952351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450466, 32.857285, 35.785683>,  <39.242367, 32.791752, 35.685680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450466, 32.857285, 35.785683>,  <39.797298, 32.966503, 35.952351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450466, 32.857285, 35.785683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496982, 0.416404, 0.761325,
		-0.034376, 0.867209, -0.496757,
		-0.867079, -0.273051, -0.416673,
		39.190342, 32.775368, 35.660679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343536, 33.483894, 36.204845>,  <39.797298, 32.966503, 35.952351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343536, 33.483894, 36.204845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098328, 33.233566, 36.011948>,  <38.951202, 33.083370, 35.896210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098328, 33.233566, 36.011948>,  <39.343536, 33.483894, 36.204845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098328, 33.233566, 36.011948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732184, 0.220668, 0.644370,
		-0.296842, 0.748103, -0.593488,
		-0.613018, -0.625818, -0.482245,
		38.914421, 33.045822, 35.867275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722355, 33.797955, 36.008106>,  <39.343536, 33.483894, 36.204845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722355, 33.797955, 36.008106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.635807, 33.407475, 36.013905>,  <38.583878, 33.173187, 36.017384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.635807, 33.407475, 36.013905>,  <38.722355, 33.797955, 36.008106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635807, 33.407475, 36.013905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778453, 0.181458, 0.600903,
		-0.589234, 0.118734, -0.799191,
		-0.216367, -0.976205, 0.014492,
		38.570896, 33.114613, 36.018253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952244, 33.696350, 35.966129>,  <38.722355, 33.797955, 36.008106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952244, 33.696350, 35.966129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084675, 33.345417, 36.105083>,  <38.164135, 33.134857, 36.188457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084675, 33.345417, 36.105083>,  <37.952244, 33.696350, 35.966129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084675, 33.345417, 36.105083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761189, -0.030751, 0.647800,
		-0.557653, -0.478900, -0.677996,
		0.331080, -0.877331, 0.347385,
		38.183998, 33.082218, 36.209301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346424, 33.261410, 36.007805>,  <37.952244, 33.696350, 35.966129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346424, 33.261410, 36.007805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637630, 33.113808, 36.238918>,  <37.812355, 33.025246, 36.377586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637630, 33.113808, 36.238918>,  <37.346424, 33.261410, 36.007805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637630, 33.113808, 36.238918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641805, -0.070563, 0.763614,
		-0.241009, -0.926744, -0.288202,
		0.728011, -0.369007, 0.577783,
		37.856033, 33.003105, 36.412254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034786, 32.624973, 36.362774>,  <37.346424, 33.261410, 36.007805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034786, 32.624973, 36.362774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338108, 32.792671, 36.562458>,  <37.520100, 32.893291, 36.682270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338108, 32.792671, 36.562458>,  <37.034786, 32.624973, 36.362774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338108, 32.792671, 36.562458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468603, -0.181811, 0.864497,
		0.453198, -0.889482, 0.058592,
		0.758303, 0.419244, 0.499211,
		37.565598, 32.918446, 36.712223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277447, 32.114769, 36.927898>,  <37.034786, 32.624973, 36.362774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277447, 32.114769, 36.927898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398785, 32.483498, 37.024422>,  <37.471588, 32.704735, 37.082336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398785, 32.483498, 37.024422>,  <37.277447, 32.114769, 36.927898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398785, 32.483498, 37.024422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082623, -0.277737, 0.957098,
		0.949292, -0.270392, -0.160414,
		0.303344, 0.921819, 0.241312,
		37.489788, 32.760044, 37.096817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812969, 31.987450, 37.403580>,  <37.277447, 32.114769, 36.927898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812969, 31.987450, 37.403580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.620342, 32.335365, 37.446583>,  <37.504765, 32.544113, 37.472385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.620342, 32.335365, 37.446583>,  <37.812969, 31.987450, 37.403580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620342, 32.335365, 37.446583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013736, -0.115159, 0.993252,
		0.876299, 0.479798, 0.043510,
		-0.481571, 0.869789, 0.107504,
		37.475872, 32.596302, 37.478832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040375, 32.269005, 38.058594>,  <37.812969, 31.987450, 37.403580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040375, 32.269005, 38.058594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703392, 32.309521, 38.270256>,  <37.501202, 32.333832, 38.397255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703392, 32.309521, 38.270256>,  <38.040375, 32.269005, 38.058594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703392, 32.309521, 38.270256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181844, -0.977991, -0.102302,
		0.507150, -0.182410, 0.842334,
		-0.842456, 0.101291, 0.529158,
		37.450657, 32.339909, 38.429005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400158, 32.764275, 37.593609>,  <38.040375, 32.269005, 38.058594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400158, 32.764275, 37.593609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094006, 32.706314, 37.342789>,  <37.910313, 32.671539, 37.192295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094006, 32.706314, 37.342789>,  <38.400158, 32.764275, 37.593609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094006, 32.706314, 37.342789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632057, 0.014280, -0.774790,
		0.121218, -0.989344, 0.080653,
		-0.765382, -0.144896, -0.627053,
		37.864391, 32.662846, 37.154675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709278, 32.422207, 37.107533>,  <38.400158, 32.764275, 37.593609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709278, 32.422207, 37.107533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394333, 32.548286, 36.895603>,  <38.205364, 32.623936, 36.768448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394333, 32.548286, 36.895603>,  <38.709278, 32.422207, 37.107533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394333, 32.548286, 36.895603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526856, -0.102240, -0.843783,
		-0.320128, -0.943503, -0.085564,
		-0.787363, 0.315198, -0.529820,
		38.158123, 32.642845, 36.736656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683758, 31.979853, 36.641411>,  <38.709278, 32.422207, 37.107533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683758, 31.979853, 36.641411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498795, 32.311813, 36.516548>,  <38.387817, 32.510990, 36.441631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498795, 32.311813, 36.516548>,  <38.683758, 31.979853, 36.641411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498795, 32.311813, 36.516548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517369, -0.033373, -0.855112,
		-0.720078, -0.556907, -0.413935,
		-0.462404, 0.829904, -0.312157,
		38.360073, 32.560783, 36.422901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396935, 31.818340, 36.004452>,  <38.683758, 31.979853, 36.641411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396935, 31.818340, 36.004452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455780, 32.213711, 35.989651>,  <38.491085, 32.450935, 35.980770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455780, 32.213711, 35.989651>,  <38.396935, 31.818340, 36.004452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455780, 32.213711, 35.989651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375402, -0.090401, -0.922443,
		-0.915113, 0.121810, -0.384356,
		0.147109, 0.988428, -0.037000,
		38.499912, 32.510239, 35.978550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186707, 32.087139, 35.355202>,  <38.396935, 31.818340, 36.004452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186707, 32.087139, 35.355202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403816, 32.395889, 35.487629>,  <38.534084, 32.581139, 35.567085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403816, 32.395889, 35.487629>,  <38.186707, 32.087139, 35.355202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403816, 32.395889, 35.487629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394022, 0.114090, -0.911992,
		-0.741713, 0.625457, -0.242209,
		0.542779, 0.771872, 0.331066,
		38.566650, 32.627453, 35.586948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149319, 32.624096, 34.857506>,  <38.186707, 32.087139, 35.355202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149319, 32.624096, 34.857506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483479, 32.667320, 35.073074>,  <38.683975, 32.693253, 35.202415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483479, 32.667320, 35.073074>,  <38.149319, 32.624096, 34.857506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483479, 32.667320, 35.073074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524732, 0.135072, -0.840483,
		-0.163613, 0.984926, 0.056138,
		0.835396, 0.108057, 0.538922,
		38.734097, 32.699738, 35.234753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598633, 33.129238, 34.496155>,  <38.149319, 32.624096, 34.857506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598633, 33.129238, 34.496155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855431, 32.947578, 34.743248>,  <39.009510, 32.838581, 34.891506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855431, 32.947578, 34.743248>,  <38.598633, 33.129238, 34.496155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855431, 32.947578, 34.743248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702871, 0.026732, -0.710815,
		0.306303, 0.890524, 0.336370,
		0.641990, -0.454150, 0.617736,
		39.048027, 32.811333, 34.928570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208519, 33.478458, 34.430916>,  <38.598633, 33.129238, 34.496155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208519, 33.478458, 34.430916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295944, 33.117413, 34.579250>,  <39.348400, 32.900784, 34.668251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295944, 33.117413, 34.579250>,  <39.208519, 33.478458, 34.430916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295944, 33.117413, 34.579250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809157, -0.044777, -0.585883,
		0.545432, 0.428114, 0.720571,
		0.218560, -0.902615, 0.370834,
		39.361511, 32.846626, 34.690502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939198, 33.441536, 34.163063>,  <39.208519, 33.478458, 34.430916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939198, 33.441536, 34.163063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839302, 33.092632, 34.331249>,  <39.779366, 32.883289, 34.432163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839302, 33.092632, 34.331249>,  <39.939198, 33.441536, 34.163063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839302, 33.092632, 34.331249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843662, -0.409128, -0.347633,
		0.475252, 0.267916, 0.838067,
		-0.249740, -0.872259, 0.420470,
		39.764381, 32.830956, 34.457390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525738, 33.285973, 34.476395>,  <39.939198, 33.441536, 34.163063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525738, 33.285973, 34.476395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316853, 32.945358, 34.495110>,  <40.191521, 32.740990, 34.506340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316853, 32.945358, 34.495110>,  <40.525738, 33.285973, 34.476395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316853, 32.945358, 34.495110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826389, -0.518817, -0.218884,
		0.210663, -0.075636, 0.974628,
		-0.522209, -0.851533, 0.046791,
		40.160191, 32.689899, 34.509148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937019, 32.818310, 34.807892>,  <40.525738, 33.285973, 34.476395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937019, 32.818310, 34.807892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687103, 32.625023, 34.562572>,  <40.537151, 32.509052, 34.415382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687103, 32.625023, 34.562572>,  <40.937019, 32.818310, 34.807892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687103, 32.625023, 34.562572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769834, -0.512377, -0.380560,
		-0.130347, -0.709909, 0.692126,
		-0.624792, -0.483218, -0.613299,
		40.499664, 32.480057, 34.378582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389374, 32.429455, 34.443066>,  <40.937019, 32.818310, 34.807892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.389374, 32.429455, 34.443066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047928, 32.329590, 34.260193>,  <40.843060, 32.269669, 34.150471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047928, 32.329590, 34.260193>,  <41.389374, 32.429455, 34.443066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047928, 32.329590, 34.260193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516330, -0.521630, -0.679195,
		-0.068906, -0.815824, 0.574180,
		-0.853613, -0.249666, -0.457178,
		40.791843, 32.254688, 34.123039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282997, 31.736668, 34.516891>,  <41.389374, 32.429455, 34.443066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282997, 31.736668, 34.516891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105949, 31.857985, 34.179348>,  <40.999722, 31.930775, 33.976822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105949, 31.857985, 34.179348>,  <41.282997, 31.736668, 34.516891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105949, 31.857985, 34.179348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604884, -0.593729, -0.530662,
		-0.661971, -0.745318, 0.079337,
		-0.442617, 0.303294, -0.843863,
		40.973164, 31.948973, 33.926189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073895, 31.076471, 34.182716>,  <41.282997, 31.736668, 34.516891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.073895, 31.076471, 34.182716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071526, 31.366564, 33.907326>,  <41.070107, 31.540619, 33.742088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071526, 31.366564, 33.907326>,  <41.073895, 31.076471, 34.182716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071526, 31.366564, 33.907326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502509, -0.593091, -0.629069,
		-0.864552, -0.349692, -0.360923,
		-0.005920, 0.725230, -0.688481,
		41.069748, 31.584133, 33.700783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081093, 30.726271, 33.536282>,  <41.073895, 31.076471, 34.182716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081093, 30.726271, 33.536282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.151474, 31.100544, 33.413944>,  <41.193703, 31.325108, 33.340542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.151474, 31.100544, 33.413944>,  <41.081093, 30.726271, 33.536282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.151474, 31.100544, 33.413944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464179, -0.352845, -0.812427,
		-0.868089, 0.000982, -0.496408,
		0.175953, 0.935681, -0.305845,
		41.204258, 31.381248, 33.322189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789719, 30.725302, 32.863022>,  <41.081093, 30.726271, 33.536282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789719, 30.725302, 32.863022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093838, 30.982895, 32.897038>,  <41.276310, 31.137451, 32.917446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093838, 30.982895, 32.897038>,  <40.789719, 30.725302, 32.863022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093838, 30.982895, 32.897038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439574, -0.413688, -0.797269,
		-0.478248, 0.643543, -0.597605,
		0.760299, 0.643983, 0.085040,
		41.321926, 31.176090, 32.922550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969002, 31.073709, 32.261162>,  <40.789719, 30.725302, 32.863022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969002, 31.073709, 32.261162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315018, 31.121078, 32.456173>,  <41.522629, 31.149500, 32.573181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315018, 31.121078, 32.456173>,  <40.969002, 31.073709, 32.261162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315018, 31.121078, 32.456173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501698, -0.209085, -0.839395,
		0.002530, 0.970700, -0.240279,
		0.865039, 0.118424, 0.487527,
		41.574528, 31.156605, 32.602432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474689, 31.082869, 31.716576>,  <40.969002, 31.073709, 32.261162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474689, 31.082869, 31.716576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.693504, 31.064617, 32.050922>,  <41.824791, 31.053667, 32.251530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.693504, 31.064617, 32.050922>,  <41.474689, 31.082869, 31.716576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.693504, 31.064617, 32.050922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775552, -0.348202, -0.526570,
		0.315075, 0.936309, -0.155093,
		0.547035, -0.045627, 0.835865,
		41.857616, 31.050930, 32.301682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066139, 31.388950, 31.468916>,  <41.474689, 31.082869, 31.716576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.066139, 31.388950, 31.468916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161015, 31.207243, 31.812399>,  <42.217941, 31.098219, 32.018490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161015, 31.207243, 31.812399>,  <42.066139, 31.388950, 31.468916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161015, 31.207243, 31.812399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850069, -0.330815, -0.409809,
		0.470237, 0.827165, 0.307694,
		0.237190, -0.454268, 0.858709,
		42.232170, 31.070963, 32.070011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.838505, 31.622770, 31.762857>,  <42.066139, 31.388950, 31.468916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.838505, 31.622770, 31.762857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.745533, 31.254177, 31.887337>,  <42.689751, 31.033022, 31.962025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.745533, 31.254177, 31.887337>,  <42.838505, 31.622770, 31.762857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.745533, 31.254177, 31.887337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898082, -0.326174, -0.295058,
		0.373396, 0.210903, 0.903380,
		-0.232431, -0.921483, 0.311200,
		42.675804, 30.977732, 31.980698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.410919, 31.382273, 32.081524>,  <42.838505, 31.622770, 31.762857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.410919, 31.382273, 32.081524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.207981, 31.048954, 31.993685>,  <43.086220, 30.848963, 31.940983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.207981, 31.048954, 31.993685>,  <43.410919, 31.382273, 32.081524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.207981, 31.048954, 31.993685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857353, -0.462399, -0.226128,
		0.086891, -0.302995, 0.949023,
		-0.507342, -0.833296, -0.219595,
		43.055779, 30.798965, 31.927807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.804417, 30.807753, 32.399185>,  <43.410919, 31.382273, 32.081524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.804417, 30.807753, 32.399185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.569332, 30.663620, 32.109425>,  <43.428284, 30.577141, 31.935568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.569332, 30.663620, 32.109425>,  <43.804417, 30.807753, 32.399185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.569332, 30.663620, 32.109425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790957, -0.444292, -0.420704,
		-0.170252, -0.820222, 0.546123,
		-0.587709, -0.360334, -0.724402,
		43.393021, 30.555519, 31.892103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.935883, 30.118696, 32.327412>,  <43.804417, 30.807753, 32.399185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.935883, 30.118696, 32.327412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.775543, 30.240866, 31.981918>,  <43.679340, 30.314167, 31.774622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.775543, 30.240866, 31.981918>,  <43.935883, 30.118696, 32.327412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.775543, 30.240866, 31.981918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807421, -0.327708, -0.490590,
		-0.432890, -0.894050, -0.115244,
		-0.400845, 0.305422, -0.863736,
		43.655289, 30.332493, 31.722797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.000721, 29.541197, 31.809069>,  <43.935883, 30.118696, 32.327412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.000721, 29.541197, 31.809069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.026051, 29.904549, 31.643738>,  <44.041248, 30.122559, 31.544538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.026051, 29.904549, 31.643738>,  <44.000721, 29.541197, 31.809069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.026051, 29.904549, 31.643738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885280, -0.242327, -0.396934,
		-0.460726, -0.340775, -0.819514,
		0.063326, 0.908378, -0.413328,
		44.045048, 30.177061, 31.519739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.918266, 29.707878, 30.987440>,  <44.000721, 29.541197, 31.809069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.918266, 29.707878, 30.987440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.171642, 29.944138, 31.187393>,  <44.323669, 30.085894, 31.307365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.171642, 29.944138, 31.187393>,  <43.918266, 29.707878, 30.987440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.171642, 29.944138, 31.187393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768877, -0.407779, -0.492489,
		-0.087045, 0.696313, -0.712440,
		0.633444, 0.590647, 0.499884,
		44.361675, 30.121332, 31.337358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.581890, 29.642218, 30.709446>,  <43.918266, 29.707878, 30.987440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.581890, 29.642218, 30.709446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.705524, 29.873476, 31.011496>,  <44.779705, 30.012232, 31.192724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.705524, 29.873476, 31.011496>,  <44.581890, 29.642218, 30.709446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.705524, 29.873476, 31.011496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949079, -0.136644, -0.283861,
		-0.060930, 0.804409, -0.590944,
		0.309089, 0.578148, 0.755122,
		44.798252, 30.046921, 31.238031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.253891, 29.933187, 30.406586>,  <44.581890, 29.642218, 30.709446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.253891, 29.933187, 30.406586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.247990, 29.980526, 30.803730>,  <45.244450, 30.008930, 31.042017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.247990, 29.980526, 30.803730>,  <45.253891, 29.933187, 30.406586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.247990, 29.980526, 30.803730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997361, 0.072330, 0.006200,
		-0.071080, 0.990334, -0.119103,
		-0.014755, 0.118348, 0.992863,
		45.243565, 30.016031, 31.101589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.635361, 30.527969, 30.609659>,  <45.253891, 29.933187, 30.406586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.635361, 30.527969, 30.609659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.635208, 30.207640, 30.849220>,  <45.635117, 30.015442, 30.992956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.635208, 30.207640, 30.849220>,  <45.635361, 30.527969, 30.609659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.635208, 30.207640, 30.849220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992079, 0.074926, 0.100823,
		-0.125615, 0.594197, 0.794450,
		-0.000384, -0.800822, 0.598902,
		45.635094, 29.967394, 31.028891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.152214, 30.637379, 31.266499>,  <45.635361, 30.527969, 30.609659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.152214, 30.637379, 31.266499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.081970, 30.247126, 31.213879>,  <46.039825, 30.012974, 31.182306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.081970, 30.247126, 31.213879>,  <46.152214, 30.637379, 31.266499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.081970, 30.247126, 31.213879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978693, -0.187459, 0.083782,
		-0.106400, -0.114033, 0.987763,
		-0.175611, -0.975631, -0.131549,
		46.029285, 29.954437, 31.174414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.301701, 30.788126, 31.979738>,  <46.152214, 30.637379, 31.266499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.301701, 30.788126, 31.979738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.098244, 30.755884, 32.322617>,  <45.976170, 30.736540, 32.528343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.098244, 30.755884, 32.322617>,  <46.301701, 30.788126, 31.979738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.098244, 30.755884, 32.322617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694387, 0.550217, 0.463776,
		-0.509025, 0.831122, -0.223896,
		-0.508646, -0.080603, 0.857194,
		45.945648, 30.731703, 32.579773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.980877, 31.411690, 32.366154>,  <46.301701, 30.788126, 31.979738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.980877, 31.411690, 32.366154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.076488, 31.138386, 32.642132>,  <46.133854, 30.974403, 32.807716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.076488, 31.138386, 32.642132>,  <45.980877, 31.411690, 32.366154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.076488, 31.138386, 32.642132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689876, 0.619523, 0.374516,
		-0.683327, 0.386455, 0.619449,
		0.239029, -0.683260, 0.689943,
		46.148197, 30.933407, 32.849113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.904202, 31.593487, 33.144783>,  <45.980877, 31.411690, 32.366154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.904202, 31.593487, 33.144783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.190899, 31.317129, 33.106960>,  <46.362919, 31.151316, 33.084267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.190899, 31.317129, 33.106960>,  <45.904202, 31.593487, 33.144783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.190899, 31.317129, 33.106960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693201, 0.691179, 0.204317,
		-0.075807, -0.211988, 0.974328,
		0.716747, -0.690893, -0.094554,
		46.405922, 31.109861, 33.078594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.391449, 31.330004, 33.807121>,  <45.904202, 31.593487, 33.144783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.391449, 31.330004, 33.807121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.556442, 31.341763, 33.442924>,  <46.655437, 31.348818, 33.224407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.556442, 31.341763, 33.442924>,  <46.391449, 31.330004, 33.807121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.556442, 31.341763, 33.442924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655593, 0.684377, 0.319101,
		0.632500, -0.728535, 0.263021,
		0.412481, 0.029397, -0.910492,
		46.680187, 31.350582, 33.169777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.143974, 31.308256, 33.877525>,  <46.391449, 31.330004, 33.807121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.143974, 31.308256, 33.877525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.009266, 31.522165, 33.567532>,  <46.928440, 31.650511, 33.381535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.009266, 31.522165, 33.567532>,  <47.143974, 31.308256, 33.877525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.009266, 31.522165, 33.567532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503517, 0.797777, 0.331696,
		0.795647, -0.278511, -0.537939,
		-0.336774, 0.534774, -0.774984,
		46.908234, 31.682598, 33.335037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.782455, 31.503040, 33.548023>,  <47.143974, 31.308256, 33.877525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.782455, 31.503040, 33.548023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.479698, 31.759031, 33.495056>,  <47.298042, 31.912626, 33.463276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.479698, 31.759031, 33.495056>,  <47.782455, 31.503040, 33.548023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.479698, 31.759031, 33.495056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582501, 0.752500, 0.307307,
		0.296311, 0.155469, -0.942353,
		-0.756897, 0.639980, -0.132414,
		47.252628, 31.951025, 33.455334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.082790, 32.036003, 33.249035>,  <47.782455, 31.503040, 33.548023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.082790, 32.036003, 33.249035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.743244, 32.181084, 33.402855>,  <47.539516, 32.268131, 33.495148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.743244, 32.181084, 33.402855>,  <48.082790, 32.036003, 33.249035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.743244, 32.181084, 33.402855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474969, 0.842638, 0.253704,
		-0.232018, 0.398010, -0.887556,
		-0.848865, 0.362698, 0.384549,
		47.488586, 32.289894, 33.518219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.011181, 32.807209, 33.123043>,  <48.082790, 32.036003, 33.249035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.011181, 32.807209, 33.123043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.801228, 32.705521, 33.447971>,  <47.675255, 32.644508, 33.642929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.801228, 32.705521, 33.447971>,  <48.011181, 32.807209, 33.123043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.801228, 32.705521, 33.447971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403009, 0.766381, 0.500244,
		-0.749721, 0.589943, -0.299808,
		-0.524883, -0.254218, 0.812324,
		47.643764, 32.629253, 33.691669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.461544, 33.376560, 33.180889>,  <48.011181, 32.807209, 33.123043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.461544, 33.376560, 33.180889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.500679, 33.215111, 33.544762>,  <47.524158, 33.118240, 33.763084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.500679, 33.215111, 33.544762>,  <47.461544, 33.376560, 33.180889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.500679, 33.215111, 33.544762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155084, 0.909083, 0.386674,
		-0.983045, 0.103247, 0.151536,
		0.097836, -0.403619, 0.909681,
		47.530029, 33.094025, 33.817665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.972698, 33.662113, 33.738647>,  <47.461544, 33.376560, 33.180889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.972698, 33.662113, 33.738647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.308563, 33.525112, 33.907249>,  <47.510082, 33.442913, 34.008411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.308563, 33.525112, 33.907249>,  <46.972698, 33.662113, 33.738647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.308563, 33.525112, 33.907249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202928, 0.917723, 0.341475,
		-0.503777, -0.201189, 0.840078,
		0.839660, -0.342503, 0.421501,
		47.560463, 33.422359, 34.033699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.909191, 33.724808, 34.507885>,  <46.972698, 33.662113, 33.738647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.909191, 33.724808, 34.507885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.289028, 33.737854, 34.383167>,  <47.516930, 33.745682, 34.308338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.289028, 33.737854, 34.383167>,  <46.909191, 33.724808, 34.507885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.289028, 33.737854, 34.383167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105685, 0.903047, 0.416337,
		0.295140, -0.428302, 0.854078,
		0.949591, 0.032614, -0.311791,
		47.573906, 33.747639, 34.289631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.312622, 33.995495, 35.109707>,  <46.909191, 33.724808, 34.507885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.312622, 33.995495, 35.109707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.515396, 34.063942, 34.771774>,  <47.637062, 34.105011, 34.569016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.515396, 34.063942, 34.771774>,  <47.312622, 33.995495, 35.109707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.515396, 34.063942, 34.771774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095720, 0.962861, 0.252460,
		0.856654, -0.208848, 0.471728,
		0.506934, 0.171117, -0.844830,
		47.667477, 34.115276, 34.518326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.946640, 34.322365, 35.302067>,  <47.312622, 33.995495, 35.109707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.946640, 34.322365, 35.302067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.772358, 34.447292, 34.964401>,  <47.667789, 34.522247, 34.761803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.772358, 34.447292, 34.964401>,  <47.946640, 34.322365, 35.302067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.772358, 34.447292, 34.964401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353116, 0.803372, 0.479482,
		0.827930, 0.507002, -0.239751,
		-0.435707, 0.312318, -0.844167,
		47.641647, 34.540989, 34.711151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.134480, 35.094799, 35.037998>,  <47.946640, 34.322365, 35.302067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.134480, 35.094799, 35.037998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.775906, 34.949562, 34.936363>,  <47.560760, 34.862419, 34.875381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.775906, 34.949562, 34.936363>,  <48.134480, 35.094799, 35.037998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.775906, 34.949562, 34.936363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443149, 0.739960, 0.506041,
		0.004273, 0.566233, -0.824234,
		-0.896438, -0.363096, -0.254088,
		47.506973, 34.840633, 34.860138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.407013, 29.248974, 22.260038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.325127, 29.591452, 22.070292>,  <37.275993, 29.796938, 21.956444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.325127, 29.591452, 22.070292>,  <37.407013, 29.248974, 22.260038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325127, 29.591452, 22.070292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147544, 0.506086, 0.849769,
		0.967637, 0.103974, -0.229932,
		-0.204719, 0.856193, -0.474367,
		37.263710, 29.848310, 21.927982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928349, 29.781815, 22.499958>,  <37.407013, 29.248974, 22.260038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928349, 29.781815, 22.499958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.625778, 29.989546, 22.340904>,  <37.444237, 30.114185, 22.245472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.625778, 29.989546, 22.340904>,  <37.928349, 29.781815, 22.499958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625778, 29.989546, 22.340904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084278, 0.680251, 0.728117,
		0.648623, 0.517258, -0.558330,
		-0.756429, 0.519329, -0.397634,
		37.398849, 30.145344, 22.221615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084747, 30.472094, 22.523300>,  <37.928349, 29.781815, 22.499958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084747, 30.472094, 22.523300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.684807, 30.473988, 22.516668>,  <37.444843, 30.475124, 22.512690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.684807, 30.473988, 22.516668>,  <38.084747, 30.472094, 22.523300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684807, 30.473988, 22.516668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010872, 0.573304, 0.819270,
		0.013385, 0.819329, -0.573168,
		-0.999851, 0.004734, -0.016582,
		37.384850, 30.475409, 22.511694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960606, 31.115366, 22.799417>,  <38.084747, 30.472094, 22.523300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960606, 31.115366, 22.799417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.610630, 30.922045, 22.811417>,  <37.400646, 30.806051, 22.818615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.610630, 30.922045, 22.811417>,  <37.960606, 31.115366, 22.799417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610630, 30.922045, 22.811417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188833, 0.397581, 0.897926,
		-0.445897, 0.779966, -0.439123,
		-0.874939, -0.483303, 0.029997,
		37.348148, 30.777054, 22.820415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465702, 31.628998, 22.812986>,  <37.960606, 31.115366, 22.799417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465702, 31.628998, 22.812986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.311169, 31.300667, 22.981268>,  <37.218449, 31.103668, 23.082237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.311169, 31.300667, 22.981268>,  <37.465702, 31.628998, 22.812986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311169, 31.300667, 22.981268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100469, 0.490851, 0.865431,
		-0.916873, 0.292073, -0.272098,
		-0.386329, -0.820828, 0.420704,
		37.195271, 31.054419, 23.107479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776276, 31.825916, 23.214005>,  <37.465702, 31.628998, 22.812986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776276, 31.825916, 23.214005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.954845, 31.505373, 23.373270>,  <37.061985, 31.313047, 23.468830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.954845, 31.505373, 23.373270>,  <36.776276, 31.825916, 23.214005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954845, 31.505373, 23.373270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136159, 0.378951, 0.915345,
		-0.884403, -0.462843, 0.060060,
		0.446421, -0.801356, 0.398166,
		37.088772, 31.264965, 23.492720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584007, 32.055485, 23.933529>,  <36.776276, 31.825916, 23.214005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584007, 32.055485, 23.933529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.775795, 31.705683, 23.962769>,  <36.890869, 31.495802, 23.980312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.775795, 31.705683, 23.962769>,  <36.584007, 32.055485, 23.933529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775795, 31.705683, 23.962769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006857, 0.087030, 0.996182,
		-0.877530, -0.477140, 0.047724,
		0.479472, -0.874507, 0.073099,
		36.919636, 31.443331, 23.984699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343796, 31.726984, 24.545439>,  <36.584007, 32.055485, 23.933529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343796, 31.726984, 24.545439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.685108, 31.530165, 24.476387>,  <36.889896, 31.412073, 24.434956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.685108, 31.530165, 24.476387>,  <36.343796, 31.726984, 24.545439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685108, 31.530165, 24.476387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256718, 0.108243, 0.960406,
		-0.453879, -0.863813, 0.218679,
		0.853282, -0.492047, -0.172627,
		36.941093, 31.382551, 24.424599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515152, 31.439074, 25.243637>,  <36.343796, 31.726984, 24.545439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515152, 31.439074, 25.243637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.854881, 31.436039, 25.032513>,  <37.058720, 31.434217, 24.905838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.854881, 31.436039, 25.032513>,  <36.515152, 31.439074, 25.243637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854881, 31.436039, 25.032513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524154, 0.130520, 0.841562,
		0.062504, -0.991416, 0.114831,
		0.849326, -0.007588, -0.527813,
		37.109680, 31.433764, 24.874168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951225, 31.200993, 25.718266>,  <36.515152, 31.439074, 25.243637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951225, 31.200993, 25.718266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.208206, 31.322876, 25.437010>,  <37.362396, 31.396006, 25.268255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.208206, 31.322876, 25.437010>,  <36.951225, 31.200993, 25.718266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208206, 31.322876, 25.437010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729837, 0.036466, 0.682648,
		0.233648, -0.951748, -0.198959,
		0.642453, 0.304707, -0.703141,
		37.400944, 31.414288, 25.226067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469746, 30.703739, 25.664476>,  <36.951225, 31.200993, 25.718266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469746, 30.703739, 25.664476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.608368, 31.058783, 25.543119>,  <37.691544, 31.271809, 25.470304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.608368, 31.058783, 25.543119>,  <37.469746, 30.703739, 25.664476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608368, 31.058783, 25.543119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710683, -0.037351, 0.702520,
		0.612231, -0.459079, -0.643754,
		0.346557, 0.887610, -0.303392,
		37.712334, 31.325066, 25.452103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144306, 30.590351, 25.641560>,  <37.469746, 30.703739, 25.664476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144306, 30.590351, 25.641560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.070904, 30.979704, 25.696486>,  <38.026863, 31.213316, 25.729441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.070904, 30.979704, 25.696486>,  <38.144306, 30.590351, 25.641560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070904, 30.979704, 25.696486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491459, -0.030133, 0.870379,
		0.851348, 0.227203, -0.472848,
		-0.183505, 0.973381, 0.137315,
		38.015854, 31.271719, 25.737680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765572, 30.920603, 25.887459>,  <38.144306, 30.590351, 25.641560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765572, 30.920603, 25.887459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.482891, 31.190388, 25.972950>,  <38.313282, 31.352259, 26.024244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.482891, 31.190388, 25.972950>,  <38.765572, 30.920603, 25.887459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482891, 31.190388, 25.972950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430158, 0.169751, 0.886650,
		0.561731, 0.718530, -0.410089,
		-0.706698, 0.674462, 0.213727,
		38.270882, 31.392727, 26.037067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046127, 31.608427, 25.936497>,  <38.765572, 30.920603, 25.887459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046127, 31.608427, 25.936497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.726036, 31.567165, 26.172798>,  <38.533981, 31.542408, 26.314579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.726036, 31.567165, 26.172798>,  <39.046127, 31.608427, 25.936497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726036, 31.567165, 26.172798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492069, 0.450124, 0.745155,
		-0.342777, 0.886988, -0.309446,
		-0.800232, -0.103153, 0.590752,
		38.485966, 31.536219, 26.350023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153061, 32.179050, 26.310123>,  <39.046127, 31.608427, 25.936497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153061, 32.179050, 26.310123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.857708, 31.997578, 26.509706>,  <38.680496, 31.888695, 26.629457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.857708, 31.997578, 26.509706>,  <39.153061, 32.179050, 26.310123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857708, 31.997578, 26.509706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344499, 0.382303, 0.857417,
		-0.579747, 0.804996, -0.125995,
		-0.738386, -0.453680, 0.498960,
		38.636192, 31.861473, 26.659395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698704, 32.688778, 26.689070>,  <39.153061, 32.179050, 26.310123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698704, 32.688778, 26.689070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.671783, 32.337177, 26.877890>,  <38.655632, 32.126217, 26.991180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.671783, 32.337177, 26.877890>,  <38.698704, 32.688778, 26.689070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671783, 32.337177, 26.877890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506367, 0.377568, 0.775264,
		-0.859688, 0.291205, 0.419686,
		-0.067301, -0.879000, 0.472048,
		38.651592, 32.073479, 27.019505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618820, 32.895538, 27.349371>,  <38.698704, 32.688778, 26.689070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618820, 32.895538, 27.349371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.710419, 32.508717, 27.393854>,  <38.765377, 32.276623, 27.420544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.710419, 32.508717, 27.393854>,  <38.618820, 32.895538, 27.349371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710419, 32.508717, 27.393854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557174, 0.223894, 0.799643,
		-0.798197, -0.121153, 0.590088,
		0.228997, -0.967054, 0.111208,
		38.779118, 32.218601, 27.427216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524258, 32.758682, 27.963430>,  <38.618820, 32.895538, 27.349371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524258, 32.758682, 27.963430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.754375, 32.445305, 27.869404>,  <38.892448, 32.257278, 27.812988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.754375, 32.445305, 27.869404>,  <38.524258, 32.758682, 27.963430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754375, 32.445305, 27.869404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459004, 0.071345, 0.885565,
		-0.677016, -0.617359, 0.400646,
		0.575296, -0.783439, -0.235069,
		38.926964, 32.210274, 27.798883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602280, 32.490742, 28.572126>,  <38.524258, 32.758682, 27.963430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602280, 32.490742, 28.572126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.889503, 32.321556, 28.351042>,  <39.061840, 32.220047, 28.218391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.889503, 32.321556, 28.351042>,  <38.602280, 32.490742, 28.572126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889503, 32.321556, 28.351042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623204, 0.037206, 0.781174,
		-0.309841, -0.905384, 0.290307,
		0.718064, -0.422960, -0.552711,
		39.104923, 32.194668, 28.185228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715351, 31.899715, 28.851988>,  <38.602280, 32.490742, 28.572126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715351, 31.899715, 28.851988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.055984, 31.975304, 28.656397>,  <39.260365, 32.020657, 28.539042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.055984, 31.975304, 28.656397>,  <38.715351, 31.899715, 28.851988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055984, 31.975304, 28.656397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504099, -0.039218, 0.862755,
		0.143859, -0.981199, -0.128657,
		0.851581, 0.188971, -0.488979,
		39.311459, 32.031994, 28.509703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145325, 31.372122, 29.100090>,  <38.715351, 31.899715, 28.851988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145325, 31.372122, 29.100090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.369236, 31.658907, 28.933903>,  <39.503582, 31.830978, 28.834190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.369236, 31.658907, 28.933903>,  <39.145325, 31.372122, 29.100090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369236, 31.658907, 28.933903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563524, 0.038224, 0.825215,
		0.607529, -0.696063, -0.382629,
		0.559776, 0.716963, -0.415470,
		39.537170, 31.873995, 28.809261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811432, 31.012686, 29.035862>,  <39.145325, 31.372122, 29.100090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811432, 31.012686, 29.035862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.811348, 31.411470, 29.067015>,  <39.811298, 31.650742, 29.085707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.811348, 31.411470, 29.067015>,  <39.811432, 31.012686, 29.035862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811348, 31.411470, 29.067015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373439, -0.072168, 0.924843,
		0.927655, 0.029279, -0.372290,
		-0.000211, 0.996963, 0.077881,
		39.811283, 31.710560, 29.090380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758419, 30.675142, 29.664499>,  <39.811432, 31.012686, 29.035862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758419, 30.675142, 29.664499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.730698, 30.398958, 29.952517>,  <39.714066, 30.233248, 30.125326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.730698, 30.398958, 29.952517>,  <39.758419, 30.675142, 29.664499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730698, 30.398958, 29.952517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130411, -0.709314, -0.692724,
		0.989035, -0.141906, -0.040889,
		-0.069299, -0.690461, 0.720042,
		39.709908, 30.191820, 30.168530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247528, 30.014507, 29.498407>,  <39.758419, 30.675142, 29.664499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247528, 30.014507, 29.498407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.948181, 29.908232, 29.741505>,  <39.768574, 29.844467, 29.887363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.948181, 29.908232, 29.741505>,  <40.247528, 30.014507, 29.498407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948181, 29.908232, 29.741505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317585, -0.660875, -0.679988,
		0.582306, -0.701894, 0.410201,
		-0.748371, -0.265687, 0.607743,
		39.723671, 29.828526, 29.923828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306519, 29.318665, 29.494041>,  <40.247528, 30.014507, 29.498407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306519, 29.318665, 29.494041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.940754, 29.395721, 29.636442>,  <39.721294, 29.441956, 29.721882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.940754, 29.395721, 29.636442>,  <40.306519, 29.318665, 29.494041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940754, 29.395721, 29.636442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396007, -0.607884, -0.688226,
		0.083825, -0.770302, 0.632146,
		-0.914413, 0.192644, 0.356001,
		39.666431, 29.453514, 29.743242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924019, 28.713264, 29.705294>,  <40.306519, 29.318665, 29.494041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924019, 28.713264, 29.705294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.635445, 28.975021, 29.614698>,  <39.462299, 29.132076, 29.560341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.635445, 28.975021, 29.614698>,  <39.924019, 28.713264, 29.705294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635445, 28.975021, 29.614698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434147, -0.682234, -0.588279,
		-0.539484, -0.326078, 0.776292,
		-0.721438, 0.654392, -0.226489,
		39.419014, 29.171339, 29.546751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286175, 28.277697, 29.790367>,  <39.924019, 28.713264, 29.705294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286175, 28.277697, 29.790367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.207424, 28.616205, 29.592352>,  <39.160175, 28.819311, 29.473543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.207424, 28.616205, 29.592352>,  <39.286175, 28.277697, 29.790367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207424, 28.616205, 29.592352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510729, -0.519527, -0.685017,
		-0.836897, 0.117968, 0.534497,
		-0.196876, 0.846272, -0.495040,
		39.148361, 28.870087, 29.443840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609489, 28.254965, 29.667883>,  <39.286175, 28.277697, 29.790367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609489, 28.254965, 29.667883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.751644, 28.508324, 29.392927>,  <38.836937, 28.660339, 29.227953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.751644, 28.508324, 29.392927>,  <38.609489, 28.254965, 29.667883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751644, 28.508324, 29.392927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561624, -0.443154, -0.698708,
		-0.747182, 0.634366, 0.198242,
		0.355385, 0.633399, -0.687391,
		38.858261, 28.698343, 29.186710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059933, 28.428391, 29.277369>,  <38.609489, 28.254965, 29.667883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059933, 28.428391, 29.277369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.370140, 28.534809, 29.048357>,  <38.556263, 28.598661, 28.910950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.370140, 28.534809, 29.048357>,  <38.059933, 28.428391, 29.277369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370140, 28.534809, 29.048357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458531, -0.385999, -0.800471,
		-0.433959, 0.883302, -0.177358,
		0.775518, 0.266047, -0.572530,
		38.602795, 28.614624, 28.876598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818165, 28.887499, 28.692282>,  <38.059933, 28.428391, 29.277369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818165, 28.887499, 28.692282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.172356, 28.758797, 28.558180>,  <38.384872, 28.681576, 28.477718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.172356, 28.758797, 28.558180>,  <37.818165, 28.887499, 28.692282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172356, 28.758797, 28.558180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425536, -0.271676, -0.863198,
		0.186657, 0.907009, -0.377483,
		0.885482, -0.321755, -0.335255,
		38.438000, 28.662270, 28.457603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793621, 29.013958, 27.935255>,  <37.818165, 28.887499, 28.692282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793621, 29.013958, 27.935255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.100765, 28.762682, 27.985491>,  <38.285049, 28.611917, 28.015633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.100765, 28.762682, 27.985491>,  <37.793621, 29.013958, 27.935255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100765, 28.762682, 27.985491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296646, -0.522426, -0.799420,
		0.567798, 0.576586, -0.587499,
		0.767858, -0.628188, 0.125590,
		38.331123, 28.574226, 28.023169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164219, 29.093746, 27.334515>,  <37.793621, 29.013958, 27.935255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164219, 29.093746, 27.334515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.317318, 28.748892, 27.467314>,  <38.409176, 28.541979, 27.546993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.317318, 28.748892, 27.467314>,  <38.164219, 29.093746, 27.334515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317318, 28.748892, 27.467314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142917, -0.410290, -0.900687,
		0.912731, 0.297289, -0.280252,
		0.382749, -0.862137, 0.331997,
		38.432144, 28.490250, 27.566914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660538, 28.970455, 26.797144>,  <38.164219, 29.093746, 27.334515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660538, 28.970455, 26.797144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.570480, 28.620653, 26.968983>,  <38.516445, 28.410772, 27.072086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.570480, 28.620653, 26.968983>,  <38.660538, 28.970455, 26.797144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570480, 28.620653, 26.968983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043467, -0.449494, -0.892225,
		0.973355, -0.182207, 0.139214,
		-0.225145, -0.874503, 0.429598,
		38.502937, 28.358303, 27.097862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248062, 28.513052, 26.542784>,  <38.660538, 28.970455, 26.797144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248062, 28.513052, 26.542784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.921040, 28.304075, 26.639666>,  <38.724827, 28.178690, 26.697796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.921040, 28.304075, 26.639666>,  <39.248062, 28.513052, 26.542784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921040, 28.304075, 26.639666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066410, -0.332257, -0.940848,
		0.572013, -0.785277, 0.236942,
		-0.817552, -0.522442, 0.242206,
		38.675774, 28.147343, 26.712328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356873, 27.863424, 26.152687>,  <39.248062, 28.513052, 26.542784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356873, 27.863424, 26.152687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.970612, 27.852797, 26.256075>,  <38.738853, 27.846420, 26.318108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.970612, 27.852797, 26.256075>,  <39.356873, 27.863424, 26.152687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970612, 27.852797, 26.256075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233765, -0.345410, -0.908871,
		0.113426, -0.938076, 0.327336,
		-0.965654, -0.026570, 0.258468,
		38.680916, 27.844826, 26.333614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026875, 27.194088, 25.898380>,  <39.356873, 27.863424, 26.152687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026875, 27.194088, 25.898380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.708168, 27.433250, 25.933405>,  <38.516945, 27.576748, 25.954420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.708168, 27.433250, 25.933405>,  <39.026875, 27.194088, 25.898380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708168, 27.433250, 25.933405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338117, -0.321022, -0.884659,
		-0.500834, -0.734475, 0.457943,
		-0.796770, 0.597905, 0.087559,
		38.469135, 27.612621, 25.959673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546062, 26.801224, 25.676205>,  <39.026875, 27.194088, 25.898380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546062, 26.801224, 25.676205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.389889, 27.167040, 25.633917>,  <38.296185, 27.386530, 25.608543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.389889, 27.167040, 25.633917>,  <38.546062, 26.801224, 25.676205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389889, 27.167040, 25.633917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447262, -0.288797, -0.846495,
		-0.804686, -0.283213, 0.521795,
		-0.390431, 0.914542, -0.105720,
		38.272758, 27.441402, 25.602201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877701, 26.815098, 25.425333>,  <38.546062, 26.801224, 25.676205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877701, 26.815098, 25.425333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.000446, 27.182995, 25.327429>,  <38.074093, 27.403732, 25.268686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.000446, 27.182995, 25.327429>,  <37.877701, 26.815098, 25.425333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000446, 27.182995, 25.327429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378122, -0.118188, -0.918181,
		-0.873418, 0.374306, 0.311507,
		0.306864, 0.919743, -0.244761,
		38.092506, 27.458918, 25.254000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402611, 27.018951, 24.916750>,  <37.877701, 26.815098, 25.425333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402611, 27.018951, 24.916750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.675312, 27.309618, 24.882875>,  <37.838932, 27.484018, 24.862551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.675312, 27.309618, 24.882875>,  <37.402611, 27.018951, 24.916750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675312, 27.309618, 24.882875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289056, 0.161215, -0.943640,
		-0.672058, 0.667807, 0.319956,
		0.681751, 0.726666, -0.084687,
		37.879837, 27.527618, 24.857470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014099, 27.731178, 24.740690>,  <37.402611, 27.018951, 24.916750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014099, 27.731178, 24.740690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.390163, 27.726755, 24.604475>,  <37.615803, 27.724100, 24.522745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.390163, 27.726755, 24.604475>,  <37.014099, 27.731178, 24.740690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390163, 27.726755, 24.604475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340030, 0.033045, -0.939834,
		0.021647, 0.999393, 0.027307,
		0.940165, -0.011059, -0.340539,
		37.672215, 27.723438, 24.502314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.050755, 28.425459, 24.207304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.353249, 28.176363, 24.126993>,  <37.534744, 28.026905, 24.078808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.353249, 28.176363, 24.126993>,  <37.050755, 28.425459, 24.207304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353249, 28.176363, 24.126993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317212, -0.080561, -0.944927,
		0.572268, 0.778271, -0.258463,
		0.756231, -0.622739, -0.200775,
		37.580116, 27.989542, 24.066761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423805, 28.760105, 23.583397>,  <37.050755, 28.425459, 24.207304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423805, 28.760105, 23.583397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.517303, 28.372631, 23.616880>,  <37.573402, 28.140146, 23.636971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.517303, 28.372631, 23.616880>,  <37.423805, 28.760105, 23.583397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517303, 28.372631, 23.616880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049558, -0.097851, -0.993966,
		0.971034, 0.228188, -0.070878,
		0.233746, -0.968687, 0.083708,
		37.587429, 28.082026, 23.641993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966419, 28.609528, 23.131968>,  <37.423805, 28.760105, 23.583397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966419, 28.609528, 23.131968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.792591, 28.250456, 23.161161>,  <37.688293, 28.035013, 23.178677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.792591, 28.250456, 23.161161>,  <37.966419, 28.609528, 23.131968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792591, 28.250456, 23.161161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201224, 0.017787, -0.979384,
		0.877874, -0.440292, -0.188363,
		-0.434565, -0.897679, 0.072983,
		37.662220, 27.981152, 23.183056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352898, 28.136099, 22.675337>,  <37.966419, 28.609528, 23.131968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352898, 28.136099, 22.675337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.023708, 27.912518, 22.715918>,  <37.826195, 27.778368, 22.740267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.023708, 27.912518, 22.715918>,  <38.352898, 28.136099, 22.675337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023708, 27.912518, 22.715918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017986, -0.152858, -0.988084,
		0.567802, -0.814987, 0.115743,
		-0.822968, -0.558955, 0.101451,
		37.776817, 27.744831, 22.746353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442936, 27.578699, 22.276756>,  <38.352898, 28.136099, 22.675337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442936, 27.578699, 22.276756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.046459, 27.566137, 22.328218>,  <37.808575, 27.558601, 22.359097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.046459, 27.566137, 22.328218>,  <38.442936, 27.578699, 22.276756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046459, 27.566137, 22.328218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098466, -0.474903, -0.874512,
		0.088562, -0.879478, 0.467628,
		-0.991192, -0.031403, 0.128657,
		37.749100, 27.556717, 22.366816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223572, 26.966482, 22.081873>,  <38.442936, 27.578699, 22.276756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223572, 26.966482, 22.081873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.884323, 27.176735, 22.055344>,  <37.680775, 27.302887, 22.039425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.884323, 27.176735, 22.055344>,  <38.223572, 26.966482, 22.081873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884323, 27.176735, 22.055344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224094, -0.469356, -0.854100,
		-0.480069, -0.709521, 0.515862,
		-0.848125, 0.525629, -0.066324,
		37.629887, 27.334425, 22.035446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708218, 26.502270, 21.640652>,  <38.223572, 26.966482, 22.081873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708218, 26.502270, 21.640652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.521149, 26.855505, 21.625498>,  <37.408905, 27.067446, 21.616405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.521149, 26.855505, 21.625498>,  <37.708218, 26.502270, 21.640652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521149, 26.855505, 21.625498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392443, -0.245857, -0.886309,
		-0.792002, -0.399638, 0.461543,
		-0.467676, 0.883088, -0.037884,
		37.380844, 27.120432, 21.614132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087326, 26.369158, 21.345524>,  <37.708218, 26.502270, 21.640652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087326, 26.369158, 21.345524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.143066, 26.759949, 21.280909>,  <37.176510, 26.994423, 21.242140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.143066, 26.759949, 21.280909>,  <37.087326, 26.369158, 21.345524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143066, 26.759949, 21.280909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388389, -0.096135, -0.916467,
		-0.910899, 0.190445, 0.366053,
		0.139346, 0.976979, -0.161536,
		37.184872, 27.053043, 21.232449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424290, 26.647783, 21.185690>,  <37.087326, 26.369158, 21.345524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424290, 26.647783, 21.185690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.684914, 26.916367, 21.044487>,  <36.841286, 27.077517, 20.959764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.684914, 26.916367, 21.044487>,  <36.424290, 26.647783, 21.185690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684914, 26.916367, 21.044487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374164, -0.120350, -0.919520,
		-0.659905, 0.731204, 0.172821,
		0.651558, 0.671459, -0.353009,
		36.880383, 27.117804, 20.938583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009491, 27.002996, 20.801332>,  <36.424290, 26.647783, 21.185690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009491, 27.002996, 20.801332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.383945, 27.081709, 20.684771>,  <36.608620, 27.128937, 20.614834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.383945, 27.081709, 20.684771>,  <36.009491, 27.002996, 20.801332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383945, 27.081709, 20.684771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262125, -0.161849, -0.951365,
		-0.234374, 0.966997, -0.099932,
		0.936141, 0.196780, -0.291407,
		36.664787, 27.140743, 20.597349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927837, 27.493719, 20.299036>,  <36.009491, 27.002996, 20.801332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927837, 27.493719, 20.299036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.287052, 27.336441, 20.220125>,  <36.502583, 27.242073, 20.172779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.287052, 27.336441, 20.220125>,  <35.927837, 27.493719, 20.299036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287052, 27.336441, 20.220125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267195, -0.131284, -0.954658,
		0.349469, 0.910033, -0.222959,
		0.898041, -0.393197, -0.197276,
		36.556465, 27.218481, 20.160942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174950, 27.804468, 19.643757>,  <35.927837, 27.493719, 20.299036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174950, 27.804468, 19.643757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.374607, 27.462797, 19.702053>,  <36.494400, 27.257795, 19.737030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.374607, 27.462797, 19.702053>,  <36.174950, 27.804468, 19.643757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374607, 27.462797, 19.702053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129209, -0.239679, -0.962216,
		0.856833, 0.461451, -0.230001,
		0.499142, -0.854176, 0.145741,
		36.524349, 27.206545, 19.745775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621368, 27.585968, 18.983305>,  <36.174950, 27.804468, 19.643757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621368, 27.585968, 18.983305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.573296, 27.239264, 19.176914>,  <36.544453, 27.031240, 19.293079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.573296, 27.239264, 19.176914>,  <36.621368, 27.585968, 18.983305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573296, 27.239264, 19.176914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222023, -0.451740, -0.864081,
		0.967606, -0.211311, -0.138150,
		-0.120182, -0.866763, 0.484023,
		36.537239, 26.979235, 19.322121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989601, 27.175903, 18.494526>,  <36.621368, 27.585968, 18.983305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989601, 27.175903, 18.494526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.775890, 26.934168, 18.730940>,  <36.647663, 26.789125, 18.872787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.775890, 26.934168, 18.730940>,  <36.989601, 27.175903, 18.494526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775890, 26.934168, 18.730940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143338, -0.624296, -0.767925,
		0.833068, -0.495003, 0.246922,
		-0.534277, -0.604340, 0.591034,
		36.615608, 26.752867, 18.908251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225590, 26.595615, 18.208914>,  <36.989601, 27.175903, 18.494526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225590, 26.595615, 18.208914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.881474, 26.539625, 18.404995>,  <36.675003, 26.506031, 18.522644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.881474, 26.539625, 18.404995>,  <37.225590, 26.595615, 18.208914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881474, 26.539625, 18.404995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369134, -0.492170, -0.788358,
		0.351616, -0.859171, 0.371741,
		-0.860294, -0.139977, 0.490204,
		36.623386, 26.497633, 18.552055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142448, 25.893940, 18.284170>,  <37.225590, 26.595615, 18.208914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142448, 25.893940, 18.284170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.784683, 26.072220, 18.299011>,  <36.570023, 26.179188, 18.307915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.784683, 26.072220, 18.299011>,  <37.142448, 25.893940, 18.284170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784683, 26.072220, 18.299011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291900, -0.518892, -0.803458,
		-0.338847, -0.729455, 0.594204,
		-0.894414, 0.445698, 0.037103,
		36.516357, 26.205929, 18.310143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668495, 25.392591, 18.004364>,  <37.142448, 25.893940, 18.284170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668495, 25.392591, 18.004364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.476856, 25.743658, 17.999283>,  <36.361874, 25.954298, 17.996233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.476856, 25.743658, 17.999283>,  <36.668495, 25.392591, 18.004364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476856, 25.743658, 17.999283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320745, -0.188525, -0.928214,
		-0.817059, -0.440632, 0.371830,
		-0.479100, 0.877668, -0.012705,
		36.333126, 26.006958, 17.995472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054245, 25.230434, 17.742388>,  <36.668495, 25.392591, 18.004364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054245, 25.230434, 17.742388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.072578, 25.623207, 17.668943>,  <36.083576, 25.858870, 17.624876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.072578, 25.623207, 17.668943>,  <36.054245, 25.230434, 17.742388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072578, 25.623207, 17.668943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428732, -0.146681, -0.891445,
		-0.902268, 0.119576, 0.414263,
		0.045831, 0.981930, -0.183612,
		36.086327, 25.917786, 17.613859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367794, 25.426357, 17.559994>,  <36.054245, 25.230434, 17.742388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367794, 25.426357, 17.559994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.624451, 25.695538, 17.412785>,  <35.778442, 25.857046, 17.324459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.624451, 25.695538, 17.412785>,  <35.367794, 25.426357, 17.559994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624451, 25.695538, 17.412785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362483, -0.156805, -0.918705,
		-0.675949, 0.722878, 0.143320,
		0.641638, 0.672948, -0.368023,
		35.816940, 25.897423, 17.302378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046337, 25.768847, 16.986055>,  <35.367794, 25.426357, 17.559994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046337, 25.768847, 16.986055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.429100, 25.864481, 16.920124>,  <35.658756, 25.921862, 16.880566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.429100, 25.864481, 16.920124>,  <35.046337, 25.768847, 16.986055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429100, 25.864481, 16.920124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160994, -0.035620, -0.986313,
		-0.241687, 0.970344, 0.004407,
		0.956906, 0.239088, -0.164829,
		35.716171, 25.936207, 16.870676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027340, 26.242575, 16.521488>,  <35.046337, 25.768847, 16.986055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027340, 26.242575, 16.521488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.412766, 26.150013, 16.467819>,  <35.644020, 26.094477, 16.435617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.412766, 26.150013, 16.467819>,  <35.027340, 26.242575, 16.521488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412766, 26.150013, 16.467819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145303, -0.031676, -0.988880,
		0.224579, 0.972342, -0.064145,
		0.963562, -0.231402, -0.134170,
		35.701836, 26.080593, 16.427568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180576, 26.507917, 15.879955>,  <35.027340, 26.242575, 16.521488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180576, 26.507917, 15.879955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.439159, 26.211470, 15.952436>,  <35.594311, 26.033602, 15.995925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.439159, 26.211470, 15.952436>,  <35.180576, 26.507917, 15.879955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439159, 26.211470, 15.952436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219909, -0.408424, -0.885906,
		0.730570, 0.532852, -0.427008,
		0.646457, -0.741120, 0.181204,
		35.633095, 25.989134, 16.006798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712101, 26.525732, 15.418498>,  <35.180576, 26.507917, 15.879955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712101, 26.525732, 15.418498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.651089, 26.148596, 15.537015>,  <35.614483, 25.922314, 15.608125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.651089, 26.148596, 15.537015>,  <35.712101, 26.525732, 15.418498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651089, 26.148596, 15.537015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211912, -0.261627, -0.941618,
		0.965313, -0.206410, -0.159893,
		-0.152527, -0.942839, 0.296293,
		35.605331, 25.865744, 15.625903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277546, 26.129431, 15.080297>,  <35.712101, 26.525732, 15.418498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277546, 26.129431, 15.080297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.933609, 25.952553, 15.182383>,  <35.727245, 25.846426, 15.243634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.933609, 25.952553, 15.182383>,  <36.277546, 26.129431, 15.080297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933609, 25.952553, 15.182383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110317, -0.327153, -0.938510,
		0.498500, -0.835125, 0.232518,
		-0.859842, -0.442196, 0.255214,
		35.675655, 25.819895, 15.258947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937912, 26.837807, 14.795188>,  <36.277546, 26.129431, 15.080297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937912, 26.837807, 14.795188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.935879, 26.444233, 14.723802>,  <35.934658, 26.208090, 14.680970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.935879, 26.444233, 14.723802>,  <35.937912, 26.837807, 14.795188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935879, 26.444233, 14.723802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257260, 0.173748, -0.950594,
		0.966329, 0.041079, -0.254010,
		-0.005085, -0.983933, -0.178465,
		35.934353, 26.149054, 14.670262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440834, 27.518555, 14.760314>,  <35.937912, 26.837807, 14.795188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440834, 27.518555, 14.760314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.156712, 27.779181, 14.866845>,  <34.986240, 27.935556, 14.930764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.156712, 27.779181, 14.866845>,  <35.440834, 27.518555, 14.760314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156712, 27.779181, 14.866845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529734, 0.245659, 0.811809,
		0.463522, 0.717713, -0.519649,
		-0.710302, 0.651567, 0.266329,
		34.943623, 27.974651, 14.946744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821468, 28.067076, 14.857667>,  <35.440834, 27.518555, 14.760314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821468, 28.067076, 14.857667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.489822, 28.098866, 15.079029>,  <35.290836, 28.117939, 15.211846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.489822, 28.098866, 15.079029>,  <35.821468, 28.067076, 14.857667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489822, 28.098866, 15.079029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539008, 0.376492, 0.753474,
		-0.148469, 0.923004, -0.354993,
		-0.829112, 0.079477, 0.553404,
		35.241089, 28.122709, 15.245050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696945, 28.756853, 14.990716>,  <35.821468, 28.067076, 14.857667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696945, 28.756853, 14.990716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.515087, 28.536455, 15.270631>,  <35.405972, 28.404217, 15.438580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.515087, 28.536455, 15.270631>,  <35.696945, 28.756853, 14.990716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515087, 28.536455, 15.270631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434862, 0.548354, 0.714285,
		-0.777299, 0.629057, -0.009699,
		-0.454645, -0.550995, 0.699788,
		35.378693, 28.371157, 15.480567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602512, 29.321316, 15.584314>,  <35.696945, 28.756853, 14.990716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602512, 29.321316, 15.584314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.533844, 28.968538, 15.759907>,  <35.492645, 28.756872, 15.865262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.533844, 28.968538, 15.759907>,  <35.602512, 29.321316, 15.584314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533844, 28.968538, 15.759907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592172, 0.263733, 0.761431,
		-0.787313, 0.390666, 0.476989,
		-0.171668, -0.881944, 0.438982,
		35.482346, 28.703955, 15.891602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441456, 29.411131, 16.350105>,  <35.602512, 29.321316, 15.584314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441456, 29.411131, 16.350105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.542030, 29.024439, 16.331295>,  <35.602375, 28.792423, 16.320009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.542030, 29.024439, 16.331295>,  <35.441456, 29.411131, 16.350105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542030, 29.024439, 16.331295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362505, 0.049008, 0.930692,
		-0.897425, -0.251055, 0.362767,
		0.251433, -0.966731, -0.047028,
		35.617462, 28.734419, 16.317186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171963, 29.150272, 16.996962>,  <35.441456, 29.411131, 16.350105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171963, 29.150272, 16.996962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.444923, 28.882763, 16.878931>,  <35.608700, 28.722258, 16.808113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.444923, 28.882763, 16.878931>,  <35.171963, 29.150272, 16.996962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444923, 28.882763, 16.878931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509440, 0.145623, 0.848095,
		-0.524212, -0.729066, 0.440073,
		0.682402, -0.668772, -0.295078,
		35.649643, 28.682131, 16.790407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128906, 28.630962, 17.510286>,  <35.171963, 29.150272, 16.996962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128906, 28.630962, 17.510286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.485779, 28.663086, 17.332497>,  <35.699902, 28.682360, 17.225822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.485779, 28.663086, 17.332497>,  <35.128906, 28.630962, 17.510286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485779, 28.663086, 17.332497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428328, 0.161834, 0.889013,
		0.143306, -0.983547, 0.109997,
		0.892187, 0.080286, -0.444473,
		35.753433, 28.687178, 17.199154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540913, 28.317961, 17.886066>,  <35.128906, 28.630962, 17.510286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540913, 28.317961, 17.886066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.814243, 28.532890, 17.688341>,  <35.978241, 28.661848, 17.569706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.814243, 28.532890, 17.688341>,  <35.540913, 28.317961, 17.886066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814243, 28.532890, 17.688341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402570, 0.287539, 0.869056,
		0.609100, -0.792846, -0.019828,
		0.683326, 0.537324, -0.494316,
		36.019241, 28.694088, 17.540047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174736, 28.036591, 18.169966>,  <35.540913, 28.317961, 17.886066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174736, 28.036591, 18.169966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.287518, 28.386776, 18.012960>,  <36.355186, 28.596888, 17.918758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.287518, 28.386776, 18.012960>,  <36.174736, 28.036591, 18.169966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287518, 28.386776, 18.012960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534036, 0.196667, 0.822269,
		0.797060, -0.441462, -0.412076,
		0.281958, 0.875462, -0.392512,
		36.372105, 28.649414, 17.895206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883759, 28.084723, 18.313370>,  <36.174736, 28.036591, 18.169966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883759, 28.084723, 18.313370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.741665, 28.450314, 18.234932>,  <36.656410, 28.669668, 18.187870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.741665, 28.450314, 18.234932>,  <36.883759, 28.084723, 18.313370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741665, 28.450314, 18.234932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491886, 0.361151, 0.792224,
		0.794895, 0.184967, -0.577866,
		-0.355232, 0.913979, -0.196095,
		36.635094, 28.724506, 18.176104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448166, 28.529940, 18.350777>,  <36.883759, 28.084723, 18.313370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448166, 28.529940, 18.350777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.143391, 28.787745, 18.376219>,  <36.960526, 28.942429, 18.391483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.143391, 28.787745, 18.376219>,  <37.448166, 28.529940, 18.350777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143391, 28.787745, 18.376219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359741, 0.339518, 0.869088,
		0.538545, 0.685075, -0.490551,
		-0.761942, 0.644514, 0.063603,
		36.914806, 28.981098, 18.395300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799404, 29.156929, 18.497149>,  <37.448166, 28.529940, 18.350777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799404, 29.156929, 18.497149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.413017, 29.175407, 18.598948>,  <37.181183, 29.186495, 18.660027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.413017, 29.175407, 18.598948>,  <37.799404, 29.156929, 18.497149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413017, 29.175407, 18.598948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250270, 0.415421, 0.874523,
		-0.065325, 0.908456, -0.412845,
		-0.965970, 0.046195, 0.254497,
		37.123226, 29.189266, 18.675297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723602, 29.770588, 18.847092>,  <37.799404, 29.156929, 18.497149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723602, 29.770588, 18.847092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.392574, 29.585768, 18.974617>,  <37.193958, 29.474876, 19.051132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.392574, 29.585768, 18.974617>,  <37.723602, 29.770588, 18.847092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392574, 29.585768, 18.974617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183185, 0.314562, 0.931394,
		-0.530638, 0.829192, -0.175680,
		-0.827567, -0.462051, 0.318814,
		37.144302, 29.447153, 19.070261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416969, 30.242935, 19.264860>,  <37.723602, 29.770588, 18.847092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416969, 30.242935, 19.264860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.270245, 29.896408, 19.400475>,  <37.182209, 29.688492, 19.481842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.270245, 29.896408, 19.400475>,  <37.416969, 30.242935, 19.264860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270245, 29.896408, 19.400475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069531, 0.337887, 0.938615,
		-0.927694, 0.367865, -0.063704,
		-0.366808, -0.866318, 0.339034,
		37.160202, 29.636513, 19.502184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893982, 30.400726, 19.769756>,  <37.416969, 30.242935, 19.264860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893982, 30.400726, 19.769756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.992676, 30.022318, 19.853821>,  <37.051891, 29.795273, 19.904261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.992676, 30.022318, 19.853821>,  <36.893982, 30.400726, 19.769756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992676, 30.022318, 19.853821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025843, 0.223214, 0.974427,
		-0.968738, -0.234994, 0.079523,
		0.246736, -0.946020, 0.210163,
		37.066696, 29.738512, 19.916870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514702, 30.199221, 20.285898>,  <36.893982, 30.400726, 19.769756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514702, 30.199221, 20.285898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.791031, 29.911493, 20.315140>,  <36.956829, 29.738857, 20.332685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.791031, 29.911493, 20.315140>,  <36.514702, 30.199221, 20.285898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791031, 29.911493, 20.315140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081969, 0.178373, 0.980543,
		-0.718364, -0.671388, 0.182186,
		0.690821, -0.719320, 0.073103,
		36.998276, 29.695698, 20.337070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251492, 29.680321, 20.730822>,  <36.514702, 30.199221, 20.285898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251492, 29.680321, 20.730822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.651138, 29.663780, 20.733690>,  <36.890926, 29.653856, 20.735411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.651138, 29.663780, 20.733690>,  <36.251492, 29.680321, 20.730822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651138, 29.663780, 20.733690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002751, 0.105953, 0.994367,
		-0.041879, -0.993511, 0.105746,
		0.999119, -0.041353, 0.007170,
		36.950874, 29.651375, 20.735842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403358, 29.319752, 21.323816>,  <36.251492, 29.680321, 20.730822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403358, 29.319752, 21.323816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.731602, 29.522020, 21.217312>,  <36.928547, 29.643381, 21.153408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.731602, 29.522020, 21.217312>,  <36.403358, 29.319752, 21.323816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731602, 29.522020, 21.217312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204835, 0.174704, 0.963079,
		0.533517, -0.844853, 0.039785,
		0.820611, 0.505670, -0.266263,
		36.977783, 29.673721, 21.137434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800480, 29.081860, 21.868004>,  <36.403358, 29.319752, 21.323816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800480, 29.081860, 21.868004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.956837, 29.405632, 21.692720>,  <37.050652, 29.599895, 21.587551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.956837, 29.405632, 21.692720>,  <36.800480, 29.081860, 21.868004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956837, 29.405632, 21.692720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153314, 0.412178, 0.898111,
		0.907579, -0.418246, 0.037019,
		0.390890, 0.809432, -0.438208,
		37.074104, 29.648462, 21.561258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.660053, 27.417042, 27.080854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.959156, 27.653530, 26.959976>,  <38.138618, 27.795424, 26.887449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.959156, 27.653530, 26.959976>,  <37.660053, 27.417042, 27.080854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959156, 27.653530, 26.959976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204232, 0.228263, 0.951937,
		0.631786, -0.773532, 0.049939,
		0.747754, 0.591222, -0.302194,
		38.183483, 27.830896, 26.869318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317364, 27.194628, 27.521639>,  <37.660053, 27.417042, 27.080854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317364, 27.194628, 27.521639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.338089, 27.574150, 27.397005>,  <38.350525, 27.801863, 27.322226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.338089, 27.574150, 27.397005>,  <38.317364, 27.194628, 27.521639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338089, 27.574150, 27.397005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312906, 0.280870, 0.907305,
		0.948370, -0.144506, -0.282334,
		0.051812, 0.948805, -0.311585,
		38.353634, 27.858791, 27.303530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711998, 27.339794, 28.049246>,  <38.317364, 27.194628, 27.521639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711998, 27.339794, 28.049246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.611816, 27.693031, 27.890543>,  <38.551708, 27.904974, 27.795321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.611816, 27.693031, 27.890543>,  <38.711998, 27.339794, 28.049246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611816, 27.693031, 27.890543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199594, 0.448116, 0.871409,
		0.947330, 0.139057, -0.288493,
		-0.250454, 0.883094, -0.396758,
		38.536678, 27.957960, 27.771515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322659, 27.744539, 28.236746>,  <38.711998, 27.339794, 28.049246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322659, 27.744539, 28.236746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.022270, 27.990757, 28.141125>,  <38.842037, 28.138487, 28.083752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.022270, 27.990757, 28.141125>,  <39.322659, 27.744539, 28.236746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022270, 27.990757, 28.141125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236907, 0.589068, 0.772576,
		0.616372, 0.523551, -0.588201,
		-0.750973, 0.615543, -0.239052,
		38.796978, 28.175421, 28.069408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639030, 28.358133, 28.090094>,  <39.322659, 27.744539, 28.236746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639030, 28.358133, 28.090094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.264832, 28.447489, 28.199596>,  <39.040314, 28.501102, 28.265297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.264832, 28.447489, 28.199596>,  <39.639030, 28.358133, 28.090094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264832, 28.447489, 28.199596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348912, 0.706226, 0.616040,
		-0.055717, 0.671821, -0.738615,
		-0.935498, 0.223388, 0.273755,
		38.984180, 28.514505, 28.281723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640347, 29.052992, 28.132074>,  <39.639030, 28.358133, 28.090094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640347, 29.052992, 28.132074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.328335, 28.917446, 28.342493>,  <39.141129, 28.836119, 28.468744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.328335, 28.917446, 28.342493>,  <39.640347, 29.052992, 28.132074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328335, 28.917446, 28.342493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221145, 0.637142, 0.738340,
		-0.585364, 0.692259, -0.422051,
		-0.780029, -0.338863, 0.526049,
		39.094326, 28.815788, 28.500307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252888, 29.600189, 28.303526>,  <39.640347, 29.052992, 28.132074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252888, 29.600189, 28.303526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.161552, 29.317667, 28.571552>,  <39.106750, 29.148153, 28.732368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.161552, 29.317667, 28.571552>,  <39.252888, 29.600189, 28.303526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161552, 29.317667, 28.571552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260599, 0.618795, 0.741067,
		-0.938056, 0.343834, 0.042768,
		-0.228340, -0.706307, 0.670068,
		39.093052, 29.105774, 28.772573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781284, 29.940588, 28.747076>,  <39.252888, 29.600189, 28.303526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781284, 29.940588, 28.747076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.919548, 29.621595, 28.944881>,  <39.002506, 29.430199, 29.063564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.919548, 29.621595, 28.944881>,  <38.781284, 29.940588, 28.747076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919548, 29.621595, 28.944881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175783, 0.572698, 0.800698,
		-0.921750, -0.189839, 0.338140,
		0.345655, -0.797483, 0.494514,
		39.023243, 29.382351, 29.093235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438049, 29.947926, 29.442650>,  <38.781284, 29.940588, 28.747076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438049, 29.947926, 29.442650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.747013, 29.699366, 29.495180>,  <38.932392, 29.550230, 29.526699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.747013, 29.699366, 29.495180>,  <38.438049, 29.947926, 29.442650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747013, 29.699366, 29.495180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231347, 0.467841, 0.852997,
		-0.591492, -0.628481, 0.505123,
		0.772409, -0.621399, 0.131327,
		38.978737, 29.512945, 29.534578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416904, 29.782270, 30.180958>,  <38.438049, 29.947926, 29.442650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416904, 29.782270, 30.180958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.782909, 29.687166, 30.050594>,  <39.002514, 29.630104, 29.972376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.782909, 29.687166, 30.050594>,  <38.416904, 29.782270, 30.180958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782909, 29.687166, 30.050594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400230, 0.433607, 0.807342,
		-0.050638, -0.869169, 0.491916,
		0.915015, -0.237762, -0.325910,
		39.057415, 29.615837, 29.952822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817268, 29.594152, 30.798689>,  <38.416904, 29.782270, 30.180958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817268, 29.594152, 30.798689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.087551, 29.664827, 30.512415>,  <39.249722, 29.707232, 30.340651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.087551, 29.664827, 30.512415>,  <38.817268, 29.594152, 30.798689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087551, 29.664827, 30.512415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601790, 0.428518, 0.673960,
		0.425731, -0.886098, 0.183257,
		0.675723, 0.176644, -0.715678,
		39.290264, 29.717833, 30.297709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391731, 29.368298, 31.103468>,  <38.817268, 29.594152, 30.798689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391731, 29.368298, 31.103468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.484493, 29.620232, 30.806948>,  <39.540150, 29.771393, 30.629036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.484493, 29.620232, 30.806948>,  <39.391731, 29.368298, 31.103468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484493, 29.620232, 30.806948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598134, 0.508649, 0.619283,
		0.767110, -0.587011, -0.258769,
		0.231903, 0.629836, -0.741301,
		39.554066, 29.809183, 30.584557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067589, 29.250776, 30.787300>,  <39.391731, 29.368298, 31.103468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067589, 29.250776, 30.787300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.924965, 29.621756, 30.832390>,  <39.839390, 29.844343, 30.859444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.924965, 29.621756, 30.832390>,  <40.067589, 29.250776, 30.787300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924965, 29.621756, 30.832390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678131, 0.173918, 0.714067,
		0.642655, 0.331048, -0.690943,
		-0.356558, 0.927448, 0.112724,
		39.817997, 29.899990, 30.866207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586277, 29.790205, 31.000755>,  <40.067589, 29.250776, 30.787300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586277, 29.790205, 31.000755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.231392, 29.916780, 31.135054>,  <40.018463, 29.992725, 31.215633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.231392, 29.916780, 31.135054>,  <40.586277, 29.790205, 31.000755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231392, 29.916780, 31.135054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453512, 0.464459, 0.760660,
		0.084761, 0.827130, -0.555582,
		-0.887210, 0.316438, 0.335746,
		39.965229, 30.011711, 31.235777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144211, 29.559271, 30.603060>,  <40.586277, 29.790205, 31.000755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144211, 29.559271, 30.603060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.509995, 29.720642, 30.590342>,  <41.729465, 29.817465, 30.582710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.509995, 29.720642, 30.590342>,  <41.144211, 29.559271, 30.603060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.509995, 29.720642, 30.590342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137583, 0.236045, -0.961953,
		-0.380573, 0.884041, 0.271358,
		0.914459, 0.403428, -0.031797,
		41.784332, 29.841671, 30.580803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091103, 30.282612, 30.209316>,  <41.144211, 29.559271, 30.603060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091103, 30.282612, 30.209316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.475845, 30.177643, 30.178440>,  <41.706692, 30.114662, 30.159914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.475845, 30.177643, 30.178440>,  <41.091103, 30.282612, 30.209316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475845, 30.177643, 30.178440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030873, 0.384543, -0.922591,
		0.271790, 0.885021, 0.377979,
		0.961861, -0.262421, -0.077192,
		41.764404, 30.098917, 30.155283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397747, 30.862255, 29.944021>,  <41.091103, 30.282612, 30.209316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397747, 30.862255, 29.944021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.644463, 30.554869, 29.875870>,  <41.792492, 30.370438, 29.834980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.644463, 30.554869, 29.875870>,  <41.397747, 30.862255, 29.944021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644463, 30.554869, 29.875870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177144, 0.346420, -0.921202,
		0.766933, 0.538009, 0.349798,
		0.616793, -0.768465, -0.170376,
		41.829502, 30.324329, 29.824757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973953, 31.165071, 29.588879>,  <41.397747, 30.862255, 29.944021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.973953, 31.165071, 29.588879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.960274, 30.771942, 29.516333>,  <41.952068, 30.536064, 29.472805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.960274, 30.771942, 29.516333>,  <41.973953, 31.165071, 29.588879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.960274, 30.771942, 29.516333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168775, 0.173184, -0.970321,
		0.985061, -0.063789, 0.159954,
		-0.034195, -0.982821, -0.181363,
		41.950016, 30.477097, 29.461924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584682, 30.929720, 29.274767>,  <41.973953, 31.165071, 29.588879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.584682, 30.929720, 29.274767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.342461, 30.625471, 29.181162>,  <42.197128, 30.442923, 29.124998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.342461, 30.625471, 29.181162>,  <42.584682, 30.929720, 29.274767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342461, 30.625471, 29.181162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301609, 0.052762, -0.951971,
		0.736436, -0.647048, 0.197460,
		-0.605552, -0.760621, -0.234012,
		42.160793, 30.397285, 29.110958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.033527, 30.419817, 28.854977>,  <42.584682, 30.929720, 29.274767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.033527, 30.419817, 28.854977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.643173, 30.372086, 28.781870>,  <42.408958, 30.343447, 28.738005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.643173, 30.372086, 28.781870>,  <43.033527, 30.419817, 28.854977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.643173, 30.372086, 28.781870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196899, -0.119875, -0.973068,
		0.094208, -0.985591, 0.140481,
		-0.975887, -0.119331, -0.182769,
		42.350407, 30.336287, 28.727039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.989422, 29.747417, 28.479744>,  <43.033527, 30.419817, 28.854977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.989422, 29.747417, 28.479744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.653194, 29.950508, 28.404207>,  <42.451458, 30.072363, 28.358885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.653194, 29.950508, 28.404207>,  <42.989422, 29.747417, 28.479744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.653194, 29.950508, 28.404207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051303, -0.272427, -0.960808,
		-0.539274, -0.817311, 0.202945,
		-0.840567, 0.507727, -0.188843,
		42.401024, 30.102825, 28.347555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678097, 29.294041, 27.978970>,  <42.989422, 29.747417, 28.479744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.678097, 29.294041, 27.978970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.452335, 29.618473, 27.917524>,  <42.316879, 29.813133, 27.880657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.452335, 29.618473, 27.917524>,  <42.678097, 29.294041, 27.978970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452335, 29.618473, 27.917524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054907, -0.148788, -0.987344,
		-0.823671, -0.565694, 0.039442,
		-0.564403, 0.811081, -0.153613,
		42.283016, 29.861797, 27.871441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031136, 29.075304, 27.634916>,  <42.678097, 29.294041, 27.978970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031136, 29.075304, 27.634916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.058113, 29.464621, 27.547142>,  <42.074299, 29.698212, 27.494478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.058113, 29.464621, 27.547142>,  <42.031136, 29.075304, 27.634916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058113, 29.464621, 27.547142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280439, -0.192575, -0.940356,
		-0.957500, 0.124958, 0.259962,
		0.067442, 0.973294, -0.219434,
		42.078346, 29.756609, 27.481312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336678, 29.291935, 27.300892>,  <42.031136, 29.075304, 27.634916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.336678, 29.291935, 27.300892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.642223, 29.519871, 27.179707>,  <41.825550, 29.656631, 27.106995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.642223, 29.519871, 27.179707>,  <41.336678, 29.291935, 27.300892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642223, 29.519871, 27.179707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461960, 0.154976, -0.873255,
		-0.450663, 0.807010, 0.381624,
		0.763869, 0.569839, -0.302964,
		41.871384, 29.690823, 27.088818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.150955, 29.466959, 26.604666>,  <41.336678, 29.291935, 27.300892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.150955, 29.466959, 26.604666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.509907, 29.643461, 26.605438>,  <41.725277, 29.749363, 26.605902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.509907, 29.643461, 26.605438>,  <41.150955, 29.466959, 26.604666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.509907, 29.643461, 26.605438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039232, -0.075423, -0.996380,
		-0.439511, 0.894207, -0.084995,
		0.897380, 0.441254, 0.001933,
		41.779121, 29.775837, 26.606018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183033, 30.009228, 26.078585>,  <41.150955, 29.466959, 26.604666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183033, 30.009228, 26.078585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.551014, 29.861465, 26.131090>,  <41.771801, 29.772808, 26.162594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.551014, 29.861465, 26.131090>,  <41.183033, 30.009228, 26.078585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.551014, 29.861465, 26.131090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030774, -0.265748, -0.963551,
		0.390824, 0.890459, -0.233107,
		0.919951, -0.369405, 0.131264,
		41.827000, 29.750645, 26.170469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483059, 30.226536, 25.460691>,  <41.183033, 30.009228, 26.078585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483059, 30.226536, 25.460691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.731842, 29.948118, 25.604183>,  <41.881111, 29.781067, 25.690277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.731842, 29.948118, 25.604183>,  <41.483059, 30.226536, 25.460691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731842, 29.948118, 25.604183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203420, -0.298769, -0.932393,
		0.756165, 0.652884, -0.044233,
		0.621960, -0.696046, 0.358728,
		41.918430, 29.739304, 25.711802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097775, 30.228201, 25.107101>,  <41.483059, 30.226536, 25.460691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097775, 30.228201, 25.107101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.093239, 29.862404, 25.268879>,  <42.090519, 29.642925, 25.365946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.093239, 29.862404, 25.268879>,  <42.097775, 30.228201, 25.107101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.093239, 29.862404, 25.268879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209904, -0.397635, -0.893212,
		0.977656, 0.074766, 0.196464,
		-0.011339, -0.914493, 0.404444,
		42.089836, 29.588057, 25.390213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.815357, 30.332340, 25.112427>,  <42.097775, 30.228201, 25.107101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.815357, 30.332340, 25.112427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.084961, 30.572901, 24.940830>,  <43.246723, 30.717237, 24.837873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.084961, 30.572901, 24.940830>,  <42.815357, 30.332340, 25.112427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.084961, 30.572901, 24.940830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081301, 0.637576, 0.766085,
		0.734239, -0.481468, 0.478624,
		0.674005, 0.601402, -0.428989,
		43.287163, 30.753321, 24.812134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.058571, 30.644028, 25.717072>,  <42.815357, 30.332340, 25.112427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.058571, 30.644028, 25.717072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.201611, 30.875511, 25.423889>,  <43.287434, 31.014400, 25.247980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.201611, 30.875511, 25.423889>,  <43.058571, 30.644028, 25.717072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.201611, 30.875511, 25.423889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110947, 0.752968, 0.648638,
		0.927262, -0.313271, 0.205054,
		0.357598, 0.578707, -0.732954,
		43.308891, 31.049124, 25.204002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.741009, 30.798935, 25.844360>,  <43.058571, 30.644028, 25.717072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.741009, 30.798935, 25.844360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.631714, 31.108505, 25.615843>,  <43.566135, 31.294247, 25.478731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.631714, 31.108505, 25.615843>,  <43.741009, 30.798935, 25.844360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.631714, 31.108505, 25.615843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246188, 0.630378, 0.736217,
		0.929909, 0.060518, -0.362777,
		-0.273241, 0.773926, -0.571295,
		43.549740, 31.340683, 25.444454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.232277, 31.331587, 25.936785>,  <43.741009, 30.798935, 25.844360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.232277, 31.331587, 25.936785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.907146, 31.530609, 25.815622>,  <43.712067, 31.650023, 25.742924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.907146, 31.530609, 25.815622>,  <44.232277, 31.331587, 25.936785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.907146, 31.530609, 25.815622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096624, 0.627968, 0.772218,
		0.574438, 0.598410, -0.558504,
		-0.812825, 0.497556, -0.302908,
		43.663300, 31.679876, 25.724751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.378292, 32.009903, 25.934973>,  <44.232277, 31.331587, 25.936785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.378292, 32.009903, 25.934973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.978848, 32.030228, 25.940573>,  <43.739182, 32.042423, 25.943932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.978848, 32.030228, 25.940573>,  <44.378292, 32.009903, 25.934973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.978848, 32.030228, 25.940573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046439, 0.722766, 0.689531,
		0.024916, 0.689223, -0.724121,
		-0.998610, 0.050808, 0.013999,
		43.679264, 32.045471, 25.944773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.275707, 32.675453, 26.116922>,  <44.378292, 32.009903, 25.934973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.275707, 32.675453, 26.116922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.905132, 32.530170, 26.156492>,  <43.682785, 32.443001, 26.180235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.905132, 32.530170, 26.156492>,  <44.275707, 32.675453, 26.116922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.905132, 32.530170, 26.156492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219413, 0.734545, 0.642107,
		-0.305885, 0.573169, -0.760205,
		-0.926441, -0.363210, 0.098926,
		43.627201, 32.421207, 26.186171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.883705, 33.298847, 26.245026>,  <44.275707, 32.675453, 26.116922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.883705, 33.298847, 26.245026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.651707, 32.999958, 26.374802>,  <43.512508, 32.820625, 26.452667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.651707, 32.999958, 26.374802>,  <43.883705, 33.298847, 26.245026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.651707, 32.999958, 26.374802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344096, 0.585723, 0.733844,
		-0.738377, 0.313990, -0.596834,
		-0.579999, -0.747221, 0.324441,
		43.477707, 32.775791, 26.472134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.166012, 33.466740, 26.192236>,  <43.883705, 33.298847, 26.245026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.166012, 33.466740, 26.192236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.217262, 33.202324, 26.487968>,  <43.248013, 33.043674, 26.665407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.217262, 33.202324, 26.487968>,  <43.166012, 33.466740, 26.192236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.217262, 33.202324, 26.487968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438527, 0.630879, 0.640067,
		-0.889539, -0.406224, -0.209054,
		0.128122, -0.661040, 0.739331,
		43.255699, 33.004013, 26.709768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.635384, 33.744572, 26.605295>,  <43.166012, 33.466740, 26.192236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.635384, 33.744572, 26.605295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.854160, 33.490570, 26.823517>,  <42.985428, 33.338169, 26.954449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.854160, 33.490570, 26.823517>,  <42.635384, 33.744572, 26.605295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.854160, 33.490570, 26.823517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205028, 0.530215, 0.822700,
		-0.811676, -0.561823, 0.159803,
		0.546942, -0.635002, 0.545552,
		43.018242, 33.300068, 26.987183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314396, 33.611931, 27.198954>,  <42.635384, 33.744572, 26.605295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314396, 33.611931, 27.198954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.680202, 33.498150, 27.314014>,  <42.899689, 33.429882, 27.383051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.680202, 33.498150, 27.314014>,  <42.314396, 33.611931, 27.198954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.680202, 33.498150, 27.314014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123507, 0.480787, 0.868095,
		-0.385231, -0.829416, 0.404557,
		0.914518, -0.284451, 0.287653,
		42.954559, 33.412815, 27.400311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.160858, 33.440552, 27.826466>,  <42.314396, 33.611931, 27.198954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.160858, 33.440552, 27.826466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.551094, 33.524693, 27.801268>,  <42.785236, 33.575176, 27.786148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.551094, 33.524693, 27.801268>,  <42.160858, 33.440552, 27.826466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.551094, 33.524693, 27.801268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070634, 0.572279, 0.817011,
		0.207910, -0.792622, 0.573170,
		0.975594, 0.210350, -0.062996,
		42.843773, 33.587799, 27.782370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537537, 33.295647, 28.535648>,  <42.160858, 33.440552, 27.826466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537537, 33.295647, 28.535648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.738033, 33.569618, 28.324129>,  <42.858334, 33.734001, 28.197218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.738033, 33.569618, 28.324129>,  <42.537537, 33.295647, 28.535648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.738033, 33.569618, 28.324129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116608, 0.659005, 0.743045,
		0.857412, -0.310785, 0.410191,
		0.501245, 0.684927, -0.528799,
		42.888409, 33.775097, 28.165489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.664486, 28.779043, 21.691263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.744267, 29.150238, 21.565367>,  <42.792133, 29.372955, 21.489828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.744267, 29.150238, 21.565367>,  <42.664486, 28.779043, 21.691263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.744267, 29.150238, 21.565367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378802, 0.223212, 0.898157,
		0.903731, -0.298360, -0.307004,
		0.199447, 0.927986, -0.314743,
		42.804100, 29.428635, 21.470943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.345524, 28.956640, 21.892210>,  <42.664486, 28.779043, 21.691263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.345524, 28.956640, 21.892210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.140476, 29.294340, 21.829647>,  <43.017448, 29.496960, 21.792109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.140476, 29.294340, 21.829647>,  <43.345524, 28.956640, 21.892210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.140476, 29.294340, 21.829647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380269, 0.386557, 0.840219,
		0.769817, 0.371234, -0.519199,
		-0.512618, 0.844250, -0.156409,
		42.986691, 29.547615, 21.782724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.819599, 29.464952, 21.980997>,  <43.345524, 28.956640, 21.892210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.819599, 29.464952, 21.980997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.473934, 29.656786, 22.041950>,  <43.266537, 29.771887, 22.078522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.473934, 29.656786, 22.041950>,  <43.819599, 29.464952, 21.980997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473934, 29.656786, 22.041950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387023, 0.439892, 0.810375,
		0.321613, 0.759272, -0.565749,
		-0.864163, 0.479585, 0.152381,
		43.214684, 29.800661, 22.087664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.025032, 30.131079, 22.194517>,  <43.819599, 29.464952, 21.980997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.025032, 30.131079, 22.194517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.638721, 30.113894, 22.296831>,  <43.406933, 30.103582, 22.358219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.638721, 30.113894, 22.296831>,  <44.025032, 30.131079, 22.194517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.638721, 30.113894, 22.296831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200088, 0.504093, 0.840152,
		-0.165037, 0.862580, -0.478245,
		-0.965778, -0.042965, 0.255786,
		43.348988, 30.101004, 22.373568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.711353, 30.810808, 22.346272>,  <44.025032, 30.131079, 22.194517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.711353, 30.810808, 22.346272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489929, 30.546700, 22.549294>,  <43.357075, 30.388233, 22.671106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489929, 30.546700, 22.549294>,  <43.711353, 30.810808, 22.346272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.489929, 30.546700, 22.549294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205408, 0.482372, 0.851543,
		-0.807080, 0.575636, -0.131397,
		-0.553561, -0.660273, 0.507553,
		43.323860, 30.348618, 22.701559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.427338, 31.246845, 22.877176>,  <43.711353, 30.810808, 22.346272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.427338, 31.246845, 22.877176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.327389, 30.888012, 23.022947>,  <43.267422, 30.672712, 23.110411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.327389, 30.888012, 23.022947>,  <43.427338, 31.246845, 22.877176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.327389, 30.888012, 23.022947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014759, 0.372796, 0.927796,
		-0.968167, 0.237206, -0.079910,
		-0.249869, -0.897082, 0.364430,
		43.252430, 30.618887, 23.132277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.829647, 31.278589, 23.413607>,  <43.427338, 31.246845, 22.877176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.829647, 31.278589, 23.413607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.067631, 30.961845, 23.468716>,  <43.210419, 30.771799, 23.501781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.067631, 30.961845, 23.468716>,  <42.829647, 31.278589, 23.413607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.067631, 30.961845, 23.468716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047003, 0.205396, 0.977550,
		-0.802382, -0.575124, 0.159422,
		0.594957, -0.791862, 0.137774,
		43.246117, 30.724287, 23.510048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438595, 30.978765, 23.950865>,  <42.829647, 31.278589, 23.413607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.438595, 30.978765, 23.950865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.781712, 30.773216, 23.955547>,  <42.987579, 30.649887, 23.958357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.781712, 30.773216, 23.955547>,  <42.438595, 30.978765, 23.950865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.781712, 30.773216, 23.955547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093673, 0.178675, 0.979439,
		-0.505397, -0.839054, 0.201401,
		0.857787, -0.513871, 0.011705,
		43.039047, 30.619055, 23.959059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.471432, 30.622723, 24.539942>,  <42.438595, 30.978765, 23.950865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.471432, 30.622723, 24.539942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862022, 30.641506, 24.455755>,  <43.096375, 30.652777, 24.405243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862022, 30.641506, 24.455755>,  <42.471432, 30.622723, 24.539942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.862022, 30.641506, 24.455755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177278, 0.380872, 0.907474,
		0.122777, -0.923434, 0.363586,
		0.976472, 0.046961, -0.210467,
		43.154964, 30.655594, 24.392614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568794, 29.842197, 24.649723>,  <42.471432, 30.622723, 24.539942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.568794, 29.842197, 24.649723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.386211, 29.550367, 24.853436>,  <42.276661, 29.375269, 24.975662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.386211, 29.550367, 24.853436>,  <42.568794, 29.842197, 24.649723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.386211, 29.550367, 24.853436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093648, -0.608602, -0.787930,
		0.884804, -0.311962, 0.346123,
		-0.456456, -0.729577, 0.509279,
		42.249275, 29.331493, 25.006220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.905590, 29.203520, 24.427038>,  <42.568794, 29.842197, 24.649723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.905590, 29.203520, 24.427038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550236, 29.088577, 24.570261>,  <42.337025, 29.019611, 24.656195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550236, 29.088577, 24.570261>,  <42.905590, 29.203520, 24.427038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.550236, 29.088577, 24.570261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144020, -0.566101, -0.811657,
		0.435932, -0.772628, 0.461528,
		-0.888382, -0.287358, 0.358056,
		42.283722, 29.002371, 24.677677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.937771, 28.518129, 24.182236>,  <42.905590, 29.203520, 24.427038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.937771, 28.518129, 24.182236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.549969, 28.588577, 24.250393>,  <42.317287, 28.630846, 24.291286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.549969, 28.588577, 24.250393>,  <42.937771, 28.518129, 24.182236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.549969, 28.588577, 24.250393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237292, -0.501098, -0.832222,
		-0.061185, -0.847280, 0.527610,
		-0.969510, 0.176117, 0.170393,
		42.259117, 28.641413, 24.301512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.666138, 27.924397, 24.163063>,  <42.937771, 28.518129, 24.182236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.666138, 27.924397, 24.163063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.382332, 28.190546, 24.070227>,  <42.212048, 28.350235, 24.014524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.382332, 28.190546, 24.070227>,  <42.666138, 27.924397, 24.163063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382332, 28.190546, 24.070227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273947, -0.563882, -0.779096,
		-0.649264, -0.489198, 0.582359,
		-0.709514, 0.665374, -0.232094,
		42.169476, 28.390158, 24.000599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.046940, 27.550320, 24.187786>,  <42.666138, 27.924397, 24.163063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.046940, 27.550320, 24.187786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937473, 27.878790, 23.987478>,  <41.871792, 28.075872, 23.867292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937473, 27.878790, 23.987478>,  <42.046940, 27.550320, 24.187786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.937473, 27.878790, 23.987478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404882, -0.570628, -0.714461,
		-0.872454, 0.007227, 0.488643,
		-0.273670, 0.821177, -0.500772,
		41.855373, 28.125143, 23.837246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330605, 27.415754, 23.898052>,  <42.046940, 27.550320, 24.187786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330605, 27.415754, 23.898052> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463238, 27.735704, 23.697954>,  <41.542820, 27.927675, 23.577894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463238, 27.735704, 23.697954>,  <41.330605, 27.415754, 23.898052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.463238, 27.735704, 23.697954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538088, -0.275195, -0.796699,
		-0.774926, 0.533352, 0.339153,
		0.331588, 0.799877, -0.500247,
		41.562714, 27.975668, 23.547880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714352, 27.774906, 23.650270>,  <41.330605, 27.415754, 23.898052>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714352, 27.774906, 23.650270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023003, 27.854389, 23.408573>,  <41.208191, 27.902079, 23.263556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023003, 27.854389, 23.408573>,  <40.714352, 27.774906, 23.650270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023003, 27.854389, 23.408573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518418, -0.353965, -0.778429,
		-0.368562, 0.913905, -0.170114,
		0.771625, 0.198710, -0.604243,
		41.254490, 27.914001, 23.227301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456444, 28.103899, 23.071573>,  <40.714352, 27.774906, 23.650270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456444, 28.103899, 23.071573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799026, 27.949759, 22.934179>,  <41.004578, 27.857275, 22.851742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799026, 27.949759, 22.934179>,  <40.456444, 28.103899, 23.071573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799026, 27.949759, 22.934179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449523, -0.229611, -0.863255,
		0.253788, 0.893747, -0.369876,
		0.856458, -0.385351, -0.343487,
		41.055965, 27.834152, 22.831133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444481, 28.343487, 22.345238>,  <40.456444, 28.103899, 23.071573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444481, 28.343487, 22.345238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683933, 28.027485, 22.398207>,  <40.827606, 27.837885, 22.429989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683933, 28.027485, 22.398207>,  <40.444481, 28.343487, 22.345238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683933, 28.027485, 22.398207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413836, -0.446564, -0.793297,
		0.685843, 0.420090, -0.594259,
		0.598631, -0.790003, 0.132424,
		40.863522, 27.790483, 22.437935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453392, 28.111097, 21.732246>,  <40.444481, 28.343487, 22.345238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453392, 28.111097, 21.732246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641090, 27.791391, 21.882437>,  <40.753712, 27.599567, 21.972551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641090, 27.791391, 21.882437>,  <40.453392, 28.111097, 21.732246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641090, 27.791391, 21.882437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145134, -0.489216, -0.860002,
		0.871058, 0.349060, -0.345564,
		0.469248, -0.799265, 0.375476,
		40.781864, 27.551611, 21.995079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927116, 28.019670, 21.249449>,  <40.453392, 28.111097, 21.732246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.927116, 28.019670, 21.249449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866745, 27.677568, 21.447744>,  <40.830521, 27.472307, 21.566723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866745, 27.677568, 21.447744>,  <40.927116, 28.019670, 21.249449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866745, 27.677568, 21.447744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272127, -0.446165, -0.852575,
		0.950351, -0.263582, -0.165399,
		-0.150929, -0.855255, 0.495741,
		40.821465, 27.420992, 21.596466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217587, 27.548038, 20.894739>,  <40.927116, 28.019670, 21.249449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.217587, 27.548038, 20.894739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007774, 27.310413, 21.138695>,  <40.881889, 27.167839, 21.285069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007774, 27.310413, 21.138695>,  <41.217587, 27.548038, 20.894739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007774, 27.310413, 21.138695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204551, -0.607428, -0.767587,
		0.826457, -0.527373, 0.197096,
		-0.524526, -0.594061, 0.609888,
		40.850418, 27.132195, 21.321661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392975, 26.803080, 20.803457>,  <41.217587, 27.548038, 20.894739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.392975, 26.803080, 20.803457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023788, 26.816338, 20.956833>,  <40.802277, 26.824293, 21.048859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023788, 26.816338, 20.956833>,  <41.392975, 26.803080, 20.803457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023788, 26.816338, 20.956833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314189, -0.640298, -0.700930,
		0.222285, -0.767411, 0.601390,
		-0.922971, 0.033144, 0.383441,
		40.746899, 26.826281, 21.071865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197811, 26.160686, 20.858095>,  <41.392975, 26.803080, 20.803457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197811, 26.160686, 20.858095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846893, 26.351896, 20.875261>,  <40.636341, 26.466621, 20.885561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846893, 26.351896, 20.875261>,  <41.197811, 26.160686, 20.858095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846893, 26.351896, 20.875261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338099, -0.552078, -0.762167,
		-0.340641, -0.683157, 0.645957,
		-0.877298, 0.478023, 0.042914,
		40.583702, 26.495304, 20.888136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.934265, 32.999142, 18.801939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.239906, 32.775547, 18.930737>,  <37.423290, 32.641392, 19.008015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.239906, 32.775547, 18.930737>,  <36.934265, 32.999142, 18.801939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239906, 32.775547, 18.930737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000531, 0.499689, 0.866205,
		-0.645093, -0.661699, 0.382111,
		0.764104, -0.558986, 0.321995,
		37.469139, 32.607853, 19.027334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714828, 32.944397, 19.422787>,  <36.934265, 32.999142, 18.801939>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714828, 32.944397, 19.422787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.100506, 32.841698, 19.449373>,  <37.331913, 32.780079, 19.465324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.100506, 32.841698, 19.449373>,  <36.714828, 32.944397, 19.422787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100506, 32.841698, 19.449373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034031, 0.368313, 0.929079,
		-0.263021, -0.893546, 0.363862,
		0.964190, -0.256750, 0.066466,
		37.389763, 32.764671, 19.469313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827835, 32.699860, 20.080587>,  <36.714828, 32.944397, 19.422787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827835, 32.699860, 20.080587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.206821, 32.756950, 19.966091>,  <37.434216, 32.791206, 19.897394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.206821, 32.756950, 19.966091>,  <36.827835, 32.699860, 20.080587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206821, 32.756950, 19.966091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236345, 0.290571, 0.927205,
		0.215508, -0.946149, 0.241574,
		0.947469, 0.142725, -0.286238,
		37.491062, 32.799767, 19.880220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235664, 32.313984, 20.586182>,  <36.827835, 32.699860, 20.080587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235664, 32.313984, 20.586182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.466324, 32.599453, 20.427111>,  <37.604721, 32.770733, 20.331669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.466324, 32.599453, 20.427111>,  <37.235664, 32.313984, 20.586182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466324, 32.599453, 20.427111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249536, 0.309642, 0.917526,
		0.777951, -0.628325, 0.000467,
		0.576649, 0.713673, -0.397676,
		37.639320, 32.813557, 20.307808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873711, 32.197304, 20.930799>,  <37.235664, 32.313984, 20.586182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873711, 32.197304, 20.930799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.893253, 32.572514, 20.793560>,  <37.904980, 32.797642, 20.711216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.893253, 32.572514, 20.793560>,  <37.873711, 32.197304, 20.930799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893253, 32.572514, 20.793560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338299, 0.307663, 0.889324,
		0.939770, -0.159517, -0.302303,
		0.048855, 0.938029, -0.343096,
		37.907909, 32.853924, 20.690632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579914, 32.463688, 21.047400>,  <37.873711, 32.197304, 20.930799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579914, 32.463688, 21.047400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.330688, 32.773914, 21.006823>,  <38.181152, 32.960049, 20.982475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.330688, 32.773914, 21.006823>,  <38.579914, 32.463688, 21.047400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330688, 32.773914, 21.006823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306063, 0.361098, 0.880871,
		0.719803, 0.517791, -0.462359,
		-0.623064, 0.775564, -0.101443,
		38.143768, 33.006584, 20.976389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011726, 33.110260, 21.177397>,  <38.579914, 32.463688, 21.047400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011726, 33.110260, 21.177397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.624458, 33.198639, 21.224436>,  <38.392097, 33.251667, 21.252659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.624458, 33.198639, 21.224436>,  <39.011726, 33.110260, 21.177397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624458, 33.198639, 21.224436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187502, 0.329032, 0.925516,
		0.165796, 0.918107, -0.359987,
		-0.968171, 0.220945, 0.117595,
		38.334007, 33.264923, 21.259714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028130, 33.716076, 21.499256>,  <39.011726, 33.110260, 21.177397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028130, 33.716076, 21.499256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.662785, 33.576130, 21.582554>,  <38.443577, 33.492161, 21.632532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.662785, 33.576130, 21.582554>,  <39.028130, 33.716076, 21.499256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662785, 33.576130, 21.582554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137170, 0.217151, 0.966452,
		-0.383350, 0.911284, -0.150346,
		-0.913360, -0.349866, 0.208246,
		38.388775, 33.471169, 21.645027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545830, 34.241497, 21.853100>,  <39.028130, 33.716076, 21.499256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545830, 34.241497, 21.853100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.406841, 33.885628, 21.971581>,  <38.323448, 33.672104, 22.042669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.406841, 33.885628, 21.971581>,  <38.545830, 34.241497, 21.853100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406841, 33.885628, 21.971581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041328, 0.330109, 0.943038,
		-0.936779, 0.315438, -0.151473,
		-0.347473, -0.889678, 0.296203,
		38.302601, 33.618725, 22.060442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232758, 34.374649, 22.425865>,  <38.545830, 34.241497, 21.853100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232758, 34.374649, 22.425865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.238178, 33.978863, 22.483511>,  <38.241432, 33.741390, 22.518099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.238178, 33.978863, 22.483511>,  <38.232758, 34.374649, 22.425865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238178, 33.978863, 22.483511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126531, 0.141270, 0.981852,
		-0.991870, -0.031540, -0.123284,
		0.013552, -0.989469, 0.144112,
		38.242245, 33.682022, 22.526745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579155, 34.251453, 22.735592>,  <38.232758, 34.374649, 22.425865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579155, 34.251453, 22.735592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.832886, 33.952030, 22.812845>,  <37.985123, 33.772377, 22.859198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.832886, 33.952030, 22.812845>,  <37.579155, 34.251453, 22.735592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832886, 33.952030, 22.812845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159252, 0.117943, 0.980168,
		-0.756488, -0.652500, -0.044394,
		0.634323, -0.748554, 0.193134,
		38.023182, 33.727463, 22.870785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254986, 33.775681, 23.215412>,  <37.579155, 34.251453, 22.735592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254986, 33.775681, 23.215412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.649712, 33.719498, 23.247587>,  <37.886547, 33.685787, 23.266891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.649712, 33.719498, 23.247587>,  <37.254986, 33.775681, 23.215412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649712, 33.719498, 23.247587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065045, 0.110938, 0.991696,
		-0.148216, -0.983852, 0.100339,
		0.986813, -0.140458, 0.080438,
		37.945755, 33.677361, 23.271719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324272, 33.404964, 23.777618>,  <37.254986, 33.775681, 23.215412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324272, 33.404964, 23.777618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.704292, 33.527550, 23.754038>,  <37.932304, 33.601101, 23.739889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.704292, 33.527550, 23.754038>,  <37.324272, 33.404964, 23.777618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704292, 33.527550, 23.754038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064699, -0.008619, 0.997867,
		0.305305, -0.951842, -0.028017,
		0.950054, 0.306467, -0.058952,
		37.989307, 33.619488, 23.736353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771309, 32.939835, 24.205488>,  <37.324272, 33.404964, 23.777618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771309, 32.939835, 24.205488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.943966, 33.298473, 24.165901>,  <38.047562, 33.513657, 24.142149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.943966, 33.298473, 24.165901>,  <37.771309, 32.939835, 24.205488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943966, 33.298473, 24.165901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108453, 0.057334, 0.992447,
		0.895501, -0.439116, -0.072491,
		0.431643, 0.896599, -0.098967,
		38.073460, 33.567451, 24.136211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037708, 32.259247, 24.428366>,  <37.771309, 32.939835, 24.205488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037708, 32.259247, 24.428366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.868340, 31.989647, 24.670502>,  <37.766716, 31.827887, 24.815783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.868340, 31.989647, 24.670502>,  <38.037708, 32.259247, 24.428366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868340, 31.989647, 24.670502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500104, -0.383254, -0.776538,
		0.755385, -0.631539, -0.174790,
		-0.423425, -0.673999, 0.605340,
		37.741310, 31.787447, 24.852104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235096, 31.657011, 24.291185>,  <38.037708, 32.259247, 24.428366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235096, 31.657011, 24.291185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.873955, 31.588945, 24.449123>,  <37.657269, 31.548107, 24.543886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.873955, 31.588945, 24.449123>,  <38.235096, 31.657011, 24.291185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873955, 31.588945, 24.449123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245165, -0.550667, -0.797909,
		0.353203, -0.817197, 0.455453,
		-0.902852, -0.170163, 0.394846,
		37.603100, 31.537897, 24.567577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156315, 30.936985, 24.288334>,  <38.235096, 31.657011, 24.291185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156315, 30.936985, 24.288334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.782776, 31.077888, 24.313118>,  <37.558651, 31.162432, 24.327988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.782776, 31.077888, 24.313118>,  <38.156315, 30.936985, 24.288334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782776, 31.077888, 24.313118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301761, -0.682970, -0.665201,
		-0.192006, -0.639895, 0.744089,
		-0.933849, 0.352260, 0.061961,
		37.502621, 31.183567, 24.331707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738712, 30.346525, 24.182144>,  <38.156315, 30.936985, 24.288334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738712, 30.346525, 24.182144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.488594, 30.649332, 24.106319>,  <37.338524, 30.831017, 24.060823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.488594, 30.649332, 24.106319>,  <37.738712, 30.346525, 24.182144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488594, 30.649332, 24.106319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396279, -0.517270, -0.758548,
		-0.672291, -0.399192, 0.623434,
		-0.625290, 0.757019, -0.189564,
		37.301006, 30.876438, 24.049450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009434, 30.137766, 23.988205>,  <37.738712, 30.346525, 24.182144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009434, 30.137766, 23.988205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.030029, 30.503458, 23.827442>,  <37.042385, 30.722874, 23.730984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.030029, 30.503458, 23.827442>,  <37.009434, 30.137766, 23.988205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030029, 30.503458, 23.827442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376747, -0.354923, -0.855623,
		-0.924884, 0.195473, 0.326159,
		0.051490, 0.914232, -0.401907,
		37.045475, 30.777727, 23.706871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467319, 30.101612, 23.580013>,  <37.009434, 30.137766, 23.988205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467319, 30.101612, 23.580013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.687721, 30.402987, 23.436499>,  <36.819962, 30.583811, 23.350389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.687721, 30.402987, 23.436499>,  <36.467319, 30.101612, 23.580013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687721, 30.402987, 23.436499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121616, -0.352853, -0.927742,
		-0.825595, 0.554821, -0.102792,
		0.551001, 0.753438, -0.358789,
		36.853020, 30.629019, 23.328861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120377, 30.247753, 23.040722>,  <36.467319, 30.101612, 23.580013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120377, 30.247753, 23.040722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.487358, 30.393808, 22.977537>,  <36.707546, 30.481441, 22.939627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.487358, 30.393808, 22.977537>,  <36.120377, 30.247753, 23.040722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487358, 30.393808, 22.977537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040317, -0.309668, -0.949990,
		-0.395793, 0.877941, -0.269385,
		0.917455, 0.365138, -0.157960,
		36.762596, 30.503349, 22.930149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098652, 30.524084, 22.354761>,  <36.120377, 30.247753, 23.040722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098652, 30.524084, 22.354761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.493176, 30.518353, 22.420483>,  <36.729889, 30.514914, 22.459915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.493176, 30.518353, 22.420483>,  <36.098652, 30.524084, 22.354761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493176, 30.518353, 22.420483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154831, -0.262768, -0.952355,
		0.056822, 0.964753, -0.256950,
		0.986306, -0.014331, 0.164304,
		36.789066, 30.514053, 22.469774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427963, 30.865021, 21.798134>,  <36.098652, 30.524084, 22.354761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427963, 30.865021, 21.798134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.743343, 30.650711, 21.918989>,  <36.932571, 30.522125, 21.991503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.743343, 30.650711, 21.918989>,  <36.427963, 30.865021, 21.798134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743343, 30.650711, 21.918989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146801, -0.313101, -0.938305,
		0.597322, 0.784163, -0.168213,
		0.788452, -0.535776, 0.302138,
		36.979877, 30.489979, 22.009630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918957, 31.008791, 21.257593>,  <36.427963, 30.865021, 21.798134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918957, 31.008791, 21.257593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.026077, 30.676756, 21.453241>,  <37.090347, 30.477535, 21.570629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.026077, 30.676756, 21.453241>,  <36.918957, 31.008791, 21.257593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026077, 30.676756, 21.453241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115167, -0.476442, -0.871630,
		0.956567, 0.289751, -0.031991,
		0.267797, -0.830089, 0.489119,
		37.106415, 30.427729, 21.599977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605305, 30.713589, 21.062868>,  <36.918957, 31.008791, 21.257593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605305, 30.713589, 21.062868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.433651, 30.385370, 21.213888>,  <37.330658, 30.188438, 21.304501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.433651, 30.385370, 21.213888>,  <37.605305, 30.713589, 21.062868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433651, 30.385370, 21.213888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147755, -0.476137, -0.866869,
		0.891073, -0.316219, 0.325567,
		-0.429135, -0.820548, 0.377550,
		37.304909, 30.139206, 21.327152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087944, 30.180279, 20.840332>,  <37.605305, 30.713589, 21.062868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087944, 30.180279, 20.840332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.729954, 30.021852, 20.922462>,  <37.515160, 29.926798, 20.971741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.729954, 30.021852, 20.922462>,  <38.087944, 30.180279, 20.840332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729954, 30.021852, 20.922462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050992, -0.548047, -0.834892,
		0.443200, -0.736734, 0.510682,
		-0.894971, -0.396065, 0.205327,
		37.461464, 29.903032, 20.984060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239693, 29.442282, 20.826952>,  <38.087944, 30.180279, 20.840332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239693, 29.442282, 20.826952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.851879, 29.531713, 20.786934>,  <37.619190, 29.585373, 20.762922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.851879, 29.531713, 20.786934>,  <38.239693, 29.442282, 20.826952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851879, 29.531713, 20.786934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025639, -0.498837, -0.866316,
		-0.243595, -0.837361, 0.489374,
		-0.969538, 0.223578, -0.100045,
		37.561016, 29.598787, 20.756920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870514, 28.790648, 20.546064>,  <38.239693, 29.442282, 20.826952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870514, 28.790648, 20.546064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.593014, 29.071873, 20.483564>,  <37.426514, 29.240608, 20.446064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.593014, 29.071873, 20.483564>,  <37.870514, 28.790648, 20.546064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593014, 29.071873, 20.483564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225628, -0.418188, -0.879892,
		-0.683961, -0.575171, 0.448749,
		-0.693750, 0.703062, -0.156250,
		37.384888, 29.282791, 20.436689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435875, 28.294304, 21.054979>,  <37.870514, 28.790648, 20.546064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435875, 28.294304, 21.054979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.361427, 27.902817, 21.089542>,  <37.316757, 27.667923, 21.110281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.361427, 27.902817, 21.089542>,  <37.435875, 28.294304, 21.054979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361427, 27.902817, 21.089542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017240, 0.091183, 0.995685,
		-0.982376, 0.183827, -0.033844,
		-0.186120, -0.978720, 0.086407,
		37.305592, 27.609201, 21.115465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899483, 28.368763, 21.465483>,  <37.435875, 28.294304, 21.054979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899483, 28.368763, 21.465483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.034893, 27.994944, 21.509336>,  <37.116138, 27.770653, 21.535648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.034893, 27.994944, 21.509336>,  <36.899483, 28.368763, 21.465483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034893, 27.994944, 21.509336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037940, 0.129975, 0.990791,
		-0.940192, -0.331248, 0.079456,
		0.338525, -0.934549, 0.109634,
		37.136452, 27.714579, 21.542227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495716, 27.968414, 21.930201>,  <36.899483, 28.368763, 21.465483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495716, 27.968414, 21.930201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.849369, 27.783743, 21.958950>,  <37.061562, 27.672939, 21.976200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.849369, 27.783743, 21.958950>,  <36.495716, 27.968414, 21.930201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849369, 27.783743, 21.958950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077765, 0.006282, 0.996952,
		-0.460724, -0.887025, -0.030349,
		0.884130, -0.461679, 0.071874,
		37.114609, 27.645239, 21.980513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511143, 27.683926, 22.493944>,  <36.495716, 27.968414, 21.930201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511143, 27.683926, 22.493944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.902550, 27.624660, 22.436602>,  <37.137394, 27.589102, 22.402197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.902550, 27.624660, 22.436602>,  <36.511143, 27.683926, 22.493944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902550, 27.624660, 22.436602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122351, -0.142313, 0.982231,
		-0.165938, -0.978669, -0.121127,
		0.978517, -0.148170, -0.143356,
		37.196106, 27.580212, 22.393595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718632, 27.056704, 22.910801>,  <36.511143, 27.683926, 22.493944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718632, 27.056704, 22.910801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.048855, 27.277405, 22.863432>,  <37.246990, 27.409826, 22.835011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.048855, 27.277405, 22.863432>,  <36.718632, 27.056704, 22.910801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048855, 27.277405, 22.863432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165422, -0.035977, 0.985566,
		0.539530, -0.833230, -0.120974,
		0.825556, 0.551755, -0.118423,
		37.296520, 27.442930, 22.827906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172161, 26.815386, 23.367487>,  <36.718632, 27.056704, 22.910801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172161, 26.815386, 23.367487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.350132, 27.169209, 23.311499>,  <37.456917, 27.381502, 23.277905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.350132, 27.169209, 23.311499>,  <37.172161, 26.815386, 23.367487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350132, 27.169209, 23.311499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379651, -0.044743, 0.924047,
		0.811111, -0.464278, -0.355731,
		0.444931, 0.884559, -0.139972,
		37.483612, 27.434576, 23.269506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960094, 26.807966, 23.545679>,  <37.172161, 26.815386, 23.367487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960094, 26.807966, 23.545679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.836605, 27.185581, 23.592119>,  <37.762512, 27.412151, 23.619984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.836605, 27.185581, 23.592119>,  <37.960094, 26.807966, 23.545679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836605, 27.185581, 23.592119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481229, 0.049742, 0.875183,
		0.820431, 0.326063, -0.469655,
		-0.308726, 0.944039, 0.116101,
		37.743988, 27.468792, 23.626949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572002, 27.260021, 23.757074>,  <37.960094, 26.807966, 23.545679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572002, 27.260021, 23.757074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.259624, 27.490852, 23.852654>,  <38.072197, 27.629353, 23.910002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.259624, 27.490852, 23.852654>,  <38.572002, 27.260021, 23.757074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259624, 27.490852, 23.852654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370805, 0.120504, 0.920860,
		0.502615, 0.807748, -0.308092,
		-0.780949, 0.577080, 0.238950,
		38.025341, 27.663977, 23.924339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906429, 27.783155, 24.087782>,  <38.572002, 27.260021, 23.757074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906429, 27.783155, 24.087782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.524155, 27.747166, 24.199907>,  <38.294792, 27.725573, 24.267181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.524155, 27.747166, 24.199907>,  <38.906429, 27.783155, 24.087782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524155, 27.747166, 24.199907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267464, 0.132516, 0.954412,
		-0.123017, 0.987089, -0.102579,
		-0.955683, -0.089973, 0.280312,
		38.237450, 27.720175, 24.284000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744095, 28.432325, 24.546862>,  <38.906429, 27.783155, 24.087782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744095, 28.432325, 24.546862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.469444, 28.159935, 24.648693>,  <38.304653, 27.996500, 24.709793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.469444, 28.159935, 24.648693>,  <38.744095, 28.432325, 24.546862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469444, 28.159935, 24.648693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167972, 0.192102, 0.966893,
		-0.707338, 0.706659, -0.017517,
		-0.686628, -0.680978, 0.254580,
		38.263454, 27.955641, 24.725067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277390, 28.739187, 24.962791>,  <38.744095, 28.432325, 24.546862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277390, 28.739187, 24.962791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.233807, 28.351263, 25.050056>,  <38.207657, 28.118507, 25.102415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.233807, 28.351263, 25.050056>,  <38.277390, 28.739187, 24.962791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233807, 28.351263, 25.050056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056893, 0.213026, 0.975389,
		-0.992417, 0.118686, 0.031965,
		-0.108955, -0.969811, 0.218163,
		38.201118, 28.060320, 25.115505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916546, 28.694458, 25.561871>,  <38.277390, 28.739187, 24.962791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916546, 28.694458, 25.561871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.038773, 28.313595, 25.560137>,  <38.112110, 28.085077, 25.559097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.038773, 28.313595, 25.560137>,  <37.916546, 28.694458, 25.561871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038773, 28.313595, 25.560137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046973, 0.010529, 0.998841,
		-0.951011, -0.305418, 0.047943,
		0.305568, -0.952160, -0.004333,
		38.130444, 28.027946, 25.558836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510242, 28.441742, 26.082182>,  <37.916546, 28.694458, 25.561871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510242, 28.441742, 26.082182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.833954, 28.209904, 26.043947>,  <38.028179, 28.070801, 26.021008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.833954, 28.209904, 26.043947>,  <37.510242, 28.441742, 26.082182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833954, 28.209904, 26.043947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140944, 0.033620, 0.989447,
		-0.570266, -0.814210, 0.108899,
		0.809279, -0.579596, -0.095585,
		38.076736, 28.036024, 26.015272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364464, 27.887260, 26.556330>,  <37.510242, 28.441742, 26.082182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364464, 27.887260, 26.556330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.758133, 27.919760, 26.493345>,  <37.994335, 27.939259, 26.455555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.758133, 27.919760, 26.493345>,  <37.364464, 27.887260, 26.556330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758133, 27.919760, 26.493345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165939, -0.111062, 0.979862,
		0.062123, -0.990487, -0.122787,
		0.984177, 0.081247, -0.157461,
		38.053387, 27.944134, 26.446108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.486427, 25.596092, 20.922363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.311962, 25.942734, 20.825409>,  <40.207283, 26.150719, 20.767237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.311962, 25.942734, 20.825409>,  <40.486427, 25.596092, 20.922363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311962, 25.942734, 20.825409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278964, -0.386306, -0.879174,
		-0.855533, -0.315849, 0.410246,
		-0.436167, 0.866606, -0.242388,
		40.181110, 26.202715, 20.752693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852760, 25.409262, 20.780323>,  <40.486427, 25.596092, 20.922363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852760, 25.409262, 20.780323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.872940, 25.764383, 20.597345>,  <39.885048, 25.977457, 20.487558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.872940, 25.764383, 20.597345>,  <39.852760, 25.409262, 20.780323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872940, 25.764383, 20.597345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496536, -0.375112, -0.782779,
		-0.866548, 0.266630, 0.421903,
		0.050452, 0.887806, -0.457444,
		39.888077, 26.030725, 20.460112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085648, 25.720133, 20.662434>,  <39.852760, 25.409262, 20.780323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085648, 25.720133, 20.662434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.350365, 25.880051, 20.408758>,  <39.509193, 25.976002, 20.256554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.350365, 25.880051, 20.408758>,  <39.085648, 25.720133, 20.662434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350365, 25.880051, 20.408758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667746, -0.070209, -0.741072,
		-0.340802, 0.913912, 0.220497,
		0.661793, 0.399794, -0.634188,
		39.548904, 25.999989, 20.218502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687916, 26.045441, 20.194361>,  <39.085648, 25.720133, 20.662434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687916, 26.045441, 20.194361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.045593, 26.044241, 20.015289>,  <39.260201, 26.043522, 19.907846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.045593, 26.044241, 20.015289>,  <38.687916, 26.045441, 20.194361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045593, 26.044241, 20.015289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444055, -0.133107, -0.886057,
		-0.056932, 0.991097, -0.120355,
		0.894189, -0.002999, -0.447680,
		39.313850, 26.043341, 19.880985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582661, 26.418272, 19.538082>,  <38.687916, 26.045441, 20.194361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582661, 26.418272, 19.538082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.913239, 26.203899, 19.469080>,  <39.111588, 26.075275, 19.427679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.913239, 26.203899, 19.469080>,  <38.582661, 26.418272, 19.538082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913239, 26.203899, 19.469080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351271, -0.251383, -0.901895,
		0.439990, 0.805967, -0.396013,
		0.826449, -0.535933, -0.172507,
		39.161175, 26.043119, 19.417328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764339, 26.609564, 18.883408>,  <38.582661, 26.418272, 19.538082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764339, 26.609564, 18.883408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.940987, 26.254021, 18.932241>,  <39.046974, 26.040695, 18.961542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.940987, 26.254021, 18.932241>,  <38.764339, 26.609564, 18.883408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940987, 26.254021, 18.932241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346404, -0.294444, -0.890678,
		0.827631, 0.351053, -0.437937,
		0.441623, -0.888856, 0.122084,
		39.073475, 25.987364, 18.968866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073868, 26.478350, 18.218287>,  <38.764339, 26.609564, 18.883408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073868, 26.478350, 18.218287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.045498, 26.117975, 18.389534>,  <39.028477, 25.901751, 18.492283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.045498, 26.117975, 18.389534>,  <39.073868, 26.478350, 18.218287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045498, 26.117975, 18.389534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224079, -0.403841, -0.886962,
		0.971987, -0.158836, -0.173240,
		-0.070920, -0.900935, 0.428120,
		39.024223, 25.847694, 18.517969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577221, 26.017557, 17.915657>,  <39.073868, 26.478350, 18.218287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577221, 26.017557, 17.915657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.285770, 25.791988, 18.071138>,  <39.110901, 25.656647, 18.164427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.285770, 25.791988, 18.071138>,  <39.577221, 26.017557, 17.915657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285770, 25.791988, 18.071138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121548, -0.452050, -0.883672,
		0.674035, -0.691116, 0.260834,
		-0.728631, -0.563922, 0.388702,
		39.067181, 25.622812, 18.187748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614292, 25.463171, 17.492546>,  <39.577221, 26.017557, 17.915657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614292, 25.463171, 17.492546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.259918, 25.404388, 17.668512>,  <39.047295, 25.369118, 17.774092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.259918, 25.404388, 17.668512>,  <39.614292, 25.463171, 17.492546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259918, 25.404388, 17.668512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356173, -0.391980, -0.848229,
		0.297093, -0.908160, 0.294926,
		-0.885933, -0.146958, 0.439917,
		38.994137, 25.360302, 17.800488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446838, 24.764549, 17.312904>,  <39.614292, 25.463171, 17.492546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446838, 24.764549, 17.312904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.122784, 24.984871, 17.393198>,  <38.928352, 25.117064, 17.441374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.122784, 24.984871, 17.393198>,  <39.446838, 24.764549, 17.312904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122784, 24.984871, 17.393198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480387, -0.427461, -0.765836,
		-0.336017, -0.716864, 0.610900,
		-0.810136, 0.550803, 0.200739,
		38.879742, 25.150112, 17.453419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903252, 24.420578, 17.055834>,  <39.446838, 24.764549, 17.312904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903252, 24.420578, 17.055834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.694019, 24.758587, 17.100237>,  <38.568478, 24.961391, 17.126879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.694019, 24.758587, 17.100237>,  <38.903252, 24.420578, 17.055834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694019, 24.758587, 17.100237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524387, -0.216422, -0.823516,
		-0.671865, -0.488978, 0.556325,
		-0.523083, 0.845021, 0.111008,
		38.537094, 25.012093, 17.133539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161903, 24.239441, 17.110441>,  <38.903252, 24.420578, 17.055834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161903, 24.239441, 17.110441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.170658, 24.610586, 16.961531>,  <38.175911, 24.833273, 16.872185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.170658, 24.610586, 16.961531>,  <38.161903, 24.239441, 17.110441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170658, 24.610586, 16.961531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544655, -0.301194, -0.782709,
		-0.838375, 0.219890, 0.498774,
		0.021882, 0.927864, -0.372277,
		38.177223, 24.888945, 16.849848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571285, 24.343887, 16.864790>,  <38.161903, 24.239441, 17.110441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571285, 24.343887, 16.864790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.794621, 24.617041, 16.676352>,  <37.928623, 24.780933, 16.563290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.794621, 24.617041, 16.676352>,  <37.571285, 24.343887, 16.864790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794621, 24.617041, 16.676352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530477, -0.142721, -0.835599,
		-0.637852, 0.716450, 0.282568,
		0.558337, 0.682884, -0.471095,
		37.962120, 24.821905, 16.535023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151249, 24.885725, 16.609657>,  <37.571285, 24.343887, 16.864790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151249, 24.885725, 16.609657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.473019, 24.850206, 16.374706>,  <37.666080, 24.828896, 16.233736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.473019, 24.850206, 16.374706>,  <37.151249, 24.885725, 16.609657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473019, 24.850206, 16.374706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592527, -0.049166, -0.804048,
		0.042517, 0.994836, -0.092164,
		0.804427, -0.088795, -0.587377,
		37.714348, 24.823568, 16.198494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475597, 24.985756, 16.203190>,  <37.151249, 24.885725, 16.609657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475597, 24.985756, 16.203190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.243237, 25.302271, 16.126863>,  <36.103821, 25.492180, 16.081068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.243237, 25.302271, 16.126863>,  <36.475597, 24.985756, 16.203190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243237, 25.302271, 16.126863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234805, 0.387365, 0.891524,
		0.779370, 0.473084, -0.410821,
		-0.580904, 0.791290, -0.190818,
		36.068966, 25.539658, 16.069618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903980, 25.536697, 16.417664>,  <36.475597, 24.985756, 16.203190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903980, 25.536697, 16.417664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.543053, 25.708046, 16.398426>,  <36.326496, 25.810856, 16.386883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.543053, 25.708046, 16.398426>,  <36.903980, 25.536697, 16.417664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543053, 25.708046, 16.398426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226120, 0.565360, 0.793245,
		0.366994, 0.704888, -0.607000,
		-0.902322, 0.428371, -0.048094,
		36.272354, 25.836557, 16.383997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941025, 26.297848, 16.571081>,  <36.903980, 25.536697, 16.417664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941025, 26.297848, 16.571081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.568840, 26.191057, 16.671453>,  <36.345528, 26.126982, 16.731676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.568840, 26.191057, 16.671453>,  <36.941025, 26.297848, 16.571081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568840, 26.191057, 16.671453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045841, 0.594659, 0.802670,
		-0.363514, 0.758355, -0.541068,
		-0.930460, -0.266978, 0.250930,
		36.289703, 26.110964, 16.746733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669758, 26.865938, 16.934258>,  <36.941025, 26.297848, 16.571081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669758, 26.865938, 16.934258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.415874, 26.573479, 17.034313>,  <36.263546, 26.398003, 17.094347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.415874, 26.573479, 17.034313>,  <36.669758, 26.865938, 16.934258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415874, 26.573479, 17.034313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007939, 0.317515, 0.948220,
		-0.772712, 0.603828, -0.195724,
		-0.634707, -0.731147, 0.250142,
		36.225464, 26.354134, 17.109356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193764, 27.160992, 17.414604>,  <36.669758, 26.865938, 16.934258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193764, 27.160992, 17.414604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.143459, 26.766850, 17.460659>,  <36.113277, 26.530363, 17.488293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.143459, 26.766850, 17.460659>,  <36.193764, 27.160992, 17.414604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143459, 26.766850, 17.460659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108531, 0.129027, 0.985684,
		-0.986106, 0.111468, -0.123168,
		-0.125764, -0.985356, 0.115137,
		36.105732, 26.471243, 17.495199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625935, 27.094511, 17.925791>,  <36.193764, 27.160992, 17.414604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625935, 27.094511, 17.925791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.842670, 26.758574, 17.938889>,  <35.972713, 26.557011, 17.946747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.842670, 26.758574, 17.938889>,  <35.625935, 27.094511, 17.925791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842670, 26.758574, 17.938889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163592, 0.143599, 0.976021,
		-0.824408, -0.523490, 0.215199,
		0.541839, -0.839844, 0.032745,
		36.005222, 26.506620, 17.948711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350204, 26.688011, 18.506462>,  <35.625935, 27.094511, 17.925791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350204, 26.688011, 18.506462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.723263, 26.573223, 18.418991>,  <35.947098, 26.504351, 18.366508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.723263, 26.573223, 18.418991>,  <35.350204, 26.688011, 18.506462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723263, 26.573223, 18.418991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247384, 0.067458, 0.966566,
		-0.262623, -0.955562, 0.133906,
		0.932647, -0.286969, -0.218675,
		36.003056, 26.487133, 18.353388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447460, 26.147356, 19.067430>,  <35.350204, 26.688011, 18.506462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447460, 26.147356, 19.067430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.798637, 26.267172, 18.918037>,  <36.009342, 26.339062, 18.828402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.798637, 26.267172, 18.918037>,  <35.447460, 26.147356, 19.067430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798637, 26.267172, 18.918037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331970, 0.181240, 0.925715,
		0.344980, -0.936711, 0.059680,
		0.877943, 0.299541, -0.373484,
		36.062019, 26.357035, 18.805992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869907, 25.907520, 19.629541>,  <35.447460, 26.147356, 19.067430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869907, 25.907520, 19.629541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.087055, 26.163729, 19.412277>,  <36.217346, 26.317453, 19.281919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.087055, 26.163729, 19.412277>,  <35.869907, 25.907520, 19.629541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087055, 26.163729, 19.412277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446150, 0.327985, 0.832692,
		0.711505, -0.694376, -0.107713,
		0.542873, 0.640521, -0.543159,
		36.249916, 26.355885, 19.249329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485291, 25.787018, 19.855690>,  <35.869907, 25.907520, 19.629541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485291, 25.787018, 19.855690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.491707, 26.148031, 19.683561>,  <36.495556, 26.364639, 19.580284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.491707, 26.148031, 19.683561>,  <36.485291, 25.787018, 19.855690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491707, 26.148031, 19.683561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560283, 0.348350, 0.751489,
		0.828146, -0.253154, -0.500087,
		0.016037, 0.902533, -0.430323,
		36.496517, 26.418791, 19.554464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122543, 26.074839, 20.102358>,  <36.485291, 25.787018, 19.855690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122543, 26.074839, 20.102358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.936218, 26.405931, 19.977213>,  <36.824425, 26.604588, 19.902126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.936218, 26.405931, 19.977213>,  <37.122543, 26.074839, 20.102358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936218, 26.405931, 19.977213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415953, 0.516882, 0.748208,
		0.781028, 0.218387, -0.585067,
		-0.465809, 0.827732, -0.312860,
		36.796474, 26.654251, 19.883354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645271, 26.627508, 19.898582>,  <37.122543, 26.074839, 20.102358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645271, 26.627508, 19.898582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.303043, 26.806883, 20.002041>,  <37.097706, 26.914509, 20.064116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.303043, 26.806883, 20.002041>,  <37.645271, 26.627508, 19.898582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303043, 26.806883, 20.002041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470425, 0.464926, 0.750030,
		0.216091, 0.763378, -0.608735,
		-0.855573, 0.448439, 0.258646,
		37.046371, 26.941414, 20.079634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809395, 27.307634, 20.035467>,  <37.645271, 26.627508, 19.898582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809395, 27.307634, 20.035467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.466404, 27.244839, 20.231464>,  <37.260609, 27.207161, 20.349062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.466404, 27.244839, 20.231464>,  <37.809395, 27.307634, 20.035467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466404, 27.244839, 20.231464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402126, 0.389630, 0.828543,
		-0.320986, 0.907493, -0.270968,
		-0.857474, -0.156987, 0.489993,
		37.209160, 27.197742, 20.378462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754223, 27.922096, 20.454988>,  <37.809395, 27.307634, 20.035467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754223, 27.922096, 20.454988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.502781, 27.645050, 20.596489>,  <37.351913, 27.478823, 20.681389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.502781, 27.645050, 20.596489>,  <37.754223, 27.922096, 20.454988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502781, 27.645050, 20.596489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270618, 0.231635, 0.934404,
		-0.729122, 0.683105, 0.041826,
		-0.628607, -0.692614, 0.353750,
		37.314198, 27.437265, 20.702614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419289, 28.465027, 20.093279>,  <37.754223, 27.922096, 20.454988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419289, 28.465027, 20.093279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.293045, 28.842936, 20.057955>,  <37.217300, 29.069681, 20.036760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.293045, 28.842936, 20.057955>,  <37.419289, 28.465027, 20.093279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293045, 28.842936, 20.057955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410981, -0.219984, -0.884704,
		-0.855271, -0.242925, 0.457712,
		-0.315606, 0.944772, -0.088309,
		37.198364, 29.126368, 20.031462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690388, 28.454113, 19.793959>,  <37.419289, 28.465027, 20.093279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690388, 28.454113, 19.793959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.831245, 28.818020, 19.706028>,  <36.915760, 29.036364, 19.653269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.831245, 28.818020, 19.706028>,  <36.690388, 28.454113, 19.793959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831245, 28.818020, 19.706028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519932, -0.005152, -0.854192,
		-0.778247, 0.415091, 0.471202,
		0.352140, 0.909765, -0.219829,
		36.936886, 29.090950, 19.640079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136921, 28.800549, 19.434280>,  <36.690388, 28.454113, 19.793959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136921, 28.800549, 19.434280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.435162, 29.041288, 19.319839>,  <36.614105, 29.185732, 19.251175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.435162, 29.041288, 19.319839>,  <36.136921, 28.800549, 19.434280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435162, 29.041288, 19.319839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425374, 0.099352, -0.899548,
		-0.512969, 0.792405, 0.330088,
		0.745601, 0.601851, -0.286104,
		36.658840, 29.221844, 19.234009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859966, 29.255423, 18.984478>,  <36.136921, 28.800549, 19.434280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859966, 29.255423, 18.984478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.246895, 29.249683, 18.883213>,  <36.479050, 29.246239, 18.822454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.246895, 29.249683, 18.883213>,  <35.859966, 29.255423, 18.984478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246895, 29.249683, 18.883213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253247, -0.004398, -0.967392,
		0.012768, 0.999887, -0.007888,
		0.967317, -0.014349, -0.253163,
		36.537090, 29.245378, 18.807264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899773, 29.748138, 18.434036>,  <35.859966, 29.255423, 18.984478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899773, 29.748138, 18.434036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.229736, 29.522047, 18.431170>,  <36.427715, 29.386393, 18.429449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.229736, 29.522047, 18.431170>,  <35.899773, 29.748138, 18.434036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229736, 29.522047, 18.431170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185464, -0.258653, -0.947999,
		0.533980, 0.783338, -0.318194,
		0.824905, -0.565226, -0.007165,
		36.477207, 29.352480, 18.429020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255318, 29.955784, 17.863417>,  <35.899773, 29.748138, 18.434036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255318, 29.955784, 17.863417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.386570, 29.592113, 17.965967>,  <36.465321, 29.373911, 18.027496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.386570, 29.592113, 17.965967>,  <36.255318, 29.955784, 17.863417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386570, 29.592113, 17.965967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290107, -0.355276, -0.888604,
		0.898981, 0.217203, -0.380336,
		0.328132, -0.909176, 0.256374,
		36.485008, 29.319361, 18.042879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749367, 29.778498, 17.398062>,  <36.255318, 29.955784, 17.863417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749367, 29.778498, 17.398062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.616535, 29.431540, 17.546305>,  <36.536835, 29.223366, 17.635250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.616535, 29.431540, 17.546305>,  <36.749367, 29.778498, 17.398062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616535, 29.431540, 17.546305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231694, -0.305858, -0.923455,
		0.914353, -0.392529, -0.099400,
		-0.332080, -0.867394, 0.370609,
		36.516911, 29.171322, 17.657488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443069, 29.859741, 17.353182>,  <36.749367, 29.778498, 17.398062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443069, 29.859741, 17.353182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.616608, 30.179682, 17.187281>,  <37.720730, 30.371645, 17.087740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.616608, 30.179682, 17.187281>,  <37.443069, 29.859741, 17.353182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616608, 30.179682, 17.187281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118095, 0.506841, 0.853912,
		0.893214, -0.321487, 0.314350,
		0.433847, 0.799849, -0.414751,
		37.746761, 30.419636, 17.062855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065880, 30.056511, 17.731739>,  <37.443069, 29.859741, 17.353182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065880, 30.056511, 17.731739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.921047, 30.370443, 17.530567>,  <37.834148, 30.558804, 17.409864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.921047, 30.370443, 17.530567>,  <38.065880, 30.056511, 17.731739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921047, 30.370443, 17.530567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024832, 0.531225, 0.846867,
		0.931816, 0.319122, -0.172857,
		-0.362080, 0.784832, -0.502929,
		37.812424, 30.605892, 17.379688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460583, 30.592361, 17.997915>,  <38.065880, 30.056511, 17.731739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460583, 30.592361, 17.997915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.163376, 30.784096, 17.811087>,  <37.985050, 30.899136, 17.698990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.163376, 30.784096, 17.811087>,  <38.460583, 30.592361, 17.997915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163376, 30.784096, 17.811087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088239, 0.761956, 0.641589,
		0.663426, 0.435500, -0.608446,
		-0.743021, 0.479335, -0.467073,
		37.940468, 30.927896, 17.670965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651642, 31.216288, 17.877321>,  <38.460583, 30.592361, 17.997915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651642, 31.216288, 17.877321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.252651, 31.244343, 17.872860>,  <38.013256, 31.261175, 17.870184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.252651, 31.244343, 17.872860>,  <38.651642, 31.216288, 17.877321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252651, 31.244343, 17.872860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046493, 0.763605, 0.644008,
		0.053685, 0.641863, -0.764937,
		-0.997475, 0.070137, -0.011152,
		37.953407, 31.265385, 17.869514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501514, 31.901108, 17.757088>,  <38.651642, 31.216288, 17.877321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501514, 31.901108, 17.757088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.152573, 31.775572, 17.907026>,  <37.943207, 31.700251, 17.996988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.152573, 31.775572, 17.907026>,  <38.501514, 31.901108, 17.757088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152573, 31.775572, 17.907026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020051, 0.789065, 0.613982,
		-0.488468, 0.528092, -0.694635,
		-0.872351, -0.313839, 0.374845,
		37.890865, 31.681419, 18.019480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075695, 32.561214, 17.805626>,  <38.501514, 31.901108, 17.757088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075695, 32.561214, 17.805626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.920849, 32.305115, 18.071020>,  <37.827942, 32.151455, 18.230257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.920849, 32.305115, 18.071020>,  <38.075695, 32.561214, 17.805626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920849, 32.305115, 18.071020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081175, 0.740466, 0.667174,
		-0.918449, 0.204417, -0.338621,
		-0.387119, -0.640253, 0.663487,
		37.804714, 32.113037, 18.270065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451859, 32.940670, 18.046350>,  <38.075695, 32.561214, 17.805626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451859, 32.940670, 18.046350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.547546, 32.667740, 18.322672>,  <37.604961, 32.503983, 18.488464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.547546, 32.667740, 18.322672>,  <37.451859, 32.940670, 18.046350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547546, 32.667740, 18.322672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071192, 0.697220, 0.713313,
		-0.968352, -0.219819, 0.118214,
		0.239221, -0.682322, 0.690804,
		37.619312, 32.463043, 18.529913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.262573, 27.334780, 15.483331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.954971, 27.215143, 15.709313>,  <39.770409, 27.143360, 15.844903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.954971, 27.215143, 15.709313>,  <40.262573, 27.334780, 15.483331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954971, 27.215143, 15.709313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181362, 0.745392, 0.641482,
		-0.612976, 0.595764, -0.518966,
		-0.769005, -0.299092, 0.564956,
		39.724270, 27.125416, 15.878800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992729, 27.949629, 15.821619>,  <40.262573, 27.334780, 15.483331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992729, 27.949629, 15.821619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.856689, 27.635183, 16.028059>,  <39.775066, 27.446516, 16.151922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.856689, 27.635183, 16.028059>,  <39.992729, 27.949629, 15.821619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856689, 27.635183, 16.028059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164536, 0.490606, 0.855706,
		-0.925885, 0.375938, -0.037508,
		-0.340095, -0.786114, 0.516101,
		39.754662, 27.399349, 16.182890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555168, 28.193621, 16.267809>,  <39.992729, 27.949629, 15.821619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555168, 28.193621, 16.267809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.668316, 27.838449, 16.412897>,  <39.736206, 27.625347, 16.499950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.668316, 27.838449, 16.412897>,  <39.555168, 28.193621, 16.267809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668316, 27.838449, 16.412897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253246, 0.433885, 0.864645,
		-0.925121, -0.152728, 0.347599,
		0.282873, -0.887929, 0.362718,
		39.753178, 27.572071, 16.521713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424309, 28.211100, 17.028109>,  <39.555168, 28.193621, 16.267809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424309, 28.211100, 17.028109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.670094, 27.897381, 16.993904>,  <39.817566, 27.709148, 16.973381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.670094, 27.897381, 16.993904>,  <39.424309, 28.211100, 17.028109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670094, 27.897381, 16.993904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462313, 0.270119, 0.844572,
		-0.639299, -0.558491, 0.528569,
		0.614462, -0.784298, -0.085511,
		39.854431, 27.662092, 16.968250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483261, 27.917412, 17.730814>,  <39.424309, 28.211100, 17.028109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483261, 27.917412, 17.730814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.803123, 27.795128, 17.524092>,  <39.995041, 27.721758, 17.400059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.803123, 27.795128, 17.524092>,  <39.483261, 27.917412, 17.730814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803123, 27.795128, 17.524092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577179, 0.154041, 0.801957,
		-0.165559, -0.939580, 0.299631,
		0.799659, -0.305712, -0.516804,
		40.043022, 27.703415, 17.369051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844131, 27.558964, 18.209045>,  <39.483261, 27.917412, 17.730814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844131, 27.558964, 18.209045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.094692, 27.687088, 17.924786>,  <40.245029, 27.763962, 17.754230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.094692, 27.687088, 17.924786>,  <39.844131, 27.558964, 18.209045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094692, 27.687088, 17.924786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692755, 0.189208, 0.695910,
		0.357367, -0.928226, -0.103376,
		0.626402, 0.320309, -0.710649,
		40.282612, 27.783180, 17.711592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407635, 27.381733, 18.423851>,  <39.844131, 27.558964, 18.209045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407635, 27.381733, 18.423851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.575619, 27.641460, 18.170231>,  <40.676411, 27.797297, 18.018059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.575619, 27.641460, 18.170231>,  <40.407635, 27.381733, 18.423851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575619, 27.641460, 18.170231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687672, 0.228237, 0.689213,
		0.592232, -0.725461, -0.350667,
		0.419962, 0.649318, -0.634049,
		40.701607, 27.836256, 17.980017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113590, 27.383694, 18.547848>,  <40.407635, 27.381733, 18.423851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113590, 27.383694, 18.547848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.094910, 27.712698, 18.321117>,  <41.083702, 27.910101, 18.185080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.094910, 27.712698, 18.321117>,  <41.113590, 27.383694, 18.547848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094910, 27.712698, 18.321117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628588, 0.465209, 0.623263,
		0.776335, -0.327190, -0.538750,
		-0.046706, 0.822513, -0.566826,
		41.080898, 27.959452, 18.151070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866348, 27.567377, 18.431955>,  <41.113590, 27.383694, 18.547848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866348, 27.567377, 18.431955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.626404, 27.884964, 18.392395>,  <41.482437, 28.075516, 18.368660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.626404, 27.884964, 18.392395>,  <41.866348, 27.567377, 18.431955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.626404, 27.884964, 18.392395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628507, 0.544087, 0.555831,
		0.495122, 0.271264, -0.825391,
		-0.599861, 0.793968, -0.098898,
		41.446445, 28.123154, 18.362726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.316555, 28.236614, 18.198530>,  <41.866348, 27.567377, 18.431955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.316555, 28.236614, 18.198530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.973377, 28.339092, 18.376656>,  <41.767471, 28.400579, 18.483530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.973377, 28.339092, 18.376656>,  <42.316555, 28.236614, 18.198530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973377, 28.339092, 18.376656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474768, 0.726568, 0.496684,
		-0.196301, 0.637545, -0.744985,
		-0.857940, 0.256195, 0.445312,
		41.715996, 28.415951, 18.510248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.316998, 28.960258, 18.143591>,  <42.316555, 28.236614, 18.198530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.316998, 28.960258, 18.143591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.065708, 28.874666, 18.442802>,  <41.914936, 28.823311, 18.622330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.065708, 28.874666, 18.442802>,  <42.316998, 28.960258, 18.143591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.065708, 28.874666, 18.442802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425661, 0.710261, 0.560663,
		-0.651268, 0.670628, -0.355118,
		-0.628222, -0.213982, 0.748030,
		41.877243, 28.810472, 18.667212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303532, 29.603861, 18.453245>,  <42.316998, 28.960258, 18.143591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303532, 29.603861, 18.453245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.141670, 29.348850, 18.715487>,  <42.044552, 29.195845, 18.872831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.141670, 29.348850, 18.715487>,  <42.303532, 29.603861, 18.453245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.141670, 29.348850, 18.715487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530957, 0.419906, 0.736047,
		-0.744540, 0.645942, 0.168581,
		-0.404656, -0.637525, 0.655604,
		42.020275, 29.157593, 18.912169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858284, 30.236444, 18.491932>,  <42.303532, 29.603861, 18.453245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858284, 30.236444, 18.491932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.637138, 30.569641, 18.483322>,  <41.504452, 30.769560, 18.478157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.637138, 30.569641, 18.483322>,  <41.858284, 30.236444, 18.491932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637138, 30.569641, 18.483322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140069, -0.118365, -0.983041,
		-0.821413, -0.540476, 0.182116,
		-0.552866, 0.832992, -0.021523,
		41.471279, 30.819538, 18.476866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179131, 30.032671, 18.272295>,  <41.858284, 30.236444, 18.491932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.179131, 30.032671, 18.272295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.262787, 30.418127, 18.205767>,  <41.312981, 30.649401, 18.165850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.262787, 30.418127, 18.205767>,  <41.179131, 30.032671, 18.272295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262787, 30.418127, 18.205767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315786, -0.094417, -0.944121,
		-0.925494, 0.249974, 0.284557,
		0.209139, 0.963638, -0.166320,
		41.325527, 30.707218, 18.155870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608906, 30.169527, 17.851419>,  <41.179131, 30.032671, 18.272295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608906, 30.169527, 17.851419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.880211, 30.462381, 17.826323>,  <41.042995, 30.638094, 17.811264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.880211, 30.462381, 17.826323>,  <40.608906, 30.169527, 17.851419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880211, 30.462381, 17.826323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154194, 0.058323, -0.986318,
		-0.718461, 0.678656, 0.152449,
		0.678261, 0.732137, -0.062742,
		41.083691, 30.682022, 17.807501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280079, 30.623962, 17.545490>,  <40.608906, 30.169527, 17.851419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280079, 30.623962, 17.545490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.649330, 30.745834, 17.451683>,  <40.870880, 30.818956, 17.395399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.649330, 30.745834, 17.451683>,  <40.280079, 30.623962, 17.545490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649330, 30.745834, 17.451683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262087, 0.052360, -0.963623,
		-0.281316, 0.951015, 0.128187,
		0.923132, 0.304679, -0.234519,
		40.926270, 30.837238, 17.381327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218658, 31.301979, 17.304831>,  <40.280079, 30.623962, 17.545490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218658, 31.301979, 17.304831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.563877, 31.175680, 17.147116>,  <40.771008, 31.099901, 17.052486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.563877, 31.175680, 17.147116>,  <40.218658, 31.301979, 17.304831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563877, 31.175680, 17.147116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341012, 0.211651, -0.915923,
		0.372649, 0.924937, 0.074991,
		0.863043, -0.315745, -0.394286,
		40.822788, 31.080957, 17.028830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556721, 31.886114, 16.944992>,  <40.218658, 31.301979, 17.304831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556721, 31.886114, 16.944992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.725513, 31.557623, 16.791361>,  <40.826790, 31.360529, 16.699183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.725513, 31.557623, 16.791361>,  <40.556721, 31.886114, 16.944992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725513, 31.557623, 16.791361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205925, 0.325751, -0.922758,
		0.882906, 0.468481, -0.031649,
		0.421985, -0.821226, -0.384079,
		40.852108, 31.311255, 16.676138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914162, 32.154564, 16.353540>,  <40.556721, 31.886114, 16.944992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914162, 32.154564, 16.353540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.896061, 31.759375, 16.294390>,  <40.885201, 31.522263, 16.258900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.896061, 31.759375, 16.294390>,  <40.914162, 32.154564, 16.353540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896061, 31.759375, 16.294390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434430, 0.152760, -0.887657,
		0.899568, 0.024071, -0.436117,
		-0.045254, -0.987970, -0.147875,
		40.882484, 31.462984, 16.250027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208569, 32.113075, 15.767728>,  <40.914162, 32.154564, 16.353540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208569, 32.113075, 15.767728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.032265, 31.754768, 15.790843>,  <40.926483, 31.539785, 15.804712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.032265, 31.754768, 15.790843>,  <41.208569, 32.113075, 15.767728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032265, 31.754768, 15.790843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332421, 0.103087, -0.937480,
		0.833804, -0.432412, -0.343207,
		-0.440758, -0.895764, 0.057789,
		40.900036, 31.486038, 15.808180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353184, 31.668289, 15.171871>,  <41.208569, 32.113075, 15.767728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353184, 31.668289, 15.171871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.018391, 31.487097, 15.294686>,  <40.817516, 31.378382, 15.368375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.018391, 31.487097, 15.294686>,  <41.353184, 31.668289, 15.171871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.018391, 31.487097, 15.294686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341010, -0.007078, -0.940033,
		0.427992, -0.891491, -0.148547,
		-0.836980, -0.452982, 0.307037,
		40.767296, 31.351202, 15.386798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231331, 31.147291, 14.691493>,  <41.353184, 31.668289, 15.171871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231331, 31.147291, 14.691493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.881111, 31.236353, 14.862995>,  <40.670979, 31.289791, 14.965897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.881111, 31.236353, 14.862995>,  <41.231331, 31.147291, 14.691493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881111, 31.236353, 14.862995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447367, -0.038595, -0.893517,
		-0.182404, -0.974131, 0.133404,
		-0.875552, 0.222662, 0.428754,
		40.618446, 31.303150, 14.991622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743603, 30.659367, 14.386331>,  <41.231331, 31.147291, 14.691493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743603, 30.659367, 14.386331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.549511, 30.989599, 14.501544>,  <40.433056, 31.187738, 14.570672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.549511, 30.989599, 14.501544>,  <40.743603, 30.659367, 14.386331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549511, 30.989599, 14.501544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482566, 0.021852, -0.875587,
		-0.729162, -0.563860, 0.387795,
		-0.485234, 0.825582, 0.288033,
		40.403942, 31.237274, 14.587954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124958, 30.573898, 14.062325>,  <40.743603, 30.659367, 14.386331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124958, 30.573898, 14.062325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.101578, 30.955009, 14.181520>,  <40.087551, 31.183676, 14.253037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.101578, 30.955009, 14.181520>,  <40.124958, 30.573898, 14.062325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101578, 30.955009, 14.181520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595232, 0.206373, -0.776601,
		-0.801426, -0.222763, 0.555062,
		-0.058449, 0.952779, 0.297988,
		40.084042, 31.240843, 14.270917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621525, 30.805531, 13.695508>,  <40.124958, 30.573898, 14.062325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621525, 30.805531, 13.695508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.726334, 31.161432, 13.845001>,  <39.789219, 31.374973, 13.934697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.726334, 31.161432, 13.845001>,  <39.621525, 30.805531, 13.695508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726334, 31.161432, 13.845001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539081, 0.456158, -0.708034,
		-0.800459, -0.015950, 0.599176,
		0.262026, 0.889756, 0.373734,
		39.804943, 31.428360, 13.957121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963985, 30.284870, 13.803053>,  <39.621525, 30.805531, 13.695508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963985, 30.284870, 13.803053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.584141, 30.409359, 13.788233>,  <38.356232, 30.484053, 13.779341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.584141, 30.409359, 13.788233>,  <38.963985, 30.284870, 13.803053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584141, 30.409359, 13.788233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027446, 0.035182, 0.999004,
		0.312214, 0.949686, -0.024868,
		-0.949615, 0.311221, -0.037050,
		38.299255, 30.502726, 13.777118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953613, 30.903883, 14.179008>,  <38.963985, 30.284870, 13.803053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953613, 30.903883, 14.179008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.578072, 30.766268, 14.173425>,  <38.352749, 30.683699, 14.170075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.578072, 30.766268, 14.173425>,  <38.953613, 30.903883, 14.179008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578072, 30.766268, 14.173425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072865, 0.158901, 0.984602,
		-0.336522, 0.925413, -0.174253,
		-0.938852, -0.344037, -0.013957,
		38.296417, 30.663057, 14.169238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750496, 31.307911, 14.686411>,  <38.953613, 30.903883, 14.179008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750496, 31.307911, 14.686411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.462410, 31.035315, 14.634473>,  <38.289558, 30.871758, 14.603311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.462410, 31.035315, 14.634473>,  <38.750496, 31.307911, 14.686411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462410, 31.035315, 14.634473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253557, 0.084365, 0.963634,
		-0.645753, 0.726948, -0.233558,
		-0.720217, -0.681490, -0.129844,
		38.246346, 30.830868, 14.595520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999550, 31.530409, 14.969049>,  <38.750496, 31.307911, 14.686411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999550, 31.530409, 14.969049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.012489, 31.130739, 14.959188>,  <38.020252, 30.890938, 14.953271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.012489, 31.130739, 14.959188>,  <37.999550, 31.530409, 14.969049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012489, 31.130739, 14.959188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244230, -0.031821, 0.969195,
		-0.969178, -0.025334, -0.245058,
		0.032351, -0.999173, -0.024653,
		38.022194, 30.830988, 14.951792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508366, 31.345242, 15.443501>,  <37.999550, 31.530409, 14.969049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508366, 31.345242, 15.443501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.698116, 30.995977, 15.398679>,  <37.811966, 30.786419, 15.371785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.698116, 30.995977, 15.398679>,  <37.508366, 31.345242, 15.443501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698116, 30.995977, 15.398679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102112, -0.181008, 0.978166,
		-0.874380, -0.452576, -0.175026,
		0.474376, -0.873162, -0.112056,
		37.840427, 30.734030, 15.365062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118202, 30.895884, 15.796214>,  <37.508366, 31.345242, 15.443501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118202, 30.895884, 15.796214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.477947, 30.721653, 15.781172>,  <37.693794, 30.617115, 15.772146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.477947, 30.721653, 15.781172>,  <37.118202, 30.895884, 15.796214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477947, 30.721653, 15.781172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110446, -0.309588, 0.944435,
		-0.423016, -0.845239, -0.326541,
		0.899366, -0.435576, -0.037607,
		37.747757, 30.590981, 15.769890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019669, 30.246946, 16.073183>,  <37.118202, 30.895884, 15.796214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019669, 30.246946, 16.073183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.404312, 30.348223, 16.115528>,  <37.635098, 30.408989, 16.140934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.404312, 30.348223, 16.115528>,  <37.019669, 30.246946, 16.073183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404312, 30.348223, 16.115528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093531, -0.060287, 0.993789,
		0.258000, -0.965536, -0.034291,
		0.961607, 0.253190, 0.105862,
		37.692795, 30.424179, 16.147287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234455, 29.825888, 16.576073>,  <37.019669, 30.246946, 16.073183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234455, 29.825888, 16.576073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.504932, 30.120283, 16.589209>,  <37.667221, 30.296921, 16.597090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.504932, 30.120283, 16.589209>,  <37.234455, 29.825888, 16.576073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504932, 30.120283, 16.589209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196476, 0.137191, 0.970863,
		0.710040, -0.662946, 0.237372,
		0.676196, 0.735990, 0.032842,
		37.707790, 30.341080, 16.599062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878021, 29.237041, 16.802076>,  <37.234455, 29.825888, 16.576073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878021, 29.237041, 16.802076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.617538, 29.055513, 17.045378>,  <36.461246, 28.946596, 17.191359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.617538, 29.055513, 17.045378>,  <36.878021, 29.237041, 16.802076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617538, 29.055513, 17.045378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414304, -0.458918, -0.785969,
		0.635827, -0.763833, 0.110832,
		-0.651211, -0.453822, 0.608252,
		36.422176, 28.919367, 17.227854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820698, 28.664803, 16.494762>,  <36.878021, 29.237041, 16.802076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820698, 28.664803, 16.494762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.494366, 28.676050, 16.725803>,  <36.298565, 28.682798, 16.864428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.494366, 28.676050, 16.725803>,  <36.820698, 28.664803, 16.494762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494366, 28.676050, 16.725803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514140, -0.492487, -0.702223,
		0.264715, -0.869866, 0.416244,
		-0.815834, 0.028119, 0.577601,
		36.249615, 28.684486, 16.899084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677948, 27.956764, 16.506668>,  <36.820698, 28.664803, 16.494762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677948, 27.956764, 16.506668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.351967, 28.178059, 16.575699>,  <36.156380, 28.310835, 16.617117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.351967, 28.178059, 16.575699>,  <36.677948, 27.956764, 16.506668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351967, 28.178059, 16.575699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445917, -0.408419, -0.796462,
		-0.370142, -0.726038, 0.579538,
		-0.814956, 0.553230, 0.172579,
		36.107479, 28.344028, 16.627472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009705, 27.528505, 16.317619>,  <36.677948, 27.956764, 16.506668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009705, 27.528505, 16.317619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.896587, 27.912170, 16.319935>,  <35.828716, 28.142370, 16.321325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.896587, 27.912170, 16.319935>,  <36.009705, 27.528505, 16.317619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896587, 27.912170, 16.319935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600647, -0.172377, -0.780711,
		-0.747831, -0.224257, 0.624866,
		-0.282792, 0.959164, 0.005791,
		35.811749, 28.199919, 16.321672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253082, 27.475739, 16.348755>,  <36.009705, 27.528505, 16.317619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253082, 27.475739, 16.348755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.348480, 27.838694, 16.210323>,  <35.405720, 28.056467, 16.127264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.348480, 27.838694, 16.210323>,  <35.253082, 27.475739, 16.348755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348480, 27.838694, 16.210323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668924, -0.104854, -0.735898,
		-0.704032, 0.407005, 0.581967,
		0.238493, 0.907388, -0.346077,
		35.420029, 28.110910, 16.106501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603584, 27.808794, 16.348900>,  <35.253082, 27.475739, 16.348755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603584, 27.808794, 16.348900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.847736, 27.994169, 16.091944>,  <34.994228, 28.105394, 15.937770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.847736, 27.994169, 16.091944>,  <34.603584, 27.808794, 16.348900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847736, 27.994169, 16.091944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694210, -0.077573, -0.715580,
		-0.381460, 0.882727, 0.274375,
		0.610377, 0.463439, -0.642389,
		35.030849, 28.133202, 15.899227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167171, 28.300583, 15.980343>,  <34.603584, 27.808794, 16.348900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167171, 28.300583, 15.980343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.494621, 28.246513, 15.757065>,  <34.691090, 28.214071, 15.623097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.494621, 28.246513, 15.757065>,  <34.167171, 28.300583, 15.980343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494621, 28.246513, 15.757065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571059, -0.087995, -0.816180,
		0.061207, 0.986907, -0.149226,
		0.818624, -0.135173, -0.558196,
		34.740208, 28.205961, 15.589606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089687, 28.762386, 15.493523>,  <34.167171, 28.300583, 15.980343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089687, 28.762386, 15.493523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.328556, 28.476309, 15.348260>,  <34.471878, 28.304663, 15.261102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.328556, 28.476309, 15.348260>,  <34.089687, 28.762386, 15.493523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328556, 28.476309, 15.348260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544563, -0.029074, -0.838216,
		0.588929, 0.698321, -0.406830,
		0.597172, -0.715194, -0.363157,
		34.507710, 28.261751, 15.239313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418171, 28.976351, 14.726751>,  <34.089687, 28.762386, 15.493523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418171, 28.976351, 14.726751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.365475, 28.585758, 14.795018>,  <34.333855, 28.351402, 14.835979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.365475, 28.585758, 14.795018>,  <34.418171, 28.976351, 14.726751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365475, 28.585758, 14.795018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517981, -0.078979, -0.851738,
		0.845186, -0.200614, -0.495394,
		-0.131745, -0.976481, 0.170666,
		34.325951, 28.292814, 14.846218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.234077, 32.912525, 28.771507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.138218, 32.539391, 28.879118>,  <40.080700, 32.315510, 28.943684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.138218, 32.539391, 28.879118>,  <40.234077, 32.912525, 28.771507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138218, 32.539391, 28.879118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542685, -0.101055, -0.833835,
		0.805022, -0.345826, -0.482021,
		-0.239651, -0.932841, 0.269027,
		40.066322, 32.259537, 28.959826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228085, 32.740532, 28.130936>,  <40.234077, 32.912525, 28.771507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228085, 32.740532, 28.130936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.039860, 32.476616, 28.365284>,  <39.926926, 32.318264, 28.505894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.039860, 32.476616, 28.365284>,  <40.228085, 32.740532, 28.130936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039860, 32.476616, 28.365284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655326, -0.183296, -0.732769,
		0.590864, -0.728749, -0.346128,
		-0.470561, -0.659794, 0.585871,
		39.898693, 32.278679, 28.541046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376457, 32.153831, 27.808498>,  <40.228085, 32.740532, 28.130936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376457, 32.153831, 27.808498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.035793, 32.117847, 28.015024>,  <39.831394, 32.096256, 28.138939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.035793, 32.117847, 28.015024>,  <40.376457, 32.153831, 27.808498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035793, 32.117847, 28.015024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492991, -0.196802, -0.847484,
		0.177853, -0.976307, 0.123258,
		-0.851662, -0.089962, 0.516313,
		39.780296, 32.090858, 28.169918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995281, 31.790346, 27.324854>,  <40.376457, 32.153831, 27.808498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995281, 31.790346, 27.324854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.727188, 31.895769, 27.602365>,  <39.566334, 31.959023, 27.768873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.727188, 31.895769, 27.602365>,  <39.995281, 31.790346, 27.324854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727188, 31.895769, 27.602365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740693, -0.296174, -0.603038,
		0.046544, -0.918051, 0.393720,
		-0.670229, 0.263558, 0.693780,
		39.526119, 31.974836, 27.810499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573208, 31.222351, 27.235374>,  <39.995281, 31.790346, 27.324854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573208, 31.222351, 27.235374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.384605, 31.532185, 27.403990>,  <39.271442, 31.718084, 27.505159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.384605, 31.532185, 27.403990>,  <39.573208, 31.222351, 27.235374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384605, 31.532185, 27.403990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851375, -0.275237, -0.446549,
		-0.229864, -0.569446, 0.789237,
		-0.471512, 0.774581, 0.421544,
		39.243153, 31.764561, 27.530451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080486, 30.941069, 27.472036>,  <39.573208, 31.222351, 27.235374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080486, 30.941069, 27.472036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.971672, 31.325983, 27.472725>,  <38.906384, 31.556931, 27.473137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.971672, 31.325983, 27.472725>,  <39.080486, 30.941069, 27.472036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971672, 31.325983, 27.472725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825101, -0.232338, -0.515003,
		-0.495180, -0.141519, 0.857187,
		-0.272040, 0.962285, 0.001719,
		38.890060, 31.614668, 27.473240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345860, 30.905058, 27.544329>,  <39.080486, 30.941069, 27.472036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345860, 30.905058, 27.544329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.445374, 31.260281, 27.389687>,  <38.505081, 31.473413, 27.296902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.445374, 31.260281, 27.389687>,  <38.345860, 30.905058, 27.544329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445374, 31.260281, 27.389687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697012, -0.112995, -0.708100,
		-0.672516, 0.445636, 0.590873,
		0.248789, 0.888055, -0.386605,
		38.520012, 31.526697, 27.273705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761990, 31.375076, 27.448492>,  <38.345860, 30.905058, 27.544329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761990, 31.375076, 27.448492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.040058, 31.499010, 27.189035>,  <38.206898, 31.573370, 27.033361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.040058, 31.499010, 27.189035>,  <37.761990, 31.375076, 27.448492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040058, 31.499010, 27.189035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663461, -0.070770, -0.744857,
		-0.276685, 0.948154, 0.156365,
		0.695173, 0.309833, -0.648644,
		38.248611, 31.591961, 26.994442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308090, 31.638559, 26.956129>,  <37.761990, 31.375076, 27.448492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308090, 31.638559, 26.956129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.656761, 31.612911, 26.761780>,  <37.865963, 31.597523, 26.645170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.656761, 31.612911, 26.761780>,  <37.308090, 31.638559, 26.956129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656761, 31.612911, 26.761780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490002, -0.095667, -0.866456,
		0.009077, 0.993346, -0.114811,
		0.871674, -0.064122, -0.485873,
		37.918262, 31.593674, 26.616018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271976, 32.091743, 26.366791>,  <37.308090, 31.638559, 26.956129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271976, 32.091743, 26.366791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.579487, 31.863338, 26.251600>,  <37.763992, 31.726295, 26.182486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.579487, 31.863338, 26.251600>,  <37.271976, 32.091743, 26.366791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579487, 31.863338, 26.251600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314521, 0.054487, -0.947686,
		0.556829, 0.819133, -0.137706,
		0.768777, -0.571010, -0.287974,
		37.810120, 31.692036, 26.165209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763874, 32.477703, 25.838102>,  <37.271976, 32.091743, 26.366791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763874, 32.477703, 25.838102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.782772, 32.083286, 25.774231>,  <37.794109, 31.846638, 25.735909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.782772, 32.083286, 25.774231>,  <37.763874, 32.477703, 25.838102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782772, 32.083286, 25.774231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360689, 0.132229, -0.923266,
		0.931489, 0.101214, -0.349405,
		0.047246, -0.986038, -0.159677,
		37.796947, 31.787476, 25.726328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693745, 32.531212, 25.120852>,  <37.763874, 32.477703, 25.838102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693745, 32.531212, 25.120852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.739704, 32.147587, 25.224390>,  <37.767281, 31.917412, 25.286512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.739704, 32.147587, 25.224390>,  <37.693745, 32.531212, 25.120852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739704, 32.147587, 25.224390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459025, -0.282341, -0.842366,
		0.880963, -0.022032, -0.472673,
		0.114896, -0.959061, 0.258845,
		37.774174, 31.859869, 25.302044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249733, 32.963436, 24.739864>,  <37.693745, 32.531212, 25.120852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249733, 32.963436, 24.739864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.303276, 33.337467, 24.608589>,  <38.335403, 33.561886, 24.529823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.303276, 33.337467, 24.608589>,  <38.249733, 32.963436, 24.739864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303276, 33.337467, 24.608589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403178, 0.251137, 0.879987,
		0.905278, -0.250113, -0.343387,
		0.133860, 0.935079, -0.328189,
		38.343433, 33.617992, 24.510132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867306, 33.063030, 24.947863>,  <38.249733, 32.963436, 24.739864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867306, 33.063030, 24.947863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.686142, 33.415897, 24.896240>,  <38.577442, 33.627617, 24.865267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.686142, 33.415897, 24.896240>,  <38.867306, 33.063030, 24.947863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686142, 33.415897, 24.896240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436419, 0.345590, 0.830726,
		0.777438, 0.319922, -0.541516,
		-0.452910, 0.882166, -0.129055,
		38.550270, 33.680546, 24.857523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391064, 33.569210, 24.984324>,  <38.867306, 33.063030, 24.947863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391064, 33.569210, 24.984324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.056946, 33.772896, 25.067251>,  <38.856476, 33.895107, 25.117008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.056946, 33.772896, 25.067251>,  <39.391064, 33.569210, 24.984324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056946, 33.772896, 25.067251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463600, 0.449626, 0.763487,
		0.295561, 0.733851, -0.611642,
		-0.835295, 0.509214, 0.207322,
		38.806358, 33.925659, 25.129448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627686, 34.263802, 25.201246>,  <39.391064, 33.569210, 24.984324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627686, 34.263802, 25.201246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.245934, 34.255817, 25.320417>,  <39.016884, 34.251026, 25.391920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.245934, 34.255817, 25.320417>,  <39.627686, 34.263802, 25.201246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245934, 34.255817, 25.320417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237151, 0.555590, 0.796918,
		-0.181435, 0.831217, -0.525510,
		-0.954380, -0.019964, 0.297927,
		38.959621, 34.249828, 25.409796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515862, 35.035336, 25.363594>,  <39.627686, 34.263802, 25.201246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515862, 35.035336, 25.363594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.252071, 34.791782, 25.539936>,  <39.093796, 34.645649, 25.645742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.252071, 34.791782, 25.539936>,  <39.515862, 35.035336, 25.363594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252071, 34.791782, 25.539936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079142, 0.526962, 0.846196,
		-0.747550, 0.592935, -0.299329,
		-0.659474, -0.608884, 0.440856,
		39.054230, 34.609116, 25.672194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004963, 35.431179, 25.682327>,  <39.515862, 35.035336, 25.363594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004963, 35.431179, 25.682327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.015820, 35.098370, 25.903957>,  <39.022335, 34.898685, 26.036936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.015820, 35.098370, 25.903957>,  <39.004963, 35.431179, 25.682327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015820, 35.098370, 25.903957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275425, 0.539052, 0.795967,
		-0.960939, 0.131001, 0.243791,
		0.027144, -0.832022, 0.554077,
		39.023964, 34.848763, 26.070181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549454, 35.526188, 26.161055>,  <39.004963, 35.431179, 25.682327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549454, 35.526188, 26.161055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.768402, 35.226589, 26.310390>,  <38.899773, 35.046829, 26.399992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.768402, 35.226589, 26.310390>,  <38.549454, 35.526188, 26.161055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768402, 35.226589, 26.310390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028188, 0.462354, 0.886248,
		-0.836412, -0.474587, 0.274194,
		0.547376, -0.748997, 0.373341,
		38.932613, 35.001888, 26.422392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336681, 35.356739, 26.769945>,  <38.549454, 35.526188, 26.161055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336681, 35.356739, 26.769945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.699448, 35.188419, 26.778307>,  <38.917107, 35.087429, 26.783323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.699448, 35.188419, 26.778307>,  <38.336681, 35.356739, 26.769945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699448, 35.188419, 26.778307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145599, 0.359582, 0.921684,
		-0.395360, -0.832844, 0.387378,
		0.906913, -0.420799, 0.020903,
		38.971523, 35.062180, 26.784578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386116, 35.055706, 27.469952>,  <38.336681, 35.356739, 26.769945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386116, 35.055706, 27.469952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.751602, 35.121361, 27.321264>,  <38.970894, 35.160755, 27.232052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.751602, 35.121361, 27.321264>,  <38.386116, 35.055706, 27.469952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751602, 35.121361, 27.321264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308180, 0.316309, 0.897203,
		0.264837, -0.934350, 0.238436,
		0.913721, 0.164131, -0.371719,
		39.025719, 35.170601, 27.209747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783295, 34.998219, 28.029705>,  <38.386116, 35.055706, 27.469952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783295, 34.998219, 28.029705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.055206, 35.156685, 27.782818>,  <39.218353, 35.251762, 27.634686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.055206, 35.156685, 27.782818>,  <38.783295, 34.998219, 28.029705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055206, 35.156685, 27.782818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550539, 0.280400, 0.786310,
		0.484574, -0.874318, -0.027494,
		0.679776, 0.396162, -0.617220,
		39.259140, 35.275532, 27.597652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327538, 34.993942, 28.479733>,  <38.783295, 34.998219, 28.029705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327538, 34.993942, 28.479733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.441292, 35.207939, 28.161510>,  <39.509544, 35.336338, 27.970577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.441292, 35.207939, 28.161510>,  <39.327538, 34.993942, 28.479733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441292, 35.207939, 28.161510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748618, 0.394471, 0.532883,
		0.598910, -0.747113, -0.288320,
		0.284390, 0.534991, -0.795555,
		39.526608, 35.368435, 27.922844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017048, 34.796844, 28.324232>,  <39.327538, 34.993942, 28.479733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017048, 34.796844, 28.324232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.952011, 35.175201, 28.211914>,  <39.912987, 35.402218, 28.144524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.952011, 35.175201, 28.211914>,  <40.017048, 34.796844, 28.324232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952011, 35.175201, 28.211914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673522, 0.314368, 0.668985,
		0.721062, -0.080349, -0.688196,
		-0.162595, 0.945895, -0.280796,
		39.903233, 35.458969, 28.127676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509109, 35.224819, 27.891691>,  <40.017048, 34.796844, 28.324232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509109, 35.224819, 27.891691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.304955, 35.489147, 28.111811>,  <40.182461, 35.647743, 28.243881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.304955, 35.489147, 28.111811>,  <40.509109, 35.224819, 27.891691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304955, 35.489147, 28.111811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805286, 0.142771, 0.575440,
		0.301693, 0.736844, -0.605014,
		-0.510388, 0.660816, 0.550297,
		40.151836, 35.687393, 28.276899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993835, 35.719570, 28.124033>,  <40.509109, 35.224819, 27.891691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993835, 35.719570, 28.124033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.665489, 35.751999, 28.350168>,  <40.468483, 35.771458, 28.485849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.665489, 35.751999, 28.350168>,  <40.993835, 35.719570, 28.124033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665489, 35.751999, 28.350168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571106, 0.123718, 0.811500,
		-0.004151, 0.989000, -0.147857,
		-0.820866, 0.081074, 0.565337,
		40.419228, 35.776321, 28.519770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419773, 36.421841, 28.330694>,  <40.993835, 35.719570, 28.124033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419773, 36.421841, 28.330694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.758095, 36.209843, 28.306280>,  <41.961086, 36.082645, 28.291632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.758095, 36.209843, 28.306280>,  <41.419773, 36.421841, 28.330694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.758095, 36.209843, 28.306280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245969, -0.285870, -0.926163,
		0.473414, 0.798362, -0.372152,
		0.845800, -0.529996, -0.061037,
		42.011833, 36.050842, 28.287970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873173, 36.651241, 27.804472>,  <41.419773, 36.421841, 28.330694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873173, 36.651241, 27.804472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.943352, 36.258671, 27.835505>,  <41.985458, 36.023129, 27.854124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.943352, 36.258671, 27.835505>,  <41.873173, 36.651241, 27.804472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.943352, 36.258671, 27.835505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161413, -0.106414, -0.981133,
		0.971166, 0.159617, -0.177085,
		0.175449, -0.981427, 0.077581,
		41.995987, 35.964241, 27.858778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772388, 36.249802, 27.221062>,  <41.873173, 36.651241, 27.804472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772388, 36.249802, 27.221062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.062862, 35.990467, 27.312551>,  <42.237144, 35.834866, 27.367445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.062862, 35.990467, 27.312551>,  <41.772388, 36.249802, 27.221062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.062862, 35.990467, 27.312551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109522, -0.437533, -0.892508,
		0.678722, 0.623074, -0.388736,
		0.726183, -0.648340, 0.228723,
		42.280716, 35.795963, 27.381168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.211746, 36.314240, 26.750023>,  <41.772388, 36.249802, 27.221062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.211746, 36.314240, 26.750023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.255325, 35.942451, 26.891001>,  <42.281475, 35.719379, 26.975588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.255325, 35.942451, 26.891001>,  <42.211746, 36.314240, 26.750023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.255325, 35.942451, 26.891001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072888, -0.361068, -0.929686,
		0.991371, 0.075603, -0.107086,
		0.108952, -0.929470, 0.352442,
		42.288010, 35.663612, 26.996733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607841, 36.004025, 26.316164>,  <42.211746, 36.314240, 26.750023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.607841, 36.004025, 26.316164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.497906, 35.671200, 26.508883>,  <42.431942, 35.471504, 26.624514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.497906, 35.671200, 26.508883>,  <42.607841, 36.004025, 26.316164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497906, 35.671200, 26.508883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066012, -0.483582, -0.872806,
		0.959220, -0.271689, 0.077983,
		-0.274843, -0.832066, 0.481797,
		42.415451, 35.421581, 26.653421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.021980, 35.405384, 26.007444>,  <42.607841, 36.004025, 26.316164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.021980, 35.405384, 26.007444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.683762, 35.281925, 26.181702>,  <42.480831, 35.207848, 26.286257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.683762, 35.281925, 26.181702>,  <43.021980, 35.405384, 26.007444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.683762, 35.281925, 26.181702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277480, -0.443057, -0.852470,
		0.456131, -0.841686, 0.288981,
		-0.845547, -0.308652, 0.435643,
		42.430099, 35.189331, 26.312395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.053608, 34.780231, 25.838953>,  <43.021980, 35.405384, 26.007444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.053608, 34.780231, 25.838953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.670204, 34.863834, 25.916491>,  <42.440163, 34.913994, 25.963013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.670204, 34.863834, 25.916491>,  <43.053608, 34.780231, 25.838953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.670204, 34.863834, 25.916491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274813, -0.496835, -0.823184,
		-0.075740, -0.842301, 0.533659,
		-0.958510, 0.209004, 0.193845,
		42.382652, 34.926537, 25.974644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.706913, 34.190342, 25.791748>,  <43.053608, 34.780231, 25.838953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.706913, 34.190342, 25.791748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.409248, 34.452553, 25.740337>,  <42.230652, 34.609879, 25.709490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.409248, 34.452553, 25.740337>,  <42.706913, 34.190342, 25.791748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.409248, 34.452553, 25.740337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270691, -0.471817, -0.839115,
		-0.610702, -0.589642, 0.528550,
		-0.744156, 0.655523, -0.128529,
		42.186001, 34.649208, 25.701778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183449, 33.766708, 25.671776>,  <42.706913, 34.190342, 25.791748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183449, 33.766708, 25.671776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.078465, 34.122047, 25.521067>,  <42.015476, 34.335251, 25.430641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.078465, 34.122047, 25.521067>,  <42.183449, 33.766708, 25.671776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.078465, 34.122047, 25.521067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219383, -0.435171, -0.873211,
		-0.939674, -0.146523, 0.309102,
		-0.262458, 0.888345, -0.376774,
		41.999725, 34.388550, 25.408035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501549, 33.702347, 25.310556>,  <42.183449, 33.766708, 25.671776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501549, 33.702347, 25.310556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.663811, 34.035553, 25.160074>,  <41.761169, 34.235477, 25.069784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.663811, 34.035553, 25.160074>,  <41.501549, 33.702347, 25.310556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663811, 34.035553, 25.160074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075979, -0.379435, -0.922093,
		-0.910862, 0.402636, -0.090628,
		0.405656, 0.833014, -0.376205,
		41.785507, 34.285458, 25.047213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522743, 33.491631, 24.674597>,  <41.501549, 33.702347, 25.310556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522743, 33.491631, 24.674597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.683994, 33.854710, 24.628014>,  <41.780746, 34.072559, 24.600063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.683994, 33.854710, 24.628014>,  <41.522743, 33.491631, 24.674597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683994, 33.854710, 24.628014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125675, -0.180965, -0.975427,
		-0.906472, 0.378590, -0.187028,
		0.403132, 0.907701, -0.116460,
		41.804935, 34.127022, 24.593075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050430, 33.901306, 24.246265>,  <41.522743, 33.491631, 24.674597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050430, 33.901306, 24.246265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.430225, 34.024197, 24.220686>,  <41.658100, 34.097931, 24.205338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.430225, 34.024197, 24.220686>,  <41.050430, 33.901306, 24.246265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.430225, 34.024197, 24.220686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020540, -0.264192, -0.964251,
		-0.313140, 0.914228, -0.257157,
		0.949485, 0.307228, -0.063951,
		41.715073, 34.116364, 24.201500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169704, 34.436256, 23.559401>,  <41.050430, 33.901306, 24.246265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169704, 34.436256, 23.559401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.512909, 34.268543, 23.678078>,  <41.718830, 34.167915, 23.749285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.512909, 34.268543, 23.678078>,  <41.169704, 34.436256, 23.559401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.512909, 34.268543, 23.678078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172225, -0.309347, -0.935224,
		0.483902, 0.853527, -0.193211,
		0.858008, -0.419281, 0.296692,
		41.770309, 34.142757, 23.767086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679958, 34.544983, 23.006483>,  <41.169704, 34.436256, 23.559401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679958, 34.544983, 23.006483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.818901, 34.222172, 23.197500>,  <41.902267, 34.028484, 23.312111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.818901, 34.222172, 23.197500>,  <41.679958, 34.544983, 23.006483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.818901, 34.222172, 23.197500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164567, -0.448889, -0.878303,
		0.923181, 0.383669, -0.023113,
		0.347353, -0.807030, 0.477545,
		41.923107, 33.980064, 23.340763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214195, 34.381271, 22.606768>,  <41.679958, 34.544983, 23.006483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.214195, 34.381271, 22.606768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.187214, 34.045250, 22.822084>,  <42.171024, 33.843636, 22.951275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.187214, 34.045250, 22.822084>,  <42.214195, 34.381271, 22.606768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.187214, 34.045250, 22.822084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220402, -0.538739, -0.813132,
		0.973074, 0.063795, 0.221488,
		-0.067450, -0.840054, 0.538293,
		42.166981, 33.793232, 22.983572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790199, 34.014297, 22.393122>,  <42.214195, 34.381271, 22.606768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790199, 34.014297, 22.393122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.582581, 33.718719, 22.564964>,  <42.458012, 33.541374, 22.668070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.582581, 33.718719, 22.564964>,  <42.790199, 34.014297, 22.393122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582581, 33.718719, 22.564964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115309, -0.558549, -0.821418,
		0.846934, -0.376814, 0.375118,
		-0.519044, -0.738941, 0.429604,
		42.426868, 33.497036, 22.693846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.241669, 33.470173, 22.388514>,  <42.790199, 34.014297, 22.393122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.241669, 33.470173, 22.388514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.861641, 33.345387, 22.385630>,  <42.633625, 33.270515, 22.383900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.861641, 33.345387, 22.385630>,  <43.241669, 33.470173, 22.388514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.861641, 33.345387, 22.385630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143210, -0.415373, -0.898308,
		0.277249, -0.854483, 0.439308,
		-0.950065, -0.311968, -0.007209,
		42.576622, 33.251797, 22.383467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.281521, 32.788727, 22.058571>,  <43.241669, 33.470173, 22.388514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.281521, 32.788727, 22.058571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.887638, 32.857803, 22.067738>,  <42.651306, 32.899250, 22.073238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.887638, 32.857803, 22.067738>,  <43.281521, 32.788727, 22.058571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.887638, 32.857803, 22.067738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120113, -0.577747, -0.807330,
		-0.126181, -0.797737, 0.589656,
		-0.984709, 0.172695, 0.022918,
		42.592224, 32.909611, 22.074614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.044395, 32.077049, 22.095369>,  <43.281521, 32.788727, 22.058571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.044395, 32.077049, 22.095369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.770058, 32.313839, 21.926050>,  <42.605453, 32.455914, 21.824459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.770058, 32.313839, 21.926050>,  <43.044395, 32.077049, 22.095369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.770058, 32.313839, 21.926050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044216, -0.614480, -0.787693,
		-0.726403, -0.521519, 0.447613,
		-0.685846, 0.591974, -0.423300,
		42.564304, 32.491432, 21.799061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.471645, 31.670782, 21.825005>,  <43.044395, 32.077049, 22.095369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.471645, 31.670782, 21.825005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.419994, 32.017017, 21.631474>,  <42.389004, 32.224758, 21.515356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.419994, 32.017017, 21.631474>,  <42.471645, 31.670782, 21.825005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.419994, 32.017017, 21.631474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295340, -0.499338, -0.814516,
		-0.946627, 0.037720, 0.320118,
		-0.129123, 0.865586, -0.483826,
		42.381256, 32.276691, 21.486326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680084, 31.692104, 21.657433>,  <42.471645, 31.670782, 21.825005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680084, 31.692104, 21.657433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.881664, 31.945152, 21.422203>,  <42.002613, 32.096981, 21.281065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.881664, 31.945152, 21.422203>,  <41.680084, 31.692104, 21.657433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.881664, 31.945152, 21.422203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518451, -0.323002, -0.791756,
		-0.690830, 0.703890, 0.165206,
		0.503947, 0.632620, -0.588072,
		42.032848, 32.134937, 21.245781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186577, 32.009445, 21.197926>,  <41.680084, 31.692104, 21.657433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186577, 32.009445, 21.197926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.539742, 32.059864, 21.017006>,  <41.751640, 32.090115, 20.908455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.539742, 32.059864, 21.017006>,  <41.186577, 32.009445, 21.197926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.539742, 32.059864, 21.017006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423288, -0.203195, -0.882915,
		-0.203195, 0.970991, -0.126049,
		0.882915, 0.126049, -0.452297,
		41.804615, 32.097679, 20.881317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984165, 32.283863, 20.547096>,  <41.186577, 32.009445, 21.197926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984165, 32.283863, 20.547096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.365227, 32.169453, 20.505825>,  <41.593864, 32.100807, 20.481062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.365227, 32.169453, 20.505825>,  <40.984165, 32.283863, 20.547096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365227, 32.169453, 20.505825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158590, -0.177863, -0.971192,
		0.259435, 0.941570, -0.214802,
		0.952650, -0.286026, -0.103180,
		41.651020, 32.083645, 20.474871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209068, 32.538418, 19.839169>,  <40.984165, 32.283863, 20.547096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209068, 32.538418, 19.839169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.478725, 32.258072, 19.932386>,  <41.640522, 32.089863, 19.988317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.478725, 32.258072, 19.932386>,  <41.209068, 32.538418, 19.839169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478725, 32.258072, 19.932386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064375, -0.370080, -0.926767,
		0.735786, 0.609775, -0.294607,
		0.674147, -0.700868, 0.233046,
		41.680969, 32.047813, 20.002300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754871, 32.482407, 19.288460>,  <41.209068, 32.538418, 19.839169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754871, 32.482407, 19.288460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.725655, 32.133617, 19.482090>,  <41.708126, 31.924345, 19.598269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.725655, 32.133617, 19.482090>,  <41.754871, 32.482407, 19.288460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725655, 32.133617, 19.482090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089286, -0.477708, -0.873970,
		0.993325, -0.107054, -0.042964,
		-0.073037, -0.871971, 0.484078,
		41.703743, 31.872026, 19.627314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.122879, 32.010132, 18.870647>,  <41.754871, 32.482407, 19.288460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.122879, 32.010132, 18.870647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.932510, 31.773909, 19.131336>,  <41.818291, 31.632174, 19.287748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.932510, 31.773909, 19.131336>,  <42.122879, 32.010132, 18.870647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.932510, 31.773909, 19.131336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254385, -0.616913, -0.744786,
		0.841897, -0.520245, 0.143370,
		-0.475918, -0.590562, 0.651720,
		41.789734, 31.596741, 19.326853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.450687, 31.374165, 18.899567>,  <42.122879, 32.010132, 18.870647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.450687, 31.374165, 18.899567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.072197, 31.317690, 19.015997>,  <41.845104, 31.283804, 19.085855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.072197, 31.317690, 19.015997>,  <42.450687, 31.374165, 18.899567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.072197, 31.317690, 19.015997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214255, -0.400641, -0.890832,
		0.242393, -0.905291, 0.348846,
		-0.946224, -0.141189, 0.291076,
		41.788330, 31.275333, 19.103319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376759, 30.760441, 18.695721>,  <42.450687, 31.374165, 18.899567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376759, 30.760441, 18.695721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.011723, 30.918049, 18.739401>,  <41.792702, 31.012613, 18.765610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.011723, 30.918049, 18.739401>,  <42.376759, 30.760441, 18.695721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.011723, 30.918049, 18.739401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264413, -0.365005, -0.892669,
		-0.311870, -0.843516, 0.437284,
		-0.912591, 0.394020, 0.109203,
		41.737946, 31.036255, 18.772161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.169136, 30.215935, 19.181986>,  <42.376759, 30.760441, 18.695721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.169136, 30.215935, 19.181986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.143036, 29.832050, 19.291306>,  <42.127377, 29.601719, 19.356897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.143036, 29.832050, 19.291306>,  <42.169136, 30.215935, 19.181986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.143036, 29.832050, 19.291306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070971, 0.277653, 0.958056,
		-0.995342, 0.043117, -0.086229,
		-0.065251, -0.959713, 0.273299,
		42.123459, 29.544136, 19.373295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.899487, 30.322514, 19.752123>,  <42.169136, 30.215935, 19.181986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.899487, 30.322514, 19.752123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.027962, 29.944822, 19.781170>,  <42.105045, 29.718208, 19.798597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.027962, 29.944822, 19.781170>,  <41.899487, 30.322514, 19.752123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027962, 29.944822, 19.781170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073367, 0.101258, 0.992151,
		-0.944170, -0.313338, 0.101797,
		0.321187, -0.944228, 0.072616,
		42.124317, 29.661554, 19.802954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.639332, 30.029217, 20.359550>,  <41.899487, 30.322514, 19.752123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.639332, 30.029217, 20.359550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.942707, 29.774710, 20.303066>,  <42.124733, 29.622005, 20.269176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.942707, 29.774710, 20.303066>,  <41.639332, 30.029217, 20.359550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942707, 29.774710, 20.303066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166206, -0.020681, 0.985874,
		-0.630201, -0.771190, 0.090066,
		0.758434, -0.636268, -0.141210,
		42.170238, 29.583830, 20.260704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.639442, 29.407019, 20.968447>,  <41.639332, 30.029217, 20.359550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.639442, 29.407019, 20.968447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.002953, 29.445122, 20.805941>,  <42.221058, 29.467983, 20.708437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.002953, 29.445122, 20.805941>,  <41.639442, 29.407019, 20.968447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.002953, 29.445122, 20.805941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412865, -0.063923, 0.908546,
		0.060577, -0.993398, -0.097421,
		0.908776, 0.095259, -0.406267,
		42.275585, 29.473700, 20.684061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024914, 29.017607, 21.409555>,  <41.639442, 29.407019, 20.968447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024914, 29.017607, 21.409555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.326096, 29.220461, 21.241810>,  <42.506805, 29.342175, 21.141163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.326096, 29.220461, 21.241810>,  <42.024914, 29.017607, 21.409555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326096, 29.220461, 21.241810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429637, 0.103862, 0.897009,
		0.498463, -0.855584, -0.139681,
		0.752959, 0.507138, -0.419362,
		42.551983, 29.372602, 21.116001>
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
